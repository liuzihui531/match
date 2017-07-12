# ************************************************************
# Sequel Pro SQL dump
# Version 4135
#
# http://www.sequelpro.com/
# http://code.google.com/p/sequel-pro/
#
# Host: 192.168.1.162 (MySQL 5.6.23-log)
# Database: match
# Generation Time: 2017-05-30 11:17:13 +0000
# ************************************************************


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8 */;
/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;
/*!40111 SET @OLD_SQL_NOTES=@@SQL_NOTES, SQL_NOTES=0 */;


# Dump of table admin
# ------------------------------------------------------------

DROP TABLE IF EXISTS `admin`;

CREATE TABLE `admin` (
  `id` int(32) NOT NULL AUTO_INCREMENT,
  `username` varchar(16) NOT NULL DEFAULT '',
  `password` char(32) NOT NULL DEFAULT '',
  `status` tinyint(1) NOT NULL DEFAULT '1' COMMENT '状态，0禁用，1启用',
  `openid` varchar(64) NOT NULL DEFAULT '' COMMENT '管理员微信号',
  `last_login` int(32) NOT NULL DEFAULT '0',
  `last_ip` varchar(32) NOT NULL DEFAULT '',
  `role_id` int(10) NOT NULL DEFAULT '0' COMMENT '角色ID',
  `login_num` int(32) NOT NULL DEFAULT '0',
  `create_by` varchar(16) NOT NULL DEFAULT '' COMMENT '创建者',
  `created` int(32) NOT NULL DEFAULT '0',
  PRIMARY KEY (`id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COMMENT='管理员表';

LOCK TABLES `admin` WRITE;
/*!40000 ALTER TABLE `admin` DISABLE KEYS */;

INSERT INTO `admin` (`id`, `username`, `password`, `status`, `openid`, `last_login`, `last_ip`, `role_id`, `login_num`, `create_by`, `created`)
VALUES
	(1,'admin','21232f297a57a5a743894a0e4a801fc3',1,'ohs_4sgyk31vkfKLHy2wg5HrrGeo',1479310175,'192.168.1.128',1,498,'',1360085491);

/*!40000 ALTER TABLE `admin` ENABLE KEYS */;
UNLOCK TABLES;


# Dump of table market
# ------------------------------------------------------------

DROP TABLE IF EXISTS `market`;

CREATE TABLE `market` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `product` varchar(128) NOT NULL DEFAULT '' COMMENT '选送产品名称',
  `introduce` varchar(128) NOT NULL DEFAULT '' COMMENT '产地介绍',
  `outtime` varchar(128) NOT NULL DEFAULT '' COMMENT '出产时间',
  `s_standard` varchar(128) NOT NULL DEFAULT '' COMMENT '生产执行标准',
  `z_standard` varchar(128) NOT NULL DEFAULT '' COMMENT '质量认证标准',
  `charge` varchar(128) NOT NULL DEFAULT '' COMMENT '负责人',
  `mobile` varchar(128) NOT NULL DEFAULT '' COMMENT '联系电话',
  `charge_second` varchar(128) NOT NULL DEFAULT '' COMMENT '第二负责人',
  `mobile_second` varchar(128) NOT NULL DEFAULT '' COMMENT '联系电话',
  `created` int(11) NOT NULL DEFAULT '0',
  `user_id` int(11) NOT NULL DEFAULT '0',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

LOCK TABLES `market` WRITE;
/*!40000 ALTER TABLE `market` DISABLE KEYS */;

INSERT INTO `market` (`id`, `product`, `introduce`, `outtime`, `s_standard`, `z_standard`, `charge`, `mobile`, `charge_second`, `mobile_second`, `created`, `user_id`)
VALUES
	(3,'1','2','','','','','','','',1478015017,0),
	(4,'2','3','2','2','3','3','3','3','3@qq.com',1478098307,1);

/*!40000 ALTER TABLE `market` ENABLE KEYS */;
UNLOCK TABLES;


# Dump of table market_product
# ------------------------------------------------------------

DROP TABLE IF EXISTS `market_product`;

CREATE TABLE `market_product` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `market_id` int(11) NOT NULL DEFAULT '0' COMMENT '市场ID',
  `name` varchar(128) NOT NULL DEFAULT '' COMMENT '产品名称',
  `range` varchar(128) NOT NULL DEFAULT '' COMMENT '种植面积或养殖数量',
  `num_totle` varchar(128) NOT NULL DEFAULT '' COMMENT '年产量',
  `type` varchar(128) NOT NULL DEFAULT '' COMMENT '种植/养殖方式',
  `box_spe` varchar(128) NOT NULL DEFAULT '' COMMENT '包装箱规格',
  `product_spe` varchar(128) NOT NULL DEFAULT '' COMMENT '产品规格',
  `period` varchar(128) NOT NULL DEFAULT '' COMMENT '供货周期',
  `pro_price` varchar(128) NOT NULL DEFAULT '' COMMENT '供货价格',
  `addvise_price` varchar(128) NOT NULL DEFAULT '' COMMENT '建议销售价',
  `created` int(11) NOT NULL DEFAULT '0',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='市场产品';

LOCK TABLES `market_product` WRITE;
/*!40000 ALTER TABLE `market_product` DISABLE KEYS */;

INSERT INTO `market_product` (`id`, `market_id`, `name`, `range`, `num_totle`, `type`, `box_spe`, `product_spe`, `period`, `pro_price`, `addvise_price`, `created`)
VALUES
	(4,3,'','','','','','','','','',1478015017),
	(5,3,'','','','','','','','','',1478015017),
	(6,3,'','','','','','','','','',1478015017),
	(10,4,'3','3','2','343','3434','34343','43','3434','343',1478100658),
	(11,4,'34','43343','4343','43434','34','343','434','344','343',1478100658),
	(12,4,'343','43434','343','343','343','4343','343','4343','434',1478100658);

/*!40000 ALTER TABLE `market_product` ENABLE KEYS */;
UNLOCK TABLES;


# Dump of table market_service
# ------------------------------------------------------------

DROP TABLE IF EXISTS `market_service`;

CREATE TABLE `market_service` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `market_id` int(11) NOT NULL DEFAULT '0' COMMENT '市场ID',
  `coach` varchar(128) NOT NULL DEFAULT '' COMMENT '培训',
  `rongzi` varchar(128) NOT NULL DEFAULT '' COMMENT '融资',
  `chanpinrenzheng` varchar(128) NOT NULL DEFAULT '' COMMENT '是否需要实现产品认证',
  `zhengticehua` varchar(128) NOT NULL DEFAULT '' COMMENT '基地整体策划',
  `shijianduan` varchar(128) NOT NULL DEFAULT '' COMMENT '参加产品市集的时间段',
  `beizhu` text COMMENT '备注',
  `created` int(11) NOT NULL DEFAULT '0',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='市场--基地信息化情况';

LOCK TABLES `market_service` WRITE;
/*!40000 ALTER TABLE `market_service` DISABLE KEYS */;

INSERT INTO `market_service` (`id`, `market_id`, `coach`, `rongzi`, `chanpinrenzheng`, `zhengticehua`, `shijianduan`, `beizhu`, `created`)
VALUES
	(1,3,'{\"-1\":\"\"}','{\"-1\":\"\"}','','','','',1478015017),
	(3,4,'{\"1\":\"1\",\"2\":\"2\",\"3\":\"3\",\"-1\":\"afsd\"}','{\"1\":\"1\",\"2\":\"2\",\"3\":\"3\",\"-1\":\"sfasf\"}','123','23213','123123','12312321',1478100658);

/*!40000 ALTER TABLE `market_service` ENABLE KEYS */;
UNLOCK TABLES;


# Dump of table market_sheshi
# ------------------------------------------------------------

DROP TABLE IF EXISTS `market_sheshi`;

CREATE TABLE `market_sheshi` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `market_id` int(11) NOT NULL DEFAULT '0' COMMENT '市场ID',
  `cangku` tinyint(1) NOT NULL DEFAULT '0' COMMENT '仓库',
  `tool` tinyint(1) NOT NULL DEFAULT '0' COMMENT '自有运输工具',
  `lengcang` tinyint(1) NOT NULL DEFAULT '0' COMMENT '冷藏库',
  `jiance` tinyint(1) NOT NULL DEFAULT '0' COMMENT '检测室',
  `dapengsheshi` tinyint(1) NOT NULL DEFAULT '0' COMMENT '大棚设施',
  `shengchansheshi` tinyint(1) NOT NULL DEFAULT '0' COMMENT '生产监控设施',
  `created` int(11) NOT NULL DEFAULT '0',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='市场--基地基础设施';

LOCK TABLES `market_sheshi` WRITE;
/*!40000 ALTER TABLE `market_sheshi` DISABLE KEYS */;

INSERT INTO `market_sheshi` (`id`, `market_id`, `cangku`, `tool`, `lengcang`, `jiance`, `dapengsheshi`, `shengchansheshi`, `created`)
VALUES
	(2,3,0,0,0,0,0,0,1478015017),
	(4,4,1,2,2,1,2,2,1478100658);

/*!40000 ALTER TABLE `market_sheshi` ENABLE KEYS */;
UNLOCK TABLES;


# Dump of table market_xinxi
# ------------------------------------------------------------

DROP TABLE IF EXISTS `market_xinxi`;

CREATE TABLE `market_xinxi` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `market_id` int(11) NOT NULL DEFAULT '0' COMMENT '市场ID',
  `xinxihua` tinyint(1) NOT NULL DEFAULT '0' COMMENT '信息化管理系统',
  `online_sale` tinyint(1) NOT NULL DEFAULT '0' COMMENT '网上销售',
  `qrcode` tinyint(1) NOT NULL DEFAULT '0' COMMENT '二维码',
  `website` varchar(128) NOT NULL DEFAULT '' COMMENT '公司网站',
  `weibo` varchar(512) NOT NULL DEFAULT '' COMMENT '微博',
  `created` int(11) NOT NULL DEFAULT '0',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='市场--基地信息化情况';

LOCK TABLES `market_xinxi` WRITE;
/*!40000 ALTER TABLE `market_xinxi` DISABLE KEYS */;

INSERT INTO `market_xinxi` (`id`, `market_id`, `xinxihua`, `online_sale`, `qrcode`, `website`, `weibo`, `created`)
VALUES
	(2,3,0,0,0,'','',1478015017),
	(4,4,1,2,1,'234','34324',1478100658);

/*!40000 ALTER TABLE `market_xinxi` ENABLE KEYS */;
UNLOCK TABLES;


# Dump of table news
# ------------------------------------------------------------

DROP TABLE IF EXISTS `news`;

CREATE TABLE `news` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `title` varchar(128) NOT NULL DEFAULT '' COMMENT '标题',
  `summary` varchar(512) NOT NULL DEFAULT '' COMMENT '摘要',
  `cate_id` int(11) NOT NULL DEFAULT '0' COMMENT '分类',
  `image` varchar(256) NOT NULL DEFAULT '' COMMENT '图片地址',
  `content` longtext,
  `view_count` smallint(6) NOT NULL DEFAULT '0' COMMENT '浏览次数',
  `is_hot` tinyint(1) NOT NULL DEFAULT '0' COMMENT '是否热门',
  `create_time` int(11) NOT NULL DEFAULT '0' COMMENT '发布时间',
  `seo_title` varchar(64) NOT NULL DEFAULT '' COMMENT '标题',
  `seo_keyword` varchar(512) NOT NULL DEFAULT '' COMMENT '关键词',
  `seo_description` text COMMENT '描述',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

LOCK TABLES `news` WRITE;
/*!40000 ALTER TABLE `news` DISABLE KEYS */;

INSERT INTO `news` (`id`, `title`, `summary`, `cate_id`, `image`, `content`, `view_count`, `is_hot`, `create_time`, `seo_title`, `seo_keyword`, `seo_description`)
VALUES
	(1,'国金所金融控股董事长何玉山受邀云滴科技开幕典礼','云滴公司是一家综合型互联网公司，隶属于云南盛达集团。云滴公司服务面涵盖交通，旅游，物流，教育，农业，金融等多个领域，充分发挥互联网在社会资源配置中的优化和集成作用，将互联网的创新成果深度融合于各个领域之中。',1,'/static/images/news/news-cover-big.png','&#60;p&#62;云滴公司是一家综合型互联网公司，隶属于云南盛达集团。云滴公司服务面涵盖交通，旅游，物流，教育，农业，金融等多个领域，充分发挥互联网在社会资源配置中的优化和集成作用，将互联网的创新成果深度融合于各个领域之中。&#60;&#47;p&#62;',1232,1,1462519710,'','',NULL);

/*!40000 ALTER TABLE `news` ENABLE KEYS */;
UNLOCK TABLES;


# Dump of table news_category
# ------------------------------------------------------------

DROP TABLE IF EXISTS `news_category`;

CREATE TABLE `news_category` (
  `id` int(32) NOT NULL AUTO_INCREMENT,
  `name` varchar(64) NOT NULL DEFAULT '' COMMENT '新闻类名称',
  `pid` tinyint(2) NOT NULL DEFAULT '0',
  `sort` int(11) NOT NULL DEFAULT '0' COMMENT '排序',
  `created` int(32) NOT NULL DEFAULT '0',
  `seo_title` varchar(64) NOT NULL DEFAULT '' COMMENT '标题',
  `seo_keyword` varchar(512) NOT NULL DEFAULT '' COMMENT '关键词',
  `seo_description` text COMMENT '描述',
  PRIMARY KEY (`id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

LOCK TABLES `news_category` WRITE;
/*!40000 ALTER TABLE `news_category` DISABLE KEYS */;

INSERT INTO `news_category` (`id`, `name`, `pid`, `sort`, `created`, `seo_title`, `seo_keyword`, `seo_description`)
VALUES
	(1,'云滴旅行',0,10,1463559139,'','',NULL),
	(2,'云滴生活',0,20,1463559149,'','',NULL),
	(3,'云滴活动',0,30,1463559157,'','',NULL),
	(4,'云滴动态',0,40,1463559165,'','',NULL);

/*!40000 ALTER TABLE `news_category` ENABLE KEYS */;
UNLOCK TABLES;


# Dump of table person
# ------------------------------------------------------------

DROP TABLE IF EXISTS `person`;

CREATE TABLE `person` (
  `id` int(11) NOT NULL AUTO_INCREMENT COMMENT 'ID',
  `group` tinyint(2) NOT NULL COMMENT '组别',
  `city` tinyint(8) NOT NULL COMMENT '所属市县',
  `school` varchar(128) NOT NULL DEFAULT '' COMMENT '学校',
  `name` varchar(32) NOT NULL DEFAULT '' COMMENT '姓名',
  `birth` int(11) NOT NULL COMMENT '出生年月',
  `domicile` varchar(256) NOT NULL DEFAULT '' COMMENT '户籍地',
  `id_card` varchar(32) NOT NULL COMMENT '身份证号码',
  `is_illegal` varchar(128) NOT NULL DEFAULT '' COMMENT '有无违法违纪行为声明',
  `education` varchar(32) NOT NULL DEFAULT '' COMMENT '学历',
  `mobile` char(11) NOT NULL DEFAULT '' COMMENT '联系号码',
  `email` varchar(64) NOT NULL DEFAULT '' COMMENT '邮箱',
  `work` varchar(64) NOT NULL DEFAULT '' COMMENT '作品',
  `url` varchar(64) NOT NULL DEFAULT '' COMMENT '作品简介和链接地址',
  `file` varchar(64) NOT NULL DEFAULT '' COMMENT '文件',
  `remarks` text COMMENT '备注',
  `created` int(11) NOT NULL COMMENT '报名时间',
  `user_id` int(11) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

LOCK TABLES `person` WRITE;
/*!40000 ALTER TABLE `person` DISABLE KEYS */;

INSERT INTO `person` (`id`, `group`, `city`, `school`, `name`, `birth`, `domicile`, `id_card`, `is_illegal`, `education`, `mobile`, `email`, `work`, `url`, `file`, `remarks`, `created`, `user_id`)
VALUES
	(1,1,1,'111','11',868377600,'111','111','111','111','11','1111','111','1111','','1111',1477826686,0),
	(2,1,2,'123','123',123,'123','123','123','123','123','123@qq.com','123','123','','123123',1478097333,1);

/*!40000 ALTER TABLE `person` ENABLE KEYS */;
UNLOCK TABLES;


# Dump of table team
# ------------------------------------------------------------

DROP TABLE IF EXISTS `team`;

CREATE TABLE `team` (
  `id` int(11) NOT NULL AUTO_INCREMENT COMMENT 'ID',
  `tid` int(11) NOT NULL COMMENT '团队ID',
  `name` varchar(32) NOT NULL DEFAULT '' COMMENT '成员姓名',
  `sex` tinyint(2) NOT NULL COMMENT '成员性别',
  `age` tinyint(8) NOT NULL COMMENT '成员年龄',
  `education` varchar(32) NOT NULL DEFAULT '' COMMENT '学历',
  `domicile` varchar(128) NOT NULL DEFAULT '' COMMENT '户籍地',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

LOCK TABLES `team` WRITE;
/*!40000 ALTER TABLE `team` DISABLE KEYS */;

INSERT INTO `team` (`id`, `tid`, `name`, `sex`, `age`, `education`, `domicile`)
VALUES
	(1,3,'111',0,127,'111','111'),
	(2,4,'111',1,111,'111','1111'),
	(3,4,'111',1,111,'11','11'),
	(4,4,'111',1,111,'111','1111'),
	(5,5,'111',1,111,'111','1111'),
	(6,5,'111',1,111,'11','11'),
	(7,5,'111',1,111,'111','1111'),
	(8,6,'111',1,111,'111','1111'),
	(9,6,'111',1,111,'11','11'),
	(10,6,'111',1,111,'111','1111'),
	(11,7,'131',0,11,'12','11'),
	(12,7,'11',0,11,'12','afs'),
	(13,7,'131',0,11,'12','11');

/*!40000 ALTER TABLE `team` ENABLE KEYS */;
UNLOCK TABLES;


# Dump of table team_registration
# ------------------------------------------------------------

DROP TABLE IF EXISTS `team_registration`;

CREATE TABLE `team_registration` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `city` tinyint(8) NOT NULL COMMENT '城市',
  `school` varchar(128) NOT NULL DEFAULT '' COMMENT '毕业学校',
  `rep_name` varchar(16) NOT NULL DEFAULT '' COMMENT '参赛代表姓名',
  `birth` int(11) NOT NULL COMMENT '出生年月',
  `id_card` varchar(32) NOT NULL COMMENT '身份证号',
  `is_illegal` varchar(128) NOT NULL DEFAULT '' COMMENT '有无违法违纪行为声明',
  `education` varchar(32) NOT NULL DEFAULT '' COMMENT '学历',
  `mobile` char(11) NOT NULL COMMENT '联系号码',
  `email` varchar(64) NOT NULL DEFAULT '' COMMENT '邮箱',
  `enterprise` varchar(128) NOT NULL DEFAULT '' COMMENT '项目或企业名称',
  `credit` varchar(128) NOT NULL COMMENT '工商注册上的信用代码',
  `platform` tinyint(4) NOT NULL COMMENT '电商平台',
  `introduction` text COMMENT '简介',
  `file_rep` varchar(128) NOT NULL DEFAULT '' COMMENT '附件',
  `created` int(11) NOT NULL COMMENT '报名时间',
  `user_id` int(11) NOT NULL DEFAULT '0',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

LOCK TABLES `team_registration` WRITE;
/*!40000 ALTER TABLE `team_registration` DISABLE KEYS */;

INSERT INTO `team_registration` (`id`, `city`, `school`, `rep_name`, `birth`, `id_card`, `is_illegal`, `education`, `mobile`, `email`, `enterprise`, `credit`, `platform`, `introduction`, `file_rep`, `created`, `user_id`)
VALUES
	(1,18,'111','1111',868377600,'111111111111','111','11111','11111','11111','111','11111',1,'sdfsdfsdfsdfsdfds','',1477822299,0),
	(3,18,'111','1111',868377600,'111111111111','111','11111','11111','11111','111','11111',1,'sdfsdfsdfsdfsdfds','',1477823175,0),
	(4,1,'111','11',868377600,'11','111','111','11','11','11','111',1,'111','',1477823373,0),
	(5,1,'111','11',868377600,'11','111','111','11','11','11','111',1,'111','',1477823446,0),
	(6,1,'111','11',868377600,'11','111','111','11','11','11','111',1,'111','',1477823561,0),
	(7,2,'faaas','dadsf',868377600,'12312312','13123','1313123','1313123','1312312@qq.com','1231','3123123',3,'13123','',1478094705,1);

/*!40000 ALTER TABLE `team_registration` ENABLE KEYS */;
UNLOCK TABLES;


# Dump of table upload
# ------------------------------------------------------------

DROP TABLE IF EXISTS `upload`;

CREATE TABLE `upload` (
  `id` int(10) NOT NULL AUTO_INCREMENT,
  `user_type` int(10) NOT NULL DEFAULT '0' COMMENT '用户类型，管理平台0',
  `user_id` int(10) NOT NULL COMMENT '用户ID',
  `item_type` int(10) NOT NULL DEFAULT '0',
  `item_id` int(10) NOT NULL DEFAULT '0',
  `name` varchar(100) NOT NULL,
  `file` varchar(50) NOT NULL,
  `size` int(10) NOT NULL DEFAULT '0',
  `ext` varchar(5) NOT NULL,
  `thumbs` varchar(32) NOT NULL COMMENT '缩略图',
  `uniqid` varchar(15) NOT NULL,
  `status` tinyint(2) NOT NULL DEFAULT '1' COMMENT '1->被使用，2->已删除',
  `created` int(10) NOT NULL DEFAULT '0',
  PRIMARY KEY (`id`),
  UNIQUE KEY `name` (`name`),
  UNIQUE KEY `file` (`file`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='上传表';

LOCK TABLES `upload` WRITE;
/*!40000 ALTER TABLE `upload` DISABLE KEYS */;

INSERT INTO `upload` (`id`, `user_type`, `user_id`, `item_type`, `item_id`, `name`, `file`, `size`, `ext`, `thumbs`, `uniqid`, `status`, `created`)
VALUES
	(1,0,0,0,0,'573c4331bf0af.jpg','/upload/1605/1818/25/573c4331bf0af.jpg',162944,'jpg','','',1,1463567153),
	(2,0,0,0,0,'573c43782e07a.jpg','/upload/1605/1818/27/573c43782e07a.jpg',233009,'jpg','','',1,1463567224),
	(3,0,0,0,0,'573c438838ff0.jpg','/upload/1605/1818/27/573c438838ff0.jpg',233009,'jpg','','',1,1463567240),
	(4,0,0,0,0,'573c43c2c4bae.jpg','/upload/1605/1818/28/573c43c2c4bae.jpg',233009,'jpg','','',1,1463567298),
	(5,0,0,0,0,'573c440b11133.jpg','/upload/1605/1818/29/573c440b11133.jpg',233009,'jpg','','',1,1463567371),
	(6,0,0,0,0,'573c4432918e8.jpg','/upload/1605/1818/30/573c4432918e8.jpg',233009,'jpg','','',1,1463567410),
	(7,0,0,0,0,'573c4479c41c9.jpg','/upload/1605/1818/31/573c4479c41c9.jpg',233009,'jpg','','',1,1463567481),
	(8,0,0,0,0,'573c44878456b.jpg','/upload/1605/1818/31/573c44878456b.jpg',233009,'jpg','','',1,1463567495),
	(9,0,0,0,0,'573c449dd0557.jpg','/upload/1605/1818/31/573c449dd0557.jpg',233009,'jpg','','',1,1463567517),
	(10,0,0,0,0,'573c44cd61e9e.jpg','/upload/1605/1818/32/573c44cd61e9e.jpg',233009,'jpg','','',1,1463567565),
	(11,0,0,0,0,'573c44e18559f.jpg','/upload/1605/1818/33/573c44e18559f.jpg',162944,'jpg','','',1,1463567585),
	(12,0,0,0,0,'573c44e8906fa.jpg','/upload/1605/1818/33/573c44e8906fa.jpg',233009,'jpg','','',1,1463567592),
	(13,0,0,0,0,'573c44e89f92d.jpg','/upload/1605/1818/33/573c44e89f92d.jpg',162944,'jpg','','',1,1463567592),
	(14,0,0,0,0,'573c45177d50d.jpg','/upload/1605/1818/33/573c45177d50d.jpg',162944,'jpg','','',1,1463567639),
	(15,0,0,0,0,'573c452d935a5.jpg','/upload/1605/1818/34/573c452d935a5.jpg',233009,'jpg','','',1,1463567661),
	(16,0,0,0,0,'573c453e19065.jpg','/upload/1605/1818/34/573c453e19065.jpg',233009,'jpg','','',1,1463567678),
	(17,0,0,0,0,'573c45e14fcb4.jpg','/upload/1605/1818/37/573c45e14fcb4.jpg',162944,'jpg','','',1,1463567841),
	(18,0,0,0,0,'573c45f52a3ac.jpg','/upload/1605/1818/37/573c45f52a3ac.jpg',233009,'jpg','','',1,1463567861),
	(19,0,0,0,0,'573c46054d9c7.jpg','/upload/1605/1818/37/573c46054d9c7.jpg',233009,'jpg','','',1,1463567877),
	(20,0,0,0,0,'573c461d4f2ac.jpg','/upload/1605/1818/38/573c461d4f2ac.jpg',233009,'jpg','','',1,1463567901),
	(21,0,0,0,0,'573c46364b1f1.jpg','/upload/1605/1818/38/573c46364b1f1.jpg',233009,'jpg','','',1,1463567926),
	(22,0,0,0,0,'573c46452d0e4.jpg','/upload/1605/1818/39/573c46452d0e4.jpg',233009,'jpg','','',1,1463567941),
	(23,0,0,0,0,'573c465091119.jpg','/upload/1605/1818/39/573c465091119.jpg',233009,'jpg','','',1,1463567952),
	(24,0,0,0,0,'573c465af0eab.jpg','/upload/1605/1818/39/573c465af0eab.jpg',233009,'jpg','','',1,1463567962),
	(25,0,0,0,0,'573c468ef2602.jpg','/upload/1605/1818/40/573c468ef2602.jpg',233009,'jpg','','',1,1463568014),
	(26,0,0,0,0,'573c46ce4d7d0.jpg','/upload/1605/1818/41/573c46ce4d7d0.jpg',233009,'jpg','','',1,1463568078),
	(27,0,0,0,0,'573c4711271d7.jpg','/upload/1605/1818/42/573c4711271d7.jpg',233009,'jpg','','',1,1463568145),
	(28,0,0,0,0,'573c4718ea4ad.jpg','/upload/1605/1818/42/573c4718ea4ad.jpg',233009,'jpg','','',1,1463568152),
	(29,0,0,0,0,'573d162d387db.jpg','/upload/1605/1909/26/573d162d387db.jpg',233009,'jpg','','',1,1463621165),
	(30,0,0,0,0,'573d16a47442f.jpg','/upload/1605/1909/28/573d16a47442f.jpg',233009,'jpg','','',1,1463621284),
	(31,0,0,0,0,'573d16b0dea2f.jpg','/upload/1605/1909/28/573d16b0dea2f.jpg',233009,'jpg','','',1,1463621296),
	(32,0,0,0,0,'573d16be3a071.jpg','/upload/1605/1909/28/573d16be3a071.jpg',233009,'jpg','','',1,1463621310),
	(33,0,0,0,0,'573d170768373.jpg','/upload/1605/1909/29/573d170768373.jpg',220014,'jpg','','',1,1463621383),
	(34,0,0,0,0,'573d170b7e7d5.jpg','/upload/1605/1909/29/573d170b7e7d5.jpg',233009,'jpg','','',1,1463621387),
	(35,0,0,0,0,'573d17135ab5e.jpg','/upload/1605/1909/29/573d17135ab5e.jpg',220014,'jpg','','',1,1463621395),
	(36,0,0,0,0,'573d17198ecca.jpg','/upload/1605/1909/30/573d17198ecca.jpg',220014,'jpg','','',1,1463621401),
	(37,0,0,0,0,'573d1719b0fb2.jpg','/upload/1605/1909/30/573d1719b0fb2.jpg',233009,'jpg','','',1,1463621401),
	(38,0,0,0,0,'573d1719cadc8.jpg','/upload/1605/1909/30/573d1719cadc8.jpg',162944,'jpg','','',1,1463621401),
	(39,0,0,0,0,'573d185bd2883.jpg','/upload/1605/1909/35/573d185bd2883.jpg',220014,'jpg','','',1,1463621723),
	(40,0,0,0,0,'573d1878a0e2a.jpg','/upload/1605/1909/35/573d1878a0e2a.jpg',220014,'jpg','','',1,1463621752),
	(41,0,0,0,0,'573d187b07d7a.jpg','/upload/1605/1909/35/573d187b07d7a.jpg',233009,'jpg','','',1,1463621755),
	(42,0,0,0,0,'573d187e05715.jpg','/upload/1605/1909/35/573d187e05715.jpg',162944,'jpg','','',1,1463621758),
	(43,0,0,0,0,'573d18ade63b9.jpg','/upload/1605/1909/36/573d18ade63b9.jpg',220014,'jpg','','',1,1463621805),
	(44,0,0,0,0,'573d18ebecf55.jpg','/upload/1605/1909/37/573d18ebecf55.jpg',233009,'jpg','','',1,1463621867),
	(45,0,0,0,0,'573d193cd56e1.jpg','/upload/1605/1909/39/573d193cd56e1.jpg',220014,'jpg','','',1,1463621948),
	(46,0,0,0,0,'573d197e0c311.jpg','/upload/1605/1909/40/573d197e0c311.jpg',233009,'jpg','','',1,1463622014),
	(47,0,0,0,0,'573d1988ee2c9.jpg','/upload/1605/1909/40/573d1988ee2c9.jpg',220014,'jpg','','',1,1463622024),
	(48,0,0,0,0,'573d1b5b98a64.jpg','/upload/1605/1909/48/573d1b5b98a64.jpg',220014,'jpg','','',1,1463622491),
	(49,0,0,0,0,'573d1d7363189.jpg','/upload/1605/1909/57/573d1d7363189.jpg',233009,'jpg','','',1,1463623027),
	(50,0,0,0,0,'573d1d8f7d1f9.jpg','/upload/1605/1909/57/573d1d8f7d1f9.jpg',233009,'jpg','','',1,1463623055),
	(51,0,0,0,0,'573d1d9f3419b.jpg','/upload/1605/1909/57/573d1d9f3419b.jpg',135487,'jpg','','',1,1463623071),
	(52,0,0,0,0,'573d1dd5a23c5.jpg','/upload/1605/1909/58/573d1dd5a23c5.jpg',233009,'jpg','','',1,1463623125),
	(53,0,0,0,0,'573d1e0c0aa6c.jpg','/upload/1605/1909/59/573d1e0c0aa6c.jpg',220014,'jpg','','',1,1463623180),
	(54,0,0,0,0,'573d1ed812df2.jpg','/upload/1605/1910/03/573d1ed812df2.jpg',233009,'jpg','','',1,1463623384),
	(55,0,0,0,0,'573d1ee21a947.jpg','/upload/1605/1910/03/573d1ee21a947.jpg',162944,'jpg','','',1,1463623394),
	(56,0,0,0,0,'573d1f0b23b2b.jpg','/upload/1605/1910/03/573d1f0b23b2b.jpg',233009,'jpg','','',1,1463623435),
	(57,0,0,0,0,'573d1f11a81d1.jpg','/upload/1605/1910/04/573d1f11a81d1.jpg',162944,'jpg','','',1,1463623441),
	(58,0,0,0,0,'573d201533dd5.jpg','/upload/1605/1910/08/573d201533dd5.jpg',162944,'jpg','','',1,1463623701),
	(59,0,0,0,0,'573d24bb04c22.jpg','/upload/1605/1910/28/573d24bb04c22.jpg',162944,'jpg','','',1,1463624891),
	(60,0,0,0,0,'573d24c0571bb.jpg','/upload/1605/1910/28/573d24c0571bb.jpg',135487,'jpg','','',1,1463624896),
	(61,0,0,0,0,'573d9321a5956.jpg','/upload/1605/1918/19/573d9321a5956.jpg',220014,'jpg','','',1,1463653153);

/*!40000 ALTER TABLE `upload` ENABLE KEYS */;
UNLOCK TABLES;


# Dump of table user
# ------------------------------------------------------------

DROP TABLE IF EXISTS `user`;

CREATE TABLE `user` (
  `id` int(11) unsigned NOT NULL AUTO_INCREMENT,
  `username` varchar(64) NOT NULL DEFAULT '',
  `password` char(32) NOT NULL DEFAULT '',
  `email` varchar(64) NOT NULL DEFAULT '',
  `realname` varchar(64) NOT NULL DEFAULT '' COMMENT '真实名字',
  `group` tinyint(1) NOT NULL DEFAULT '0' COMMENT '组别',
  `region_id` int(11) NOT NULL DEFAULT '0' COMMENT '地区ID',
  `idcard` varchar(32) NOT NULL DEFAULT '' COMMENT '身份证号',
  `mobile` varchar(16) NOT NULL DEFAULT '' COMMENT '手机号码',
  `sign_num` int(11) NOT NULL DEFAULT '0' COMMENT '抽签号码',
  `created` int(11) NOT NULL DEFAULT '0',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

LOCK TABLES `user` WRITE;
/*!40000 ALTER TABLE `user` DISABLE KEYS */;

INSERT INTO `user` (`id`, `username`, `password`, `email`, `realname`, `group`, `region_id`, `idcard`, `mobile`, `sign_num`, `created`)
VALUES
	(1,'18976255221','fef25693b2f36e20ee31048df55ec0a8','413787280@qq.com','赖贝宁',1,0,'460102199104120619','18976255221',1166,1479309694),
	(2,'18489830269','6b45b43064bbd5ee352e423331e67830','378188500@qq.com','张小波',1,0,'460028200004033618','18489830269',0,1479309694),
	(3,'13389820680','f0cdf9bdf9a2f8943d6765c1719bbba6','572770749@qq.com','王潇仪',1,0,'460026199707010027','13389820680',0,1479309694),
	(4,'18876114657','2a89f2b47ca8a0e2ab8a5bdc49854c4f','502102712@qq.com','陈小静',1,0,'460003199303142643','18876114657',0,1479309694),
	(5,'17389702339','15ff681aecdde6810a7ad487dd923f70','973761323@qq.com','金鑫',1,0,'211103199704083015','17389702339',0,1479309694),
	(6,'18610294162','c9dd5fcb3b0eb0b7b372491d8bef98bd','542075311@qq.com','林海峰',1,0,'150430198201160414','18610294162',0,1479309694),
	(7,'18976220687','648e19a68bbdf2cf1c53753e39e9b232','1129191811@qq.com','何君秀',1,0,'460036199509034127','18976220687',0,1479309694),
	(8,'18117620979','a24ceeaa40602684c454cd981773ea34','scmy20@vip.qq.com','杨康',1,0,'510781199601010691','18117620979',0,1479309694),
	(9,'18876863979','62bf58064502de1f46d6f4519f2b53f5','2718807869@qq.com','蚁智欢',1,0,'44058319941117287X','18876863979',0,1479309694),
	(10,'18898903683','68f84763a8130cf9830d8916eb588d2d','1390999678@qq.com','黄玉嫦',1,0,'440781199609045022','18898903683',0,1479309694),
	(11,'13025883711','9646949fa2fd9fe428231e386bafd18b','1923303054@qq.com','谭金花',1,0,'440783199602203625','13025883711',0,1479309694),
	(12,'15008954841','877cfd44a51965b7779e40c87d982cf3','wenzhen97@qq.com','符文珍',1,0,'469005199705093048','15008954841',0,1479309694),
	(13,'18389735191','8ec495adbcbb8f7a53cab4426c811cb1','429733734@qq.com','陈晓',1,0,'330326199611243210','18389735191',0,1479309694),
	(14,'13208900032','b96af20575c5e20181dfc9023ab6cdac','435507661@qq.com','梁晓欣',1,0,'441721199611065529','13208900032',0,1479309694),
	(15,'18889740477','65f090c1caa0221c6ac281efeeb19fdc','852189104@qq.com','黄燕蕾',1,0,'460001199609140728','18889740477',0,1479309694),
	(16,'18876156098','0d060d902e1f730ce0d318deef4badb3','1275137332@qq.com','梁忆娣',1,0,'441721199611083081','18876156098',0,1479309694),
	(17,'18889385773','cb7f687a2fc2e8ab554e419a119082ab','2764233853@qq.com','李燕兰',1,0,'350424199601162229','18889385773',0,1479309694),
	(18,'18976976139','824c823a9389de2da02c50fc48429fb0','362472100@qq.com','林小亮',1,0,'460028199206021230','18976976139',0,1479309694),
	(19,'13537621520','0e7e5a710e9b24b2182b6557d6f777e5','1217207163@qq.com','李鹭玉',1,0,'35042619910909604X','13537621520',0,1479309694),
	(20,'15500970919','ba60bd8cbb4f42f9fa01ba4fe3d11960','1322088642@qq.com','张鹏',1,0,'513701199909075011','15500970919',0,1479309694),
	(21,'18789629718','fa5e111937f9b4ce95e0834ad4ee7df8','1175030171@qq.com','林扬妹',1,0,'460028199507144429','18789629718',0,1479309694),
	(22,'18289669686','19b25830af13c9c8c8ad8c01730c6e53','331842234@qq.com','王汝友',1,0,'460002198509303026','18289669686',0,1479309694),
	(23,'18289556082','26b57c4771f78e1d197b503d1d60e840','2504433836@qq.com','李佳泽',1,0,'460004200010040629','18289556082',0,1479309694),
	(24,'17789867083','43ebb8f9b59f9f468605f37a3156290a','1148465463@qq.com','符丹月',1,0,'460300199705280042','17789867083',0,1479309694),
	(25,'18789063855','d9a701aa94c992080db381d4d93be200','531168008@qq.com','李晓茜',1,0,'460027199606097924','18789063855',0,1479309694),
	(26,'18708978607','3dafdafd06863f9e3e2c3e2f39ae60bd','443557275@qq.com','刘丹花',1,0,'460003199403150448','18708978607',0,1479309694),
	(27,'13518811030','ae963fe7c8737a6a18023c02ddf7b7e4','guitarchen@163.com','许玲玲',1,0,'131182198504102622','13518811030',0,1479309694),
	(28,'13215783093','890966d6ea71757e549d3a38a5478200','13215783093@163.com','周仁富',1,0,'460004199109274219','13215783093',0,1479309694),
	(29,'15595907933','d762e44b387a52ef9c485d9e8ff7540b','2550040996@qq.com','符美美',1,0,'460003199511227027','15595907933',0,1479309694),
	(30,'17786941223','5f6d546c6d3e5d68228bdc32a9938206','1432912182@qq.com','郑亚培',1,0,'460034199004081216','17786941223',0,1479309694),
	(31,'15708990602','ec21ca1c223c95cd463d3ee62047b524','1965603456@qq.com','周少磊',1,0,'362502199605217013','15708990602',0,1479309694),
	(32,'18389955851','8c3b5f5ad6c72d4d3bde302a20d1423a','xiaoying_oO@outllook.com','刘晓英',1,0,'532126199409040725','18389955851',0,1479309694),
	(33,'13178939266','c2d748605d6993154be28cc92a6d4ad9','614612184@qq.com','朱瑞',1,0,'321284199703285212','13178939266',0,1479309694),
	(34,'17733106790','43f1eaba3ae5476655209c180194f913','17733106790@163.com','吕珊珊',1,0,'440921199710045785','17733106790',0,1479309694),
	(35,'17733106645','d2580b6c93496fadadef8099f68078a0','1580896424@qq.com','黎郭平',1,0,'46902819961206471X','17733106645',0,1479309694),
	(36,'18520098709','ae02cbfc1a347736cb65cfac3bec8b81','18520098709@163.com','廖世凯',1,0,'445222199604241056','18520098709',0,1479309694),
	(37,'13158981225','ade2ea9c089a695ed3e5ff60ed8ba86f','476727922@QQ.COM','李皎余',1,0,'460004198702042828','13158981225',0,1479309694),
	(38,'18289811707','754a15d6c20e4b2508ceb2069fff9648','904116039@qq.com','吴乾桦',1,0,'460026199612031212','18289811707',0,1479309694),
	(39,'17889887362','e5d84ee3097f9b1e129818335ffb8101','447873838@qq.com','江健锟',1,0,'44018219960729001x','17889887362',0,1479309694),
	(40,'18976909659','fb5232a0cd5229aed0134847744897f0','1119246110@qq.com','欧阳合桂',1,0,'460030199801150055','18976909659',0,1479309694),
	(41,'18889380944','508926245cd34764314243dac2bec512','1157919670@qq.com','王守师',1,0,'460200199702135514','18889380944',0,1479309694),
	(42,'18789730751','28bd2bfd349c3f32f4c0ab6813d3a1ac','chuanqihechuanqi@163.com','陈权',1,0,'460002198609150012','18789730751',0,1479309694),
	(43,'15103031103','62aff4a62addaed22080c647a20d8192','339140100@qq.com','陈积盛',1,0,'460033199005150010','15103031103',0,1479309694),
	(44,'15119678972','d7812b4bc1b52b8e1df49163b9de3006','11363368982@qq.com','廖海锋',1,0,'440923199502034339','15119678972',0,1479309694),
	(45,'13637564925','71c7de8212d8f1b7af62df275dc533d8','510786192@qq.com','陈征荣',1,0,'460021199509254416','13637564925',0,1479309694),
	(46,'15008061970','96b8b788db8e27ec0a599a4df35772b4','15008061970@163.com','陈亚宽',1,0,'460034199604252410','15008061970',0,1479309694),
	(47,'17733122653','9f4e7d3753e3242dfef5208f34bd3a75','18718033429@163.com','刘新华',1,0,'440221199509203018','17733122653',0,1479309694),
	(48,'18889625745','c34f7a989fb96248753789a0f96c6a49','289771373@qq.com','张智勇',1,0,'511527199604210332','18889625745',0,1479309694),
	(49,'13509089671','0e4b539885e86d6b20976a50f7a16921','2359859729@qq.com','吕馨',1,0,'430722199807065081','13509089671',0,1479309694),
	(50,'13976691816','2624f017eaaa7cab0ba44fed26f2c812','104617840@qq.com','陈晓丹',1,0,'360321198110010012','13976691816',0,1479309694),
	(51,'13876457434','bcc80ca42569ba921b95b38af1cd260d','1205181180@qq.com','林三',1,0,'460033199407207518','13876457434',0,1479309694),
	(52,'13758842772','b145b67606eb562c7e78493e34b6a83a','1286503403@qq.com','陈开会',1,0,'330327199508102133','13758842772',0,1479309694),
	(53,'18889365394','76c4bd40865bec5accc15782cc77605c','14846363737@qq.com','许土英',1,0,'460003199411062843','18889365394',0,1479309694),
	(54,'18889204158','d7b2401699bcfe0dafb16f24dd3d0186','916784535@qq.com','符林平',1,0,'46000719880702801X','18889204158',0,1479309694),
	(55,'13876724797','05418b68da8c72eca4b030604af2a443','286501529@qq.com','符家慢',1,0,'460007198906078098','13876724797',0,1479309694),
	(56,'18889250530','1a2a3f2099f091df34d03d0cf8ee6e8b','591989772@qq.com','林其进',1,0,'460007198712048018','18889250530',0,1479309694),
	(57,'18907645895','0bbede411a5070bea94aca8bd844def5','1143082909@qq.com','王志宇',1,0,'460103200001203317','18907645895',0,1479309694),
	(58,'13368942737','30fd73fd649beec2b28b1c015d9a5998','2580129298@qq.com','喻楚添',1,0,'120110200011040334','13368942737',0,1479309694),
	(59,'13876247936','dbf36c35a7f1273bf51f3f39b4a4d0ad','1479832418@qq.com','林妙倩',1,0,'460103200006301821','13876247936',0,1479309694),
	(60,'13307535485','2a61feece1c90a63e9df0535f9b9d9c3','243767112@QQ.COM','胡善淳',1,0,'460004200003270012','13307535485',0,1479309694),
	(61,'17889780337','4e274f11be7be4d950d5832c2f562896','464723403@qq.com','赵欢',1,0,'510823199711064028','17889780337',0,1479309694),
	(62,'18789031530','44e5f04c36c1e42ed888197b17f0a0f6','1285153631@qq.com','白才颖',1,0,'460022199610011220','18789031530',0,1479309694),
	(63,'13876188190','4812e03d1970be038cd4f591a9ec723c','1175187185@qq.com','唐甸存',1,0,'460107199906262610','13876188190',0,1479309694),
	(64,'18117714301','b47341d5f885dc89ea7cca2dfa0fc8e8','1364325632@qq.com','宋智仁',1,0,'460035199912231319','18117714301',0,1479309694),
	(65,'18687150187','acce0d8643d7482fe41ad5951440f488','434712391@qq.com','王俊杰',1,0,'530112199603200913','18687150187',0,1479309694),
	(66,'18876646816','55871c9253e66d2d25136f5f856f941e','1757907338@qq.com','银雪蓉',1,0,'460030199801096925','18876646816',0,1479309694),
	(67,'15708996586','4a4a7f4b3c512f8fe376817e3df540da','1342190832@qq.com','王朔',1,0,'371526199706233217','15708996586',0,1479309694),
	(68,'17798454482','530b021ddea9b87b5e8de4ab9f3356a3','1554960631@qq.com','段康康',1,0,'342221199608267816','17798454482',0,1479309694),
	(69,'18389364750','288ead6ee5a37ad72d07bcf2956c06fb','1904314100@qq.com','陈威振',1,0,'469003199509208917','18389364750',0,1479309694),
	(70,'18789355524','77333f40fd73ea7cc8f34536523cbb5b','1969645823@qq.com','王珠倩',1,0,'460036199909232421','18789355524',0,1479309694),
	(71,'13876679305','387c91a2003c70c5dcf81ccfd288e768','609062203@qq.com','欧阳炅',1,0,'360430199601150059','13876679305',0,1479309694),
	(72,'18217983502','405a88bacbdfa2d44c9fb327948fd994','1548162728@qq.com','王紫洁',1,0,'460036200008182442','18217983502',0,1479309694),
	(73,'18389318133','59a6edbd66eefc78b582cbf973ee39ca','2307844412@qq.com','黄海康',1,0,'460034199910220943','18389318133',0,1479309694),
	(74,'13457476044','9c552cdb396f4b7d50068e8b83a87c66','rorowzt@foxmail.com','吴贞涛',1,0,'450481199512012457','13457476044',0,1479309694),
	(75,'15799063213','3c10b3ad8f1ed39cca3212b7dca0b6ec','1622247657@qq.com','符必伶',1,0,'460029200012106027','15799063213',0,1479309694),
	(76,'18289306359','1fd90e2fad17f2878cf686da907e5991','285912376@qq.com','文寿健',1,0,'469026199610201212','18289306359',0,1479309694),
	(77,'15157847057','05908748e3be0fbf1825aff323efcc7c','814842413@qq.com','洪艳',1,0,'332501199807030028','15157847057',0,1479309694),
	(78,'18789180719','c3330113c8d23617a71fa01ef093a80e','1482079738@qq.com','李明兰',1,0,'460003199911274228','18789180719',0,1479309694),
	(79,'13976383680','05a89c3fe991afb000ee59ed7292686b','1654041359@qq.com','梁昌昭',1,0,'460102200002031215','13976383680',0,1479309694),
	(80,'15708998851','2ad1348eeb3dba7bd6b735b8e4180d5b','1516278160@qq.com','刘张主',1,0,'469027199901225413','15708998851',0,1479309694),
	(81,'18289677879','ddf7a70927b87bf274a49dd369a0e708','1473317092@qq.com','梁烜杰',1,0,'460003200101111414','18289677879',0,1479309694),
	(82,'18889335485','af5778b2a2631b7fbbb0a2fd0b86c057','1041668834@qq.com','许宇吉',1,0,'460006199909080212','18889335485',0,1479309694),
	(83,'13637541803','ce85570330f0169fc15cc01e50990cd4','1194310773@qq.com','李华景',1,0,'440880199901163232','13637541803',0,1479309694),
	(84,'13976022485','7d8b446d46c46a03ba1d8ec5f978bf19','1599239514@qq.com','王大茂',1,0,'46000219990530181x','13976022485',0,1479309694),
	(85,'17784695461','38054de0fd00a7cc9969bd6e1ada4428','1637894735@qq.com','王威',1,0,'460200199901180019','17784695461',0,1479309694),
	(86,'18289307510','e753e6acc7464892ace7e8fbccac8054','www.qiuxiang@qq.com','邱贤隆',1,0,'460007199812046196','18289307510',0,1479309694),
	(87,'17889981636','ee305fd76ad0e5b993909ba3fd0fca19','2546879445@qq.com','黄焕洪',1,0,'460003199908021430','17889981636',0,1479309694),
	(88,'18389850059','3c77b9358a5b87b75f6d762900b5f730','1078484698@qq.com','李青青',1,0,'460033199908061180','18389850059',0,1479309694),
	(89,'13215721209','052ecd6e8fe7c04ad626c070c47aa7e8','1127248034@qq.com','李华哲',1,0,'460028199912285217','13215721209',0,1479309694),
	(90,'15289936048','3d50ee4e16281592cda31f8e6a3fa7ed','2601342964@qq.com','符传浩',1,0,'460025199812084216','15289936048',0,1479309694),
	(91,'18289902320','80da87a7b337a082e122449021c4164a','923224105@qq.com','王显超',1,0,'460034200006170015','18289902320',0,1479309694),
	(92,'18789823789','56747dff55531206b3341a134c650322','229482915@qq.com','严洪敏',1,0,'460002199312292516','18789823789',0,1479309694),
	(93,'18889524745','645f180b11c123a84c5de6759b7129ae','1826035919@qq.com','赵晓',1,0,'522401199610179021','18889524745',0,1479309694),
	(94,'18889523979','9cc3e8f721832f5ebd0aecd4de4aa0b3','1878916099@qq.com','赵润',1,0,'522401199710901005','18889523979',0,1479309694),
	(95,'18217849011','a0cee3459baa59c9419abf0ad6062c98','1178867973@qq.com','张玉莹',1,0,'460005199906181724','18217849011',0,1479309694),
	(96,'15708997505','1304db1efd8f1fe25304ef2db86f1337','605067919@qq.com','杨浩',1,0,'46010420000613031x','15708997505',0,1479309694),
	(97,'18217885953','a9fc9c894b76eea1e36c6b109781af2b','511665999@qq.com','许照明',1,0,'460003199802102072','18217885953',0,1479309694),
	(98,'15103602219','754a15d6c20e4b2508ceb2069fff9648','1625595126@qq.com','徐辉义',1,0,'460034199903031212','15103602219',0,1479309694),
	(99,'18976462150','fbc1444d2b09d2c1fcbb83867fa9c8be','2726931402@qq.com','邢福义',1,0,'460005199911276410','18976462150',0,1479309694),
	(100,'13700488275','8cd7253a9043c4164b5c574156cfaf85','2014625636@qq.com','王忠睿',1,0,'460025199912212131','13700488275',0,1479309694),
	(101,'17889887935','89b48f9d0739222de1c5eb57318413be','675255080@qq.com','俞爱伦',1,0,'440233199611013515','17889887935',0,1479309694),
	(102,'18889576350','d3db0650d38a1587da83016624b98f7c','2442947957@qq.com','王萧琪',1,0,'46002820000822442x','18889576350',0,1479309694),
	(103,'18289809502','5c82b630646ba7b60835b9c6e9c45857','2294948157@qq.com','王芳灵',1,0,'469024199908244423','18289809502',0,1479309694),
	(104,'18789910469','5ca75853affe475142070d9d1beeea1c','954047592@qq.com','王凡',1,0,'460027199509171731','18789910469',0,1479309694),
	(105,'17889880092','1b7d8ab86c1b2440780c622c5bbd3397','3325567136@qq.com','谭志伟',1,0,'469003199909113212','17889880092',0,1479309694),
	(106,'13876562336','5d56c5dfdf6bd40beebe493073bd18ff','2296357651@qq.com','钱彬彬',1,0,'460006199909154111','13876562336',0,1479309694),
	(107,'18976074991','ff3624cf58f3589f8cb4408592d7fa6c','1536346909@qq.com','潘婷婷',1,0,'460003199808161022','18976074991',0,1479309694),
	(108,'13976671804','386910e3a03dc1da634b45423b23985c','2497437391@qq.com','欧继煜',1,0,'460030199805125711','13976671804',0,1479309694),
	(109,'18389952803','9e0217f9f20c9315ddd0f2f6f1f9cf7b','2359446267@qq.com','莫海涛',1,0,'460025199904103314','18389952803',0,1479309694),
	(110,'15289911042','4e2be0935fb9409e1ebf12ca8004df20','13976172971@qq.com','刘思华',1,0,'460035199306142527','15289911042',0,1479309694),
	(111,'13822061305','00500cac10c10fb7c7794c20d4295cf6','1657252334@qq.com','林志财',1,0,'445222199911092951','13822061305',0,1479309694),
	(112,'13337578829','8f67c17ca5971ea1c67b370d6d2c635b','1031043781@qq.com','梁其鹏',1,0,'460106199908014411','13337578829',0,1479309694),
	(113,'13976055916','88bcc29b9ed11bdd33f01ca6d23165eb','973245354@qq.com','李日标',1,0,'460027199902040618','13976055916',0,1479309694),
	(114,'15203080672','d36588560849b5331b607fb56cb9da6d','577150758@qq.com','李富才',1,0,'460003199806122030','15203080672',0,1479309694),
	(115,'18789176711','2bd3e11357b2806555e5386498852b4c','1635312733@qq.com','黎兴弯',1,0,'460034199912083612','18789176711',0,1479309694),
	(116,'15708993810','6cfc2fedfee01459e208297c58884fee','460857635@qq.com','康兆至',1,0,'230281199812220213','15708993810',0,1479309694),
	(117,'15708998532','47b9007fa40eae6b1f575a063d4ea798','2680301007@qq.com','姜宏进',1,0,'460027200012135319','15708998532',0,1479309694),
	(118,'18289688624','7846cec203b733446a17063a6da61f42','1974163817@qq.com','胡丽霞',1,0,'460034199606050927','18289688624',0,1479309694),
	(119,'18389362133','d4e53eaf5cdeb4dcb5bdb9a9923e60c1','2428921003@qq.com','何东城',1,0,'460003200006145819','18389362133',0,1479309694),
	(120,'18889622767','eb3d6a1d2004e4cc1533cd881a6475c7','212173362@qq.com','韩王冠',1,0,'469005200012134535','18889622767',0,1479309694),
	(121,'15501750180','83dde735cd87c58e42c8752f1537b690','1763250810@qq.com','古永志',1,0,'46003319971116417X','15501750180',0,1479309694),
	(122,'18289670194','9edcee7aacb8d528fbd43211db5c6942','183558310@qq.com','符晓悦',1,0,'460030199909201221','18289670194',0,1479309694),
	(123,'15109811406','ae013b2b083addf1c0e1115baf0d510d','2302956767@qq.com','陈井龙',1,0,'469003200002286110','15109811406',0,1479309694),
	(124,'15799004300','fbc1444d2b09d2c1fcbb83867fa9c8be','1533421471@qq.com','陈春霞',1,0,'460005199911276410','15799004300',0,1479309694),
	(125,'15708989883','ae94476ddd05a96cc450aaddfdcb4702','906097011@qq.com','胡珊',1,0,'513821199505301845','15708989883',0,1479309694),
	(126,'15708989723','dafbecb32a00631f5bb797b0be7c7d09','2927551282@qq.com','朱启珍',1,0,'530161199608121568','15708989723',0,1479309694),
	(127,'18789191180','7e597b2b6ad68b6b90859762e6441302','1446902280@qq.com','经放明',1,0,'450324199809241311','18789191180',0,1479309694),
	(128,'13976233120','4609062b0ef0c0104d3c6e29a2d10073','709639230@qq.com','林少钊',1,0,'460033199509184919','13976233120',0,1479309694),
	(129,'13876224571','0e066b5ccd2f94cc157cda5aff54bffe','13876224571@163.com','何兰兰',1,0,'460002199611131544','13876224571',0,1479309694),
	(130,'18876749480','4e79e50ca8d91db73d42f17890f6af5a','410944818@qq.com','王小苦',1,0,'469024199606027220','18876749480',0,1479309694),
	(131,'13976690469','a2718373845b748c9deb9b902452fdc5','852460171@qq.com','林志峰',1,0,'460102199808023315','13976690469',0,1479309694),
	(132,'17789815886','49b338752aa93adc1559de60e295dbd9','danielleung@vip.qq.com','梁定然',1,0,'460028198610150937','17789815886',0,1479309694),
	(133,'17889785633','7e1f8fa94e0fe9d3ad8215040aa2abe1','1035198377@qq.com','刘坤',1,0,'411527199604090015','17889785633',0,1479309694),
	(134,'13876483623','6ca32b69985999653976a061219835a4','1439698647@qq.com','邓秀平',1,0,'460003199806253812','13876483623',0,1479309694),
	(135,'13307530557','9b22aa940858f1168fc0397bf7d29ed5','7550282146@qq.com','符荣斯',1,0,'460028199912084810','13307530557',0,1479309694),
	(136,'13976385286','daf8fbd6fed1d3f974b45a68f0a5d4f5','1722063685@qq.com','崔建新',1,0,'460033200005133574','13976385286',0,1479309694),
	(137,'13138902620','bb1732c724b020ceb20baa52fe5efbc8','545657978@qq.com','符雪',1,0,'460005200101131928','13138902620',0,1479309694),
	(138,'18289864832','18e7a4225fb06298cf25e2d6e10903d4','2208611638@qq.com','陈远熙',1,0,'460003200002091833','18289864832',0,1479309694),
	(139,'18876892636','926e768f7331a7140792a223f0c1bdd5','2674587432@qq.com','符永信',1,0,'460006199909132713','18876892636',0,1479309694),
	(140,'18889491555','c71d3cd1008f2a936687a7901a44c55d','2855496780@qq.com','陈贤建',1,0,'460028200011013236','18889491555',0,1479309694),
	(141,'18389797162','8b63f5233daee6334bfc7e3f9e1897ac','522454516@qq.com','杨来耀',1,0,'460025199910094813','18389797162',0,1479309694),
	(142,'18889517079','03b1cf7821936b2ae26219762598430c','1339052262@qq.com','陈倩',1,0,'469021200001093328','18889517079',0,1479309694),
	(143,'18289298477','0fe21ef5fa9ca15937698433cdb445cb','864117270@qq.com','吴巨威',1,0,'460003200003063412','18289298477',0,1479309694),
	(144,'13627520518','ece30091b756b449560af3da31066c0c','1502446212@qq.com','符祖胜',1,0,'460028199911025616','13627520518',0,1479309694),
	(145,'18889395539','db8d344087cf7ddc4f3a82913398fb59','1527266855@qq.com','陈培炀',1,0,'445281200005261552','18889395539',0,1479309694),
	(146,'18289281101','8f6c1e4c0cffecf033ef11f7ff914652','782581439@qq.com','黄渊',1,0,'46003419980206041X','18289281101',0,1479309694),
	(147,'18876810704','da0d2f1bfaa52ad91fe06302280922f8','1730955184@qq.com','韦明华',1,0,'460033199804085374','18876810704',0,1479309694),
	(148,'17889880272','81e91baa7785e5e9c314a1b427ee1c1f','2523063312@qq.com','陈莉莉',1,0,'469024200012235626','17889880272',0,1479309694),
	(149,'18489028063','72717d2f8b723b412a881034a8b7b8e8','1921919233@qq.com','王正煌',1,0,'46002819991117243X','18489028063',0,1479309694),
	(150,'15708998932','ca5aa14d59d35f936ad2e6c981445fac','1172887677@qq.com','邱莨曾',1,0,'469024199909271212','15708998932',0,1479309694),
	(151,'13627531995','86069292656049512e7274aefad11b25','237245912@qq.com','陈会杨',1,0,'460002200007064926','13627531995',0,1479309694),
	(152,'18889371951','7d3f3c7d268d48677fb65516334ca523','1250533174@qq.com','王雨秀',1,0,'469001200001081022','18889371951',0,1479309694),
	(153,'13697516146','57fb6c5755414f4420dcc83dbe721aa7','3083719436@qq.com','罗丹丹',1,0,'511602199707286207','13697516146',0,1479309694),
	(154,'13876682564','601ee083953311e5ceb5a2038b402291','2205233465@qq.com','李龙',1,0,'460004199802185417','13876682564',0,1479309694),
	(155,'18976134271','bf365c8d86810cb26e345d00b566dc85','2830543145@qq.com','王秀文',1,0,'460027199811233737','18976134271',0,1479309694),
	(156,'17889982593','bd432351eb80de9198d0f3d3c1765979','1143909886@qq.com','卢大晰',1,0,'460026199811060016','17889982593',0,1479309694),
	(157,'13136065872','107533b01ee6b0d2b61471d29386f68b','48535565@qq.com','黎紫菲',1,0,'460034200112043319','13136065872',0,1479309694),
	(158,'15708998950','a520ad3af50996e5d1a1768b84338afa','1183688020@qq.com','王清咪',1,0,'46002619980719154X','15708998950',0,1479309694),
	(159,'18876988346','6857b72fc5461e7a51dd0b3aef3d044b','61246048165@qq.com','林中帝',1,0,'460035199603263018','18876988346',0,1479309694),
	(160,'13016222138','173570adb86187dcb8e71e84c988a71a','2879636841@qq.com','王娜',1,0,'460036199909300826','13016222138',0,1479309694),
	(161,'13078993708','bc0817571f6a8153194b329d984e79c7','1071256006@qq.com','林小芬',1,0,'46010719971129302X','13078993708',0,1479309694),
	(162,'13637549071','e2061d89eecdbca1a57f598a75d9e460','892948077@qq.com','邝敦浩',1,0,'460103199911200312','13637549071',0,1479309694),
	(163,'18976274620','4a7c9a77faa07f15083d0a84765c54d1','1960154710@qq.com','王龙高',1,0,'46010419990707441X','18976274620',0,1479309694),
	(164,'18208980167','fecee561eb7be30851d127b8b488fe45','236465448@qq.com','李萍',1,0,'469026200001070427','18208980167',0,1479309694),
	(165,'17722603986','7c8981c981fa96c451fa4bf254b6680a','1259304058@qq.com','黄政仕',1,0,'440881199805135119','17722603986',0,1479309694),
	(166,'15120700490','c8da9f433cde8debf4cd8d771ebccf8a','714183030@qq.com','王才峰',1,0,'460026200003290011','15120700490',0,1479309694),
	(167,'15708993717','4ade3c98cd3aa790ec2321c5e833a0fa','1425016444@qq.com','黄政朝',1,0,'440881199812085113','15708993717',0,1479309694),
	(168,'18889824904','d5560c56ab6a5dc0cb41ed257446d221','841995248@qq.com','蔡汝柏',1,0,'460004199912044455','18889824904',0,1479309694),
	(169,'18389419159','21d3b815a0930e71894696d34140eb3b','1824570020@qq.com','王胜',1,0,'460028199907245616','18389419159',0,1479309694),
	(170,'15595886462','1bc5640796d117a4f51507c1c2761146','412006736@qq.com','韩发定',1,0,'460005199102045137','15595886462',0,1479309694),
	(171,'15208978221','f2dd3c09f89ea35e45866c649fccee05','2324454835@qq.com','何声权',1,0,'460006200011220413','15208978221',0,1479309694),
	(172,'13307566595','8d08413a047d0128183825b2f5f49a2d','2605387847@qq.com','邱日明',1,0,'460026199910240610','13307566595',0,1479309694),
	(173,'18889744828','bf40357c9900b8dc6d755f86c42d4958','328092694@qq.com','徐嘉',1,0,'220282200008135915','18889744828',0,1479309694),
	(174,'13178962220','9b6582738cbad0c094468db936db2c4e','1107249847@qq.com','叶金福',1,0,'460003198804016819','13178962220',0,1479309694),
	(175,'13648605565','5aaf173363c7614c745a517ff1674d52','87585665@qq.com','邢同裔',1,0,'460003198709120212','13648605565',0,1479309694),
	(176,'18289700487','b958653d994f6c7a07649637ad779f8e','874117872@qq.com','陈玉妹',1,0,'46000519940709452X','18289700487',0,1479309694),
	(177,'15501868425','2159d6fa9868a27f4bad2ce5540fc954','2940397154@qq.com','蒋琳琳',1,0,'33072619960216132X','15501868425',0,1479309694),
	(178,'15501838820','0c511b18649128b6dea1a72731f37a1d','824207988@qq.com','杨玲',1,0,'50023619931003668X','15501838820',0,1479309694),
	(179,'18976105266','e5c619751e3f37dea73d1677e5353cac','522816953@QQ.com','陆应灿',1,0,'460003198106157219','18976105266',0,1479309694),
	(180,'18117652511','05d022a33171e231d6d2a9f7127baed1','492500539@qq.con','祁宇彬',1,0,'460006199709070212','18117652511',0,1479309694),
	(181,'18217953333','4d6a71f6b3fc8f6cfd576969c48073fd','67739961@qq.com','黄熹卉',1,0,'460005198705180720','18217953333',0,1479309694),
	(182,'18876035995','43bc5c5168aacaf42c73acc8380a0ae0','1342931352@qq.com','徐辉智',1,0,'460034199406080910','18876035995',0,1479309694),
	(183,'15121015150','f3c7d1c2ee3995106e7fa6144f3ebc2f','79519690@qq.com','孙嘉静',2,0,'460003199005235227','15121015150',0,1479309694),
	(184,'15008954654','db49b77b1dfb0dd462935421e720fd61','736412636@qq.com','邢诒汇',2,0,'460022199511030012','15008954654',0,1479309694),
	(185,'13215827980','614665fe523af7333fad58e1e2ab8f0f','wly.yang@foxmail.com','王露洋',2,0,'412829199506115610','13215827980',0,1479309694),
	(186,'13215829515','32c886bba6e17a4f2acbc66125b72c1e','1020106139@qq.com','曾玮琪',2,0,'431021199708299057','13215829515',0,1479309694),
	(187,'13111939134','2624f017eaaa7cab0ba44fed26f2c812','1131311349@qq.com','冯建光',2,0,'130229198309010012','13111939134',0,1479309694),
	(188,'18789776841','f77d73199301c4662df9b1c0cdfdf7c9','908657056@qq.com','吴文启',2,0,'460004199503143436','18789776841',0,1479309694),
	(189,'15595956135','bb741049a8f7024a7abd85be01027efa','799909566@qq.com','李郑',2,0,'220102198401290615','15595956135',0,1479309694),
	(190,'18208981797','9faab1806afb144a7d8cc9f4b54b78f9','527113061@qq.com','牟宇星',2,0,'130582199611030025','18208981797',0,1479309694),
	(191,'18876965316','922077176c8c80a6d1b2e1b4cdbff85f','1273890295@qq.com','林芳姨',2,0,'460026199402242425','18876965316',0,1479309694),
	(192,'15324052233','45d2c6868b544067879a7f6b7f327c86','shenhaiyang_170@163.com','沈海洋',2,0,'231282198709107354','15324052233',0,1479309694),
	(193,'18876107693','f2388f3981dc4e2c5da8628c6009effa','1203331868@qq.com','吴钟煌',2,0,'460033199603104495','18876107693',0,1479309694),
	(194,'15120816998','9e79a84b4985cc3bdc1e3f823fc553c7','170837244@qq.com','任保鑫',2,0,'460025198411034512','15120816998',0,1479309694),
	(195,'15072469889','4f6f0202edb7e3a9ed69fdc761bbd34e','939485594@qq.com','吴晏清',2,0,'421003199710090039','15072469889',0,1479309694),
	(196,'13278921290','f88006f0a96e04e6294b3d02edb9b9fe','2576216654@qq.com','李惠',2,0,'650106199810233021','13278921290',0,1479309694),
	(197,'13689652631','efda742ca564aeb03f2e829e7e9f8d91','1004668214@qq.com','张卓亮',2,0,'510681199806145711','13689652631',0,1479309694),
	(198,'18217903230','abb019ff4637bca90bc6596b734ab709','364398173@qq.com','符小仔',2,0,'460022198801160742','18217903230',0,1479309694),
	(199,'15501797221','b7d09623c5e01909b03ab524bc83cd77','1035620959@qq.com','李智星',2,0,'460103199508111811','15501797221',0,1479309694),
	(200,'18976885510','3f48748c63160e24da6723fb6955c174','592449621@qq.com','莫小娟',2,0,'440804199602101127','18976885510',0,1479309694),
	(201,'18876897644','4130ddec2c76ea71e3ced15a92a16cff','827225601@qq.com','梁其伟',2,0,'460200199609120035','18876897644',0,1479309694),
	(202,'13111931266','3af2b777d1a37501c9db85dc6a837e4c','linhengfei2540@163.com','林恒妃',2,0,'460026199508110025','13111931266',0,1479309694),
	(203,'18689871982','e72360057823ee9d057b64afe12b8183','lixuanye@foxmail.com','李敏',2,0,'460006198501250017','18689871982',0,1479309694),
	(204,'18509977629','1283d9f907243586801695851776af9d','785496551@qq.com','田梦洁',2,0,'652926199710251127','18509977629',0,1479309694),
	(205,'18889693171','ea4765785457ae38577bcda62e7b5b83','ouyangyanjin@qq.com','欧阳彦瑾',2,0,'430422199704180021','18889693171',0,1479309694),
	(206,'17889785652','89a45d2c0c5ca05649e1c1abaeeea9f8','1713975224@qq.com','高帅',2,0,'130982199812265711','17889785652',0,1479309694),
	(207,'15708989025','6a69a665f59c6cd33c79757b0d85cbd5','maoyuchuan@foxmail.com','毛宇川',2,0,'420881199705046510','15708989025',0,1479309694),
	(208,'18689628908','32a027c25eb5541222be31daf9e1d5c5','826380657@qq.com','周小松',2,0,'429006199611010677','18689628908',0,1479309694),
	(209,'15708995025','7ab0040ed830f7e916e8b1a836aa2f74','1649042381@qq.com','张燕',2,0,'511324199707021809','15708995025',0,1479309694),
	(210,'15708998136','d01ea537e4f36874e1aafe0ce17127d2','2737884710@qq.com','刘昱秀',2,0,'342423199703066186','15708998136',0,1479309694),
	(211,'18976429643','b4d2370ef0e08011aa0e81391ad11d1f','994838166@qq.com','王少佳',2,0,'412824199506104346','18976429643',0,1479309694),
	(212,'13876624642','45c30ffcc1b700c7d13589c5b344cc4d','237502757@qq.com','林明大',2,0,'460027199010073817','13876624642',0,1479309694),
	(213,'17733127310','7cabaf57f37c2943e12a173995312360','863284984@qq.com','陈曦',2,0,'510503199505204285','17733127310',0,1479309694),
	(214,'13518860687','d90fabe56bb14372ddbe7bd5b18fe389','37920688@qq.com','许积国',2,0,'46003619860802451X','13518860687',0,1479309694),
	(215,'15091973873','0035874fe0c316bce3db526c79840c0b','276606074@qq.com','马建岛',3,0,'460027199004160033','15091973873',0,1479309694),
	(216,'13450442113','f78c160095af9084a713df9f75d7e938','dollare@126.com','张雄熙',3,0,'440782198511260615','13450442113',0,1479309694),
	(217,'18217953898','55fcd243f3d26d1207ae564f63e3bb57','821266724@qq.com','林燕',3,0,'460022199504020027','18217953898',0,1479309694),
	(218,'18876863872','5b8d9e6891bc300895910c7e1276f2c3','807200141@qq.com','孙伟知',3,0,'332522199611193855','18876863872',0,1479309694),
	(219,'13525555614','9b39275eecfe3ab2494ee76df9657333','329651092@qq.com','徐飞',3,0,'460034198611030432','13525555614',0,1479309694),
	(220,'13807529145','6eb0ff909f213716054871d24d31057f','937513439@qq.com','章杨阳',3,0,'460034198110125812','13807529145',0,1479309694),
	(221,'18876981812','2f551f6fba942199202922b66138e97e','1534869867@qq.com','王增强',3,0,'460006199311040419','18876981812',0,1479309694),
	(222,'18289248324','bfce89fa1e140827acca2b153b485772','18289248324@qq.com','张开部',3,0,'460031199412135210','18289248324',0,1479309694),
	(223,'17889983837','0281b25ef6e17833bf676909ff2d5d4b','664332754@qq.com','符国钧',3,0,'460022199503282316','17889983837',0,1479309694),
	(224,'15607565506','05901fdf55b7b54574449cbd7ad4e337','15607565506@189.cn','胡越豪',3,0,'610321199802100613','15607565506',0,1479309694),
	(225,'18808949161','f03d369c6a14e0540f36d9fd3f345110','254231393@qq.com','游志奇',3,0,'460003199011252875','18808949161',0,1479309694),
	(226,'15338945910','a06bfca117c1bad8d00c2616cbfe427e','1448444695@qq.com','徐秋阳',3,0,'320623199511055437','15338945910',0,1479309694),
	(227,'18708921743','c2ca41ed39e24e32ea7b42a787031867','382983672@qq.com','陈艳红',3,0,'46003619960902484X','18708921743',0,1479309694),
	(228,'15008021398','3b1aff9200e33d50f49363637e918f70','943236823@qq.com','周嘉琪',3,0,'460200199509151408','15008021398',0,1479309694),
	(229,'17889962585','978038d2675d95be296261ecef3077aa','305826115@qq.com','程小飞',3,0,'410482199302099047','17889962585',0,1479309694),
	(230,'13976911667','6131b05a39b8022f580d9068f193c8f3','42919507@qq.com','高乙元',3,0,'460025198410124516','13976911667',0,1479309694),
	(231,'17389701217','85ab47123d2138529434bd993f13f3af','1127935331@qq.com','柳华清',3,0,'460032199608127614','17389701217',0,1479309694),
	(232,'13286541177','328ae5a2fab3011da286025f65a18a3a','1126774167@qq.com','吕庚洋',3,0,'130428199402280315','13286541177',0,1479309694),
	(233,'18889118210','5b7b972044a0a76240e1656eb587deba','531541780@qq.com','农乐海',3,0,'460030199112134519','18889118210',0,1479309694),
	(234,'18789091987','70ff4325bdde3b82803dca61e1b06581','1290461603@qq.com','宁明',3,0,'142703199612120611','18789091987',0,1479309694),
	(235,'15308967758','f2c7f7fbabc46218a6ed40a7111f7d39','neusent@qq.com','刘胜',3,0,'441481199405107011','15308967758',0,1479309694),
	(236,'15108989678','adbad41cbbc269305367530ca790aac8','1096287723@qq.com','倪德山',3,0,'460007198806154970','15108989678',0,1479309694),
	(237,'18689873413','ac9394e593a51d87a48c94094e96b9e3','1069464762@qq.com','柯维善',3,0,'460103199001291235','18689873413',0,1479309694),
	(238,'15501939989','f80a4b23fbd47262f17c28c75f79f5d9','363960181@qq.com','陈锋博',3,0,'460034198907135516','15501939989',0,1479309694),
	(239,'13086003600','08bf4689a26352081a53384dcbe8999a','76214695@qq.com','符开泰',3,0,'460007199411207219','13086003600',0,1479309694),
	(240,'13138957796','a8912bca187758cdf6ef8a246202fc05','2685059744@qq.com','倪德洪',3,0,'46000719840516801X','13138957796',0,1479309694),
	(241,'17889882454','35901f1183383d788e9916a0a8571a63','17889882454@qq.com','符尧缵',3,0,'460003198902256015','17889882454',0,1479309694),
	(242,'18608960821','b5dfed593f23f9860091fd61ea451a7a','975859995@qq.com','洪正龙',3,0,'46003419911105001x','18608960821',0,1479309694),
	(243,'15203693038','d9b53590b2efcd46689241e393344518','752456511@qq.com','邢文良',3,0,'460007198209059270','15203693038',0,1479309694),
	(244,'18876166167','c36d97390a7f025c98d5b1a13740d009','910644899@qq.com','卢少龙',3,0,'460007198301105452','18876166167',0,1479309694),
	(245,'15501842321','3ec0727ed1928536a5394e5d904dfa8e','15501842321@163.com','马瑜',3,0,'220623199411130045','15501842321',0,1479309694),
	(246,'18789865371','f35f3cb7d38e001a26f3adc6657518f1','807078902@qq.com','郑定杰',3,0,'460027199704141319','18789865371',0,1479309694),
	(247,'18689710250','e85d07a43ff8b3d0f5e93ccdeb8d87c6','366637770@qq.cim','赵宇',3,0,'140227198701310510','18689710250',0,1479309694),
	(248,'18979263618','7ce91b5464c3e95ef1a83b5fb1f73067','1059745050@qq.com','朱瑶',3,0,'36042719951012181X','18979263618',0,1479309694),
	(249,'15289909896','b5949a9d9ffba2780c8e0c6fcd6395fe','z.minghai@163.com','何家祺',3,0,'460007198608166815','15289909896',0,1479309694),
	(250,'13637518870','a50a64a55f5c19298d01fdbda1a16e30','151693041@qq.com','吴福君',3,0,'460032198112206816','13637518870',0,1479309694),
	(251,'15501956586','ecfe15a7252809fefd456b2096d837bb','1427477736@qq.com','汪勇',3,0,'34082719910203183x','15501956586',0,1479309694),
	(252,'18976714592','d3f9ab5be90099aeb0e2ae0c23fb3833','841095168@qq.com','吴雪英',3,0,'46000619970729444X','18976714592',0,1479309694),
	(253,'15500955728','d25f5c06d44b9b5d0aee477ebeaa9c08','1462028157@qq.com','杨准',3,0,'610481199802123411','15500955728',0,1479309694),
	(254,'13976495090','42ccefdb78cb41ac6cb5b15475ec6130','1379569316@qq.com','黎日皆',3,0,'460003199502097611','13976495090',0,1479309694),
	(255,'15024937450','e59f5c17c59fb755715072823ebad118','1625354791@qq.com','李坤晔',3,0,'150124199503081923','15024937450',0,1479309694),
	(256,'18789337813','4fd10ba726a3d245ea89068fddc6131a','941441984@qq.com','劳万松',3,0,'460025199103033336','18789337813',0,1479309694),
	(257,'18789090673','3d419734d2b69b8fc1ae1198883cbde5','1639754011@qq.com','郭猛',3,0,'341227199605127671','18789090673',0,1479309694),
	(258,'18789853740','a326cbdb0a61d1ca3a664ef4c22d200f','657206971@qq.com','陈大维',3,0,'460027199407304716','18789853740',0,1479309694),
	(259,'17389701411','3de9f323803a7c0f51910e1d2843f6b5','1227629040@qq.com','杨柳清',3,0,'430721199802214328','17389701411',0,1479309694),
	(260,'15120761931','adca0c5c01c403aa07a4bbce83b92322','vivktai@163.com','戴小斌',3,0,'350821198903024217','15120761931',0,1479309694),
	(261,'18289896787','77dc93e3d0adee19da971cdf4b6c7db7','15123132282@163.com','林森',3,0,'460006199011193130','18289896787',0,1479309694),
	(262,'18089891108','840c925e8487749d19c71cd7fb59f4c2','zzt.45168@163.com','周子涛',3,0,'460200199012270313','18089891108',0,1479309694),
	(263,'15595964563','9087f2f67e10f8fc6f0521759cbf50c5','506351216@qq.com','张宏伟',3,0,'220381199510101116','15595964563',0,1479309694),
	(264,'13976317327','fe5fe7a8781bc733d4b5e611e5408b94','253342341@qq.com','许明杰',3,0,'460027198803193750','13976317327',0,1479309694),
	(265,'13272671070','c17cdc88fb0f562311414fd1bf08111a','269310291@qq.com','梁渊凰',3,0,'460025199407013019','13272671070',0,1479309694),
	(266,'18289925559','261ef982ab39eddcc806ce4f55a11cd9','30988553@qq.com','王秀宁',3,0,'220382198206210627','18289925559',0,1479309694),
	(267,'18808909091','6e14ce2570981a45a45ec3a6e6988950','837705261@qq.com','曾繁秋',3,0,'460034199211175813','18808909091',0,1479309694),
	(268,'13976232402','16bef0fe08ec0e1f3503c26c046aff30','283901964@qq.com','王华',3,0,'460033198602053871','13976232402',0,1479309694),
	(269,'15708918815','8c3c10c5a0a935385e3030fddb7980d7','1946280453@qq.com','肖钰',4,0,'513901199602040616','15708918815',0,1479309694),
	(270,'17733126753','75861df61ecd4e6b108d8f6f18f736fe','1578268325@qq.com','马苇',4,0,'500236199612131068','17733126753',0,1479309694),
	(271,'18389336887','2a1dab7da03fe38d2e2333800049ecc3','2686631667@qq.com','林专',4,0,'46003319950304507X','18389336887',0,1479309694),
	(272,'18789095880','cc081933560b92623f7048db318878e8','993729960@qq.com','洪康桐',4,0,'460004199709114016','18789095880',0,1479309694),
	(273,'18789502191','741e5f7e12910b4106d42a70d185b8d8','1370521715@qq.com','姚广进',4,0,'460003199707233015','18789502191',0,1479309694),
	(274,'18976684966','0eb50b720e3afc07c2f8574a292a107f','hainansxy030@163.com','任加德',4,0,'460032198309164410','18976684966',0,1479309694),
	(275,'15103087907','78fb4b9ad4af99cfe31158c0a990ebf8','469927801@qq.com','卢俊伯',4,0,'13108119920331101X','15103087907',0,1479309694),
	(276,'18789192029','bb8afe057f5bfa8f65e4b20bd56d3d6f','17733122643@163.com','胡瑞镇',4,0,'441522199509092155','18789192029',0,1479309694),
	(277,'18789197323','be22408ec0e63d390da81d49496f6a59','601281361@qq.com','朱杨峰',4,0,'331082199603223039','18789197323',0,1479309694),
	(278,'13034918146','68d4ce4f2f1ddee09e9f4aa47f50d887','120818616@qq.com','刘瑶',4,0,'152302198801290029','13034918146',0,1479309694),
	(279,'13807528214','0832f52a3d894b05ecc1d4f6ee581dd8','2412994082@qq.com','陈增通',4,0,'460200199608214697','13807528214',0,1479309694),
	(280,'18078992345','557eebc96475d1e6ef897466a828574e','mxt@laviey.com','马昕彤',4,0,'620104199402061314','18078992345',0,1479309694),
	(281,'17389701407','ae1e9bd9a16805d45a9d60e276510d40','914291108@qq.com','张苗',4,0,'150222199704013567','17389701407',0,1479309694),
	(282,'17889785150','b5435893c684a7db4e325c43786b8a7a','www.2302167268@qq.com','何光远',4,0,'530328199709062418','17889785150',0,1479309694),
	(283,'13976162074','f2b4c82bdf880c724571fa1b2dc16091','915814014@qq.com','盆小亮',4,0,'46000119921115031X','13976162074',0,1479309694),
	(284,'15708918550','14f131e859406fae3c921ee66054b393','875641522@qq.com','邱佳丽',4,0,'513821199507161081','15708918550',0,1479309694),
	(285,'18615069658','35098129c9eb6f96b23d385dd6108d3e','1250007802@qq.com','徐艺',4,0,'370687199701070014','18615069658',0,1479309694),
	(286,'15501710166','9cdb0a761b433477da92b675ed3d48bb','9572581@qq.com','谭元正',4,0,'652901199309270412','15501710166',0,1479309694),
	(287,'15008566148','af57ff8f86aeb31cca348d5564b9455c','1446199814@qq.com','黎莉慧',4,0,'522227199705300042','15008566148',0,1479309694),
	(288,'15708929772','472e9b0a2e6c6f7fd692c550a8f231d0','1511451230@qq.com','何维',4,0,'511526199608233025','15708929772',0,1479309694),
	(289,'18789162364','a3dfdb3d7c20b0caef8b9b4b204b1d86','1148555936@qq.com','黄静静',4,0,'460035199612042524','18789162364',0,1479309694),
	(290,'13337697252','f64a4690ab2d72f3d81b0c7423cc4a38','1392208252@qq.com','吕建杰',4,0,'130733199309140016','13337697252',0,1479309694),
	(291,'18756656260','5bd8235489e0b7f88529874df364cd12','1961592864@qq.com','江心璇',4,0,'342921199702103322','18756656260',0,1479309694),
	(292,'18708933326','8979beef282e9d6ff4978776de49c697','583801312@qq.com','李均旺',4,0,'341221199310136011','18708933326',0,1479309694),
	(293,'17798421836','c078a0296ae454cbe3de78b0a4c28c0b','848134803@qq.com','王婧',4,0,'140602199708198524','17798421836',0,1479309694),
	(294,'15855213773','3732ffc60216b5b7fb8b5ed6070ff1c3','1870816639@qq.com','董丽丽',4,0,'342423199712258569','15855213773',0,1479309694),
	(295,'15708989722','6ff611c0fae711dcf0ffef924991a158','569834739@qq.com','黄腾',4,0,'342522199703303312','15708989722',0,1479309694),
	(296,'15708989729','b8598361160d04c3eae3b6add9ef4756','1126453580@qq.com','朱冠军',4,0,'341226199604275932','15708989729',0,1479309694),
	(297,'13036023773','143b45e2f2af087af0747ec46bca6987','65882399wjc@163.com','吴建成',4,0,'460103199105251510','13036023773',0,1479309694),
	(298,'18876715522','1bb62905bcae25f5170a32bc0c45c5ab','284849166@qq.com','陈汉斌',4,0,'460031198608080050','18876715522',0,1479309694),
	(299,'18976768997','fa329ca02245117b3800b964803ba392','110758882@qq.com','刘士波',4,0,'411323198207176316','18976768997',0,1479309694),
	(300,'18289759583','db7865324daa0bd2f997acaae87adf8b','601891273@qq.com','周建飞',4,0,'430722199103265640','18289759583',0,1479309694),
	(301,'15799087674','27da63c676d9a31232ef5f703712da60','122461295@qq.com','郭霖',4,0,'460103198607031222','15799087674',0,1479309694),
	(302,'15501851564','7c7f5569a7c4432dd565ab218af8628a','1834319544@qq.com','王凯',4,0,'342626199609291432','15501851564',0,1479309694),
	(303,'15298999454','f6f1f7d399aeb453c56019df33689c49','262405633@qq.com','符龙武',5,0,'460200198510233596','15298999454',0,1479309694),
	(304,'18811754785','9cdabd6e68d462d44c7bca1a621c337e','1636557281@qq.com','张元乾',5,0,'522322199508061437','18811754785',0,1479309694),
	(305,'15109806208','4b1de612d02cad6bbbb552cec5735730','1822309666@qq.com','冯所权',5,0,'460027199604035658','15109806208',0,1479309694),
	(306,'13907523662','33b8262642f6f465d533c172495b20fc','1365585777@qq.com','冯名润',5,0,'460002199101310016','13907523662',0,1479309694),
	(307,'15501840456','95d40ecf1fa9b55c9952edcbfda4a31c','3043335@qq.com','陈天文',5,0,'440923198210262159','15501840456',0,1479309694),
	(308,'13697547010','f7aac76dc76d637ced6c13d13c5104b2','63112621@qq.com','范衍士',5,0,'460034198206100038','13697547010',0,1479309694),
	(309,'13876421001','5b5c38887510f00d3b8aca60899b4697','704225982@qq.com','胡林飞',5,0,'460034198006170111','13876421001',0,1479309694),
	(310,'18789558388','6aeae915b992c3a2239527ddfb0d5d22','648016860@qq.com','黄立强',5,0,'46003419890520125X','18789558388',0,1479309694),
	(311,'15208997939','8c192e1165f9861c4d4b11d00959a2c8','1043578521@qq.com','姚秋梅',5,0,'460002199007060524','15208997939',0,1479309694),
	(312,'18876055159','1bd34fe7cc2184e324f1959d61acc4e5','986366899@QQ.com','符国娇',5,0,'460007199607060028','18876055159',0,1479309694),
	(313,'13647529636','3992a95437866d46006e3effbb8915a5','491699965@。qq.com','郑秀文',5,0,'460200199111141664','13647529636',0,1479309694),
	(314,'18789970768','18c5c51b1e4c63af08d226c10a5bdd40','254699901@qq.com','赵道峰',5,0,'460003198407058214','18789970768',0,1479309694),
	(315,'13907578600','4764867ee90e04021ee38ad7912893d8','1085395672@qq.com','黎东强',5,0,'460029197708043015','13907578600',0,1479309694),
	(316,'13379879888','daa28096f9e8879ab3a02b90aa0e2f83','13379879888@189.cn','符波',5,0,'460027197808100010','13379879888',0,1479309694),
	(317,'18689948965','593079e0670ec80500eb254027322263','happy2004wy@126.com','文雅',5,0,'460102198510092145','18689948965',0,1479309694),
	(318,'13368906110','e792c129c0a8290c46139f2d34afdb30','55220469@QQ.com','刘云峰',5,0,'460022198602090032','13368906110',0,1479309694),
	(319,'18907675020','dabc7d523f0ba76079e76ae88ca2be32','1088812882@qq.com','林继志',5,0,'460030197611206610','18907675020',0,1479309694),
	(320,'13976428865','a3dcec6fc57a7f0870c41ac9fe42d750','65856788@qq.com','何学芳',5,0,'46003419840204474x','13976428865',0,1479309694),
	(321,'18202833895','1db937f55c4fb8a6e0709b45805d291a','402770564@qq.com','邓海鹏',5,0,'460003198906162411','18202833895',0,1479309694),
	(322,'18215631086','cbfb47182f0b69f3d41c37907b934ab6','609896369@qq.com','蔡富强',5,0,'513030199111146312','18215631086',0,1479309694),
	(323,'18898958368','785d1cc7d0fa24b97daf73c1d52bbefa','1252627815@qq.com','陆初茂',5,0,'460003198806080638','18898958368',0,1479309694),
	(324,'13178964446','721f1ec090da91b832763a4aeee3e3d5','215675844@qq.com','吴世亮',5,0,'460003199404086230','13178964446',0,1479309694),
	(325,'15607639117','76a949980860a3fe6efecae06c985435','1649042854@qq.com','陈冬妮',5,0,'230104199511083448','15607639117',0,1479309694),
	(326,'18889738974','71d568cb7a44208d853ca7122bceb66f','2310381834@qq.com','梁甲',5,0,'460007199209075793','18889738974',0,1479309694),
	(327,'15289736775','6ca56bbe3e5b5e67075279f52877f030','298013413@qq.com','张潮瑛',5,0,'460030198602274229','15289736775',0,1479309694),
	(328,'13876969512','686f3754992e38012e236ad049d0d687','252945852@qq.com','蓝胡行行',5,0,'330122198902020323','13876969512',0,1479309694),
	(329,'15508975020','16821620026c57c549be71db6dc9e575','39797338@qq.com','文浩',5,0,'430102198506155013','15508975020',0,1479309694),
	(330,'13700454333','693f9cc96df44da0c3f343f8208d4d08','47035303@qq.com','王世鸣',5,0,'46000419791111001X','13700454333',0,1479309694),
	(331,'13389859955','72afaa5ec9ae03edea662cbdc7a87c6d','61745203@qq.com','王茹萍',5,0,'460002198208120023','13389859955',0,1479309694),
	(332,'15108952566','b47daa8ef89c9bf9e36c0b4fb2473fe2','shana_1@sina.com','符启杰',5,0,'460007198505300014','15108952566',0,1479309694),
	(333,'13976430096','9e6d8b3516a895b5b54cd312920e71f6','76214695@qq.com','符兴秀',5,0,'460007198509200029','13976430096',0,1479309694),
	(334,'15203055132','65cd5ba36acef9b30b523939f44a34eb','915469756@qq.com','刘风英',5,0,'46000719870104656X','15203055132',0,1479309694),
	(335,'13976949867','d59fa7cf1781be03687262c8e0c9cd05','13976949867@163.com','苏海珠',5,0,'460007198609035374','13976949867',0,1479309694),
	(336,'13976435074','fa28a1b0e0674b8c69b7a9b5ca904dd3','926854244@qq.com','杨亚在',5,0,'460007198607088010','13976435074',0,1479309694),
	(337,'18689981155','772eaefb082b5560c6fecf5ad6085876','51935310@qq.com','张天翼',5,0,'460025198403124550','18689981155',0,1479309694),
	(338,'13976354796','9b6582738cbad0c094468db936db2c4e','278330739@qq.com','刘秋贵',5,0,'460032198109016819','13976354796',0,1479309694),
	(339,'15103045359','0601b0bae5b81b6367da535196f2b528','yanshujiejack@163.com','严树杰',5,0,'460002199108022519','15103045359',0,1479309694),
	(340,'18789006890','c204c62ca5e21753cb6c0e2b23e529f7','1833538696@qq.com','许诺',5,0,'413026199712023328','18789006890',0,1479309694),
	(341,'18689925797','cd46f87c76555634252c679d5c57958d','117559596@qq.com','吴慧文',5,0,'460030199009220013','18689925797',0,1479309694),
	(342,'15120826339','4392bd8da1f1682529ebcfa878eb7b6e','89505336@qq.com','郭泽枨',5,0,'460022198010240519','15120826339',0,1479309694),
	(343,'13925012149','6d368c6102448b92f804ee82724c7c8d','13925012149@139.com','吴红',5,0,'46010319790812062X','13925012149',0,1479309694),
	(344,'18976066215','2324d96c0959b39fd261447bb9dbe9f1','18976066215@qq.com','姜相峰',5,0,'420921198704152615','18976066215',0,1479309694),
	(345,'18976545204','89090a129a678469eaf34b659b48cdbc','18106796@qq.com','徐敏',5,0,'460022198312170333','18976545204',0,1479309694),
	(346,'15103610582','66c9e644c3b143d92907c3a802d7b973','181687080@qq.com','王海龙',5,0,'460035198808151314','15103610582',0,1479309694),
	(347,'18789987658','07e04f7cba5ddede95344fbd29d93d9f','119610130@qq.com','王鹏',5,0,'421102198702160492','18789987658',0,1479309694),
	(348,'15595625660','4d74ac1c528174c1779701efa5f3f6a3','838610270@qq.com','胡强强',5,0,'412326198710177236','15595625660',0,1479309694),
	(349,'15500914496','3abe83bc6b31f766b6e1f8a7d17d9800','75171650@qq.com','洪梁文',5,0,'460004198111274010','15500914496',0,1479309694),
	(350,'13519898838','259876fab4195fb5b53dc1a2c60a6e17','183368@qq.com','黄基传',5,0,'460002199006152013','13519898838',0,1479309694),
	(351,'13876111535','508ec2586b090f04b4edf6be2d6e61c5','13876111535@163.com','王雅丽',5,0,'460027198110290021','13876111535',0,1479309694),
	(352,'15008988184','038bc4608378a9ec9bc125e9b9698c63','814821805@qq.com','林明德',5,0,'460034198607170459','15008988184',0,1479309694),
	(353,'18689945504','de4a7fa3689b1e23ba676e1999249b93','798854545@qq.com','陈永晶',5,0,'460003199004020048','18689945504',0,1479309694),
	(354,'13078928056','087d53d0ffdb81a9f79b08e522445c6c','1243143444@qq.com','黄凌燕',5,0,'460034198304121844','13078928056',0,1479309694),
	(355,'18607635656','39e5e22b2dd3f99344565ecf4e9912b7','56859476@qq.com','梁振阳',5,0,'460034198110226314','18607635656',0,1479309694);

/*!40000 ALTER TABLE `user` ENABLE KEYS */;
UNLOCK TABLES;


# Dump of table user2
# ------------------------------------------------------------

DROP TABLE IF EXISTS `user2`;

CREATE TABLE `user2` (
  `id` int(11) unsigned NOT NULL AUTO_INCREMENT,
  `username` varchar(64) NOT NULL DEFAULT '',
  `password` char(32) NOT NULL DEFAULT '',
  `email` varchar(64) NOT NULL DEFAULT '',
  `realname` varchar(64) NOT NULL DEFAULT '' COMMENT '真实名字',
  `group` tinyint(1) NOT NULL DEFAULT '0' COMMENT '组别',
  `region_id` int(11) NOT NULL DEFAULT '0' COMMENT '地区ID',
  `idcard` varchar(32) NOT NULL DEFAULT '' COMMENT '身份证号',
  `mobile` varchar(16) NOT NULL DEFAULT '' COMMENT '手机号码',
  `sign_num` int(11) NOT NULL DEFAULT '0' COMMENT '抽签号码',
  `created` int(11) NOT NULL DEFAULT '0',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

LOCK TABLES `user2` WRITE;
/*!40000 ALTER TABLE `user2` DISABLE KEYS */;

INSERT INTO `user2` (`id`, `username`, `password`, `email`, `realname`, `group`, `region_id`, `idcard`, `mobile`, `sign_num`, `created`)
VALUES
	(168,'13807529145','6eb0ff909f213716054871d24d31057f','937513439@qq.com','章杨阳',2,2,'460034198110125812','13807529145',0,1479226562),
	(169,'13637518870','a50a64a55f5c19298d01fdbda1a16e30','151693041@qq.com','吴福君',2,17,'460032198112206816','13637518870',0,1479226562),
	(170,'18289925559','261ef982ab39eddcc806ce4f55a11cd9','30988553@qq.com','王秀宁',2,2,'220382198206210627','18289925559',0,1479226562),
	(171,'15203693038','d9b53590b2efcd46689241e393344518','752456511@qq.com','邢文良',2,17,'460007198209059270','15203693038',0,1479226562),
	(172,'18876166167','c36d97390a7f025c98d5b1a13740d009','910644899@qq.com','卢少龙',2,17,'460007198301105452','18876166167',0,1479226562),
	(173,'13976911667','6131b05a39b8022f580d9068f193c8f3','42919507@qq.com','高乙元',2,7,'460025198410124516','13976911667',0,1479226562),
	(174,'13138957796','a8912bca187758cdf6ef8a246202fc05','2685059744@qq.com','倪德洪',2,17,'46000719840516801X','13138957796',0,1479226562),
	(175,'13450442113','f78c160095af9084a713df9f75d7e938','dollare@126.com','张雄熙',2,3,'440782198511260615','13450442113',0,1479226562),
	(176,'13525555614','9b39275eecfe3ab2494ee76df9657333','329651092@qq.com','徐飞',2,10,'460034198611030432','13525555614',0,1479226562),
	(177,'13976232402','16bef0fe08ec0e1f3503c26c046aff30','283901964@qq.com','王华',2,13,'460033198602053871','13976232402',0,1479226562),
	(178,'15289909896','b5949a9d9ffba2780c8e0c6fcd6395fe','z.minghai@163.com','何家祺',2,17,'460007198608166815','15289909896',0,1479226562),
	(179,'18789559057','8cf5759818c41af12920f5435754ae10','wushujun@fengzan.xin','吴淑军',2,11,'46010319870711181X','18789559057',0,1479226562),
	(180,'18689710250','e85d07a43ff8b3d0f5e93ccdeb8d87c6','366637770@qq.cim','赵宇',2,7,'140227198701310510','18689710250',0,1479226562),
	(181,'13976317327','fe5fe7a8781bc733d4b5e611e5408b94','253342341@qq.com','许明杰',2,5,'460027198803193750','13976317327',0,1479226562),
	(182,'15108989678','adbad41cbbc269305367530ca790aac8','1096287723@qq.com','倪德山',2,17,'460007198806154970','15108989678',0,1479226562),
	(183,'18689786119','ff1ed6c147d501b54a54592a2ef3404e','179929650@qq.com','黎超',2,6,'460026198811055132','18689786119',0,1479226562),
	(184,'18289745209','1ad06dc5ccdd8129ace2b65f7e0f3755','76214695@qq.com','符杰',2,17,'460032198802287676','18289745209',0,1479226562),
	(185,'15120761931','adca0c5c01c403aa07a4bbce83b92322','vivktai@163.com','戴小斌',2,2,'350821198903024217','15120761931',0,1479226562),
	(186,'15607569678','baabf5dc84bb427f220ba6b8b26463f7','415402532@qq.com','陈永福',2,17,'46010319890191218','15607569678',0,1479226562),
	(187,'15501939989','f80a4b23fbd47262f17c28c75f79f5d9','363960181@qq.com','陈锋博',2,17,'460034198907135516','15501939989',0,1479226562),
	(188,'17889882454','35901f1183383d788e9916a0a8571a63','17889882454@qq.com','符尧缵',2,17,'460003198902256015','17889882454',0,1479226562),
	(189,'18289896787','77dc93e3d0adee19da971cdf4b6c7db7','15123132282@163.com','林森',2,2,'460006199011193130','18289896787',0,1479226562),
	(190,'18689873413','ac9394e593a51d87a48c94094e96b9e3','1069464762@qq.com','柯维善',2,17,'460103199001291235','18689873413',0,1479226562),
	(191,'18808949161','f03d369c6a14e0540f36d9fd3f345110','254231393@qq.com','游志奇',2,3,'460003199011252875','18808949161',0,1479226562),
	(192,'18089891108','840c925e8487749d19c71cd7fb59f4c2','zzt.45168@163.com','周子涛',2,3,'460200199012270313','18089891108',0,1479226562),
	(193,'15091973873','0035874fe0c316bce3db526c79840c0b','276606074@qq.com','马建岛',2,11,'460027199004160033','15091973873',0,1479226562),
	(194,'13519898838','259876fab4195fb5b53dc1a2c60a6e17','183368@qq.com','黄基传',2,8,'460002199006152013','13519898838',0,1479226562),
	(195,'18789337813','4fd10ba726a3d245ea89068fddc6131a','941441984@qq.com','劳万松',2,7,'460025199103033336','18789337813',0,1479226562),
	(196,'15501956586','ecfe15a7252809fefd456b2096d837bb','1427477736@qq.com','汪勇',2,18,'34082719910203183x','15501956586',0,1479226562),
	(197,'18608960821','b5dfed593f23f9860091fd61ea451a7a','975859995@qq.com','洪正龙',2,17,'46003419911105001x','18608960821',0,1479226562),
	(198,'18889118210','5b7b972044a0a76240e1656eb587deba','531541780@qq.com','农乐海',2,11,'460030199112134519','18889118210',0,1479226562),
	(199,'13278950106','3bce45991b002c5a60be8f18ff4d4a36','76214695@qq.com','符玉鹏',2,17,'460032199210117221','13278950106',0,1479226562),
	(200,'13976350581','3157108a4e369426ee58bdac60d31830','76214695@qq.com','柳新星',2,17,'460032198909117669','13976350581',0,1479226562),
	(201,'18808909091','6e14ce2570981a45a45ec3a6e6988950','837705261@qq.com','曾繁秋',2,10,'460034199211175813','18808909091',0,1479226562),
	(202,'18889721307','40b6ca1be9e3390439eb574ec48d06da','769298526@qq.com','陈华帅',2,16,'46006199209045635','18889721307',0,1479226562),
	(203,'17889962585','978038d2675d95be296261ecef3077aa','305826115@qq.com','程小飞',2,2,'410482199302099047','17889962585',0,1479226562),
	(204,'18876981812','2f551f6fba942199202922b66138e97e','1534869867@qq.com','王增强',2,16,'460006199311040419','18876981812',0,1479226562),
	(205,'18789853740','a326cbdb0a61d1ca3a664ef4c22d200f','657206971@qq.com','陈大维',2,5,'460027199407304716','18789853740',0,1479226562),
	(206,'18789853740','a326cbdb0a61d1ca3a664ef4c22d200f','657206971@qq.com','陈大维',2,5,'460027199407304716','18789853740',0,1479226562),
	(207,'13272671070','c17cdc88fb0f562311414fd1bf08111a','269310291@qq.com','梁渊凰',2,7,'460025199407013019','13272671070',0,1479226562),
	(208,'18289248324','bfce89fa1e140827acca2b153b485772','18289248324@qq.com','张开部',2,15,'460031199412135210','18289248324',0,1479226562),
	(209,'15308967758','f2c7f7fbabc46218a6ed40a7111f7d39','neusent@qq.com','刘胜',2,2,'441481199405107011','15308967758',0,1479226562),
	(210,'13286541177','328ae5a2fab3011da286025f65a18a3a','1126774167@qq.com','吕庚洋',2,2,'130428199402280315','13286541177',0,1479226562),
	(211,'15501842321','3ec0727ed1928536a5394e5d904dfa8e','15501842321@163.com','马瑜',2,2,'220623199411130045','15501842321',0,1479226562),
	(212,'13086003600','08bf4689a26352081a53384dcbe8999a','76214695@qq.com','符开泰',2,17,'460007199411207219','13086003600',0,1479226562),
	(213,'13976495090','42ccefdb78cb41ac6cb5b15475ec6130','1379569316@qq.com','黎日皆',2,3,'460003199502097611','13976495090',0,1479226562),
	(214,'17889983837','0281b25ef6e17833bf676909ff2d5d4b','664332754@qq.com','符国钧',2,4,'460022199503282316','17889983837',0,1479226562),
	(215,'15595964563','9087f2f67e10f8fc6f0521759cbf50c5','506351216@qq.com','张宏伟',2,2,'220381199510101116','15595964563',0,1479226562),
	(216,'15024937450','e59f5c17c59fb755715072823ebad118','1625354791@qq.com','李坤晔',2,2,'150124199503081923','15024937450',0,1479226562),
	(217,'18217953898','55fcd243f3d26d1207ae564f63e3bb57','821266724@qq.com','林燕',2,4,'460022199504020027','18217953898',0,1479226562),
	(218,'18979263618','7ce91b5464c3e95ef1a83b5fb1f73067','1059745050@qq.com','朱瑶',2,18,'36042719951012181X','18979263618',0,1479226562),
	(219,'15338945910','a06bfca117c1bad8d00c2616cbfe427e','1448444695@qq.com','徐秋阳',2,2,'320623199511055437','15338945910',0,1479226562),
	(220,'17389701217','85ab47123d2138529434bd993f13f3af','1127935331@qq.com','柳华清',2,2,'460032199608127614','17389701217',0,1479226562),
	(221,'18708921743','c2ca41ed39e24e32ea7b42a787031867','382983672@qq.com','陈艳红',2,2,'46003619960902484X','18708921743',0,1479226562),
	(222,'18789091987','70ff4325bdde3b82803dca61e1b06581','1290461603@qq.com','宁明',2,2,'142703199612120611','18789091987',0,1479226562),
	(223,'18876863872','5b8d9e6891bc300895910c7e1276f2c3','807200141@qq.com','孙伟知',2,4,'332522199611193855','18876863872',0,1479226562),
	(224,'18789090673','3d419734d2b69b8fc1ae1198883cbde5','1639754011@qq.com','郭猛',2,2,'341227199605127671','18789090673',0,1479226562),
	(225,'18876193714','f746553113be7adcfa719a41e79c0524','1663979590@qq.com','王之望',2,9,'460036199703225912','18876193714',0,1479226562),
	(226,'18789865371','f35f3cb7d38e001a26f3adc6657518f1','807078902@qq.com','郑定杰',2,5,'460027199704141319','18789865371',0,1479226562),
	(227,'18976714592','d3f9ab5be90099aeb0e2ae0c23fb3833','841095168@qq.com','吴雪英',2,16,'46000619970729444X','18976714592',0,1479226562),
	(228,'15607565506','05901fdf55b7b54574449cbd7ad4e337','15607565506@189.cn','胡越豪',2,2,'610321199802100613','15607565506',0,1479226562),
	(229,'15500955728','d25f5c06d44b9b5d0aee477ebeaa9c08','1462028157@qq.com','杨准',2,2,'610481199802123411','15500955728',0,1479226562),
	(230,'17389701411','3de9f323803a7c0f51910e1d2843f6b5','1227629040@qq.com','杨柳清',2,2,'430721199802214328','17389701411',0,1479226562),
	(231,'17389701411','3de9f323803a7c0f51910e1d2843f6b5','1227629040@qq.com','杨柳清',2,2,'430721199802214328','17389701411',0,1479226562),
	(232,'18976105266','e5c619751e3f37dea73d1677e5353cac','522816953@QQ.com','陆应灿',2,3,'460003198106157219','18976105266',0,1479226808),
	(233,'13976691816','2624f017eaaa7cab0ba44fed26f2c812','104617840@qq.com','陈晓丹',2,1,'360321198110010012','13976691816',0,1479226808),
	(234,'18610294162','c9dd5fcb3b0eb0b7b372491d8bef98bd','542075311@qq.com','林海峰',2,10,'150430198201160414','18610294162',0,1479226808),
	(235,'13518811030','ae963fe7c8737a6a18023c02ddf7b7e4','guitarchen@163.com','许玲玲',2,1,'131182198504102622','13518811030',0,1479226808),
	(236,'18689876810','4c4253b8658b7ea3d44365e98a7cba41','heinodesign@qq.com','李晓浩',2,15,'37232319851121061x','18689876810',0,1479226808),
	(237,'17789815886','49b338752aa93adc1559de60e295dbd9','danielleung@vip.qq.com','梁定然',2,14,'460028198610150937','17789815886',0,1479226808),
	(238,'18789730751','28bd2bfd349c3f32f4c0ab6813d3a1ac','chuanqihechuanqi@163.com','陈权',2,8,'460002198609150012','18789730751',0,1479226808),
	(239,'18889250530','1a2a3f2099f091df34d03d0cf8ee6e8b','591989772@qq.com','林其进',2,17,'460007198712048018','18889250530',0,1479226808),
	(240,'18217953333','4d6a71f6b3fc8f6cfd576969c48073fd','67739961@qq.com','黄熹卉',2,4,'460005198705180720','18217953333',0,1479226808),
	(241,'13158981225','ade2ea9c089a695ed3e5ff60ed8ba86f','476727922@QQ.COM','李皎余',2,1,'460004198702042828','13158981225',0,1479226808),
	(242,'13648605565','5aaf173363c7614c745a517ff1674d52','87585665@qq.com','邢同裔',2,3,'460003198709120212','13648605565',0,1479226808),
	(243,'18889204158','d7b2401699bcfe0dafb16f24dd3d0186','916784535@qq.com','符林平',2,17,'46000719880702801X','18889204158',0,1479226808),
	(244,'18889200092','bec2ed3bd6ae12e2fef54a00b37201e6','996922038@qq.com','陈云路',2,10,'460034198806185311','18889200092',0,1479226808),
	(245,'13178962220','9b6582738cbad0c094468db936db2c4e','1107249847@qq.com','叶金福',2,1,'460003198804016819','13178962220',0,1479226808),
	(246,'13876724797','05418b68da8c72eca4b030604af2a443','286501529@qq.com','符家慢',2,17,'460007198906078098','13876724797',0,1479226808),
	(247,'17786941223','5f6d546c6d3e5d68228bdc32a9938206','1432912182@qq.com','郑亚培',2,10,'460034199004081216','17786941223',0,1479226808),
	(248,'15103031103','62aff4a62addaed22080c647a20d8192','339140100@qq.com','陈积盛',2,10,'460033199005150010','15103031103',0,1479226808),
	(249,'18889769177','8440b357d3d6d43f288f75ca2a0362b5','1600834563@qq.com','蔡于富',2,1,'460025199007220617','18889769177',0,1479226808),
	(250,'13215783093','890966d6ea71757e549d3a38a5478200','13215783093@163.com','周仁富',2,1,'460004199109274219','13215783093',0,1479226808),
	(251,'13537621520','0e7e5a710e9b24b2182b6557d6f777e5','1217207163@qq.com','李鹭玉',2,11,'35042619910909604X','13537621520',0,1479226808),
	(252,'18976235698','1e7f9ab69cf8716360d7d041fad4fce9','378188500@qq.com','吕常荣',2,1,'46000419911130021X','18976235698',0,1479226808),
	(253,'18976255221','fef25693b2f36e20ee31048df55ec0a8','413787280@qq.com','赖贝宁',2,1,'460102199104120619','18976255221',0,1479226808),
	(254,'15595886462','1bc5640796d117a4f51507c1c2761146','412006736@qq.com','韩发定',2,1,'460005199102045137','15595886462',0,1479226808),
	(255,'18789306335','5bdc1bdd6cdc2cc72d2477ce581d9d73','214393094@qq.com','王推梁',2,4,'460027199212152935','18789306335',0,1479226808),
	(256,'18976976139','824c823a9389de2da02c50fc48429fb0','362472100@qq.com','林小亮',2,11,'460028199206021230','18976976139',0,1479226808),
	(257,'18876114657','2a89f2b47ca8a0e2ab8a5bdc49854c4f','502102712@qq.com','陈小静',2,11,'460003199303142643','18876114657',0,1479226808),
	(258,'15289911042','4e2be0935fb9409e1ebf12ca8004df20','13976172971@qq.com','刘思华',2,1,'460035199306142527','15289911042',0,1479226808),
	(259,'15501838820','0c511b18649128b6dea1a72731f37a1d','824207988@qq.com','杨玲',2,2,'50023619931003668X','15501838820',0,1479226808),
	(260,'18789823789','56747dff55531206b3341a134c650322','229482915@qq.com','严洪敏',2,8,'460002199312292516','18789823789',0,1479226808),
	(261,'18289700487','b958653d994f6c7a07649637ad779f8e','874117872@qq.com','陈玉妹',2,2,'46000519940709452X','18289700487',0,1479226808),
	(262,'18889365394','76c4bd40865bec5accc15782cc77605c','14846363737@qq.com','许土英',2,3,'460003199411062843','18889365394',0,1479226808),
	(263,'18876035995','43bc5c5168aacaf42c73acc8380a0ae0','1342931352@qq.com','徐辉智',2,10,'460034199406080910','18876035995',0,1479226808),
	(264,'18876863979','62bf58064502de1f46d6f4519f2b53f5','2718807869@qq.com','蚁智欢',2,4,'44058319941117287X','18876863979',0,1479226808),
	(265,'18708978607','3dafdafd06863f9e3e2c3e2f39ae60bd','443557275@qq.com','刘丹花',2,3,'460003199403150448','18708978607',0,1479226808),
	(266,'13876457434','bcc80ca42569ba921b95b38af1cd260d','1205181180@qq.com','林三',2,13,'460033199407207518','13876457434',0,1479226808),
	(267,'18389955851','8c3b5f5ad6c72d4d3bde302a20d1423a','xiaoying_oO@outllook.com','刘晓英',2,8,'532126199409040725','18389955851',0,1479226808),
	(268,'13637564925','71c7de8212d8f1b7af62df275dc533d8','510786192@qq.com','陈征荣',2,1,'460021199509254416','13637564925',0,1479226808),
	(269,'17733122653','9f4e7d3753e3242dfef5208f34bd3a75','18718033429@163.com','刘新华',2,1,'440221199509203018','17733122653',0,1479226808),
	(270,'13758842772','b145b67606eb562c7e78493e34b6a83a','1286503403@qq.com','陈开会',2,2,'330327199508102133','13758842772',0,1479226808),
	(271,'15708989883','ae94476ddd05a96cc450aaddfdcb4702','906097011@qq.com','胡珊',2,1,'513821199505301845','15708989883',0,1479226808),
	(272,'18976220687','648e19a68bbdf2cf1c53753e39e9b232','1129191811@qq.com','何君秀',2,1,'460036199509034127','18976220687',0,1479226808),
	(273,'18789910469','5ca75853affe475142070d9d1beeea1c','954047592@qq.com','王凡',2,1,'460027199509171731','18789910469',0,1479226808),
	(274,'13976233120','4609062b0ef0c0104d3c6e29a2d10073','709639230@qq.com','林少钊',2,13,'460033199509184919','13976233120',0,1479226808),
	(275,'18389364750','288ead6ee5a37ad72d07bcf2956c06fb','1904314100@qq.com','陈威振',2,1,'469003199509208917','18389364750',0,1479226808),
	(276,'17733123845','f8c62667cb3b8868b1862d3e64fc5a51','1909353556@qq.com','侯梦林',2,1,'340421199510103070','17733123845',0,1479226808),
	(277,'15595907933','d762e44b387a52ef9c485d9e8ff7540b','2550040996@qq.com','符美美',2,1,'460003199511227027','15595907933',0,1479226808),
	(278,'13457476044','9c552cdb396f4b7d50068e8b83a87c66','rorowzt@foxmail.com','吴贞涛',2,18,'450481199512012457','13457476044',0,1479226808),
	(279,'15119678972','d7812b4bc1b52b8e1df49163b9de3006','11363368982@qq.com','廖海锋',2,1,'440923199502034339','15119678972',0,1479226808),
	(280,'18789629718','fa5e111937f9b4ce95e0834ad4ee7df8','1175030171@qq.com','林扬妹',2,1,'460028199507144429','18789629718',0,1479226808),
	(281,'13025883711','9646949fa2fd9fe428231e386bafd18b','1923303054@qq.com','谭金花',2,4,'440783199602203625','13025883711',0,1479226808),
	(282,'17889887935','89b48f9d0739222de1c5eb57318413be','675255080@qq.com','俞爱伦',2,1,'440233199611013515','17889887935',0,1479226808),
	(283,'15501868425','2159d6fa9868a27f4bad2ce5540fc954','2940397154@qq.com','蒋琳琳',2,2,'33072619960216132X','15501868425',0,1479226808),
	(284,'18876988346','6857b72fc5461e7a51dd0b3aef3d044b','61246048165@qq.com','林中帝',2,1,'460035199603263018','18876988346',0,1479226808),
	(285,'15008061970','96b8b788db8e27ec0a599a4df35772b4','15008061970@163.com','陈亚宽',2,1,'460034199604252410','15008061970',0,1479226808),
	(286,'18520098709','ae02cbfc1a347736cb65cfac3bec8b81','18520098709@163.com','廖世凯',2,1,'445222199604241056','18520098709',0,1479226808),
	(287,'18789063855','d9a701aa94c992080db381d4d93be200','531168008@qq.com','李晓茜',2,1,'460027199606097924','18789063855',0,1479226808),
	(288,'18289688624','7846cec203b733446a17063a6da61f42','1974163817@qq.com','胡丽霞',2,1,'460034199606050927','18289688624',0,1479226808),
	(289,'18289811707','754a15d6c20e4b2508ceb2069fff9648','904116039@qq.com','吴乾桦',2,1,'460026199612031212','18289811707',0,1479226808),
	(290,'18889625745','c34f7a989fb96248753789a0f96c6a49','289771373@qq.com','张智勇',2,1,'511527199604210332','18889625745',0,1479226808),
	(291,'13976387936','8c37dbe74b6b2995b8cc2ec0c25eafbc','156353151@qq.com','杨波',2,1,'51370119965134617','13976387936',0,1479226808),
	(292,'18889385773','cb7f687a2fc2e8ab554e419a119082ab','2764233853@qq.com','李燕兰',2,4,'350424199601162229','18889385773',0,1479226808),
	(293,'15708989723','dafbecb32a00631f5bb797b0be7c7d09','2927551282@qq.com','朱启珍',2,1,'530161199608121568','15708989723',0,1479226808),
	(294,'15708919881','fa9bc37fd417fddfdf17a1ab86109f88','1367296620@qq.com','冯红云',2,1,'52242619960823624X','15708919881',0,1479226808),
	(295,'17798454482','530b021ddea9b87b5e8de4ab9f3356a3','1554960631@qq.com','段康康',2,1,'342221199608267816','17798454482',0,1479226808),
	(296,'18898903683','68f84763a8130cf9830d8916eb588d2d','1390999678@qq.com','黄玉嫦',2,4,'440781199609045022','18898903683',0,1479226808),
	(297,'18889524745','645f180b11c123a84c5de6759b7129ae','1826035919@qq.com','赵晓',2,1,'522401199610179021','18889524745',0,1479226808),
	(298,'18876156098','0d060d902e1f730ce0d318deef4badb3','1275137332@qq.com','梁忆娣',2,4,'441721199611083081','18876156098',0,1479226808),
	(299,'18789031530','44e5f04c36c1e42ed888197b17f0a0f6','1285153631@qq.com','白才颖',2,4,'460022199610011220','18789031530',0,1479226808),
	(300,'18289306359','1fd90e2fad17f2878cf686da907e5991','285912376@qq.com','文寿健',2,18,'469026199610201212','18289306359',0,1479226808),
	(301,'13208900032','b96af20575c5e20181dfc9023ab6cdac','435507661@qq.com','梁晓欣',2,4,'441721199611065529','13208900032',0,1479226808),
	(302,'13876224571','0e066b5ccd2f94cc157cda5aff54bffe','13876224571@163.com','何兰兰',2,1,'460002199611131544','13876224571',0,1479226808),
	(303,'18389735191','8ec495adbcbb8f7a53cab4426c811cb1','429733734@qq.com','陈晓',2,4,'330326199611243210','18389735191',0,1479226808),
	(304,'13876679305','387c91a2003c70c5dcf81ccfd288e768','609062203@qq.com','欧阳炅',2,18,'360430199601150059','13876679305',0,1479226808),
	(305,'18117620979','a24ceeaa40602684c454cd981773ea34','scmy20@vip.qq.com','杨康',2,4,'510781199601010691','18117620979',0,1479226808),
	(306,'18687150187','acce0d8643d7482fe41ad5951440f488','434712391@qq.com','王俊杰',2,1,'530112199603200913','18687150187',0,1479226808),
	(307,'17889785633','7e1f8fa94e0fe9d3ad8215040aa2abe1','1035198377@qq.com','刘坤',2,1,'411527199604090015','17889785633',0,1479226808),
	(308,'15708990602','ec21ca1c223c95cd463d3ee62047b524','1965603456@qq.com','周少磊',2,1,'362502199605217013','15708990602',0,1479226808),
	(309,'18876749480','4e79e50ca8d91db73d42f17890f6af5a','410944818@qq.com','王小苦',2,1,'469024199606027220','18876749480',0,1479226808),
	(310,'17889887362','e5d84ee3097f9b1e129818335ffb8101','447873838@qq.com','江健锟',2,1,'44018219960729001x','17889887362',0,1479226808),
	(311,'18889740477','65f090c1caa0221c6ac281efeeb19fdc','852189104@qq.com','黄燕蕾',2,4,'460001199609140728','18889740477',0,1479226808),
	(312,'13795577955','1de955205727307c7a805f5c8df5021b','1263274221@qq.com','陈柯铮',2,1,'5103221997','13795577955',0,1479226808),
	(313,'17789867083','43ebb8f9b59f9f468605f37a3156290a','1148465463@qq.com','符丹月',2,1,'460300199705280042','17789867083',0,1479226808),
	(314,'13389820680','f0cdf9bdf9a2f8943d6765c1719bbba6','572770749@qq.com','王潇仪',2,2,'460026199707010027','13389820680',0,1479226808),
	(315,'13697516146','57fb6c5755414f4420dcc83dbe721aa7','3083719436@qq.com','罗丹丹',2,1,'511602199707286207','13697516146',0,1479226808),
	(316,'18117652511','05d022a33171e231d6d2a9f7127baed1','492500539@qq.con','祁宇彬',2,8,'460006199709070212','18117652511',0,1479226808),
	(317,'17733106790','43f1eaba3ae5476655209c180194f913','17733106790@163.com','吕珊珊',2,1,'440921199710045785','17733106790',0,1479226808),
	(318,'17889780337','4e274f11be7be4d950d5832c2f562896','464723403@qq.com','赵欢',2,1,'510823199711064028','17889780337',0,1479226808),
	(319,'15501750180','83dde735cd87c58e42c8752f1537b690','1763250810@qq.com','古永志',2,1,'46003319971116417X','15501750180',0,1479226808),
	(320,'13078993708','bc0817571f6a8153194b329d984e79c7','1071256006@qq.com','林小芬',2,1,'46010719971129302X','13078993708',0,1479226808),
	(321,'18889380944','508926245cd34764314243dac2bec512','1157919670@qq.com','王守师',2,1,'460200199702135514','18889380944',0,1479226808),
	(322,'18876193714','f746553113be7adcfa719a41e79c0524','1663979590@qq.com','王之望',2,9,'460036199703225912','18876193714',0,1479226808),
	(323,'13178939266','c2d748605d6993154be28cc92a6d4ad9','614612184@qq.com','朱瑞',2,1,'321284199703285212','13178939266',0,1479226808),
	(324,'15708996586','4a4a7f4b3c512f8fe376817e3df540da','1342190832@qq.com','王朔',2,1,'371526199706233217','15708996586',0,1479226808),
	(325,'18889523979','9cc3e8f721832f5ebd0aecd4de4aa0b3','1878916099@qq.com','赵润',2,1,'522401199710901005','18889523979',0,1479226808),
	(326,'13434166937','b0383351231f10485d32a2014e6020ed','1046344953@qq.com','江晓桃',2,1,'4401119971214094X','13434166937',0,1479226808),
	(327,'17389702339','15ff681aecdde6810a7ad487dd923f70','973761323@qq.com','金鑫',2,2,'211103199704083015','17389702339',0,1479226808),
	(328,'15008954841','877cfd44a51965b7779e40c87d982cf3','wenzhen97@qq.com','符文珍',2,4,'469005199705093048','15008954841',0,1479226808),
	(329,'18976909659','fb5232a0cd5229aed0134847744897f0','1119246110@qq.com','欧阳合桂',2,1,'460030199801150055','18976909659',0,1479226808),
	(330,'18289281101','8f6c1e4c0cffecf033ef11f7ff914652','782581439@qq.com','黄渊',2,1,'46003419980206041X','18289281101',0,1479226808),
	(331,'13876682564','601ee083953311e5ceb5a2038b402291','2205233465@qq.com','李龙',2,1,'460004199802185417','13876682564',0,1479226808),
	(332,'18876810704','da0d2f1bfaa52ad91fe06302280922f8','1730955184@qq.com','韦明华',2,1,'460033199804085374','18876810704',0,1479226808),
	(333,'13976671804','386910e3a03dc1da634b45423b23985c','2497437391@qq.com','欧继煜',2,1,'460030199805125711','13976671804',0,1479226808),
	(334,'17722603986','7c8981c981fa96c451fa4bf254b6680a','1259304058@qq.com','黄政仕',2,1,'440881199805135119','17722603986',0,1479226808),
	(335,'13876483623','6ca32b69985999653976a061219835a4','1439698647@qq.com','邓秀平',2,1,'460003199806253812','13876483623',0,1479226808),
	(336,'13509089671','0e4b539885e86d6b20976a50f7a16921','2359859729@qq.com','吕馨',2,1,'430722199807065081','13509089671',0,1479226808),
	(337,'15708998950','a520ad3af50996e5d1a1768b84338afa','1183688020@qq.com','王清咪',2,1,'46002619980719154X','15708998950',0,1479226808),
	(338,'17889982593','bd432351eb80de9198d0f3d3c1765979','1143909886@qq.com','卢大晰',2,1,'460026199811060016','17889982593',0,1479226808),
	(339,'18976134271','bf365c8d86810cb26e345d00b566dc85','2830543145@qq.com','王秀文',2,1,'460027199811233737','18976134271',0,1479226808),
	(340,'18289307510','e753e6acc7464892ace7e8fbccac8054','www.qiuxiang@qq.com','邱贤隆',2,1,'460007199812046196','18289307510',0,1479226808),
	(341,'15708993717','4ade3c98cd3aa790ec2321c5e833a0fa','1425016444@qq.com','黄政朝',2,1,'440881199812085113','15708993717',0,1479226808),
	(342,'15708993810','6cfc2fedfee01459e208297c58884fee','460857635@qq.com','康兆至',2,1,'230281199812220213','15708993810',0,1479226808),
	(343,'18876646816','55871c9253e66d2d25136f5f856f941e','1757907338@qq.com','银雪蓉',2,1,'460030199801096925','18876646816',0,1479226808),
	(344,'18217885953','a9fc9c894b76eea1e36c6b109781af2b','511665999@qq.com','许照明',2,1,'460003199802102072','18217885953',0,1479226808),
	(345,'15157847057','05908748e3be0fbf1825aff323efcc7c','814842413@qq.com','洪艳',2,1,'332501199807030028','15157847057',0,1479226808),
	(346,'18976074991','ff3624cf58f3589f8cb4408592d7fa6c','1536346909@qq.com','潘婷婷',2,1,'460003199808161022','18976074991',0,1479226808),
	(347,'18789191180','7e597b2b6ad68b6b90859762e6441302','1446902280@qq.com','经放明',2,1,'450324199809241311','18789191180',0,1479226808),
	(348,'188897748391','d82e7409491374457b9ee8a9ad88c5ef','1578689597@qq.com','郑庆城',2,1,'441581199811018634','188897748391',0,1479226808),
	(349,'15289936048','3d50ee4e16281592cda31f8e6a3fa7ed','2601342964@qq.com','符传浩',2,1,'460025199812084216','15289936048',0,1479226808),
	(350,'13976690469','a2718373845b748c9deb9b902452fdc5','852460171@qq.com','林志峰',2,1,'460102199808023315','13976690469',0,1479226808),
	(351,'13637541803','ce85570330f0169fc15cc01e50990cd4','1194310773@qq.com','李华景',2,1,'440880199901163232','13637541803',0,1479226808),
	(352,'13976055916','88bcc29b9ed11bdd33f01ca6d23165eb','973245354@qq.com','李日标',2,1,'460027199902040618','13976055916',0,1479226808),
	(353,'18389952803','9e0217f9f20c9315ddd0f2f6f1f9cf7b','2359446267@qq.com','莫海涛',2,1,'460025199904103314','18389952803',0,1479226808),
	(354,'18976274620','4a7c9a77faa07f15083d0a84765c54d1','1960154710@qq.com','王龙高',2,1,'46010419990707441X','18976274620',0,1479226808),
	(355,'18898900170','0bbede411a5070bea94aca8bd844def5','2418548389@qq.com','王晶晶',2,1,'46010320001203317','18898900170',0,1479226808),
	(356,'18389419159','21d3b815a0930e71894696d34140eb3b','1824570020@qq.com','王胜',2,1,'460028199907245616','18389419159',0,1479226808),
	(357,'13337578829','8f67c17ca5971ea1c67b370d6d2c635b','1031043781@qq.com','梁其鹏',2,1,'460106199908014411','13337578829',0,1479226808),
	(358,'18889335485','af5778b2a2631b7fbbb0a2fd0b86c057','1041668834@qq.com','许宇吉',2,1,'460006199909080212','18889335485',0,1479226808),
	(359,'18876892636','926e768f7331a7140792a223f0c1bdd5','2674587432@qq.com','符永信',2,1,'460006199909132713','18876892636',0,1479226808),
	(360,'18289670194','9edcee7aacb8d528fbd43211db5c6942','183558310@qq.com','符晓悦',2,1,'460030199909201221','18289670194',0,1479226808),
	(361,'15708998932','ca5aa14d59d35f936ad2e6c981445fac','1172887677@qq.com','邱莨曾',2,1,'469024199909271212','15708998932',0,1479226808),
	(362,'13016222138','173570adb86187dcb8e71e84c988a71a','2879636841@qq.com','王娜',2,1,'460036199909300826','13016222138',0,1479226808),
	(363,'18389797162','8b63f5233daee6334bfc7e3f9e1897ac','522454516@qq.com','杨来耀',2,1,'460025199910094813','18389797162',0,1479226808),
	(364,'18389318133','59a6edbd66eefc78b582cbf973ee39ca','2307844412@qq.com','黄海康',2,1,'460034199910220943','18389318133',0,1479226808),
	(365,'13627520518','ece30091b756b449560af3da31066c0c','1502446212@qq.com','符祖胜',2,1,'460028199911025616','13627520518',0,1479226808),
	(366,'13822061305','00500cac10c10fb7c7794c20d4295cf6','1657252334@qq.com','林志财',2,1,'445222199911092951','13822061305',0,1479226808),
	(367,'18489028063','72717d2f8b723b412a881034a8b7b8e8','1921919233@qq.com','王正煌',2,1,'46002819991117243X','18489028063',0,1479226808),
	(368,'13637549071','e2061d89eecdbca1a57f598a75d9e460','892948077@qq.com','邝敦浩',2,1,'460103199911200312','13637549071',0,1479226808),
	(369,'15799004300','fbc1444d2b09d2c1fcbb83867fa9c8be','1533421471@qq.com','陈春霞',2,1,'460005199911276410','15799004300',0,1479226808),
	(370,'18889824904','d5560c56ab6a5dc0cb41ed257446d221','841995248@qq.com','蔡汝柏',2,1,'460004199912044455','18889824904',0,1479226808),
	(371,'18789176711','2bd3e11357b2806555e5386498852b4c','1635312733@qq.com','黎兴弯',2,1,'460034199912083612','18789176711',0,1479226808),
	(372,'13307530557','9b22aa940858f1168fc0397bf7d29ed5','7550282146@qq.com','符荣斯',2,1,'460028199912084810','13307530557',0,1479226808),
	(373,'13215721209','052ecd6e8fe7c04ad626c070c47aa7e8','1127248034@qq.com','李华哲',2,1,'460028199912285217','13215721209',0,1479226808),
	(374,'18789355524','77333f40fd73ea7cc8f34536523cbb5b','1969645823@qq.com','王珠倩',2,1,'460036199909232421','18789355524',0,1479226808),
	(375,'15103602219','754a15d6c20e4b2508ceb2069fff9648','1625595126@qq.com','徐辉义',2,1,'460034199903031212','15103602219',0,1479226808),
	(376,'18217849011','a0cee3459baa59c9419abf0ad6062c98','1178867973@qq.com','张玉莹',2,1,'460005199906181724','18217849011',0,1479226808),
	(377,'17889981636','ee305fd76ad0e5b993909ba3fd0fca19','2546879445@qq.com','黄焕洪',2,1,'460003199908021430','17889981636',0,1479226808),
	(378,'18389850059','3c77b9358a5b87b75f6d762900b5f730','1078484698@qq.com','李青青',2,1,'460033199908061180','18389850059',0,1479226808),
	(379,'18289809502','5c82b630646ba7b60835b9c6e9c45857','2294948157@qq.com','王芳灵',2,1,'469024199908244423','18289809502',0,1479226808),
	(380,'15500970919','ba60bd8cbb4f42f9fa01ba4fe3d11960','1322088642@qq.com','张鹏',2,1,'513701199909075011','15500970919',0,1479226808),
	(381,'17889880092','1b7d8ab86c1b2440780c622c5bbd3397','3325567136@qq.com','谭志伟',2,1,'469003199909113212','17889880092',0,1479226808),
	(382,'13876562336','5d56c5dfdf6bd40beebe493073bd18ff','2296357651@qq.com','钱彬彬',2,1,'460006199909154111','13876562336',0,1479226808),
	(383,'18976462150','fbc1444d2b09d2c1fcbb83867fa9c8be','2726931402@qq.com','邢福义',2,1,'460005199911276410','18976462150',0,1479226808),
	(384,'13700488275','8cd7253a9043c4164b5c574156cfaf85','2014625636@qq.com','王忠睿',2,1,'460025199912212131','13700488275',0,1479226808),
	(385,'13976022485','7d8b446d46c46a03ba1d8ec5f978bf19','1599239514@qq.com','王大茂',2,1,'46000219990530181x','13976022485',0,1479226808),
	(386,'13307566595','8d08413a047d0128183825b2f5f49a2d','2605387847@qq.com','邱日明',2,1,'460026199910240610','13307566595',0,1479226808),
	(387,'18789180719','c3330113c8d23617a71fa01ef093a80e','1482079738@qq.com','李明兰',2,1,'460003199911274228','18789180719',0,1479226808),
	(388,'18117714301','b47341d5f885dc89ea7cca2dfa0fc8e8','1364325632@qq.com','宋智仁',2,1,'460035199912231319','18117714301',0,1479226808),
	(389,'17784695461','38054de0fd00a7cc9969bd6e1ada4428','1637894735@qq.com','王威',2,1,'460200199901180019','17784695461',0,1479226808),
	(390,'15708998851','2ad1348eeb3dba7bd6b735b8e4180d5b','1516278160@qq.com','刘张主',2,1,'469027199901225413','15708998851',0,1479226808),
	(391,'13876188190','4812e03d1970be038cd4f591a9ec723c','1175187185@qq.com','唐甸存',2,1,'460107199906262610','13876188190',0,1479226808),
	(392,'18208980167','fecee561eb7be30851d127b8b488fe45','236465448@qq.com','李萍',2,1,'469026200001070427','18208980167',0,1479226808),
	(393,'18889371951','7d3f3c7d268d48677fb65516334ca523','1250533174@qq.com','王雨秀',2,1,'469001200001081022','18889371951',0,1479226808),
	(394,'18889517079','03b1cf7821936b2ae26219762598430c','1339052262@qq.com','陈倩',2,1,'469021200001093328','18889517079',0,1479226808),
	(395,'18907645895','0bbede411a5070bea94aca8bd844def5','1143082909@qq.com','王志宇',2,1,'460103200001203317','18907645895',0,1479226808),
	(396,'18289864832','18e7a4225fb06298cf25e2d6e10903d4','2208611638@qq.com','陈远熙',2,1,'460003200002091833','18289864832',0,1479226808),
	(397,'18217850592','eacf569c1be11382f724911e4719aa7d','2451065777@qq.com','庞国根',2,1,'4600200002222415','18217850592',0,1479226808),
	(398,'15109811406','ae013b2b083addf1c0e1115baf0d510d','2302956767@qq.com','陈井龙',2,1,'469003200002286110','15109811406',0,1479226808),
	(399,'18289298477','0fe21ef5fa9ca15937698433cdb445cb','864117270@qq.com','吴巨威',2,1,'460003200003063412','18289298477',0,1479226808),
	(400,'15120700490','c8da9f433cde8debf4cd8d771ebccf8a','714183030@qq.com','王才峰',2,1,'460026200003290011','15120700490',0,1479226808),
	(401,'18489830269','6b45b43064bbd5ee352e423331e67830','378188500@qq.com','张小波',2,1,'460028200004033618','18489830269',0,1479226808),
	(402,'18389837172','87bf9bc30f0485fa2c1a7f5fe91ec13d','767522478@qq.com','林方泰',2,1,'46005200005010712','18389837172',0,1479226808),
	(403,'13976385286','daf8fbd6fed1d3f974b45a68f0a5d4f5','1722063685@qq.com','崔建新',2,1,'460033200005133574','13976385286',0,1479226808),
	(404,'18889395539','db8d344087cf7ddc4f3a82913398fb59','1527266855@qq.com','陈培炀',2,1,'445281200005261552','18889395539',0,1479226808),
	(405,'13627531995','86069292656049512e7274aefad11b25','237245912@qq.com','陈会杨',2,1,'460002200007064926','13627531995',0,1479226808),
	(406,'18889491555','c71d3cd1008f2a936687a7901a44c55d','2855496780@qq.com','陈贤建',2,1,'460028200011013236','18889491555',0,1479226808),
	(407,'13368942737','30fd73fd649beec2b28b1c015d9a5998','2580129298@qq.com','喻楚添',2,1,'120110200011040334','13368942737',0,1479226808),
	(408,'17789758365','3abffed3f3f00d599c6a03ff1bdd9c69','2357291743@qq.com','刘佑陵',2,1,'4600032000111716116','17789758365',0,1479226808),
	(409,'15208978221','f2dd3c09f89ea35e45866c649fccee05','2324454835@qq.com','何声权',2,1,'460006200011220413','15208978221',0,1479226808),
	(410,'15799063213','3c10b3ad8f1ed39cca3212b7dca0b6ec','1622247657@qq.com','符必伶',2,1,'460029200012106027','15799063213',0,1479226808),
	(411,'15708998532','47b9007fa40eae6b1f575a063d4ea798','2680301007@qq.com','姜宏进',2,1,'460027200012135319','15708998532',0,1479226808),
	(412,'18889622767','eb3d6a1d2004e4cc1533cd881a6475c7','212173362@qq.com','韩王冠',2,1,'469005200012134535','18889622767',0,1479226808),
	(413,'17889880272','81e91baa7785e5e9c314a1b427ee1c1f','2523063312@qq.com','陈莉莉',2,1,'469024200012235626','17889880272',0,1479226808),
	(414,'13307535485','2a61feece1c90a63e9df0535f9b9d9c3','243767112@QQ.COM','胡善淳',2,1,'460004200003270012','13307535485',0,1479226808),
	(415,'13876247936','dbf36c35a7f1273bf51f3f39b4a4d0ad','1479832418@qq.com','林妙倩',2,1,'460103200006301821','13876247936',0,1479226808),
	(416,'18217983502','405a88bacbdfa2d44c9fb327948fd994','1548162728@qq.com','王紫洁',2,1,'460036200008182442','18217983502',0,1479226808),
	(417,'13976383680','05a89c3fe991afb000ee59ed7292686b','1654041359@qq.com','梁昌昭',2,1,'460102200002031215','13976383680',0,1479226808),
	(418,'13876434880','768ad051bddc411a64947b421bf7c12e','2227904427@qq.com','李江东',2,1,'4690007200003067214','13876434880',0,1479226808),
	(419,'15708997505','1304db1efd8f1fe25304ef2db86f1337','605067919@qq.com','杨浩',2,1,'46010420000613031x','15708997505',0,1479226808),
	(420,'18289902320','80da87a7b337a082e122449021c4164a','923224105@qq.com','王显超',2,1,'460034200006170015','18289902320',0,1479226808),
	(421,'18889576350','d3db0650d38a1587da83016624b98f7c','2442947957@qq.com','王萧琪',2,1,'46002820000822442x','18889576350',0,1479226808),
	(422,'18289556082','26b57c4771f78e1d197b503d1d60e840','2504433836@qq.com','李佳泽',2,1,'460004200010040629','18289556082',0,1479226808),
	(423,'18289256658','5f5b46eaa156f875141975b853318aff','378188500@qq.com','王浏惠',2,1,'460028200003086021','18289256658',0,1479226808),
	(424,'18889744828','bf40357c9900b8dc6d755f86c42d4958','328092694@qq.com','徐嘉',2,1,'220282200008135915','18889744828',0,1479226808),
	(425,'13138902620','bb1732c724b020ceb20baa52fe5efbc8','545657978@qq.com','符雪',2,1,'460005200101131928','13138902620',0,1479226808),
	(426,'18789616270','53989f88680f17eee08f6cfe1cb8a432','2251548971@qq.com','林春',2,1,'18789616270','18789616270',0,1479226808),
	(427,'18289677879','ddf7a70927b87bf274a49dd369a0e708','1473317092@qq.com','梁烜杰',2,3,'460003200101111414','18289677879',0,1479226808),
	(428,'13136065872','107533b01ee6b0d2b61471d29386f68b','48535565@qq.com','黎紫菲',2,1,'460034200112043319','13136065872',0,1479226808),
	(429,'15203080672','d36588560849b5331b607fb56cb9da6d','577150758@qq.com','李富才',2,1,'460003199806122030','15203080672',0,1479226808),
	(430,'15203080672','d36588560849b5331b607fb56cb9da6d','577150758@qq.com','李富才',2,1,'460003199806122030','15203080672',0,1479226808);

/*!40000 ALTER TABLE `user2` ENABLE KEYS */;
UNLOCK TABLES;



/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;
/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
