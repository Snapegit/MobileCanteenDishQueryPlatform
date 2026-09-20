-- MySQL dump 10.13  Distrib 5.7.31, for Linux (x86_64)
--
-- Host: localhost    Database: cl52299141
-- ------------------------------------------------------
-- Server version	5.7.31

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
-- Current Database: `cl52299141`
--

/*!40000 DROP DATABASE IF EXISTS `cl52299141`*/;

CREATE DATABASE /*!32312 IF NOT EXISTS*/ `cl52299141` /*!40100 DEFAULT CHARACTER SET utf8mb4 */;

USE `cl52299141`;

--
-- Table structure for table `address`
--

DROP TABLE IF EXISTS `address`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `address` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `addtime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '创建时间',
  `address` varchar(200) NOT NULL COMMENT '地址',
  `name` varchar(200) DEFAULT NULL COMMENT '收货人',
  `phone` varchar(200) DEFAULT NULL COMMENT '电话',
  `isdefault` varchar(200) DEFAULT NULL COMMENT '是否默认地址',
  `userid` bigint(20) NOT NULL COMMENT '用户id',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=1711766407129 DEFAULT CHARSET=utf8 COMMENT='地址';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `address`
--

LOCK TABLES `address` WRITE;
/*!40000 ALTER TABLE `address` DISABLE KEYS */;
INSERT INTO `address` VALUES (1,'2024-03-30 02:32:25','地址1','张三','19819881111','是',11),(2,'2024-03-30 02:32:25','地址2','李四','19819882222','是',12),(3,'2024-03-30 02:32:25','地址3','王五','19819883333','是',13),(4,'2024-03-30 02:32:25','地址4','赵六','19819884444','是',14),(5,'2024-03-30 02:32:25','地址5','孙七','19819885555','是',15),(6,'2024-03-30 02:32:25','地址6','周八','19819886666','是',16),(1711766407128,'2024-03-30 02:40:06','广州大道2号','小欧','13512312312','是',31);
/*!40000 ALTER TABLE `address` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `caipinfenlei`
--

DROP TABLE IF EXISTS `caipinfenlei`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `caipinfenlei` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `addtime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '创建时间',
  `caipinfenlei` varchar(200) NOT NULL COMMENT '菜品分类',
  PRIMARY KEY (`id`),
  UNIQUE KEY `caipinfenlei` (`caipinfenlei`)
) ENGINE=InnoDB AUTO_INCREMENT=1711766314121 DEFAULT CHARSET=utf8 COMMENT='菜品分类';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `caipinfenlei`
--

LOCK TABLES `caipinfenlei` WRITE;
/*!40000 ALTER TABLE `caipinfenlei` DISABLE KEYS */;
INSERT INTO `caipinfenlei` VALUES (41,'2024-03-30 02:32:25','菜品分类1'),(42,'2024-03-30 02:32:25','菜品分类2'),(43,'2024-03-30 02:32:25','菜品分类3'),(44,'2024-03-30 02:32:25','菜品分类4'),(45,'2024-03-30 02:32:25','菜品分类5'),(46,'2024-03-30 02:32:25','菜品分类6'),(1711766314120,'2024-03-30 02:38:33','面食类');
/*!40000 ALTER TABLE `caipinfenlei` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `caipinxinxi`
--

DROP TABLE IF EXISTS `caipinxinxi`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `caipinxinxi` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `addtime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '创建时间',
  `caipinmingcheng` varchar(200) NOT NULL COMMENT '菜品名称',
  `caipintupian` longtext NOT NULL COMMENT '菜品图片',
  `caipinfenlei` varchar(200) NOT NULL COMMENT '菜品分类',
  `kouwei` varchar(200) DEFAULT NULL COMMENT '口味',
  `tuijianzhishu` varchar(200) DEFAULT NULL COMMENT '推荐指数',
  `peiliao` varchar(200) DEFAULT NULL COMMENT '配料',
  `yingyangchengfen` varchar(200) DEFAULT NULL COMMENT '营养成分',
  `heshirenqun` varchar(200) DEFAULT NULL COMMENT '合适人群',
  `qucandian` varchar(200) DEFAULT NULL COMMENT '取餐点',
  `caipinxiangqing` longtext COMMENT '菜品祥情',
  `storeupnum` int(11) DEFAULT NULL COMMENT '收藏数量',
  `clicknum` int(11) DEFAULT NULL COMMENT '点击次数',
  `price` double DEFAULT NULL COMMENT '价格',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=1711766367201 DEFAULT CHARSET=utf8 COMMENT='菜品信息';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `caipinxinxi`
--

LOCK TABLES `caipinxinxi` WRITE;
/*!40000 ALTER TABLE `caipinxinxi` DISABLE KEYS */;
INSERT INTO `caipinxinxi` VALUES (51,'2024-03-30 02:32:25','菜品名称1','file/caipinxinxiCaipintupian1.jpg,file/caipinxinxiCaipintupian2.jpg,file/caipinxinxiCaipintupian3.jpg','菜品分类1','微辣','★','配料1','营养成分1','合适人群1','取餐点1','菜品祥情1',1,1,99.9),(52,'2024-03-30 02:32:25','菜品名称2','file/caipinxinxiCaipintupian2.jpg,file/caipinxinxiCaipintupian3.jpg,file/caipinxinxiCaipintupian4.jpg','菜品分类2','微辣','★','配料2','营养成分2','合适人群2','取餐点2','菜品祥情2',2,2,99.9),(53,'2024-03-30 02:32:25','菜品名称3','file/caipinxinxiCaipintupian3.jpg,file/caipinxinxiCaipintupian4.jpg,file/caipinxinxiCaipintupian5.jpg','菜品分类3','微辣','★','配料3','营养成分3','合适人群3','取餐点3','菜品祥情3',3,3,99.9),(54,'2024-03-30 02:32:25','菜品名称4','file/caipinxinxiCaipintupian4.jpg,file/caipinxinxiCaipintupian5.jpg,file/caipinxinxiCaipintupian6.jpg','菜品分类4','微辣','★','配料4','营养成分4','合适人群4','取餐点4','菜品祥情4',4,4,99.9),(55,'2024-03-30 02:32:25','菜品名称5','file/caipinxinxiCaipintupian5.jpg,file/caipinxinxiCaipintupian6.jpg,file/caipinxinxiCaipintupian7.jpg','菜品分类5','微辣','★','配料5','营养成分5','合适人群5','取餐点5','菜品祥情5',5,5,99.9),(56,'2024-03-30 02:32:25','菜品名称6','file/caipinxinxiCaipintupian6.jpg,file/caipinxinxiCaipintupian7.jpg,file/caipinxinxiCaipintupian8.jpg','菜品分类6','微辣','★','配料6','营养成分6','合适人群6','取餐点6','菜品祥情6',6,6,99.9),(1711766367200,'2024-03-30 02:39:27','拉面','file/1711766332203.jpg','面食类','不辣','★★★','配料','营养','人群','取餐点1,饭堂一号','<p>看到自己合适就取餐点就去取餐</p>',0,1,59);
/*!40000 ALTER TABLE `caipinxinxi` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `cart`
--

DROP TABLE IF EXISTS `cart`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `cart` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `addtime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '创建时间',
  `tablename` varchar(200) DEFAULT NULL COMMENT '商品表名',
  `goodid` bigint(20) NOT NULL COMMENT '商品id',
  `goodname` varchar(200) DEFAULT NULL COMMENT '商品名称',
  `picture` longtext NOT NULL COMMENT '图片',
  `buynumber` int(11) DEFAULT NULL COMMENT '购买数量',
  `price` double DEFAULT NULL COMMENT '单价',
  `discountprice` double DEFAULT NULL COMMENT '折扣价',
  `userid` bigint(20) NOT NULL COMMENT '用户id',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='购物车';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `cart`
--

LOCK TABLES `cart` WRITE;
/*!40000 ALTER TABLE `cart` DISABLE KEYS */;
/*!40000 ALTER TABLE `cart` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `config`
--

DROP TABLE IF EXISTS `config`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `config` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `name` varchar(100) NOT NULL COMMENT '配置参数名称',
  `value` varchar(100) DEFAULT NULL COMMENT '配置参数值',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8 COMMENT='配置文件';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `config`
--

LOCK TABLES `config` WRITE;
/*!40000 ALTER TABLE `config` DISABLE KEYS */;
INSERT INTO `config` VALUES (1,'swiper1','file/swiperPicture1.jpg'),(2,'swiper2','file/1711766259950.jpg'),(3,'swiper3','file/swiperPicture3.jpg');
/*!40000 ALTER TABLE `config` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `dingdanwancheng`
--

DROP TABLE IF EXISTS `dingdanwancheng`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `dingdanwancheng` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `addtime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '创建时间',
  `dingdanbianhao` varchar(200) NOT NULL COMMENT '订单编号',
  `shouhuoren` varchar(200) NOT NULL COMMENT '收货人',
  `dizhi` varchar(200) NOT NULL COMMENT '地址',
  `shoujihaoma` varchar(200) NOT NULL COMMENT '手机号码',
  `wanchengshijian` datetime DEFAULT NULL COMMENT '完成时间',
  `peisongyuanzhanghao` varchar(200) DEFAULT NULL COMMENT '配送员账号',
  `peisongyuanxingming` varchar(200) DEFAULT NULL COMMENT '配送员姓名',
  `lianxidianhua` varchar(200) DEFAULT NULL COMMENT '联系电话',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=1711766475022 DEFAULT CHARSET=utf8 COMMENT='订单完成';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `dingdanwancheng`
--

LOCK TABLES `dingdanwancheng` WRITE;
/*!40000 ALTER TABLE `dingdanwancheng` DISABLE KEYS */;
INSERT INTO `dingdanwancheng` VALUES (131,'2024-03-30 02:32:25','订单编号1','收货人1','地址1','19819881111','2024-03-30 10:32:25','配送员账号1','配送员姓名1','19819881111'),(132,'2024-03-30 02:32:25','订单编号2','收货人2','地址2','19819881112','2024-03-30 10:32:25','配送员账号2','配送员姓名2','19819881112'),(133,'2024-03-30 02:32:25','订单编号3','收货人3','地址3','19819881113','2024-03-30 10:32:25','配送员账号3','配送员姓名3','19819881113'),(134,'2024-03-30 02:32:25','订单编号4','收货人4','地址4','19819881114','2024-03-30 10:32:25','配送员账号4','配送员姓名4','19819881114'),(135,'2024-03-30 02:32:25','订单编号5','收货人5','地址5','19819881115','2024-03-30 10:32:25','配送员账号5','配送员姓名5','19819881115'),(136,'2024-03-30 02:32:25','订单编号6','收货人6','地址6','19819881116','2024-03-30 10:32:25','配送员账号6','配送员姓名6','19819881116'),(1711766475021,'2024-03-30 02:41:14','55555','小欧','广州大道2号','13545645645','2024-03-30 10:41:14','22','小欧','13645645645');
/*!40000 ALTER TABLE `dingdanwancheng` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `discusscaipinxinxi`
--

DROP TABLE IF EXISTS `discusscaipinxinxi`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `discusscaipinxinxi` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `addtime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '创建时间',
  `refid` bigint(20) NOT NULL COMMENT '关联表id',
  `userid` bigint(20) NOT NULL COMMENT '用户id',
  `avatarurl` longtext COMMENT '头像',
  `nickname` varchar(200) DEFAULT NULL COMMENT '用户名',
  `content` longtext NOT NULL COMMENT '评论内容',
  `reply` longtext COMMENT '回复内容',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=1711766520512 DEFAULT CHARSET=utf8 COMMENT='菜品信息评论表';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `discusscaipinxinxi`
--

LOCK TABLES `discusscaipinxinxi` WRITE;
/*!40000 ALTER TABLE `discusscaipinxinxi` DISABLE KEYS */;
INSERT INTO `discusscaipinxinxi` VALUES (1711766520511,'2024-03-30 02:42:00',1711766367200,1,'file/yonghuTouxiang1.jpg','用户账号1','评价','回复');
/*!40000 ALTER TABLE `discusscaipinxinxi` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `menu`
--

DROP TABLE IF EXISTS `menu`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `menu` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `addtime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '创建时间',
  `menujson` longtext COMMENT '菜单',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8 COMMENT='菜单';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `menu`
--

LOCK TABLES `menu` WRITE;
/*!40000 ALTER TABLE `menu` DISABLE KEYS */;
INSERT INTO `menu` VALUES (1,'2024-03-30 02:32:25','[{\"backMenu\":[{\"child\":[{\"appFrontIcon\":\"cuIcon-list\",\"buttons\":[\"查看\",\"删除\",\"发货\"],\"menu\":\"已支付订单\",\"menuJump\":\"已支付\",\"tableName\":\"orders\"},{\"appFrontIcon\":\"cuIcon-list\",\"buttons\":[\"查看\",\"删除\"],\"menu\":\"已退款订单\",\"menuJump\":\"已退款\",\"tableName\":\"orders\"},{\"appFrontIcon\":\"cuIcon-list\",\"buttons\":[\"查看\",\"删除\"],\"menu\":\"商品订单\",\"tableName\":\"orders\"},{\"appFrontIcon\":\"cuIcon-list\",\"buttons\":[\"查看\",\"删除\",\"销售量统计\"],\"menu\":\"已完成订单\",\"menuJump\":\"已完成\",\"tableName\":\"orders\"},{\"appFrontIcon\":\"cuIcon-list\",\"buttons\":[\"查看\",\"删除\",\"物流\"],\"menu\":\"已发货订单\",\"menuJump\":\"已发货\",\"tableName\":\"orders\"},{\"appFrontIcon\":\"cuIcon-list\",\"buttons\":[\"查看\",\"删除\"],\"menu\":\"未支付订单\",\"menuJump\":\"未支付\",\"tableName\":\"orders\"},{\"appFrontIcon\":\"cuIcon-list\",\"buttons\":[\"查看\",\"删除\"],\"menu\":\"已取消订单\",\"menuJump\":\"已取消\",\"tableName\":\"orders\"}],\"menu\":\"订单管理\"},{\"child\":[{\"appFrontIcon\":\"cuIcon-full\",\"buttons\":[\"新增\",\"查看\",\"修改\",\"删除\"],\"menu\":\"轮播图\",\"menuJump\":\"列表\",\"tableName\":\"config\"}],\"fontClass\":\"icon-common26\",\"menu\":\"轮播图管理\",\"unicode\":\"&#xee2b;\"},{\"child\":[{\"appFrontIcon\":\"cuIcon-newshot\",\"buttons\":[\"新增\",\"查看\",\"修改\",\"删除\"],\"menu\":\"公告信息\",\"menuJump\":\"列表\",\"tableName\":\"news\"}],\"fontClass\":\"icon-common43\",\"menu\":\"公告信息管理\",\"unicode\":\"&#xef27;\"},{\"child\":[{\"appFrontIcon\":\"cuIcon-attentionfavor\",\"buttons\":[\"新增\",\"查看\",\"修改\",\"删除\"],\"menu\":\"用户\",\"menuJump\":\"列表\",\"tableName\":\"yonghu\"}],\"fontClass\":\"icon-user7\",\"menu\":\"用户管理\",\"unicode\":\"&#xef9d;\"},{\"child\":[{\"appFrontIcon\":\"cuIcon-list\",\"buttons\":[\"查看\",\"删除\"],\"menu\":\"配送接单\",\"menuJump\":\"列表\",\"tableName\":\"peisongjiedan\"},{\"appFrontIcon\":\"cuIcon-present\",\"buttons\":[\"查看\",\"删除\"],\"menu\":\"订单完成\",\"menuJump\":\"列表\",\"tableName\":\"dingdanwancheng\"},{\"appFrontIcon\":\"cuIcon-phone\",\"buttons\":[\"新增\",\"查看\",\"修改\",\"删除\"],\"menu\":\"配送订单\",\"menuJump\":\"列表\",\"tableName\":\"peisongdingdan\"}],\"fontClass\":\"icon-common6\",\"menu\":\"订单配送管理\",\"unicode\":\"&#xedad;\"},{\"child\":[{\"appFrontIcon\":\"cuIcon-list\",\"buttons\":[\"新增\",\"查看\",\"修改\",\"删除\"],\"menu\":\"菜品分类\",\"menuJump\":\"列表\",\"tableName\":\"caipinfenlei\"},{\"appFrontIcon\":\"cuIcon-pic\",\"buttons\":[\"新增\",\"查看\",\"修改\",\"删除\",\"查看评论\",\"点击量统计\",\"首页总数\",\"首页统计\"],\"menu\":\"菜品信息\",\"menuJump\":\"列表\",\"tableName\":\"caipinxinxi\"},{\"appFrontIcon\":\"cuIcon-goodsnew\",\"buttons\":[\"新增\",\"查看\",\"修改\",\"删除\"],\"menu\":\"取餐点\",\"menuJump\":\"列表\",\"tableName\":\"qucandian\"}],\"fontClass\":\"icon-common43\",\"menu\":\"菜品信息管理\",\"unicode\":\"&#xef27;\"}],\"frontMenu\":[],\"hasBackLogin\":\"是\",\"hasBackRegister\":\"否\",\"hasFrontLogin\":\"否\",\"hasFrontRegister\":\"否\",\"roleName\":\"管理员\",\"tableName\":\"users\"},{\"backMenu\":[{\"child\":[{\"appFrontIcon\":\"cuIcon-list\",\"buttons\":[\"查看\"],\"menu\":\"购物车\",\"menuJump\":\"列表\",\"tableName\":\"cart\"}],\"fontClass\":\"icon-common18\",\"menu\":\"购物车管理\",\"unicode\":\"&#xedff;\"},{\"child\":[{\"appFrontIcon\":\"cuIcon-news\",\"buttons\":[\"新增\",\"查看\",\"修改\",\"删除\"],\"menu\":\"地址\",\"menuJump\":\"列表\",\"tableName\":\"address\"}],\"fontClass\":\"icon-common38\",\"menu\":\"地址管理\",\"unicode\":\"&#xeeb2;\"},{\"child\":[{\"appFrontIcon\":\"cuIcon-phone\",\"buttons\":[\"查看\"],\"menu\":\"我的收藏\",\"menuJump\":\"1\",\"tableName\":\"storeup\"}],\"fontClass\":\"icon-common47\",\"menu\":\"我的收藏管理\",\"unicode\":\"&#xef63;\"}],\"frontMenu\":[],\"hasBackLogin\":\"否\",\"hasBackRegister\":\"否\",\"hasFrontLogin\":\"是\",\"hasFrontRegister\":\"是\",\"roleName\":\"用户\",\"tableName\":\"yonghu\"},{\"backMenu\":[{\"child\":[{\"appFrontIcon\":\"cuIcon-list\",\"buttons\":[\"查看\",\"修改\",\"删除\",\"完成\"],\"menu\":\"配送接单\",\"menuJump\":\"列表\",\"tableName\":\"peisongjiedan\"},{\"appFrontIcon\":\"cuIcon-present\",\"buttons\":[\"查看\",\"删除\"],\"menu\":\"订单完成\",\"menuJump\":\"列表\",\"tableName\":\"dingdanwancheng\"},{\"appFrontIcon\":\"cuIcon-phone\",\"buttons\":[\"查看\",\"删除\",\"接单\"],\"menu\":\"配送订单\",\"menuJump\":\"列表\",\"tableName\":\"peisongdingdan\"}],\"fontClass\":\"icon-common6\",\"menu\":\"订单配送管理\",\"unicode\":\"&#xedad;\"}],\"frontMenu\":[],\"hasBackLogin\":\"是\",\"hasBackRegister\":\"是\",\"hasFrontLogin\":\"否\",\"hasFrontRegister\":\"否\",\"roleName\":\"配送员\",\"tableName\":\"peisongyuan\"}]');
/*!40000 ALTER TABLE `menu` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `news`
--

DROP TABLE IF EXISTS `news`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `news` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `addtime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '创建时间',
  `title` varchar(200) NOT NULL COMMENT '标题',
  `introduction` longtext COMMENT '简介',
  `picture` longtext NOT NULL COMMENT '图片',
  `content` longtext NOT NULL COMMENT '内容',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=1711766284985 DEFAULT CHARSET=utf8 COMMENT='公告信息';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `news`
--

LOCK TABLES `news` WRITE;
/*!40000 ALTER TABLE `news` DISABLE KEYS */;
INSERT INTO `news` VALUES (91,'2024-03-30 02:32:25','青花瓷','素胚勾勒出青花笔锋浓转淡，瓶身描绘的牡丹一如你初妆，冉冉檀香透过窗心事我了然，宣上走笔至此搁一半，釉色渲染仕女图韵味被私藏，而你嫣然的一笑如含苞待放，你的美缕飘散，去到我去不了的地方，天青色等烟雨 而我在等你，炊烟袅袅升起','file/newsPicture1.jpg','素胚勾勒出青花笔锋浓转淡，瓶身描绘的牡丹一如你初妆，冉冉檀香透过窗心事我了然，宣上走笔至此搁一半，釉色渲染仕女图韵味被私藏，而你嫣然的一笑如含苞待放，你的美缕飘散，去到我去不了的地方，天青色等烟雨 而我在等你，炊烟袅袅升起， 隔江千万里，在瓶底书前朝的飘逸，就当我为遇见你伏笔，天青色等烟雨， 而我在等你，月色被打捞起， 晕开了局，如传世的青花瓷自顾自美丽，你眼带笑意，色白花青的锦鲤跃然于碗底，临摹宋体落款时却惦记着你，你隐藏在窑烧里千年的秘密，极细腻犹如绣花针落地，帘外芭蕉惹骤雨门环惹铜绿，而我路过那江南小镇惹了你，在泼墨山水画里，你从墨色深处被隐去，天青色等烟雨 ，而我在等你，炊烟袅袅升起 ，隔江千万里，在瓶底书汉隶仿前朝的飘逸，就当我为遇见你伏笔，天色等烟雨 ，而我在等你，月色被打捞起， 晕开了结局，如传世的青花瓷自顾自美丽，你眼带笑意，天青色等烟雨 ，而我在等你，炊烟袅袅升起 ，隔江千万里，在瓶底书汉隶仿前朝的飘逸，就当我为遇见你伏笔，天青色等烟雨， 而我在等你，月色被打捞起 ，晕开了结局，如传世的青花瓷自顾自美丽，你眼带笑意。'),(92,'2024-03-30 02:32:25','理想三旬','雨后有车驶来，驶过暮色苍白，旧铁皮往南开，恋人已不在，收听浓烟下的，诗歌电台，不动情的咳嗽，至少看起来，归途也还可爱，琴弦少了姿态，再不见那夜里，听歌的小孩，时光匆匆独白，将颠沛磨成卡带，已枯倦的情怀，踏碎成年代，就老去吧，孤独别醒来，你渴望的离开，只是无处停摆，就歌唱吧，眼睛眯起来，而热泪的崩坏，只是没抵达的存在','file/newsPicture2.jpg','雨后有车驶来，驶过暮色苍白，旧铁皮往南开，恋人已不在，收听浓烟下的，诗歌电台，不动情的咳嗽，至少看起来，归途也还可爱，琴弦少了姿态，再不见那夜里，听歌的小孩，时光匆匆独白，将颠沛磨成卡带，已枯倦的情怀，踏碎成年代，就老去吧，孤独别醒来，你渴望的离开，只是无处停摆，就歌唱吧，眼睛眯起来，而热泪的崩坏，只是没抵达的存在，青春又醉倒在，籍籍无名的怀，靠嬉笑来虚度，聚散得慷慨，辗转却去不到，对的站台，如果漂泊是成长，必经的路牌，你迷醒岁月中，那贫瘠的未来，像遗憾季节里，未结果的爱，弄脏了每一页诗，吻最疼痛的告白，而风声吹到这，已不需要释怀，就老去吧，孤独别醒来，渴望的离开只是无处停摆就歌唱吧，眼睛眯起来而热泪的崩坏，只是没抵达的存在，就甜蜜地忍耐，繁星润湿窗台，光影跳动着像在，困倦里说爱，再无谓的感慨，以为明白，梦倒塌的地方，今已爬满青苔。'),(93,'2024-03-30 02:32:25','七里香','窗外的麻雀在电线杆上多嘴，你说这一句很有夏天的感觉，手中的铅笔在纸上来来回回，我用几行字形容你是我的谁，秋刀鱼的滋味猫跟你都想了解，初恋的香味就这样被我们寻回，那温暖的阳光像刚摘的鲜艳草莓，你说你舍不得吃掉这一种感觉，雨下整夜我的爱溢出就像雨水，院子落叶跟我的思念厚厚一叠','file/newsPicture3.jpg','窗外的麻雀在电线杆上多嘴，你说这一句很有夏天的感觉，手中的铅笔在纸上来来回回，我用几行字形容你是我的谁，秋刀鱼的滋味猫跟你都想了解，初恋的香味就这样被我们寻回，那温暖的阳光像刚摘的鲜艳草莓，你说你舍不得吃掉这一种感觉，雨下整夜我的爱溢出就像雨水，院子落叶跟我的思念厚厚一叠，几句是非也无法将我的热情冷却，你出现在我诗的每一页，雨下整夜我的爱溢出就像雨水，窗台蝴蝶像诗里纷飞的美丽章节，我接着写，把永远爱你写进诗的结尾，你是我唯一想要的了解，雨下整夜我的爱溢出就像雨水，院子落叶跟我的思念厚厚一叠，几句是非也无法将我的热情冷却，你出现在我诗的每一页，那饱满的稻穗幸福了这个季节，而你的脸颊像田里熟透的番茄，你突然对我说七里香的名字很美，我此刻却只想亲吻你倔强的嘴，雨下整夜我的爱溢出就像雨水，院子落叶跟我的思念厚厚一叠，几句是非也无法将我的热情冷却，你出现在我诗的每一页，整夜我的爱溢出就像雨水，窗台蝴蝶像诗里纷飞的美丽章节，我接着写，把永远爱你写进诗的结尾，是我唯一想要的了解。'),(94,'2024-03-30 02:32:25','江南','风到这里就是粘，粘住过客的思念，雨到了这里缠成线，缠着我们流连人世间，你在身边就是缘，缘分写在三生石上面，爱有万分之一甜，宁愿我就葬在这一点，圈圈圆圆圈圈，天天年年天天的我，深深看你的脸，生气的温柔，埋怨的温柔的脸','file/newsPicture4.jpg','风到这里就是粘，粘住过客的思念，雨到了这里缠成线，缠着我们流连人世间，你在身边就是缘，缘分写在三生石上面，爱有万分之一甜，宁愿我就葬在这一点，圈圈圆圆圈圈，天天年年天天的我，深深看你的脸，生气的温柔，埋怨的温柔的脸，不懂爱恨情愁煎熬的我们，都以为相爱就像风云的善变，相信爱一天抵过永远，在这一刹那冻结了时间，不懂怎么表现温柔的我们，还以为殉情只是古老的传言，离愁能有多痛痛有多浓，当梦被埋在江南烟雨中，心碎了才懂，圈圈圆圆圈圈，天天年年天天的我，深深看你的脸，生气的温柔，埋怨的温柔的脸，不懂爱恨情愁煎熬的我们，都以为相爱就像风云的善变，相信爱一天 抵过永远，在这一刹那冻结了时间，不懂怎么表现温柔的我们，还以为殉情只是古老的传言，离愁能有多痛 痛有多浓，当梦被埋在江南烟雨中，心碎了才懂，相信爱一天抵过永远。在这一刹那冻结了时间，不懂怎么表现温柔的我们，还以为殉情只是古老的传言，离愁能有多痛 痛有多浓，当梦被埋在江南烟雨中，心碎了才懂。'),(95,'2024-03-30 02:32:25','那些你很冒险的梦','当两颗心开始震动，当你瞳孔学会闪躲，当爱慢慢被遮住只剩下黑，距离像影子被拉拖，当爱的故事剩听说，我找不到你单纯的面孔，当生命每分每秒都为你转动，心多执着就加倍心痛，那些你很冒险的梦， 我陪你去疯，折纸飞机碰到雨天终究会坠落','file/newsPicture5.jpg','当两颗心开始震动，当你瞳孔学会闪躲，当爱慢慢被遮住只剩下黑，距离像影子被拉拖，当爱的故事剩听说，我找不到你单纯的面孔，当生命每分每秒都为你转动，心多执着就加倍心痛，那些你很冒险的梦， 我陪你去疯，折纸飞机碰到雨天终究会坠落，太残忍的话我直说 因为爱很重，你却不想懂 只往反方向走，当爱的故事剩听说，我找不到你单纯的面孔，当生命每分每秒都为你转动，心有多执着就加倍心痛，那些你很冒险的梦 我陪你去疯，折纸飞机 碰到雨天 终究会坠落，太残忍的话我直说 因为爱很重，你却不想懂 只往反方向走，我不想放手 你松开的左手，你爱的放纵 我白不回天空，我输了 累了，但你再也 不回头，那些你很冒险的梦 我陪你去疯，折纸飞机 碰到雨天 终究会坠落，太残忍的话我直说 因为爱很重，你却不想懂 只往反方向走，你真的不懂 我的爱已降落。'),(96,'2024-03-30 02:32:25','孤勇者','都，是勇敢的，你额头的伤口 你的 不同 你犯的错，都 不必隐藏，你破旧的玩偶 你的 面具 你的自我，他们说 要带着光 驯服每一头怪兽，他们说 要缝好你的伤，没有人爱小丑 为何孤独 不可 光荣，人只有不完美 值得歌颂，谁说污泥满身的不算英雄，爱你孤身走暗巷，爱你不跪的模样，爱你对峙过绝望','file/newsPicture6.jpg','都，是勇敢的，你额头的伤口 你的 不同 你犯的错，都 不必隐藏，你破旧的玩偶 你的 面具 你的自我，他们说 要带着光 驯服每一头怪兽，他们说 要缝好你的伤，没有人爱小丑 为何孤独 不可 光荣，人只有不完美 值得歌颂，谁说污泥满身的不算英雄，爱你孤身走暗巷，爱你不跪的模样，爱你对峙过绝望，不肯哭一场，爱你破烂的衣裳，却敢堵命运的枪，爱你和我那么像，缺口都一样，去吗 配吗 这褴褛的披风，战吗 战啊 以最卑微的梦，致那黑夜中的呜咽与怒吼，谁说站在光里的才算英雄，他们说 要戒了你的狂，就像擦掉了污垢，他们说 要顺台阶而上，而代价是低头，那就让我 不可 乘风，你一样骄傲着 那种孤勇，谁说对弈平凡的不算英雄，爱你孤身走暗巷 爱你不跪的模样，爱你对峙过绝望 不肯哭一场，爱你破烂的衣裳 却敢堵命运的枪，爱你和我那么像 缺口都一样，去吗 配吗 这褴褛的披风，战吗 战啊 以最卑微的梦，致那黑夜中的呜咽与怒吼，谁说站在光里的才算英雄，你的斑驳 与众不同 与众不同，你的沉默 震耳欲聋 震耳欲聋，You Are The Hero，爱你孤身走暗巷 爱你不跪的模样，爱你对峙过绝望 不肯哭一场，爱你来自于蛮荒 一生不借谁的光，你将造你的城邦 在废墟之上，去吗 去啊 以最卑微的梦，战吗 战啊 以最孤高的梦，致那黑夜中的呜咽与怒吼，谁说站在光里的才算英雄。'),(1711766284984,'2024-03-30 02:38:04','公告信息','简介','file/1711766277088.jpg','<p>详情介绍</p>');
/*!40000 ALTER TABLE `news` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `orders`
--

DROP TABLE IF EXISTS `orders`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `orders` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `addtime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '创建时间',
  `orderid` varchar(200) NOT NULL COMMENT '订单编号',
  `tablename` varchar(200) DEFAULT NULL COMMENT '商品表名',
  `goodid` bigint(20) NOT NULL COMMENT '商品id',
  `goodname` varchar(200) DEFAULT NULL COMMENT '商品名称',
  `picture` longtext NOT NULL COMMENT '图片',
  `buynumber` int(11) DEFAULT NULL COMMENT '购买数量',
  `price` double DEFAULT NULL COMMENT '单价',
  `discountprice` double DEFAULT NULL COMMENT '折扣价',
  `total` double DEFAULT NULL COMMENT '总价',
  `discounttotal` double DEFAULT NULL COMMENT '折扣总价格',
  `type` varchar(200) DEFAULT NULL COMMENT '支付类型',
  `status` varchar(200) DEFAULT NULL COMMENT '订单状态',
  `address` varchar(200) DEFAULT NULL COMMENT '地址',
  `tel` varchar(200) DEFAULT NULL COMMENT '电话',
  `consignee` varchar(200) DEFAULT NULL COMMENT '收货人',
  `remark` varchar(200) DEFAULT NULL COMMENT '备注',
  `logistics` longtext COMMENT '物流',
  `userid` bigint(20) NOT NULL COMMENT '用户id',
  PRIMARY KEY (`id`),
  UNIQUE KEY `orderid` (`orderid`)
) ENGINE=InnoDB AUTO_INCREMENT=1711766415889 DEFAULT CHARSET=utf8 COMMENT='商品订单';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `orders`
--

LOCK TABLES `orders` WRITE;
/*!40000 ALTER TABLE `orders` DISABLE KEYS */;
INSERT INTO `orders` VALUES (1711766415888,'2024-03-30 02:40:14','202433010401580326854','caipinxinxi',1711766367200,'拉面','file/1711766332203.jpg',1,59,59,59,59,'1','已完成','广州大道2号','13512312312','小欧','配送','<p>配送中 &nbsp; 配送完成</p>',31);
/*!40000 ALTER TABLE `orders` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `peisongdingdan`
--

DROP TABLE IF EXISTS `peisongdingdan`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `peisongdingdan` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `addtime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '创建时间',
  `dingdanbianhao` varchar(200) NOT NULL COMMENT '订单编号',
  `shouhuoren` varchar(200) NOT NULL COMMENT '收货人',
  `dizhi` varchar(200) NOT NULL COMMENT '地址',
  `shoujihaoma` varchar(200) NOT NULL COMMENT '手机号码',
  `dingdanzhuangtai` varchar(200) DEFAULT NULL COMMENT '订单状态',
  `beizhu` varchar(200) DEFAULT NULL COMMENT '备注',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=1711766442088 DEFAULT CHARSET=utf8 COMMENT='配送订单';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `peisongdingdan`
--

LOCK TABLES `peisongdingdan` WRITE;
/*!40000 ALTER TABLE `peisongdingdan` DISABLE KEYS */;
INSERT INTO `peisongdingdan` VALUES (151,'2024-03-30 02:32:25','订单编号1','收货人1','地址1','手机号码1','已接单','备注1'),(152,'2024-03-30 02:32:25','订单编号2','收货人2','地址2','手机号码2','已接单','备注2'),(153,'2024-03-30 02:32:25','订单编号3','收货人3','地址3','手机号码3','已接单','备注3'),(154,'2024-03-30 02:32:25','订单编号4','收货人4','地址4','手机号码4','已接单','备注4'),(155,'2024-03-30 02:32:25','订单编号5','收货人5','地址5','手机号码5','已接单','备注5'),(156,'2024-03-30 02:32:25','订单编号6','收货人6','地址6','手机号码6','已接单','备注6'),(1711766442087,'2024-03-30 02:40:41','55555','小欧','广州大道2号','13545645645','已接单','');
/*!40000 ALTER TABLE `peisongdingdan` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `peisongjiedan`
--

DROP TABLE IF EXISTS `peisongjiedan`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `peisongjiedan` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `addtime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '创建时间',
  `dingdanbianhao` varchar(200) NOT NULL COMMENT '订单编号',
  `shouhuoren` varchar(200) NOT NULL COMMENT '收货人',
  `dizhi` varchar(200) NOT NULL COMMENT '地址',
  `shoujihaoma` varchar(200) NOT NULL COMMENT '手机号码',
  `jiedanshijian` datetime DEFAULT NULL COMMENT '接单时间',
  `peisongyuanzhanghao` varchar(200) DEFAULT NULL COMMENT '配送员账号',
  `peisongyuanxingming` varchar(200) DEFAULT NULL COMMENT '配送员姓名',
  `lianxidianhua` varchar(200) DEFAULT NULL COMMENT '联系电话',
  `peisongzhuangtai` varchar(200) DEFAULT NULL COMMENT '配送状态',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=1711766469856 DEFAULT CHARSET=utf8 COMMENT='配送接单';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `peisongjiedan`
--

LOCK TABLES `peisongjiedan` WRITE;
/*!40000 ALTER TABLE `peisongjiedan` DISABLE KEYS */;
INSERT INTO `peisongjiedan` VALUES (121,'2024-03-30 02:32:25','订单编号1','收货人1','地址1','19819881111','2024-03-30 10:32:25','配送员账号1','配送员姓名1','19819881111','已完成'),(122,'2024-03-30 02:32:25','订单编号2','收货人2','地址2','19819881112','2024-03-30 10:32:25','配送员账号2','配送员姓名2','19819881112','已完成'),(123,'2024-03-30 02:32:25','订单编号3','收货人3','地址3','19819881113','2024-03-30 10:32:25','配送员账号3','配送员姓名3','19819881113','已完成'),(124,'2024-03-30 02:32:25','订单编号4','收货人4','地址4','19819881114','2024-03-30 10:32:25','配送员账号4','配送员姓名4','19819881114','已完成'),(125,'2024-03-30 02:32:25','订单编号5','收货人5','地址5','19819881115','2024-03-30 10:32:25','配送员账号5','配送员姓名5','19819881115','已完成'),(126,'2024-03-30 02:32:25','订单编号6','收货人6','地址6','19819881116','2024-03-30 10:32:25','配送员账号6','配送员姓名6','19819881116','已完成'),(1711766469855,'2024-03-30 02:41:09','55555','小欧','广州大道2号','13545645645','2024-03-30 10:41:08','22','小欧','13645645645','已完成');
/*!40000 ALTER TABLE `peisongjiedan` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `peisongyuan`
--

DROP TABLE IF EXISTS `peisongyuan`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `peisongyuan` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `addtime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '创建时间',
  `peisongyuanzhanghao` varchar(200) NOT NULL COMMENT '配送员账号',
  `mima` varchar(200) NOT NULL COMMENT '密码',
  `peisongyuanxingming` varchar(200) NOT NULL COMMENT '配送员姓名',
  `touxiang` longtext COMMENT '头像',
  `xingbie` varchar(200) DEFAULT NULL COMMENT '性别',
  `lianxidianhua` varchar(200) DEFAULT NULL COMMENT '联系电话',
  PRIMARY KEY (`id`),
  UNIQUE KEY `peisongyuanzhanghao` (`peisongyuanzhanghao`)
) ENGINE=InnoDB AUTO_INCREMENT=1711766221269 DEFAULT CHARSET=utf8 COMMENT='配送员';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `peisongyuan`
--

LOCK TABLES `peisongyuan` WRITE;
/*!40000 ALTER TABLE `peisongyuan` DISABLE KEYS */;
INSERT INTO `peisongyuan` VALUES (111,'2024-03-30 02:32:25','配送员账号1','123456','配送员姓名1','file/peisongyuanTouxiang1.jpg','男','19819881111'),(112,'2024-03-30 02:32:25','配送员账号2','123456','配送员姓名2','file/peisongyuanTouxiang2.jpg','男','19819881112'),(113,'2024-03-30 02:32:25','配送员账号3','123456','配送员姓名3','file/peisongyuanTouxiang3.jpg','男','19819881113'),(114,'2024-03-30 02:32:25','配送员账号4','123456','配送员姓名4','file/peisongyuanTouxiang4.jpg','男','19819881114'),(115,'2024-03-30 02:32:25','配送员账号5','123456','配送员姓名5','file/peisongyuanTouxiang5.jpg','男','19819881115'),(116,'2024-03-30 02:32:25','配送员账号6','123456','配送员姓名6','file/peisongyuanTouxiang6.jpg','男','19819881116'),(1711766221268,'2024-03-30 02:37:01','22','22','小欧','file/1711766216506.jpg','男','13645645645');
/*!40000 ALTER TABLE `peisongyuan` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `qucandian`
--

DROP TABLE IF EXISTS `qucandian`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `qucandian` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `addtime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '创建时间',
  `qucandian` varchar(200) NOT NULL COMMENT '取餐点',
  PRIMARY KEY (`id`),
  UNIQUE KEY `qucandian` (`qucandian`)
) ENGINE=InnoDB AUTO_INCREMENT=1711766301240 DEFAULT CHARSET=utf8 COMMENT='取餐点';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `qucandian`
--

LOCK TABLES `qucandian` WRITE;
/*!40000 ALTER TABLE `qucandian` DISABLE KEYS */;
INSERT INTO `qucandian` VALUES (101,'2024-03-30 02:32:25','取餐点1'),(102,'2024-03-30 02:32:25','取餐点2'),(103,'2024-03-30 02:32:25','取餐点3'),(104,'2024-03-30 02:32:25','取餐点4'),(105,'2024-03-30 02:32:25','取餐点5'),(106,'2024-03-30 02:32:25','取餐点6'),(1711766301239,'2024-03-30 02:38:20','饭堂一号');
/*!40000 ALTER TABLE `qucandian` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `storeup`
--

DROP TABLE IF EXISTS `storeup`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `storeup` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `addtime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '创建时间',
  `refid` bigint(20) DEFAULT NULL COMMENT 'refid',
  `tablename` varchar(200) DEFAULT NULL COMMENT '表名',
  `name` varchar(200) NOT NULL COMMENT '名称',
  `picture` longtext NOT NULL COMMENT '图片',
  `type` varchar(200) DEFAULT NULL COMMENT '类型(1:收藏,21:赞,22:踩,31:竞拍参与,41:关注)',
  `inteltype` varchar(200) DEFAULT NULL COMMENT '推荐类型',
  `remark` varchar(200) DEFAULT NULL COMMENT '备注',
  `userid` bigint(20) NOT NULL COMMENT '用户id',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='我的收藏';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `storeup`
--

LOCK TABLES `storeup` WRITE;
/*!40000 ALTER TABLE `storeup` DISABLE KEYS */;
/*!40000 ALTER TABLE `storeup` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `token`
--

DROP TABLE IF EXISTS `token`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `token` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `userid` bigint(20) NOT NULL COMMENT '用户id',
  `username` varchar(100) NOT NULL COMMENT '用户名',
  `tablename` varchar(100) DEFAULT NULL COMMENT '表名',
  `role` varchar(100) DEFAULT NULL COMMENT '角色',
  `token` varchar(200) NOT NULL COMMENT '密码',
  `addtime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '新增时间',
  `expiratedtime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '过期时间',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8 COMMENT='token表';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `token`
--

LOCK TABLES `token` WRITE;
/*!40000 ALTER TABLE `token` DISABLE KEYS */;
INSERT INTO `token` VALUES (1,1,'admin','users','管理员','evv3uiaugj1rf5168sxvsctnsw1j89fd','2024-03-30 02:36:18','2024-03-30 03:41:26'),(2,1711766221268,'22','peisongyuan','配送员','0d0zznl5i008r63il1tbwld4hzyj1t1u','2024-03-30 02:37:07','2024-03-30 03:41:04'),(3,31,'用户账号1','yonghu','用户','p7ns8tmabodjyq7h2k9zd63l26h7uldf','2024-03-30 02:39:42','2024-03-30 03:39:43');
/*!40000 ALTER TABLE `token` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `users`
--

DROP TABLE IF EXISTS `users`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `users` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `addtime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '创建时间',
  `username` varchar(200) NOT NULL COMMENT '用户名',
  `password` varchar(200) NOT NULL COMMENT '密码',
  `role` varchar(200) DEFAULT NULL COMMENT '角色',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8 COMMENT='管理员';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `users`
--

LOCK TABLES `users` WRITE;
/*!40000 ALTER TABLE `users` DISABLE KEYS */;
INSERT INTO `users` VALUES (1,'2024-03-30 02:32:25','admin','admin','管理员');
/*!40000 ALTER TABLE `users` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `yonghu`
--

DROP TABLE IF EXISTS `yonghu`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `yonghu` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `addtime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '创建时间',
  `yonghuzhanghao` varchar(200) NOT NULL COMMENT '用户账号',
  `yonghumima` varchar(200) NOT NULL COMMENT '用户密码',
  `yonghuxingming` varchar(200) NOT NULL COMMENT '用户姓名',
  `touxiang` longtext COMMENT '头像',
  `xingbie` varchar(200) DEFAULT NULL COMMENT '性别',
  `shoujihaoma` varchar(200) DEFAULT NULL COMMENT '手机号码',
  `money` double DEFAULT '0' COMMENT '余额',
  PRIMARY KEY (`id`),
  UNIQUE KEY `yonghuzhanghao` (`yonghuzhanghao`)
) ENGINE=InnoDB AUTO_INCREMENT=37 DEFAULT CHARSET=utf8 COMMENT='用户';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `yonghu`
--

LOCK TABLES `yonghu` WRITE;
/*!40000 ALTER TABLE `yonghu` DISABLE KEYS */;
INSERT INTO `yonghu` VALUES (31,'2024-03-30 02:32:25','用户账号1','123456','用户姓名1','file/yonghuTouxiang1.jpg','男','19819881111',141),(32,'2024-03-30 02:32:25','用户账号2','123456','用户姓名2','file/yonghuTouxiang2.jpg','男','19819881112',200),(33,'2024-03-30 02:32:25','用户账号3','123456','用户姓名3','file/yonghuTouxiang3.jpg','男','19819881113',200),(34,'2024-03-30 02:32:25','用户账号4','123456','用户姓名4','file/yonghuTouxiang4.jpg','男','19819881114',200),(35,'2024-03-30 02:32:25','用户账号5','123456','用户姓名5','file/yonghuTouxiang5.jpg','男','19819881115',200),(36,'2024-03-30 02:32:25','用户账号6','123456','用户姓名6','file/yonghuTouxiang6.jpg','男','19819881116',200);
/*!40000 ALTER TABLE `yonghu` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2024-04-11 22:27:16
