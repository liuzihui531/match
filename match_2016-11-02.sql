# ************************************************************
# Sequel Pro SQL dump
# Version 4135
#
# http://www.sequelpro.com/
# http://code.google.com/p/sequel-pro/
#
# Host: 192.168.1.162 (MySQL 5.6.23-log)
# Database: match
# Generation Time: 2016-11-01 17:10:15 +0000
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
	(1,'admin','21232f297a57a5a743894a0e4a801fc3',1,'ohs_4sgyk31vkfKLHy2wg5HrrGeo',1478015071,'192.168.1.128',1,495,'',1360085491);

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
	(3,'1','2','','','','','','','',1478015017,0);

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
	(6,3,'','','','','','','','','',1478015017);

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
	(1,3,'{\"-1\":\"\"}','{\"-1\":\"\"}','','','','',1478015017);

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
	(2,3,0,0,0,0,0,0,1478015017);

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
	(2,3,0,0,0,'','',1478015017);

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
	(1,1,1,'111','11',868377600,'111','111','111','111','11','1111','111','1111','','1111',1477826686,0);

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
	(10,6,'111',1,111,'111','1111');

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
	(6,1,'111','11',868377600,'11','111','111','11','11','11','111',1,'111','',1477823561,0);

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
  `created` int(11) NOT NULL DEFAULT '0',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

LOCK TABLES `user` WRITE;
/*!40000 ALTER TABLE `user` DISABLE KEYS */;

INSERT INTO `user` (`id`, `username`, `password`, `email`, `created`)
VALUES
	(1,'abc@qq.com','96e79218965eb72c92a549dd5a330112','abc@qq.com',1478019402);

/*!40000 ALTER TABLE `user` ENABLE KEYS */;
UNLOCK TABLES;



/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;
/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
