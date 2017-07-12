-- MySQL dump 10.13  Distrib 5.5.42, for Linux (i686)
--
-- Host: localhost    Database: match
-- ------------------------------------------------------
-- Server version	5.5.42-log

/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8 */;
/*!40103 SET @OLD_TIME_ZONE=@@TIME_ZONE */;
/*!40103 SET TIME_ZONE='+00:00' */;
/*!40014 SET @OLD_UNIQUE_CHECKS=@@UNIQUE_CHECKS, UNIQUE_CHECKS=0 */;
/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;
/*!40111 SET @OLD_SQL_NOTES=@@SQL_NOTES, SQL_NOTES=0 */;

--
-- Table structure for table `admin`
--

DROP TABLE IF EXISTS `admin`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
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
) ENGINE=MyISAM AUTO_INCREMENT=2 DEFAULT CHARSET=utf8 COMMENT='管理员表';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `admin`
--

LOCK TABLES `admin` WRITE;
/*!40000 ALTER TABLE `admin` DISABLE KEYS */;
INSERT INTO `admin` VALUES (1,'admin','21232f297a57a5a743894a0e4a801fc3',1,'ohs_4sgyk31vkfKLHy2wg5HrrGeo',1479611000,'121.35.200.173',1,516,'',1360085491);
/*!40000 ALTER TABLE `admin` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `market`
--

DROP TABLE IF EXISTS `market`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
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
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `market`
--

LOCK TABLES `market` WRITE;
/*!40000 ALTER TABLE `market` DISABLE KEYS */;
INSERT INTO `market` VALUES (3,'1','2','','','','','','','',1478015017,0);
/*!40000 ALTER TABLE `market` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `market_product`
--

DROP TABLE IF EXISTS `market_product`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
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
) ENGINE=InnoDB AUTO_INCREMENT=7 DEFAULT CHARSET=utf8 COMMENT='市场产品';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `market_product`
--

LOCK TABLES `market_product` WRITE;
/*!40000 ALTER TABLE `market_product` DISABLE KEYS */;
INSERT INTO `market_product` VALUES (4,3,'','','','','','','','','',1478015017),(5,3,'','','','','','','','','',1478015017),(6,3,'','','','','','','','','',1478015017);
/*!40000 ALTER TABLE `market_product` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `market_service`
--

DROP TABLE IF EXISTS `market_service`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
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
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8 COMMENT='市场--基地信息化情况';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `market_service`
--

LOCK TABLES `market_service` WRITE;
/*!40000 ALTER TABLE `market_service` DISABLE KEYS */;
INSERT INTO `market_service` VALUES (1,3,'{\"-1\":\"\"}','{\"-1\":\"\"}','','','','',1478015017);
/*!40000 ALTER TABLE `market_service` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `market_sheshi`
--

DROP TABLE IF EXISTS `market_sheshi`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
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
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=utf8 COMMENT='市场--基地基础设施';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `market_sheshi`
--

LOCK TABLES `market_sheshi` WRITE;
/*!40000 ALTER TABLE `market_sheshi` DISABLE KEYS */;
INSERT INTO `market_sheshi` VALUES (2,3,0,0,0,0,0,0,1478015017);
/*!40000 ALTER TABLE `market_sheshi` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `market_xinxi`
--

DROP TABLE IF EXISTS `market_xinxi`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
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
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=utf8 COMMENT='市场--基地信息化情况';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `market_xinxi`
--

LOCK TABLES `market_xinxi` WRITE;
/*!40000 ALTER TABLE `market_xinxi` DISABLE KEYS */;
INSERT INTO `market_xinxi` VALUES (2,3,0,0,0,'','',1478015017);
/*!40000 ALTER TABLE `market_xinxi` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `news`
--

DROP TABLE IF EXISTS `news`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
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
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `news`
--

LOCK TABLES `news` WRITE;
/*!40000 ALTER TABLE `news` DISABLE KEYS */;
INSERT INTO `news` VALUES (1,'国金所金融控股董事长何玉山受邀云滴科技开幕典礼','云滴公司是一家综合型互联网公司，隶属于云南盛达集团。云滴公司服务面涵盖交通，旅游，物流，教育，农业，金融等多个领域，充分发挥互联网在社会资源配置中的优化和集成作用，将互联网的创新成果深度融合于各个领域之中。',1,'/static/images/news/news-cover-big.png','&#60;p&#62;云滴公司是一家综合型互联网公司，隶属于云南盛达集团。云滴公司服务面涵盖交通，旅游，物流，教育，农业，金融等多个领域，充分发挥互联网在社会资源配置中的优化和集成作用，将互联网的创新成果深度融合于各个领域之中。&#60;&#47;p&#62;',1232,1,1462519710,'','',NULL);
/*!40000 ALTER TABLE `news` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `news_category`
--

DROP TABLE IF EXISTS `news_category`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
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
) ENGINE=MyISAM AUTO_INCREMENT=5 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `news_category`
--

LOCK TABLES `news_category` WRITE;
/*!40000 ALTER TABLE `news_category` DISABLE KEYS */;
INSERT INTO `news_category` VALUES (1,'云滴旅行',0,10,1463559139,'','',NULL),(2,'云滴生活',0,20,1463559149,'','',NULL),(3,'云滴活动',0,30,1463559157,'','',NULL),(4,'云滴动态',0,40,1463559165,'','',NULL);
/*!40000 ALTER TABLE `news_category` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `person`
--

DROP TABLE IF EXISTS `person`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
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
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `person`
--

LOCK TABLES `person` WRITE;
/*!40000 ALTER TABLE `person` DISABLE KEYS */;
INSERT INTO `person` VALUES (1,1,1,'111','11',868377600,'111','111','111','111','11','1111','111','1111','','1111',1477826686,0),(2,1,1,'海南大学','巨伟',592416000,'海南','5125454785251','无','本科','18689549181','87154403@qq.com','阿斯顿发','阿斯顿发按时发松岛枫阿萨德','','',1478070268,0);
/*!40000 ALTER TABLE `person` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `team`
--

DROP TABLE IF EXISTS `team`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `team` (
  `id` int(11) NOT NULL AUTO_INCREMENT COMMENT 'ID',
  `tid` int(11) NOT NULL COMMENT '团队ID',
  `name` varchar(32) NOT NULL DEFAULT '' COMMENT '成员姓名',
  `sex` tinyint(2) NOT NULL COMMENT '成员性别',
  `age` tinyint(8) NOT NULL COMMENT '成员年龄',
  `education` varchar(32) NOT NULL DEFAULT '' COMMENT '学历',
  `domicile` varchar(128) NOT NULL DEFAULT '' COMMENT '户籍地',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=11 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `team`
--

LOCK TABLES `team` WRITE;
/*!40000 ALTER TABLE `team` DISABLE KEYS */;
INSERT INTO `team` VALUES (1,3,'111',0,127,'111','111'),(2,4,'111',1,111,'111','1111'),(3,4,'111',1,111,'11','11'),(4,4,'111',1,111,'111','1111'),(5,5,'111',1,111,'111','1111'),(6,5,'111',1,111,'11','11'),(7,5,'111',1,111,'111','1111'),(8,6,'111',1,111,'111','1111'),(9,6,'111',1,111,'11','11'),(10,6,'111',1,111,'111','1111');
/*!40000 ALTER TABLE `team` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `team_registration`
--

DROP TABLE IF EXISTS `team_registration`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
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
) ENGINE=InnoDB AUTO_INCREMENT=7 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `team_registration`
--

LOCK TABLES `team_registration` WRITE;
/*!40000 ALTER TABLE `team_registration` DISABLE KEYS */;
INSERT INTO `team_registration` VALUES (1,18,'111','1111',868377600,'111111111111','111','11111','11111','11111','111','11111',1,'sdfsdfsdfsdfsdfds','',1477822299,0),(3,18,'111','1111',868377600,'111111111111','111','11111','11111','11111','111','11111',1,'sdfsdfsdfsdfsdfds','',1477823175,0),(4,1,'111','11',868377600,'11','111','111','11','11','11','111',1,'111','',1477823373,0),(5,1,'111','11',868377600,'11','111','111','11','11','11','111',1,'111','',1477823446,0),(6,1,'111','11',868377600,'11','111','111','11','11','11','111',1,'111','',1477823561,1);
/*!40000 ALTER TABLE `team_registration` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `upload`
--

DROP TABLE IF EXISTS `upload`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
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
) ENGINE=InnoDB AUTO_INCREMENT=62 DEFAULT CHARSET=utf8 COMMENT='上传表';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `upload`
--

LOCK TABLES `upload` WRITE;
/*!40000 ALTER TABLE `upload` DISABLE KEYS */;
INSERT INTO `upload` VALUES (1,0,0,0,0,'573c4331bf0af.jpg','/upload/1605/1818/25/573c4331bf0af.jpg',162944,'jpg','','',1,1463567153),(2,0,0,0,0,'573c43782e07a.jpg','/upload/1605/1818/27/573c43782e07a.jpg',233009,'jpg','','',1,1463567224),(3,0,0,0,0,'573c438838ff0.jpg','/upload/1605/1818/27/573c438838ff0.jpg',233009,'jpg','','',1,1463567240),(4,0,0,0,0,'573c43c2c4bae.jpg','/upload/1605/1818/28/573c43c2c4bae.jpg',233009,'jpg','','',1,1463567298),(5,0,0,0,0,'573c440b11133.jpg','/upload/1605/1818/29/573c440b11133.jpg',233009,'jpg','','',1,1463567371),(6,0,0,0,0,'573c4432918e8.jpg','/upload/1605/1818/30/573c4432918e8.jpg',233009,'jpg','','',1,1463567410),(7,0,0,0,0,'573c4479c41c9.jpg','/upload/1605/1818/31/573c4479c41c9.jpg',233009,'jpg','','',1,1463567481),(8,0,0,0,0,'573c44878456b.jpg','/upload/1605/1818/31/573c44878456b.jpg',233009,'jpg','','',1,1463567495),(9,0,0,0,0,'573c449dd0557.jpg','/upload/1605/1818/31/573c449dd0557.jpg',233009,'jpg','','',1,1463567517),(10,0,0,0,0,'573c44cd61e9e.jpg','/upload/1605/1818/32/573c44cd61e9e.jpg',233009,'jpg','','',1,1463567565),(11,0,0,0,0,'573c44e18559f.jpg','/upload/1605/1818/33/573c44e18559f.jpg',162944,'jpg','','',1,1463567585),(12,0,0,0,0,'573c44e8906fa.jpg','/upload/1605/1818/33/573c44e8906fa.jpg',233009,'jpg','','',1,1463567592),(13,0,0,0,0,'573c44e89f92d.jpg','/upload/1605/1818/33/573c44e89f92d.jpg',162944,'jpg','','',1,1463567592),(14,0,0,0,0,'573c45177d50d.jpg','/upload/1605/1818/33/573c45177d50d.jpg',162944,'jpg','','',1,1463567639),(15,0,0,0,0,'573c452d935a5.jpg','/upload/1605/1818/34/573c452d935a5.jpg',233009,'jpg','','',1,1463567661),(16,0,0,0,0,'573c453e19065.jpg','/upload/1605/1818/34/573c453e19065.jpg',233009,'jpg','','',1,1463567678),(17,0,0,0,0,'573c45e14fcb4.jpg','/upload/1605/1818/37/573c45e14fcb4.jpg',162944,'jpg','','',1,1463567841),(18,0,0,0,0,'573c45f52a3ac.jpg','/upload/1605/1818/37/573c45f52a3ac.jpg',233009,'jpg','','',1,1463567861),(19,0,0,0,0,'573c46054d9c7.jpg','/upload/1605/1818/37/573c46054d9c7.jpg',233009,'jpg','','',1,1463567877),(20,0,0,0,0,'573c461d4f2ac.jpg','/upload/1605/1818/38/573c461d4f2ac.jpg',233009,'jpg','','',1,1463567901),(21,0,0,0,0,'573c46364b1f1.jpg','/upload/1605/1818/38/573c46364b1f1.jpg',233009,'jpg','','',1,1463567926),(22,0,0,0,0,'573c46452d0e4.jpg','/upload/1605/1818/39/573c46452d0e4.jpg',233009,'jpg','','',1,1463567941),(23,0,0,0,0,'573c465091119.jpg','/upload/1605/1818/39/573c465091119.jpg',233009,'jpg','','',1,1463567952),(24,0,0,0,0,'573c465af0eab.jpg','/upload/1605/1818/39/573c465af0eab.jpg',233009,'jpg','','',1,1463567962),(25,0,0,0,0,'573c468ef2602.jpg','/upload/1605/1818/40/573c468ef2602.jpg',233009,'jpg','','',1,1463568014),(26,0,0,0,0,'573c46ce4d7d0.jpg','/upload/1605/1818/41/573c46ce4d7d0.jpg',233009,'jpg','','',1,1463568078),(27,0,0,0,0,'573c4711271d7.jpg','/upload/1605/1818/42/573c4711271d7.jpg',233009,'jpg','','',1,1463568145),(28,0,0,0,0,'573c4718ea4ad.jpg','/upload/1605/1818/42/573c4718ea4ad.jpg',233009,'jpg','','',1,1463568152),(29,0,0,0,0,'573d162d387db.jpg','/upload/1605/1909/26/573d162d387db.jpg',233009,'jpg','','',1,1463621165),(30,0,0,0,0,'573d16a47442f.jpg','/upload/1605/1909/28/573d16a47442f.jpg',233009,'jpg','','',1,1463621284),(31,0,0,0,0,'573d16b0dea2f.jpg','/upload/1605/1909/28/573d16b0dea2f.jpg',233009,'jpg','','',1,1463621296),(32,0,0,0,0,'573d16be3a071.jpg','/upload/1605/1909/28/573d16be3a071.jpg',233009,'jpg','','',1,1463621310),(33,0,0,0,0,'573d170768373.jpg','/upload/1605/1909/29/573d170768373.jpg',220014,'jpg','','',1,1463621383),(34,0,0,0,0,'573d170b7e7d5.jpg','/upload/1605/1909/29/573d170b7e7d5.jpg',233009,'jpg','','',1,1463621387),(35,0,0,0,0,'573d17135ab5e.jpg','/upload/1605/1909/29/573d17135ab5e.jpg',220014,'jpg','','',1,1463621395),(36,0,0,0,0,'573d17198ecca.jpg','/upload/1605/1909/30/573d17198ecca.jpg',220014,'jpg','','',1,1463621401),(37,0,0,0,0,'573d1719b0fb2.jpg','/upload/1605/1909/30/573d1719b0fb2.jpg',233009,'jpg','','',1,1463621401),(38,0,0,0,0,'573d1719cadc8.jpg','/upload/1605/1909/30/573d1719cadc8.jpg',162944,'jpg','','',1,1463621401),(39,0,0,0,0,'573d185bd2883.jpg','/upload/1605/1909/35/573d185bd2883.jpg',220014,'jpg','','',1,1463621723),(40,0,0,0,0,'573d1878a0e2a.jpg','/upload/1605/1909/35/573d1878a0e2a.jpg',220014,'jpg','','',1,1463621752),(41,0,0,0,0,'573d187b07d7a.jpg','/upload/1605/1909/35/573d187b07d7a.jpg',233009,'jpg','','',1,1463621755),(42,0,0,0,0,'573d187e05715.jpg','/upload/1605/1909/35/573d187e05715.jpg',162944,'jpg','','',1,1463621758),(43,0,0,0,0,'573d18ade63b9.jpg','/upload/1605/1909/36/573d18ade63b9.jpg',220014,'jpg','','',1,1463621805),(44,0,0,0,0,'573d18ebecf55.jpg','/upload/1605/1909/37/573d18ebecf55.jpg',233009,'jpg','','',1,1463621867),(45,0,0,0,0,'573d193cd56e1.jpg','/upload/1605/1909/39/573d193cd56e1.jpg',220014,'jpg','','',1,1463621948),(46,0,0,0,0,'573d197e0c311.jpg','/upload/1605/1909/40/573d197e0c311.jpg',233009,'jpg','','',1,1463622014),(47,0,0,0,0,'573d1988ee2c9.jpg','/upload/1605/1909/40/573d1988ee2c9.jpg',220014,'jpg','','',1,1463622024),(48,0,0,0,0,'573d1b5b98a64.jpg','/upload/1605/1909/48/573d1b5b98a64.jpg',220014,'jpg','','',1,1463622491),(49,0,0,0,0,'573d1d7363189.jpg','/upload/1605/1909/57/573d1d7363189.jpg',233009,'jpg','','',1,1463623027),(50,0,0,0,0,'573d1d8f7d1f9.jpg','/upload/1605/1909/57/573d1d8f7d1f9.jpg',233009,'jpg','','',1,1463623055),(51,0,0,0,0,'573d1d9f3419b.jpg','/upload/1605/1909/57/573d1d9f3419b.jpg',135487,'jpg','','',1,1463623071),(52,0,0,0,0,'573d1dd5a23c5.jpg','/upload/1605/1909/58/573d1dd5a23c5.jpg',233009,'jpg','','',1,1463623125),(53,0,0,0,0,'573d1e0c0aa6c.jpg','/upload/1605/1909/59/573d1e0c0aa6c.jpg',220014,'jpg','','',1,1463623180),(54,0,0,0,0,'573d1ed812df2.jpg','/upload/1605/1910/03/573d1ed812df2.jpg',233009,'jpg','','',1,1463623384),(55,0,0,0,0,'573d1ee21a947.jpg','/upload/1605/1910/03/573d1ee21a947.jpg',162944,'jpg','','',1,1463623394),(56,0,0,0,0,'573d1f0b23b2b.jpg','/upload/1605/1910/03/573d1f0b23b2b.jpg',233009,'jpg','','',1,1463623435),(57,0,0,0,0,'573d1f11a81d1.jpg','/upload/1605/1910/04/573d1f11a81d1.jpg',162944,'jpg','','',1,1463623441),(58,0,0,0,0,'573d201533dd5.jpg','/upload/1605/1910/08/573d201533dd5.jpg',162944,'jpg','','',1,1463623701),(59,0,0,0,0,'573d24bb04c22.jpg','/upload/1605/1910/28/573d24bb04c22.jpg',162944,'jpg','','',1,1463624891),(60,0,0,0,0,'573d24c0571bb.jpg','/upload/1605/1910/28/573d24c0571bb.jpg',135487,'jpg','','',1,1463624896),(61,0,0,0,0,'573d9321a5956.jpg','/upload/1605/1918/19/573d9321a5956.jpg',220014,'jpg','','',1,1463653153);
/*!40000 ALTER TABLE `upload` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `user`
--

DROP TABLE IF EXISTS `user`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `user` (
  `id` int(11) unsigned NOT NULL AUTO_INCREMENT,
  `username` varchar(64) NOT NULL DEFAULT '',
  `password` char(32) NOT NULL DEFAULT '',
  `email` varchar(64) NOT NULL DEFAULT '',
  `created` int(11) NOT NULL DEFAULT '0',
  `sign_num` int(11) NOT NULL DEFAULT '0' COMMENT '抽签号码',
  `realname` varchar(64) NOT NULL DEFAULT '' COMMENT '真实名字',
  `group` tinyint(1) NOT NULL DEFAULT '0' COMMENT '组别',
  `region_id` int(11) NOT NULL DEFAULT '0' COMMENT '地区ID',
  `idcard` varchar(32) NOT NULL DEFAULT '' COMMENT '身份证号',
  `mobile` varchar(16) NOT NULL DEFAULT '' COMMENT '手机号码',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=377 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `user`
--

LOCK TABLES `user` WRITE;
/*!40000 ALTER TABLE `user` DISABLE KEYS */;
INSERT INTO `user` VALUES (1,'abc@qq.com','96e79218965eb72c92a549dd5a330112','abc@qq.com',1478019402,0,'',0,0,'',''),(2,'qqq@qq.com','96e79218965eb72c92a549dd5a330112','qqq@qq.com',1478020343,0,'',0,0,'',''),(3,'87154403@qq.com','0ab44bd43d6b18fcd5cd928d6faab1b8','87154403@qq.com',1478022457,0,'',0,0,'',''),(4,'hcyc@foxmail.com','88d566f83bf6fe0d0bee81f4be85277a','hcyc@foxmail.com',1478067912,0,'',0,0,'',''),(5,'18976255221','fef25693b2f36e20ee31048df55ec0a8','413787280@qq.com',1479310164,3166,'赖贝宁',3,0,'460102199104120619','18976255221'),(6,'18489830269','6b45b43064bbd5ee352e423331e67830','378188500@qq.com',1479310164,3173,'张小波',3,0,'460028200004033618','18489830269'),(7,'13389820680','f0cdf9bdf9a2f8943d6765c1719bbba6','572770749@qq.com',1479310164,3129,'王潇仪',3,0,'460026199707010027','13389820680'),(8,'18876114657','2a89f2b47ca8a0e2ab8a5bdc49854c4f','502102712@qq.com',1479310164,3055,'陈小静',3,0,'460003199303142643','18876114657'),(9,'17389702339','15ff681aecdde6810a7ad487dd923f70','973761323@qq.com',1479310164,3029,'金鑫',3,0,'211103199704083015','17389702339'),(10,'18610294162','c9dd5fcb3b0eb0b7b372491d8bef98bd','542075311@qq.com',1479310164,3051,'林海峰',3,0,'150430198201160414','18610294162'),(11,'18976220687','648e19a68bbdf2cf1c53753e39e9b232','1129191811@qq.com',1479310164,3081,'何君秀',3,0,'460036199509034127','18976220687'),(12,'18117620979','a24ceeaa40602684c454cd981773ea34','scmy20@vip.qq.com',1479310164,3121,'杨康',3,0,'510781199601010691','18117620979'),(13,'18876863979','62bf58064502de1f46d6f4519f2b53f5','2718807869@qq.com',1479310164,3098,'蚁智欢',3,0,'44058319941117287X','18876863979'),(14,'18898903683','68f84763a8130cf9830d8916eb588d2d','1390999678@qq.com',1479310164,3172,'黄玉嫦',3,0,'440781199609045022','18898903683'),(15,'13025883711','9646949fa2fd9fe428231e386bafd18b','1923303054@qq.com',1479310164,3105,'谭金花',3,0,'440783199602203625','13025883711'),(16,'15008954841','877cfd44a51965b7779e40c87d982cf3','wenzhen97@qq.com',1479310164,3170,'符文珍',3,0,'469005199705093048','15008954841'),(17,'18389735191','8ec495adbcbb8f7a53cab4426c811cb1','429733734@qq.com',1479310164,3136,'陈晓',3,0,'330326199611243210','18389735191'),(18,'13208900032','b96af20575c5e20181dfc9023ab6cdac','435507661@qq.com',1479310164,3092,'梁晓欣',3,0,'441721199611065529','13208900032'),(19,'18889740477','65f090c1caa0221c6ac281efeeb19fdc','852189104@qq.com',1479310164,3057,'黄燕蕾',3,0,'460001199609140728','18889740477'),(20,'18876156098','0d060d902e1f730ce0d318deef4badb3','1275137332@qq.com',1479310164,3183,'梁忆娣',3,0,'441721199611083081','18876156098'),(21,'18889385773','cb7f687a2fc2e8ab554e419a119082ab','2764233853@qq.com',1479310164,3021,'李燕兰',3,0,'350424199601162229','18889385773'),(22,'18976976139','824c823a9389de2da02c50fc48429fb0','362472100@qq.com',1479310164,3070,'林小亮',3,0,'460028199206021230','18976976139'),(23,'13537621520','0e7e5a710e9b24b2182b6557d6f777e5','1217207163@qq.com',1479310164,3030,'李鹭玉',3,0,'35042619910909604X','13537621520'),(24,'15500970919','ba60bd8cbb4f42f9fa01ba4fe3d11960','1322088642@qq.com',1479310164,3035,'张鹏',3,0,'513701199909075011','15500970919'),(25,'18789629718','fa5e111937f9b4ce95e0834ad4ee7df8','1175030171@qq.com',1479310164,3156,'林扬妹',3,0,'460028199507144429','18789629718'),(26,'18289669686','19b25830af13c9c8c8ad8c01730c6e53','331842234@qq.com',1479310164,3003,'王汝友',3,0,'460002198509303026','18289669686'),(27,'18289556082','26b57c4771f78e1d197b503d1d60e840','2504433836@qq.com',1479310164,3010,'李佳泽',3,0,'460004200010040629','18289556082'),(28,'17789867083','43ebb8f9b59f9f468605f37a3156290a','1148465463@qq.com',1479310164,3087,'符丹月',3,0,'460300199705280042','17789867083'),(29,'18789063855','d9a701aa94c992080db381d4d93be200','531168008@qq.com',1479310164,3134,'李晓茜',3,0,'460027199606097924','18789063855'),(30,'18708978607','3dafdafd06863f9e3e2c3e2f39ae60bd','443557275@qq.com',1479310164,3020,'刘丹花',3,0,'460003199403150448','18708978607'),(31,'13518811030','ae963fe7c8737a6a18023c02ddf7b7e4','guitarchen@163.com',1479310164,3080,'许玲玲',3,0,'131182198504102622','13518811030'),(32,'13215783093','890966d6ea71757e549d3a38a5478200','13215783093@163.com',1479310164,3153,'周仁富',3,0,'460004199109274219','13215783093'),(33,'15595907933','d762e44b387a52ef9c485d9e8ff7540b','2550040996@qq.com',1479310164,3181,'符美美',3,0,'460003199511227027','15595907933'),(34,'17786941223','5f6d546c6d3e5d68228bdc32a9938206','1432912182@qq.com',1479310164,3103,'郑亚培',3,0,'460034199004081216','17786941223'),(35,'15708990602','ec21ca1c223c95cd463d3ee62047b524','1965603456@qq.com',1479310164,3132,'周少磊',3,0,'362502199605217013','15708990602'),(36,'18389955851','8c3b5f5ad6c72d4d3bde302a20d1423a','xiaoying_oO@outllook.com',1479310164,3039,'刘晓英',3,0,'532126199409040725','18389955851'),(37,'13178939266','c2d748605d6993154be28cc92a6d4ad9','614612184@qq.com',1479310164,3004,'朱瑞',3,0,'321284199703285212','13178939266'),(38,'17733106790','43f1eaba3ae5476655209c180194f913','17733106790@163.com',1479310164,3040,'吕珊珊',3,0,'440921199710045785','17733106790'),(39,'17733106645','d2580b6c93496fadadef8099f68078a0','1580896424@qq.com',1479310164,3074,'黎郭平',3,0,'46902819961206471X','17733106645'),(40,'18520098709','ae02cbfc1a347736cb65cfac3bec8b81','18520098709@163.com',1479310164,3152,'廖世凯',3,0,'445222199604241056','18520098709'),(41,'13158981225','ade2ea9c089a695ed3e5ff60ed8ba86f','476727922@QQ.COM',1479310164,3159,'李皎余',3,0,'460004198702042828','13158981225'),(42,'18289811707','754a15d6c20e4b2508ceb2069fff9648','904116039@qq.com',1479310164,3058,'吴乾桦',3,0,'460026199612031212','18289811707'),(43,'17889887362','e5d84ee3097f9b1e129818335ffb8101','447873838@qq.com',1479310164,3178,'江健锟',3,0,'44018219960729001x','17889887362'),(44,'18976909659','fb5232a0cd5229aed0134847744897f0','1119246110@qq.com',1479310164,3160,'欧阳合桂',3,0,'460030199801150055','18976909659'),(45,'18889380944','508926245cd34764314243dac2bec512','1157919670@qq.com',1479310164,3168,'王守师',3,0,'460200199702135514','18889380944'),(46,'18789730751','28bd2bfd349c3f32f4c0ab6813d3a1ac','chuanqihechuanqi@163.com',1479310164,3141,'陈权',3,0,'460002198609150012','18789730751'),(47,'15103031103','62aff4a62addaed22080c647a20d8192','339140100@qq.com',1479310164,3164,'陈积盛',3,0,'460033199005150010','15103031103'),(48,'15119678972','d7812b4bc1b52b8e1df49163b9de3006','11363368982@qq.com',1479310164,3148,'廖海锋',3,0,'440923199502034339','15119678972'),(49,'13637564925','71c7de8212d8f1b7af62df275dc533d8','510786192@qq.com',1479310164,3037,'陈征荣',3,0,'460021199509254416','13637564925'),(50,'15008061970','96b8b788db8e27ec0a599a4df35772b4','15008061970@163.com',1479310164,3038,'陈亚宽',3,0,'460034199604252410','15008061970'),(51,'17733122653','9f4e7d3753e3242dfef5208f34bd3a75','18718033429@163.com',1479310164,3111,'刘新华',3,0,'440221199509203018','17733122653'),(52,'18889625745','c34f7a989fb96248753789a0f96c6a49','289771373@qq.com',1479310164,3117,'张智勇',3,0,'511527199604210332','18889625745'),(53,'13509089671','0e4b539885e86d6b20976a50f7a16921','2359859729@qq.com',1479310164,3064,'吕馨',3,0,'430722199807065081','13509089671'),(54,'13976691816','2624f017eaaa7cab0ba44fed26f2c812','104617840@qq.com',1479310164,3053,'陈晓丹',3,0,'360321198110010012','13976691816'),(55,'13876457434','bcc80ca42569ba921b95b38af1cd260d','1205181180@qq.com',1479310164,3063,'林三',3,0,'460033199407207518','13876457434'),(56,'13758842772','b145b67606eb562c7e78493e34b6a83a','1286503403@qq.com',1479310164,3062,'陈开会',3,0,'330327199508102133','13758842772'),(57,'18889365394','76c4bd40865bec5accc15782cc77605c','14846363737@qq.com',1479310164,3060,'许土英',3,0,'460003199411062843','18889365394'),(58,'18889204158','d7b2401699bcfe0dafb16f24dd3d0186','916784535@qq.com',1479310164,3101,'符林平',3,0,'46000719880702801X','18889204158'),(59,'13876724797','05418b68da8c72eca4b030604af2a443','286501529@qq.com',1479310164,3106,'符家慢',3,0,'460007198906078098','13876724797'),(60,'18889250530','1a2a3f2099f091df34d03d0cf8ee6e8b','591989772@qq.com',1479310164,3083,'林其进',3,0,'460007198712048018','18889250530'),(61,'18907645895','0bbede411a5070bea94aca8bd844def5','1143082909@qq.com',1479310164,3088,'王志宇',3,0,'460103200001203317','18907645895'),(62,'13368942737','30fd73fd649beec2b28b1c015d9a5998','2580129298@qq.com',1479310164,3089,'喻楚添',3,0,'120110200011040334','13368942737'),(63,'13876247936','dbf36c35a7f1273bf51f3f39b4a4d0ad','1479832418@qq.com',1479310164,3090,'林妙倩',3,0,'460103200006301821','13876247936'),(64,'13307535485','2a61feece1c90a63e9df0535f9b9d9c3','243767112@QQ.COM',1479310164,3096,'胡善淳',3,0,'460004200003270012','13307535485'),(65,'17889780337','4e274f11be7be4d950d5832c2f562896','464723403@qq.com',1479310164,3097,'赵欢',3,0,'510823199711064028','17889780337'),(66,'18789031530','44e5f04c36c1e42ed888197b17f0a0f6','1285153631@qq.com',1479310164,3099,'白才颖',3,0,'460022199610011220','18789031530'),(67,'13876188190','4812e03d1970be038cd4f591a9ec723c','1175187185@qq.com',1479310164,3100,'唐甸存',3,0,'460107199906262610','13876188190'),(68,'18117714301','b47341d5f885dc89ea7cca2dfa0fc8e8','1364325632@qq.com',1479310164,3127,'宋智仁',3,0,'460035199912231319','18117714301'),(69,'18687150187','acce0d8643d7482fe41ad5951440f488','434712391@qq.com',1479310164,3061,'王俊杰',3,0,'530112199603200913','18687150187'),(70,'18876646816','55871c9253e66d2d25136f5f856f941e','1757907338@qq.com',1479310164,3125,'银雪蓉',3,0,'460030199801096925','18876646816'),(71,'15708996586','4a4a7f4b3c512f8fe376817e3df540da','1342190832@qq.com',1479310164,3078,'王朔',3,0,'371526199706233217','15708996586'),(72,'17798454482','530b021ddea9b87b5e8de4ab9f3356a3','1554960631@qq.com',1479310164,3068,'段康康',3,0,'342221199608267816','17798454482'),(73,'18389364750','288ead6ee5a37ad72d07bcf2956c06fb','1904314100@qq.com',1479310164,3013,'陈威振',3,0,'469003199509208917','18389364750'),(74,'18789355524','77333f40fd73ea7cc8f34536523cbb5b','1969645823@qq.com',1479310164,3140,'王珠倩',3,0,'460036199909232421','18789355524'),(75,'13876679305','387c91a2003c70c5dcf81ccfd288e768','609062203@qq.com',1479310164,3045,'欧阳炅',3,0,'360430199601150059','13876679305'),(76,'18217983502','405a88bacbdfa2d44c9fb327948fd994','1548162728@qq.com',1479310164,3135,'王紫洁',3,0,'460036200008182442','18217983502'),(77,'18389318133','59a6edbd66eefc78b582cbf973ee39ca','2307844412@qq.com',1479310164,3118,'黄海康',3,0,'460034199910220943','18389318133'),(78,'13457476044','9c552cdb396f4b7d50068e8b83a87c66','rorowzt@foxmail.com',1479310164,3182,'吴贞涛',3,0,'450481199512012457','13457476044'),(79,'15799063213','3c10b3ad8f1ed39cca3212b7dca0b6ec','1622247657@qq.com',1479310164,3077,'符必伶',3,0,'460029200012106027','15799063213'),(80,'18289306359','1fd90e2fad17f2878cf686da907e5991','285912376@qq.com',1479310164,3073,'文寿健',3,0,'469026199610201212','18289306359'),(81,'15157847057','05908748e3be0fbf1825aff323efcc7c','814842413@qq.com',1479310164,3124,'洪艳',3,0,'332501199807030028','15157847057'),(82,'18789180719','c3330113c8d23617a71fa01ef093a80e','1482079738@qq.com',1479310164,3014,'李明兰',3,0,'460003199911274228','18789180719'),(83,'13976383680','05a89c3fe991afb000ee59ed7292686b','1654041359@qq.com',1479310164,3082,'梁昌昭',3,0,'460102200002031215','13976383680'),(84,'15708998851','2ad1348eeb3dba7bd6b735b8e4180d5b','1516278160@qq.com',1479310164,3084,'刘张主',3,0,'469027199901225413','15708998851'),(85,'18289677879','ddf7a70927b87bf274a49dd369a0e708','1473317092@qq.com',1479310164,3065,'梁烜杰',3,0,'460003200101111414','18289677879'),(86,'18889335485','af5778b2a2631b7fbbb0a2fd0b86c057','1041668834@qq.com',1479310164,3171,'许宇吉',3,0,'460006199909080212','18889335485'),(87,'13637541803','ce85570330f0169fc15cc01e50990cd4','1194310773@qq.com',1479310164,3022,'李华景',3,0,'440880199901163232','13637541803'),(88,'13976022485','7d8b446d46c46a03ba1d8ec5f978bf19','1599239514@qq.com',1479310164,3032,'王大茂',3,0,'46000219990530181x','13976022485'),(89,'17784695461','38054de0fd00a7cc9969bd6e1ada4428','1637894735@qq.com',1479310164,3107,'王威',3,0,'460200199901180019','17784695461'),(90,'18289307510','e753e6acc7464892ace7e8fbccac8054','www.qiuxiang@qq.com',1479310164,3050,'邱贤隆',3,0,'460007199812046196','18289307510'),(91,'17889981636','ee305fd76ad0e5b993909ba3fd0fca19','2546879445@qq.com',1479310164,3044,'黄焕洪',3,0,'460003199908021430','17889981636'),(92,'18389850059','3c77b9358a5b87b75f6d762900b5f730','1078484698@qq.com',1479310164,3133,'李青青',3,0,'460033199908061180','18389850059'),(93,'13215721209','052ecd6e8fe7c04ad626c070c47aa7e8','1127248034@qq.com',1479310164,3167,'李华哲',3,0,'460028199912285217','13215721209'),(94,'15289936048','3d50ee4e16281592cda31f8e6a3fa7ed','2601342964@qq.com',1479310164,3002,'符传浩',3,0,'460025199812084216','15289936048'),(95,'18289902320','80da87a7b337a082e122449021c4164a','923224105@qq.com',1479310164,3102,'王显超',3,0,'460034200006170015','18289902320'),(96,'18789823789','56747dff55531206b3341a134c650322','229482915@qq.com',1479310164,3137,'严洪敏',3,0,'460002199312292516','18789823789'),(97,'18889524745','645f180b11c123a84c5de6759b7129ae','1826035919@qq.com',1479310164,3144,'赵晓',3,0,'522401199610179021','18889524745'),(98,'18889523979','9cc3e8f721832f5ebd0aecd4de4aa0b3','1878916099@qq.com',1479310164,3138,'赵润',3,0,'522401199710901005','18889523979'),(99,'18217849011','a0cee3459baa59c9419abf0ad6062c98','1178867973@qq.com',1479310164,3128,'张玉莹',3,0,'460005199906181724','18217849011'),(100,'15708997505','1304db1efd8f1fe25304ef2db86f1337','605067919@qq.com',1479310164,3146,'杨浩',3,0,'46010420000613031x','15708997505'),(101,'18217885953','a9fc9c894b76eea1e36c6b109781af2b','511665999@qq.com',1479310164,3149,'许照明',3,0,'460003199802102072','18217885953'),(102,'15103602219','754a15d6c20e4b2508ceb2069fff9648','1625595126@qq.com',1479310164,3180,'徐辉义',3,0,'460034199903031212','15103602219'),(103,'18976462150','fbc1444d2b09d2c1fcbb83867fa9c8be','2726931402@qq.com',1479310164,3110,'邢福义',3,0,'460005199911276410','18976462150'),(104,'13700488275','8cd7253a9043c4164b5c574156cfaf85','2014625636@qq.com',1479310164,3095,'王忠睿',3,0,'460025199912212131','13700488275'),(105,'17889887935','89b48f9d0739222de1c5eb57318413be','675255080@qq.com',1479310164,3036,'俞爱伦',3,0,'440233199611013515','17889887935'),(106,'18889576350','d3db0650d38a1587da83016624b98f7c','2442947957@qq.com',1479310164,3174,'王萧琪',3,0,'46002820000822442x','18889576350'),(107,'18289809502','5c82b630646ba7b60835b9c6e9c45857','2294948157@qq.com',1479310164,3169,'王芳灵',3,0,'469024199908244423','18289809502'),(108,'18789910469','5ca75853affe475142070d9d1beeea1c','954047592@qq.com',1479310164,3079,'王凡',3,0,'460027199509171731','18789910469'),(109,'17889880092','1b7d8ab86c1b2440780c622c5bbd3397','3325567136@qq.com',1479310164,3018,'谭志伟',3,0,'469003199909113212','17889880092'),(110,'13876562336','5d56c5dfdf6bd40beebe493073bd18ff','2296357651@qq.com',1479310164,3116,'钱彬彬',3,0,'460006199909154111','13876562336'),(111,'18976074991','ff3624cf58f3589f8cb4408592d7fa6c','1536346909@qq.com',1479310164,3175,'潘婷婷',3,0,'460003199808161022','18976074991'),(112,'13976671804','386910e3a03dc1da634b45423b23985c','2497437391@qq.com',1479310164,3165,'欧继煜',3,0,'460030199805125711','13976671804'),(113,'18389952803','9e0217f9f20c9315ddd0f2f6f1f9cf7b','2359446267@qq.com',1479310164,3157,'莫海涛',3,0,'460025199904103314','18389952803'),(114,'15289911042','4e2be0935fb9409e1ebf12ca8004df20','13976172971@qq.com',1479310164,3043,'刘思华',3,0,'460035199306142527','15289911042'),(115,'13822061305','00500cac10c10fb7c7794c20d4295cf6','1657252334@qq.com',1479310164,3112,'林志财',3,0,'445222199911092951','13822061305'),(116,'13337578829','8f67c17ca5971ea1c67b370d6d2c635b','1031043781@qq.com',1479310164,3179,'梁其鹏',3,0,'460106199908014411','13337578829'),(117,'13976055916','88bcc29b9ed11bdd33f01ca6d23165eb','973245354@qq.com',1479310164,3162,'李日标',3,0,'460027199902040618','13976055916'),(118,'15203080672','d36588560849b5331b607fb56cb9da6d','577150758@qq.com',1479310164,3119,'李富才',3,0,'460003199806122030','15203080672'),(119,'18789176711','2bd3e11357b2806555e5386498852b4c','1635312733@qq.com',1479310164,3076,'黎兴弯',3,0,'460034199912083612','18789176711'),(120,'15708993810','6cfc2fedfee01459e208297c58884fee','460857635@qq.com',1479310164,3027,'康兆至',3,0,'230281199812220213','15708993810'),(121,'15708998532','47b9007fa40eae6b1f575a063d4ea798','2680301007@qq.com',1479310164,3143,'姜宏进',3,0,'460027200012135319','15708998532'),(122,'18289688624','7846cec203b733446a17063a6da61f42','1974163817@qq.com',1479310164,3069,'胡丽霞',3,0,'460034199606050927','18289688624'),(123,'18389362133','d4e53eaf5cdeb4dcb5bdb9a9923e60c1','2428921003@qq.com',1479310164,3186,'何东城',3,0,'460003200006145819','18389362133'),(124,'18889622767','eb3d6a1d2004e4cc1533cd881a6475c7','212173362@qq.com',1479310164,3094,'韩王冠',3,0,'469005200012134535','18889622767'),(125,'15501750180','83dde735cd87c58e42c8752f1537b690','1763250810@qq.com',1479310164,3122,'古永志',3,0,'46003319971116417X','15501750180'),(126,'18289670194','9edcee7aacb8d528fbd43211db5c6942','183558310@qq.com',1479310164,3120,'符晓悦',3,0,'460030199909201221','18289670194'),(127,'15109811406','ae013b2b083addf1c0e1115baf0d510d','2302956767@qq.com',1479310164,3007,'陈井龙',3,0,'469003200002286110','15109811406'),(128,'15799004300','fbc1444d2b09d2c1fcbb83867fa9c8be','1533421471@qq.com',1479310164,3113,'陈春霞',3,0,'460005199911276410','15799004300'),(129,'15708989883','ae94476ddd05a96cc450aaddfdcb4702','906097011@qq.com',1479310164,3067,'胡珊',3,0,'513821199505301845','15708989883'),(130,'15708989723','dafbecb32a00631f5bb797b0be7c7d09','2927551282@qq.com',1479310164,3114,'朱启珍',3,0,'530161199608121568','15708989723'),(131,'18789191180','7e597b2b6ad68b6b90859762e6441302','1446902280@qq.com',1479310164,3109,'经放明',3,0,'450324199809241311','18789191180'),(132,'13976233120','4609062b0ef0c0104d3c6e29a2d10073','709639230@qq.com',1479310164,3093,'林少钊',3,0,'460033199509184919','13976233120'),(133,'13876224571','0e066b5ccd2f94cc157cda5aff54bffe','13876224571@163.com',1479310164,3012,'何兰兰',3,0,'460002199611131544','13876224571'),(134,'18876749480','4e79e50ca8d91db73d42f17890f6af5a','410944818@qq.com',1479310164,3139,'王小苦',3,0,'469024199606027220','18876749480'),(135,'13976690469','a2718373845b748c9deb9b902452fdc5','852460171@qq.com',1479310164,3150,'林志峰',3,0,'460102199808023315','13976690469'),(136,'17789815886','49b338752aa93adc1559de60e295dbd9','danielleung@vip.qq.com',1479310164,3154,'梁定然',3,0,'460028198610150937','17789815886'),(137,'17889785633','7e1f8fa94e0fe9d3ad8215040aa2abe1','1035198377@qq.com',1479310164,3054,'刘坤',3,0,'411527199604090015','17889785633'),(138,'13876483623','6ca32b69985999653976a061219835a4','1439698647@qq.com',1479310164,3075,'邓秀平',3,0,'460003199806253812','13876483623'),(139,'13307530557','9b22aa940858f1168fc0397bf7d29ed5','7550282146@qq.com',1479310164,3155,'符荣斯',3,0,'460028199912084810','13307530557'),(140,'13976385286','daf8fbd6fed1d3f974b45a68f0a5d4f5','1722063685@qq.com',1479310164,3147,'崔建新',3,0,'460033200005133574','13976385286'),(141,'13138902620','bb1732c724b020ceb20baa52fe5efbc8','545657978@qq.com',1479310164,3008,'符雪',3,0,'460005200101131928','13138902620'),(142,'18289864832','18e7a4225fb06298cf25e2d6e10903d4','2208611638@qq.com',1479310164,3001,'陈远熙',3,0,'460003200002091833','18289864832'),(143,'18876892636','926e768f7331a7140792a223f0c1bdd5','2674587432@qq.com',1479310164,3184,'符永信',3,0,'460006199909132713','18876892636'),(144,'18889491555','c71d3cd1008f2a936687a7901a44c55d','2855496780@qq.com',1479310164,3034,'陈贤建',3,0,'460028200011013236','18889491555'),(145,'18389797162','8b63f5233daee6334bfc7e3f9e1897ac','522454516@qq.com',1479310164,3115,'杨来耀',3,0,'460025199910094813','18389797162'),(146,'18889517079','03b1cf7821936b2ae26219762598430c','1339052262@qq.com',1479310164,3161,'陈倩',3,0,'469021200001093328','18889517079'),(147,'18289298477','0fe21ef5fa9ca15937698433cdb445cb','864117270@qq.com',1479310164,3072,'吴巨威',3,0,'460003200003063412','18289298477'),(148,'13627520518','ece30091b756b449560af3da31066c0c','1502446212@qq.com',1479310164,3177,'符祖胜',3,0,'460028199911025616','13627520518'),(149,'18889395539','db8d344087cf7ddc4f3a82913398fb59','1527266855@qq.com',1479310164,3056,'陈培炀',3,0,'445281200005261552','18889395539'),(150,'18289281101','8f6c1e4c0cffecf033ef11f7ff914652','782581439@qq.com',1479310164,3033,'黄渊',3,0,'46003419980206041X','18289281101'),(151,'18876810704','da0d2f1bfaa52ad91fe06302280922f8','1730955184@qq.com',1479310164,3042,'韦明华',3,0,'460033199804085374','18876810704'),(152,'17889880272','81e91baa7785e5e9c314a1b427ee1c1f','2523063312@qq.com',1479310164,3052,'陈莉莉',3,0,'469024200012235626','17889880272'),(153,'18489028063','72717d2f8b723b412a881034a8b7b8e8','1921919233@qq.com',1479310164,3017,'王正煌',3,0,'46002819991117243X','18489028063'),(154,'15708998932','ca5aa14d59d35f936ad2e6c981445fac','1172887677@qq.com',1479310164,3091,'邱莨曾',3,0,'469024199909271212','15708998932'),(155,'13627531995','86069292656049512e7274aefad11b25','237245912@qq.com',1479310164,3009,'陈会杨',3,0,'460002200007064926','13627531995'),(156,'18889371951','7d3f3c7d268d48677fb65516334ca523','1250533174@qq.com',1479310164,3130,'王雨秀',3,0,'469001200001081022','18889371951'),(157,'13697516146','57fb6c5755414f4420dcc83dbe721aa7','3083719436@qq.com',1479310164,3126,'罗丹丹',3,0,'511602199707286207','13697516146'),(158,'13876682564','601ee083953311e5ceb5a2038b402291','2205233465@qq.com',1479310164,3158,'李龙',3,0,'460004199802185417','13876682564'),(159,'18976134271','bf365c8d86810cb26e345d00b566dc85','2830543145@qq.com',1479310164,3151,'王秀文',3,0,'460027199811233737','18976134271'),(160,'17889982593','bd432351eb80de9198d0f3d3c1765979','1143909886@qq.com',1479310164,3176,'卢大晰',3,0,'460026199811060016','17889982593'),(161,'13136065872','107533b01ee6b0d2b61471d29386f68b','48535565@qq.com',1479310164,3131,'黎紫菲',3,0,'460034200112043319','13136065872'),(162,'15708998950','a520ad3af50996e5d1a1768b84338afa','1183688020@qq.com',1479310164,3026,'王清咪',3,0,'46002619980719154X','15708998950'),(163,'18876988346','6857b72fc5461e7a51dd0b3aef3d044b','61246048165@qq.com',1479310164,3049,'林中帝',3,0,'460035199603263018','18876988346'),(164,'13016222138','173570adb86187dcb8e71e84c988a71a','2879636841@qq.com',1479310164,3123,'王娜',3,0,'460036199909300826','13016222138'),(165,'13078993708','bc0817571f6a8153194b329d984e79c7','1071256006@qq.com',1479310164,3028,'林小芬',3,0,'46010719971129302X','13078993708'),(166,'13637549071','e2061d89eecdbca1a57f598a75d9e460','892948077@qq.com',1479310164,3104,'邝敦浩',3,0,'460103199911200312','13637549071'),(167,'18976274620','4a7c9a77faa07f15083d0a84765c54d1','1960154710@qq.com',1479310164,3024,'王龙高',3,0,'46010419990707441X','18976274620'),(168,'18208980167','fecee561eb7be30851d127b8b488fe45','236465448@qq.com',1479310164,3108,'李萍',3,0,'469026200001070427','18208980167'),(169,'17722603986','7c8981c981fa96c451fa4bf254b6680a','1259304058@qq.com',1479310164,3025,'黄政仕',3,0,'440881199805135119','17722603986'),(170,'15120700490','c8da9f433cde8debf4cd8d771ebccf8a','714183030@qq.com',1479310164,3086,'王才峰',3,0,'460026200003290011','15120700490'),(171,'15708993717','4ade3c98cd3aa790ec2321c5e833a0fa','1425016444@qq.com',1479310164,3142,'黄政朝',3,0,'440881199812085113','15708993717'),(172,'18889824904','d5560c56ab6a5dc0cb41ed257446d221','841995248@qq.com',1479310164,3145,'蔡汝柏',3,0,'460004199912044455','18889824904'),(173,'18389419159','21d3b815a0930e71894696d34140eb3b','1824570020@qq.com',1479310164,3016,'王胜',3,0,'460028199907245616','18389419159'),(174,'15595886462','1bc5640796d117a4f51507c1c2761146','412006736@qq.com',1479310164,3031,'韩发定',3,0,'460005199102045137','15595886462'),(175,'15208978221','f2dd3c09f89ea35e45866c649fccee05','2324454835@qq.com',1479310164,3163,'何声权',3,0,'460006200011220413','15208978221'),(176,'13307566595','8d08413a047d0128183825b2f5f49a2d','2605387847@qq.com',1479310164,3085,'邱日明',3,0,'460026199910240610','13307566595'),(177,'18889744828','bf40357c9900b8dc6d755f86c42d4958','328092694@qq.com',1479310164,3059,'徐嘉',3,0,'220282200008135915','18889744828'),(178,'13178962220','9b6582738cbad0c094468db936db2c4e','1107249847@qq.com',1479310164,3041,'叶金福',3,0,'460003198804016819','13178962220'),(179,'13648605565','5aaf173363c7614c745a517ff1674d52','87585665@qq.com',1479310164,3046,'邢同裔',3,0,'460003198709120212','13648605565'),(180,'18289700487','b958653d994f6c7a07649637ad779f8e','874117872@qq.com',1479310164,3047,'陈玉妹',3,0,'46000519940709452X','18289700487'),(181,'15501868425','2159d6fa9868a27f4bad2ce5540fc954','2940397154@qq.com',1479310164,3048,'蒋琳琳',3,0,'33072619960216132X','15501868425'),(182,'15501838820','0c511b18649128b6dea1a72731f37a1d','824207988@qq.com',1479310164,3023,'杨玲',3,0,'50023619931003668X','15501838820'),(183,'18976105266','e5c619751e3f37dea73d1677e5353cac','522816953@QQ.com',1479310164,3011,'陆应灿',3,0,'460003198106157219','18976105266'),(184,'18117652511','05d022a33171e231d6d2a9f7127baed1','492500539@qq.con',1479310164,3066,'祁宇彬',3,0,'460006199709070212','18117652511'),(185,'18217953333','4d6a71f6b3fc8f6cfd576969c48073fd','67739961@qq.com',1479310164,3005,'黄熹卉',3,0,'460005198705180720','18217953333'),(186,'18876035995','43bc5c5168aacaf42c73acc8380a0ae0','1342931352@qq.com',1479310164,3006,'徐辉智',3,0,'460034199406080910','18876035995'),(187,'15121015150','1011','79519690@qq.com',1479310164,1001,'孙嘉静',1,0,'460003199005235227','15121015150'),(188,'15008954654','1011','736412636@qq.com',1479310164,1017,'邢诒汇',1,0,'460022199511030012','15008954654'),(189,'13215827980','1011','wly.yang@foxmail.com',1479310164,1018,'王露洋',1,0,'412829199506115610','13215827980'),(190,'13215829515','1011','1020106139@qq.com',1479310164,1019,'曾玮琪',1,0,'431021199708299057','13215829515'),(191,'13111939134','1011','1131311349@qq.com',1479310164,1020,'冯建光',1,0,'130229198309010012','13111939134'),(192,'18789776841','1011','908657056@qq.com',1479310164,1007,'吴文启',1,0,'460004199503143436','18789776841'),(193,'15595956135','1011','799909566@qq.com',1479310164,1021,'李郑',1,0,'220102198401290615','15595956135'),(194,'18208981797','1011','527113061@qq.com',1479310164,1028,'牟宇星',1,0,'130582199611030025','18208981797'),(195,'18876965316','1011','1273890295@qq.com',1479310164,1023,'林芳姨',1,0,'460026199402242425','18876965316'),(196,'15324052233','1011','shenhaiyang_170@163.com',1479310164,1024,'沈海洋',1,0,'231282198709107354','15324052233'),(197,'18876107693','1011','1203331868@qq.com',1479310164,1025,'吴钟煌',1,0,'460033199603104495','18876107693'),(198,'15120816998','1011','170837244@qq.com',1479310164,1002,'任保鑫',1,0,'460025198411034512','15120816998'),(199,'15072469889','1011','939485594@qq.com',1479310164,1030,'吴晏清',1,0,'421003199710090039','15072469889'),(200,'13278921290','1011','2576216654@qq.com',1479310164,1031,'李惠',1,0,'650106199810233021','13278921290'),(201,'13689652631','1011','1004668214@qq.com',1479310164,1006,'张卓亮',1,0,'510681199806145711','13689652631'),(202,'18217903230','1011','364398173@qq.com',1479310164,1032,'符小仔',1,0,'460022198801160742','18217903230'),(203,'15501797221','1011','1035620959@qq.com',1479310164,1033,'李智星',1,0,'460103199508111811','15501797221'),(204,'18976885510','1011','592449621@qq.com',1479310164,1015,'莫小娟',1,0,'440804199602101127','18976885510'),(205,'18876897644','1011','827225601@qq.com',1479310164,1027,'梁其伟',1,0,'460200199609120035','18876897644'),(206,'13111931266','1011','linhengfei2540@163.com',1479310164,1004,'林恒妃',1,0,'460026199508110025','13111931266'),(207,'18689871982','1011','lixuanye@foxmail.com',1479310164,1022,'李敏',1,0,'460006198501250017','18689871982'),(208,'18509977629','1011','785496551@qq.com',1479310164,1008,'田梦洁',1,0,'652926199710251127','18509977629'),(209,'18889693171','1011','ouyangyanjin@qq.com',1479310164,1010,'欧阳彦瑾',1,0,'430422199704180021','18889693171'),(210,'17889785652','1011','1713975224@qq.com',1479310164,1011,'高帅',1,0,'130982199812265711','17889785652'),(211,'15708989025','1011','maoyuchuan@foxmail.com',1479310164,1012,'毛宇川',1,0,'420881199705046510','15708989025'),(212,'18689628908','1011','826380657@qq.com',1479310164,1029,'周小松',1,0,'429006199611010677','18689628908'),(213,'15708995025','1011','1649042381@qq.com',1479310164,1003,'张燕',1,0,'511324199707021809','15708995025'),(214,'15708998136','1011','2737884710@qq.com',1479310164,1009,'刘昱秀',1,0,'342423199703066186','15708998136'),(215,'18976429643','1011','994838166@qq.com',1479310164,1005,'王少佳',1,0,'412824199506104346','18976429643'),(216,'13876624642','1011','237502757@qq.com',1479310164,1014,'林明大',1,0,'460027199010073817','13876624642'),(217,'17733127310','1011','863284984@qq.com',1479310164,1013,'陈曦',1,0,'510503199505204285','17733127310'),(218,'13518860687','1011','37920688@qq.com',1479310164,1016,'许积国',1,0,'46003619860802451X','13518860687'),(219,'15091973873','0035874fe0c316bce3db526c79840c0b','276606074@qq.com',1479310164,2044,'马建岛',2,0,'460027199004160033','15091973873'),(220,'13450442113','f78c160095af9084a713df9f75d7e938','dollare@126.com',1479310164,2056,'张雄熙',2,0,'440782198511260615','13450442113'),(221,'18217953898','55fcd243f3d26d1207ae564f63e3bb57','821266724@qq.com',1479310164,2049,'林燕',2,0,'460022199504020027','18217953898'),(222,'18876863872','5b8d9e6891bc300895910c7e1276f2c3','807200141@qq.com',1479310164,2008,'孙伟知',2,0,'332522199611193855','18876863872'),(223,'13525555614','9b39275eecfe3ab2494ee76df9657333','329651092@qq.com',1479310164,2039,'徐飞',2,0,'460034198611030432','13525555614'),(224,'13807529145','6eb0ff909f213716054871d24d31057f','937513439@qq.com',1479310164,2037,'章杨阳',2,0,'460034198110125812','13807529145'),(225,'18876981812','2f551f6fba942199202922b66138e97e','1534869867@qq.com',1479310164,2036,'王增强',2,0,'460006199311040419','18876981812'),(226,'18289248324','bfce89fa1e140827acca2b153b485772','18289248324@qq.com',1479310164,2029,'张开部',2,0,'460031199412135210','18289248324'),(227,'17889983837','0281b25ef6e17833bf676909ff2d5d4b','664332754@qq.com',1479310164,2035,'符国钧',2,0,'460022199503282316','17889983837'),(228,'15607565506','05901fdf55b7b54574449cbd7ad4e337','15607565506@189.cn',1479310164,2023,'胡越豪',2,0,'610321199802100613','15607565506'),(229,'18808949161','f03d369c6a14e0540f36d9fd3f345110','254231393@qq.com',1479310164,2034,'游志奇',2,0,'460003199011252875','18808949161'),(230,'15338945910','a06bfca117c1bad8d00c2616cbfe427e','1448444695@qq.com',1479310164,2052,'徐秋阳',2,0,'320623199511055437','15338945910'),(231,'18708921743','c2ca41ed39e24e32ea7b42a787031867','382983672@qq.com',1479310164,2033,'陈艳红',2,0,'46003619960902484X','18708921743'),(232,'15008021398','3b1aff9200e33d50f49363637e918f70','943236823@qq.com',1479310164,2030,'周嘉琪',2,0,'460200199509151408','15008021398'),(233,'17889962585','978038d2675d95be296261ecef3077aa','305826115@qq.com',1479310164,2002,'程小飞',2,0,'410482199302099047','17889962585'),(234,'13976911667','6131b05a39b8022f580d9068f193c8f3','42919507@qq.com',1479310164,2015,'高乙元',2,0,'460025198410124516','13976911667'),(235,'17389701217','85ab47123d2138529434bd993f13f3af','1127935331@qq.com',1479310164,2014,'柳华清',2,0,'460032199608127614','17389701217'),(236,'13286541177','328ae5a2fab3011da286025f65a18a3a','1126774167@qq.com',1479310164,2038,'吕庚洋',2,0,'130428199402280315','13286541177'),(237,'18889118210','5b7b972044a0a76240e1656eb587deba','531541780@qq.com',1479310164,2053,'农乐海',2,0,'460030199112134519','18889118210'),(238,'18789091987','70ff4325bdde3b82803dca61e1b06581','1290461603@qq.com',1479310164,2059,'宁明',2,0,'142703199612120611','18789091987'),(239,'15308967758','f2c7f7fbabc46218a6ed40a7111f7d39','neusent@qq.com',1479310164,2054,'刘胜',2,0,'441481199405107011','15308967758'),(240,'15108989678','adbad41cbbc269305367530ca790aac8','1096287723@qq.com',1479310164,2041,'倪德山',2,0,'460007198806154970','15108989678'),(241,'18689873413','ac9394e593a51d87a48c94094e96b9e3','1069464762@qq.com',1479310164,2058,'柯维善',2,0,'460103199001291235','18689873413'),(242,'15501939989','f80a4b23fbd47262f17c28c75f79f5d9','363960181@qq.com',1479310164,2046,'陈锋博',2,0,'460034198907135516','15501939989'),(243,'13086003600','08bf4689a26352081a53384dcbe8999a','76214695@qq.com',1479310164,2045,'符开泰',2,0,'460007199411207219','13086003600'),(244,'13138957796','a8912bca187758cdf6ef8a246202fc05','2685059744@qq.com',1479310164,2010,'倪德洪',2,0,'46000719840516801X','13138957796'),(245,'17889882454','35901f1183383d788e9916a0a8571a63','17889882454@qq.com',1479310164,2042,'符尧缵',2,0,'460003198902256015','17889882454'),(246,'18608960821','b5dfed593f23f9860091fd61ea451a7a','975859995@qq.com',1479310164,2047,'洪正龙',2,0,'46003419911105001x','18608960821'),(247,'15203693038','d9b53590b2efcd46689241e393344518','752456511@qq.com',1479310164,2048,'邢文良',2,0,'460007198209059270','15203693038'),(248,'18876166167','c36d97390a7f025c98d5b1a13740d009','910644899@qq.com',1479310164,2031,'卢少龙',2,0,'460007198301105452','18876166167'),(249,'15501842321','3ec0727ed1928536a5394e5d904dfa8e','15501842321@163.com',1479310164,2050,'马瑜',2,0,'220623199411130045','15501842321'),(250,'18789865371','f35f3cb7d38e001a26f3adc6657518f1','807078902@qq.com',1479310164,2019,'郑定杰',2,0,'460027199704141319','18789865371'),(251,'18689710250','e85d07a43ff8b3d0f5e93ccdeb8d87c6','366637770@qq.cim',1479310164,2051,'赵宇',2,0,'140227198701310510','18689710250'),(252,'18979263618','7ce91b5464c3e95ef1a83b5fb1f73067','1059745050@qq.com',1479310164,2032,'朱瑶',2,0,'36042719951012181X','18979263618'),(253,'15289909896','b5949a9d9ffba2780c8e0c6fcd6395fe','z.minghai@163.com',1479310164,2055,'何家祺',2,0,'460007198608166815','15289909896'),(254,'13637518870','a50a64a55f5c19298d01fdbda1a16e30','151693041@qq.com',1479310164,2057,'吴福君',2,0,'460032198112206816','13637518870'),(255,'15501956586','ecfe15a7252809fefd456b2096d837bb','1427477736@qq.com',1479310164,2040,'汪勇',2,0,'34082719910203183x','15501956586'),(256,'18976714592','d3f9ab5be90099aeb0e2ae0c23fb3833','841095168@qq.com',1479310164,2043,'吴雪英',2,0,'46000619970729444X','18976714592'),(257,'15500955728','d25f5c06d44b9b5d0aee477ebeaa9c08','1462028157@qq.com',1479310164,2004,'杨准',2,0,'610481199802123411','15500955728'),(258,'13976495090','42ccefdb78cb41ac6cb5b15475ec6130','1379569316@qq.com',1479310164,2011,'黎日皆',2,0,'460003199502097611','13976495090'),(259,'15024937450','e59f5c17c59fb755715072823ebad118','1625354791@qq.com',1479310164,2001,'李坤晔',2,0,'150124199503081923','15024937450'),(260,'18789337813','4fd10ba726a3d245ea89068fddc6131a','941441984@qq.com',1479310164,2028,'劳万松',2,0,'460025199103033336','18789337813'),(261,'18789090673','3d419734d2b69b8fc1ae1198883cbde5','1639754011@qq.com',1479310164,2006,'郭猛',2,0,'341227199605127671','18789090673'),(262,'18789853740','a326cbdb0a61d1ca3a664ef4c22d200f','657206971@qq.com',1479310164,2005,'陈大维',2,0,'460027199407304716','18789853740'),(263,'17389701411','3de9f323803a7c0f51910e1d2843f6b5','1227629040@qq.com',1479310164,2022,'杨柳清',2,0,'430721199802214328','17389701411'),(264,'15120761931','adca0c5c01c403aa07a4bbce83b92322','vivktai@163.com',1479310164,2003,'戴小斌',2,0,'350821198903024217','15120761931'),(265,'18289896787','77dc93e3d0adee19da971cdf4b6c7db7','15123132282@163.com',1479310164,2013,'林森',2,0,'460006199011193130','18289896787'),(266,'18089891108','840c925e8487749d19c71cd7fb59f4c2','zzt.45168@163.com',1479310164,2016,'周子涛',2,0,'460200199012270313','18089891108'),(267,'15595964563','9087f2f67e10f8fc6f0521759cbf50c5','506351216@qq.com',1479310164,2017,'张宏伟',2,0,'220381199510101116','15595964563'),(268,'13976317327','fe5fe7a8781bc733d4b5e611e5408b94','253342341@qq.com',1479310164,2024,'许明杰',2,0,'460027198803193750','13976317327'),(269,'13272671070','c17cdc88fb0f562311414fd1bf08111a','269310291@qq.com',1479310164,2025,'梁渊凰',2,0,'460025199407013019','13272671070'),(270,'18289925559','261ef982ab39eddcc806ce4f55a11cd9','30988553@qq.com',1479310164,2009,'王秀宁',2,0,'220382198206210627','18289925559'),(271,'18808909091','6e14ce2570981a45a45ec3a6e6988950','837705261@qq.com',1479310164,2021,'曾繁秋',2,0,'460034199211175813','18808909091'),(272,'13976232402','16bef0fe08ec0e1f3503c26c046aff30','283901964@qq.com',1479310164,2020,'王华',2,0,'460033198602053871','13976232402'),(273,'15708918815','8c3c10c5a0a935385e3030fddb7980d7','1946280453@qq.com',1479310164,0,'肖钰',4,0,'513901199602040616','15708918815'),(274,'17733126753','75861df61ecd4e6b108d8f6f18f736fe','1578268325@qq.com',1479310164,0,'马苇',4,0,'500236199612131068','17733126753'),(275,'18389336887','2a1dab7da03fe38d2e2333800049ecc3','2686631667@qq.com',1479310164,0,'林专',4,0,'46003319950304507X','18389336887'),(276,'18789095880','cc081933560b92623f7048db318878e8','993729960@qq.com',1479310164,0,'洪康桐',4,0,'460004199709114016','18789095880'),(277,'18789502191','741e5f7e12910b4106d42a70d185b8d8','1370521715@qq.com',1479310164,0,'姚广进',4,0,'460003199707233015','18789502191'),(278,'18976684966','0eb50b720e3afc07c2f8574a292a107f','hainansxy030@163.com',1479310164,0,'任加德',4,0,'460032198309164410','18976684966'),(279,'15103087907','78fb4b9ad4af99cfe31158c0a990ebf8','469927801@qq.com',1479310164,0,'卢俊伯',4,0,'13108119920331101X','15103087907'),(280,'18789192029','bb8afe057f5bfa8f65e4b20bd56d3d6f','17733122643@163.com',1479310164,0,'胡瑞镇',4,0,'441522199509092155','18789192029'),(281,'18789197323','be22408ec0e63d390da81d49496f6a59','601281361@qq.com',1479310164,0,'朱杨峰',4,0,'331082199603223039','18789197323'),(282,'13034918146','68d4ce4f2f1ddee09e9f4aa47f50d887','120818616@qq.com',1479310164,0,'刘瑶',4,0,'152302198801290029','13034918146'),(283,'13807528214','0832f52a3d894b05ecc1d4f6ee581dd8','2412994082@qq.com',1479310164,0,'陈增通',4,0,'460200199608214697','13807528214'),(284,'18078992345','557eebc96475d1e6ef897466a828574e','mxt@laviey.com',1479310164,0,'马昕彤',4,0,'620104199402061314','18078992345'),(285,'17389701407','ae1e9bd9a16805d45a9d60e276510d40','914291108@qq.com',1479310164,0,'张苗',4,0,'150222199704013567','17389701407'),(286,'17889785150','b5435893c684a7db4e325c43786b8a7a','www.2302167268@qq.com',1479310164,0,'何光远',4,0,'530328199709062418','17889785150'),(287,'13976162074','f2b4c82bdf880c724571fa1b2dc16091','915814014@qq.com',1479310164,0,'盆小亮',4,0,'46000119921115031X','13976162074'),(288,'15708918550','14f131e859406fae3c921ee66054b393','875641522@qq.com',1479310164,0,'邱佳丽',4,0,'513821199507161081','15708918550'),(289,'18615069658','35098129c9eb6f96b23d385dd6108d3e','1250007802@qq.com',1479310164,0,'徐艺',4,0,'370687199701070014','18615069658'),(290,'15501710166','9cdb0a761b433477da92b675ed3d48bb','9572581@qq.com',1479310164,0,'谭元正',4,0,'652901199309270412','15501710166'),(291,'15008566148','af57ff8f86aeb31cca348d5564b9455c','1446199814@qq.com',1479310164,0,'黎莉慧',4,0,'522227199705300042','15008566148'),(292,'15708929772','472e9b0a2e6c6f7fd692c550a8f231d0','1511451230@qq.com',1479310164,0,'何维',4,0,'511526199608233025','15708929772'),(293,'18789162364','a3dfdb3d7c20b0caef8b9b4b204b1d86','1148555936@qq.com',1479310164,0,'黄静静',4,0,'460035199612042524','18789162364'),(294,'13337697252','f64a4690ab2d72f3d81b0c7423cc4a38','1392208252@qq.com',1479310164,0,'吕建杰',4,0,'130733199309140016','13337697252'),(295,'18756656260','5bd8235489e0b7f88529874df364cd12','1961592864@qq.com',1479310164,0,'江心璇',4,0,'342921199702103322','18756656260'),(296,'18708933326','8979beef282e9d6ff4978776de49c697','583801312@qq.com',1479310164,0,'李均旺',4,0,'341221199310136011','18708933326'),(297,'17798421836','c078a0296ae454cbe3de78b0a4c28c0b','848134803@qq.com',1479310164,0,'王婧',4,0,'140602199708198524','17798421836'),(298,'15855213773','3732ffc60216b5b7fb8b5ed6070ff1c3','1870816639@qq.com',1479310164,0,'董丽丽',4,0,'342423199712258569','15855213773'),(299,'15708989722','6ff611c0fae711dcf0ffef924991a158','569834739@qq.com',1479310164,0,'黄腾',4,0,'342522199703303312','15708989722'),(300,'15708989729','b8598361160d04c3eae3b6add9ef4756','1126453580@qq.com',1479310164,0,'朱冠军',4,0,'341226199604275932','15708989729'),(301,'13036023773','143b45e2f2af087af0747ec46bca6987','65882399wjc@163.com',1479310164,0,'吴建成',4,0,'460103199105251510','13036023773'),(302,'18876715522','1bb62905bcae25f5170a32bc0c45c5ab','284849166@qq.com',1479310164,0,'陈汉斌',4,0,'460031198608080050','18876715522'),(303,'18976768997','fa329ca02245117b3800b964803ba392','110758882@qq.com',1479310164,0,'刘士波',4,0,'411323198207176316','18976768997'),(304,'18289759583','db7865324daa0bd2f997acaae87adf8b','601891273@qq.com',1479310164,0,'周建飞',4,0,'430722199103265640','18289759583'),(305,'15799087674','27da63c676d9a31232ef5f703712da60','122461295@qq.com',1479310164,0,'郭霖',4,0,'460103198607031222','15799087674'),(306,'15501851564','7c7f5569a7c4432dd565ab218af8628a','1834319544@qq.com',1479310164,0,'王凯',4,0,'342626199609291432','15501851564'),(307,'15298999454','f6f1f7d399aeb453c56019df33689c49','262405633@qq.com',1479310164,0,'符龙武',5,0,'460200198510233596','15298999454'),(308,'18811754785','9cdabd6e68d462d44c7bca1a621c337e','1636557281@qq.com',1479310164,0,'张元乾',5,0,'522322199508061437','18811754785'),(309,'15109806208','4b1de612d02cad6bbbb552cec5735730','1822309666@qq.com',1479310164,0,'冯所权',5,0,'460027199604035658','15109806208'),(310,'13907523662','33b8262642f6f465d533c172495b20fc','1365585777@qq.com',1479310164,0,'冯名润',5,0,'460002199101310016','13907523662'),(311,'15501840456','95d40ecf1fa9b55c9952edcbfda4a31c','3043335@qq.com',1479310164,0,'陈天文',5,0,'440923198210262159','15501840456'),(312,'13697547010','f7aac76dc76d637ced6c13d13c5104b2','63112621@qq.com',1479310164,0,'范衍士',5,0,'460034198206100038','13697547010'),(313,'13876421001','5b5c38887510f00d3b8aca60899b4697','704225982@qq.com',1479310164,0,'胡林飞',5,0,'460034198006170111','13876421001'),(314,'18789558388','6aeae915b992c3a2239527ddfb0d5d22','648016860@qq.com',1479310164,0,'黄立强',5,0,'46003419890520125X','18789558388'),(315,'15208997939','8c192e1165f9861c4d4b11d00959a2c8','1043578521@qq.com',1479310164,0,'姚秋梅',5,0,'460002199007060524','15208997939'),(316,'18876055159','1bd34fe7cc2184e324f1959d61acc4e5','986366899@QQ.com',1479310164,0,'符国娇',5,0,'460007199607060028','18876055159'),(317,'13647529636','3992a95437866d46006e3effbb8915a5','491699965@。qq.com',1479310164,0,'郑秀文',5,0,'460200199111141664','13647529636'),(318,'18789970768','18c5c51b1e4c63af08d226c10a5bdd40','254699901@qq.com',1479310164,0,'赵道峰',5,0,'460003198407058214','18789970768'),(319,'13907578600','4764867ee90e04021ee38ad7912893d8','1085395672@qq.com',1479310164,0,'黎东强',5,0,'460029197708043015','13907578600'),(320,'13379879888','daa28096f9e8879ab3a02b90aa0e2f83','13379879888@189.cn',1479310164,0,'符波',5,0,'460027197808100010','13379879888'),(321,'18689948965','593079e0670ec80500eb254027322263','happy2004wy@126.com',1479310164,0,'文雅',5,0,'460102198510092145','18689948965'),(322,'13368906110','e792c129c0a8290c46139f2d34afdb30','55220469@QQ.com',1479310164,0,'刘云峰',5,0,'460022198602090032','13368906110'),(323,'18907675020','dabc7d523f0ba76079e76ae88ca2be32','1088812882@qq.com',1479310164,5044,'林继志',5,0,'460030197611206610','18907675020'),(324,'13976428865','a3dcec6fc57a7f0870c41ac9fe42d750','65856788@qq.com',1479310164,0,'何学芳',5,0,'46003419840204474x','13976428865'),(325,'18202833895','1db937f55c4fb8a6e0709b45805d291a','402770564@qq.com',1479310164,0,'邓海鹏',5,0,'460003198906162411','18202833895'),(326,'18215631086','cbfb47182f0b69f3d41c37907b934ab6','609896369@qq.com',1479310164,0,'蔡富强',5,0,'513030199111146312','18215631086'),(327,'18898958368','785d1cc7d0fa24b97daf73c1d52bbefa','1252627815@qq.com',1479310164,0,'陆初茂',5,0,'460003198806080638','18898958368'),(328,'13178964446','721f1ec090da91b832763a4aeee3e3d5','215675844@qq.com',1479310164,0,'吴世亮',5,0,'460003199404086230','13178964446'),(329,'15607639117','76a949980860a3fe6efecae06c985435','1649042854@qq.com',1479310164,0,'陈冬妮',5,0,'230104199511083448','15607639117'),(330,'18889738974','71d568cb7a44208d853ca7122bceb66f','2310381834@qq.com',1479310164,0,'梁甲',5,0,'460007199209075793','18889738974'),(331,'15289736775','6ca56bbe3e5b5e67075279f52877f030','298013413@qq.com',1479310164,0,'张潮瑛',5,0,'460030198602274229','15289736775'),(332,'13876969512','686f3754992e38012e236ad049d0d687','252945852@qq.com',1479310164,0,'蓝胡行行',5,0,'330122198902020323','13876969512'),(333,'15508975020','16821620026c57c549be71db6dc9e575','39797338@qq.com',1479310164,0,'文浩',5,0,'430102198506155013','15508975020'),(334,'13700454333','693f9cc96df44da0c3f343f8208d4d08','47035303@qq.com',1479310164,0,'王世鸣',5,0,'46000419791111001X','13700454333'),(335,'13389859955','72afaa5ec9ae03edea662cbdc7a87c6d','61745203@qq.com',1479310164,0,'王茹萍',5,0,'460002198208120023','13389859955'),(336,'15108952566','b47daa8ef89c9bf9e36c0b4fb2473fe2','shana_1@sina.com',1479310164,0,'符启杰',5,0,'460007198505300014','15108952566'),(337,'13976430096','9e6d8b3516a895b5b54cd312920e71f6','76214695@qq.com',1479310164,0,'符兴秀',5,0,'460007198509200029','13976430096'),(338,'15203055132','65cd5ba36acef9b30b523939f44a34eb','915469756@qq.com',1479310164,0,'刘风英',5,0,'46000719870104656X','15203055132'),(339,'13976949867','d59fa7cf1781be03687262c8e0c9cd05','13976949867@163.com',1479310164,0,'苏海珠',5,0,'460007198609035374','13976949867'),(340,'13976435074','fa28a1b0e0674b8c69b7a9b5ca904dd3','926854244@qq.com',1479310164,0,'杨亚在',5,0,'460007198607088010','13976435074'),(341,'18689981155','772eaefb082b5560c6fecf5ad6085876','51935310@qq.com',1479310164,0,'张天翼',5,0,'460025198403124550','18689981155'),(342,'13976354796','9b6582738cbad0c094468db936db2c4e','278330739@qq.com',1479310164,0,'刘秋贵',5,0,'460032198109016819','13976354796'),(343,'15103045359','0601b0bae5b81b6367da535196f2b528','yanshujiejack@163.com',1479310164,0,'严树杰',5,0,'460002199108022519','15103045359'),(344,'18789006890','c204c62ca5e21753cb6c0e2b23e529f7','1833538696@qq.com',1479310164,0,'许诺',5,0,'413026199712023328','18789006890'),(345,'18689925797','cd46f87c76555634252c679d5c57958d','117559596@qq.com',1479310164,0,'吴慧文',5,0,'460030199009220013','18689925797'),(346,'15120826339','4392bd8da1f1682529ebcfa878eb7b6e','89505336@qq.com',1479310164,0,'郭泽枨',5,0,'460022198010240519','15120826339'),(347,'13925012149','6d368c6102448b92f804ee82724c7c8d','13925012149@139.com',1479310164,0,'吴红',5,0,'46010319790812062X','13925012149'),(348,'18976066215','2324d96c0959b39fd261447bb9dbe9f1','18976066215@qq.com',1479310164,0,'姜相峰',5,0,'420921198704152615','18976066215'),(349,'18976545204','89090a129a678469eaf34b659b48cdbc','18106796@qq.com',1479310164,0,'徐敏',5,0,'460022198312170333','18976545204'),(350,'15103610582','66c9e644c3b143d92907c3a802d7b973','181687080@qq.com',1479310164,0,'王海龙',5,0,'460035198808151314','15103610582'),(351,'18789987658','07e04f7cba5ddede95344fbd29d93d9f','119610130@qq.com',1479310164,5013,'王鹏',5,0,'421102198702160492','18789987658'),(352,'15595625660','4d74ac1c528174c1779701efa5f3f6a3','838610270@qq.com',1479310164,0,'胡强强',5,0,'412326198710177236','15595625660'),(353,'15500914496','3abe83bc6b31f766b6e1f8a7d17d9800','75171650@qq.com',1479310164,0,'洪梁文',5,0,'460004198111274010','15500914496'),(354,'13519898838','259876fab4195fb5b53dc1a2c60a6e17','183368@qq.com',1479310164,0,'黄基传',5,0,'460002199006152013','13519898838'),(355,'13876111535','508ec2586b090f04b4edf6be2d6e61c5','13876111535@163.com',1479310164,0,'王雅丽',5,0,'460027198110290021','13876111535'),(356,'15008988184','038bc4608378a9ec9bc125e9b9698c63','814821805@qq.com',1479310164,0,'林明德',5,0,'460034198607170459','15008988184'),(357,'18689945504','de4a7fa3689b1e23ba676e1999249b93','798854545@qq.com',1479310164,0,'陈永晶',5,0,'460003199004020048','18689945504'),(358,'13078928056','087d53d0ffdb81a9f79b08e522445c6c','1243143444@qq.com',1479310164,0,'黄凌燕',5,0,'460034198304121844','13078928056'),(359,'18607635656','39e5e22b2dd3f99344565ecf4e9912b7','56859476@qq.com',1479310164,0,'梁振阳',5,0,'460034198110226314','18607635656'),(361,'13976387936','8c37dbe74b6b2995b8cc2ec0c25eafbc','156353151@qq.com',1478019402,3015,'杨波',3,0,'513701199605134617','13976387936'),(362,'18217850592','eacf569c1be11382f724911e4719aa7d','2451065777@qq.com',1478019402,3071,'庞国根',3,0,'460028200002222415','18217850592'),(363,'18889200092','d5559281f61d299e89105470734c6952','996922038@qq.com',1478019402,3019,'陈云路',3,0,'460034198806185000','18889200092'),(364,'18889721307','40b6ca1be9e3390439eb574ec48d06da','769298526@qq.com',1478019402,2007,'陈华帅',2,0,'460006199209045635','18889721307'),(365,'15595933048','1011','1429306268@qq.com',1478019402,1026,'赵会文',1,0,'412723199508038117','15595933048'),(366,'13278950106','3bce45991b002c5a60be8f18ff4d4a36','fuyupeng@xxx.com',1479310164,2018,'符玉鹏',2,0,'460032199210117221','13278950106'),(367,'13876503386','574b26ab62f507760dd50d6f5f52fcdf','358730671@qq.com',1479310164,2012,'陈炳光',2,0,'610302198506223535','13876503386'),(368,'13976350581','3157108a4e369426ee58bdac60d31830','liuxinxing@xxx.com',1479310164,2026,'柳新星',2,0,'460032198909117669','13976350581'),(369,'18289745209','1ad06dc5ccdd8129ace2b65f7e0f3755','fujie@xxx.com',1479310164,2027,'符杰',2,0,'460032198802287676','18289745209'),(370,'18889885628','4c4253b8658b7ea3d44365e98a7cba41','heinodesign@qq.com',1478019402,0,'李晓浩',5,0,'37232319851121061x','18889885628'),(371,'18789559057','8cf5759818c41af12920f5435754ae10','wushujun@fengzan.xin',1478019402,5046,'吴淑军',5,0,'46010319870711181X','18789559057'),(372,'18789306335','5bdc1bdd6cdc2cc72d2477ce581d9d73','214393094@qq.com',1478019402,5036,'王推梁',5,0,'460027199212152935','18789306335'),(373,'18689786119','ff1ed6c147d501b54a54592a2ef3404e','179929650@qq.com',1478019402,0,'黎超',5,0,'460026198811055132','18689786119'),(374,'18217864088','cceaf8d28f84359de5c1a34d0cfdefb0','492786314@qq.com',1478019402,0,'李元祥',5,0,'460102199204161514','18217864088'),(375,'13907667926','f8c676f80bec39f6cccd3425d882050a','zhangyouzheng@xxx.com',1478019402,0,'张有正',5,0,'460007198606297619','13907667926'),(376,'13158900009','7362edd38cdaca3432311509fd2804e1','fujiahui@xxx.com',1478019402,0,'符家辉',5,0,'46000719790129001X','13158900009');
/*!40000 ALTER TABLE `user` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2017-05-26 17:29:17
