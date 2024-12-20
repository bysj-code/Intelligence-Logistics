/*
SQLyog Ultimate v11.3 (64 bit)
MySQL - 5.7.32-log : Database - zhihuiwuliuwx
*********************************************************************
*/

/*!40101 SET NAMES utf8 */;

/*!40101 SET SQL_MODE=''*/;

/*!40014 SET @OLD_UNIQUE_CHECKS=@@UNIQUE_CHECKS, UNIQUE_CHECKS=0 */;
/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;
/*!40111 SET @OLD_SQL_NOTES=@@SQL_NOTES, SQL_NOTES=0 */;
CREATE DATABASE /*!32312 IF NOT EXISTS*/`zhihuiwuliuwx` /*!40100 DEFAULT CHARACTER SET utf8 */;

USE `zhihuiwuliuwx`;

/*Table structure for table `address` */

DROP TABLE IF EXISTS `address`;

CREATE TABLE `address` (
  `id` int(20) NOT NULL AUTO_INCREMENT COMMENT '主键 ',
  `yonghu_id` int(20) NOT NULL COMMENT '创建用户',
  `address_name` varchar(200) NOT NULL COMMENT '收货人 ',
  `address_phone` varchar(200) NOT NULL COMMENT '电话 ',
  `address_dizhi` varchar(200) NOT NULL COMMENT '地址 ',
  `isdefault_types` int(11) NOT NULL COMMENT '是否默认地址 ',
  `insert_time` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '添加时间',
  `update_time` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '修改时间',
  `create_time` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '创建时间 show3',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=15 DEFAULT CHARSET=utf8 COMMENT='收货地址';

/*Data for the table `address` */

insert  into `address`(`id`,`yonghu_id`,`address_name`,`address_phone`,`address_dizhi`,`isdefault_types`,`insert_time`,`update_time`,`create_time`) values (1,2,'收货人1','17703786901','地址1',1,'2023-05-17 10:39:01','2023-05-17 10:39:01','2023-05-17 10:39:01'),(2,1,'收货人2','17703786902','地址2',1,'2023-05-17 10:39:01','2023-05-17 10:39:01','2023-05-17 10:39:01'),(3,2,'收货人3','17703786903','地址3',1,'2023-05-17 10:39:01','2023-05-17 10:39:01','2023-05-17 10:39:01'),(4,3,'收货人4','17703786904','地址4',1,'2023-05-17 10:39:01','2023-05-17 10:39:01','2023-05-17 10:39:01'),(5,3,'收货人5','17703786905','地址5',1,'2023-05-17 10:39:01','2023-05-17 10:39:01','2023-05-17 10:39:01'),(6,1,'收货人6','17703786906','地址6',1,'2023-05-17 10:39:01','2023-05-17 10:39:01','2023-05-17 10:39:01'),(7,3,'收货人7','17703786907','地址7',1,'2023-05-17 10:39:01','2023-05-17 10:39:01','2023-05-17 10:39:01'),(8,2,'收货人8','17703786908','地址8',1,'2023-05-17 10:39:01','2023-05-17 10:39:01','2023-05-17 10:39:01'),(9,1,'收货人9','17703786909','地址9',1,'2023-05-17 10:39:01','2023-05-17 10:39:01','2023-05-17 10:39:01'),(10,1,'收货人10','17703786910','地址10',2,'2023-05-17 10:39:01','2023-05-17 13:28:22','2023-05-17 10:39:01'),(11,1,'收货人11','17703786911','地址11',1,'2023-05-17 10:39:01','2023-05-17 10:39:01','2023-05-17 10:39:01'),(12,1,'收货人12','17703786912','地址12',1,'2023-05-17 10:39:01','2023-05-17 10:39:01','2023-05-17 10:39:01'),(13,3,'收货人13','17703786913','地址13',1,'2023-05-17 10:39:01','2023-05-17 10:39:01','2023-05-17 10:39:01'),(14,3,'收货人14','17703786914','地址14',1,'2023-05-17 10:39:01','2023-05-17 10:39:01','2023-05-17 10:39:01');

/*Table structure for table `cheliang` */

DROP TABLE IF EXISTS `cheliang`;

CREATE TABLE `cheliang` (
  `id` int(11) NOT NULL AUTO_INCREMENT COMMENT '主键 ',
  `cheliang_uuid_number` varchar(200) DEFAULT NULL COMMENT '车辆编号',
  `cheliang_name` varchar(200) DEFAULT NULL COMMENT '车辆名称  Search111 ',
  `cheliang_types` int(11) DEFAULT NULL COMMENT '车辆类型 Search111',
  `zhuangtai_types` int(11) DEFAULT NULL COMMENT '车辆状态 Search111',
  `cheliang_content` longtext COMMENT '车辆详情',
  `insert_time` timestamp NULL DEFAULT NULL COMMENT '录入时间',
  `create_time` timestamp NULL DEFAULT NULL COMMENT '创建时间',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=15 DEFAULT CHARSET=utf8 COMMENT='车辆';

/*Data for the table `cheliang` */

insert  into `cheliang`(`id`,`cheliang_uuid_number`,`cheliang_name`,`cheliang_types`,`zhuangtai_types`,`cheliang_content`,`insert_time`,`create_time`) values (1,'1684291141386','车辆名称1',2,1,'车辆详情1','2023-05-17 10:39:01','2023-05-17 10:39:01'),(2,'1684291141385','车辆名称2',2,3,'车辆详情2','2023-05-17 10:39:01','2023-05-17 10:39:01'),(3,'1684291141442','车辆名称3',1,3,'车辆详情3','2023-05-17 10:39:01','2023-05-17 10:39:01'),(4,'1684291141389','车辆名称4',2,1,'车辆详情4','2023-05-17 10:39:01','2023-05-17 10:39:01'),(5,'1684291141397','车辆名称5',3,2,'车辆详情5','2023-05-17 10:39:01','2023-05-17 10:39:01'),(6,'1684291141449','车辆名称6',3,1,'车辆详情6','2023-05-17 10:39:01','2023-05-17 10:39:01'),(7,'1684291141449','车辆名称7',2,2,'车辆详情7','2023-05-17 10:39:01','2023-05-17 10:39:01'),(8,'1684291141390','车辆名称8',2,2,'车辆详情8','2023-05-17 10:39:01','2023-05-17 10:39:01'),(9,'1684291141388','车辆名称9',1,1,'车辆详情9','2023-05-17 10:39:01','2023-05-17 10:39:01'),(10,'1684291141469','车辆名称10',3,3,'车辆详情10','2023-05-17 10:39:01','2023-05-17 10:39:01'),(11,'1684291141393','车辆名称11',3,1,'车辆详情11','2023-05-17 10:39:01','2023-05-17 10:39:01'),(12,'1684291141381','车辆名称12',1,2,'车辆详情12','2023-05-17 10:39:01','2023-05-17 10:39:01'),(13,'1684291141396','车辆名称13',1,1,'车辆详情13','2023-05-17 10:39:01','2023-05-17 10:39:01'),(14,'1684291141415','车辆名称14',1,1,'<p>车辆详情14</p>','2023-05-17 10:39:01','2023-05-17 10:39:01');

/*Table structure for table `config` */

DROP TABLE IF EXISTS `config`;

CREATE TABLE `config` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `name` varchar(100) DEFAULT NULL COMMENT '配置参数名称',
  `value` varchar(100) DEFAULT NULL COMMENT '配置参数值',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8 COMMENT='配置文件';

/*Data for the table `config` */

insert  into `config`(`id`,`name`,`value`) values (1,'轮播图1','upload/config1.jpg'),(2,'轮播图2','upload/config2.jpg'),(3,'轮播图3','upload/config3.jpg');

/*Table structure for table `dictionary` */

DROP TABLE IF EXISTS `dictionary`;

CREATE TABLE `dictionary` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `dic_code` varchar(200) DEFAULT NULL COMMENT '字段',
  `dic_name` varchar(200) DEFAULT NULL COMMENT '字段名',
  `code_index` int(11) DEFAULT NULL COMMENT '编码',
  `index_name` varchar(200) DEFAULT NULL COMMENT '编码名字  Search111 ',
  `super_id` int(11) DEFAULT NULL COMMENT '父字段id',
  `beizhu` varchar(200) DEFAULT NULL COMMENT '备注',
  `create_time` timestamp NULL DEFAULT NULL COMMENT '创建时间',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=67 DEFAULT CHARSET=utf8 COMMENT='字典';

/*Data for the table `dictionary` */

insert  into `dictionary`(`id`,`dic_code`,`dic_name`,`code_index`,`index_name`,`super_id`,`beizhu`,`create_time`) values (38,'cheliang_types','车辆类型',1,'车辆类型1',NULL,NULL,'2023-05-17 10:19:46'),(39,'cheliang_types','车辆类型',2,'车辆类型2',NULL,NULL,'2023-05-17 10:19:46'),(40,'cheliang_types','车辆类型',3,'车辆类型3',NULL,NULL,'2023-05-17 10:19:46'),(41,'zhuangtai_types','车辆状态',1,'空闲',NULL,NULL,'2023-05-17 10:19:46'),(42,'zhuangtai_types','车辆状态',2,'使用中',NULL,NULL,'2023-05-17 10:19:46'),(43,'zhuangtai_types','车辆状态',3,'维修中',NULL,NULL,'2023-05-17 10:19:46'),(44,'siji_types','司机类型',1,'司机类型1',NULL,NULL,'2023-05-17 10:19:46'),(45,'siji_types','司机类型',2,'司机类型2',NULL,NULL,'2023-05-17 10:19:46'),(46,'siji_types','司机类型',3,'司机类型3',NULL,NULL,'2023-05-17 10:19:46'),(47,'shangxia_types','上下架',1,'上架',NULL,NULL,'2023-05-17 10:19:47'),(48,'shangxia_types','上下架',2,'下架',NULL,NULL,'2023-05-17 10:19:47'),(49,'shangpin_types','商品类型',1,'商品类型1',NULL,NULL,'2023-05-17 10:19:47'),(50,'shangpin_types','商品类型',2,'商品类型2',NULL,NULL,'2023-05-17 10:19:47'),(51,'shangpin_types','商品类型',3,'商品类型3',NULL,NULL,'2023-05-17 10:19:47'),(52,'shangpin_collection_types','收藏表类型',1,'收藏',NULL,NULL,'2023-05-17 10:19:47'),(53,'shangpin_order_types','订单类型',101,'已支付',NULL,NULL,'2023-05-17 10:19:47'),(54,'shangpin_order_types','订单类型',102,'已退款',NULL,NULL,'2023-05-17 10:19:47'),(55,'shangpin_order_types','订单类型',103,'已发货',NULL,NULL,'2023-05-17 10:19:47'),(56,'shangpin_order_types','订单类型',104,'已收货',NULL,NULL,'2023-05-17 10:19:47'),(57,'shangpin_order_types','订单类型',105,'已评价',NULL,NULL,'2023-05-17 10:19:47'),(58,'shangpin_order_payment_types','订单支付类型',1,'余额',NULL,NULL,'2023-05-17 10:19:47'),(59,'isdefault_types','是否默认地址',1,'否',NULL,NULL,'2023-05-17 10:19:47'),(60,'isdefault_types','是否默认地址',2,'是',NULL,NULL,'2023-05-17 10:19:47'),(61,'news_types','公告类型',1,'公告类型1',NULL,NULL,'2023-05-17 10:19:47'),(62,'news_types','公告类型',2,'公告类型2',NULL,NULL,'2023-05-17 10:19:47'),(63,'sex_types','性别类型',1,'男',NULL,NULL,'2023-05-17 10:19:47'),(64,'sex_types','性别类型',2,'女',NULL,NULL,'2023-05-17 10:19:47'),(65,'forum_state_types','帖子状态',1,'发帖',NULL,NULL,'2023-05-17 10:19:47'),(66,'forum_state_types','帖子状态',2,'回帖',NULL,NULL,'2023-05-17 10:19:47');

/*Table structure for table `forum` */

DROP TABLE IF EXISTS `forum`;

CREATE TABLE `forum` (
  `id` int(11) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `forum_name` varchar(200) DEFAULT NULL COMMENT '帖子标题  Search111 ',
  `yonghu_id` int(11) DEFAULT NULL COMMENT '用户',
  `siji_id` int(11) DEFAULT NULL COMMENT '司机',
  `users_id` int(11) DEFAULT NULL COMMENT '管理员',
  `forum_content` longtext COMMENT '发布内容',
  `super_ids` int(11) DEFAULT NULL COMMENT '父id',
  `forum_state_types` int(11) DEFAULT NULL COMMENT '帖子状态',
  `insert_time` timestamp NULL DEFAULT NULL COMMENT '发帖时间',
  `update_time` timestamp NULL DEFAULT NULL COMMENT '修改时间',
  `create_time` timestamp NULL DEFAULT NULL COMMENT '创建时间 show2',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=18 DEFAULT CHARSET=utf8 COMMENT='论坛';

/*Data for the table `forum` */

insert  into `forum`(`id`,`forum_name`,`yonghu_id`,`siji_id`,`users_id`,`forum_content`,`super_ids`,`forum_state_types`,`insert_time`,`update_time`,`create_time`) values (1,'帖子标题1',3,NULL,NULL,'发布内容1',283,1,'2023-05-17 10:39:01','2023-05-17 10:39:01','2023-05-17 10:39:01'),(2,'帖子标题2',1,NULL,NULL,'发布内容2',453,1,'2023-05-17 10:39:01','2023-05-17 10:39:01','2023-05-17 10:39:01'),(3,'帖子标题3',2,NULL,NULL,'发布内容3',480,1,'2023-05-17 10:39:01','2023-05-17 10:39:01','2023-05-17 10:39:01'),(4,'帖子标题4',2,NULL,NULL,'发布内容4',196,1,'2023-05-17 10:39:01','2023-05-17 10:39:01','2023-05-17 10:39:01'),(5,'帖子标题5',3,NULL,NULL,'发布内容5',399,1,'2023-05-17 10:39:01','2023-05-17 10:39:01','2023-05-17 10:39:01'),(6,'帖子标题6',3,NULL,NULL,'发布内容6',384,1,'2023-05-17 10:39:01','2023-05-17 10:39:01','2023-05-17 10:39:01'),(7,'帖子标题7',3,NULL,NULL,'发布内容7',315,1,'2023-05-17 10:39:01','2023-05-17 10:39:01','2023-05-17 10:39:01'),(8,'帖子标题8',3,NULL,NULL,'发布内容8',186,1,'2023-05-17 10:39:01','2023-05-17 10:39:01','2023-05-17 10:39:01'),(9,'帖子标题9',3,NULL,NULL,'发布内容9',406,1,'2023-05-17 10:39:01','2023-05-17 10:39:01','2023-05-17 10:39:01'),(10,'帖子标题10',2,NULL,NULL,'发布内容10',476,1,'2023-05-17 10:39:01','2023-05-17 10:39:01','2023-05-17 10:39:01'),(11,'帖子标题11',2,NULL,NULL,'发布内容11',118,1,'2023-05-17 10:39:01','2023-05-17 10:39:01','2023-05-17 10:39:01'),(12,'帖子标题12',2,NULL,NULL,'发布内容12',25,1,'2023-05-17 10:39:01','2023-05-17 10:39:01','2023-05-17 10:39:01'),(13,'帖子标题13',3,NULL,NULL,'发布内容13',425,1,'2023-05-17 10:39:01','2023-05-17 10:39:01','2023-05-17 10:39:01'),(14,'帖子标题14',2,NULL,NULL,'发布内容14',115,1,'2023-05-17 10:39:01','2023-05-17 10:39:01','2023-05-17 10:39:01'),(15,NULL,NULL,1,NULL,'11111111111111111',14,2,'2023-05-17 13:25:01',NULL,'2023-05-17 13:25:01'),(16,NULL,NULL,NULL,1,'22222222222222',14,2,'2023-05-17 13:27:16',NULL,'2023-05-17 13:27:16'),(17,NULL,1,NULL,NULL,'33333333333333333333',14,2,'2023-05-17 13:28:07',NULL,'2023-05-17 13:28:07');

/*Table structure for table `news` */

DROP TABLE IF EXISTS `news`;

CREATE TABLE `news` (
  `id` int(11) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `news_name` varchar(200) DEFAULT NULL COMMENT '公告标题  Search111 ',
  `news_types` int(11) DEFAULT NULL COMMENT '公告类型  Search111 ',
  `news_photo` varchar(200) DEFAULT NULL COMMENT '公告图片',
  `insert_time` timestamp NULL DEFAULT NULL COMMENT '添加时间',
  `news_content` longtext COMMENT '公告详情',
  `create_time` timestamp NULL DEFAULT NULL COMMENT '创建时间 show1 show2 nameShow',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=15 DEFAULT CHARSET=utf8 COMMENT='公告信息';

/*Data for the table `news` */

insert  into `news`(`id`,`news_name`,`news_types`,`news_photo`,`insert_time`,`news_content`,`create_time`) values (1,'公告标题1',2,'upload/news1.jpg','2023-05-17 10:39:01','公告详情1','2023-05-17 10:39:01'),(2,'公告标题2',2,'upload/news2.jpg','2023-05-17 10:39:01','公告详情2','2023-05-17 10:39:01'),(3,'公告标题3',1,'upload/news3.jpg','2023-05-17 10:39:01','公告详情3','2023-05-17 10:39:01'),(4,'公告标题4',1,'upload/news4.jpg','2023-05-17 10:39:01','公告详情4','2023-05-17 10:39:01'),(5,'公告标题5',2,'upload/news5.jpg','2023-05-17 10:39:01','公告详情5','2023-05-17 10:39:01'),(6,'公告标题6',2,'upload/news6.jpg','2023-05-17 10:39:01','公告详情6','2023-05-17 10:39:01'),(7,'公告标题7',1,'upload/news7.jpg','2023-05-17 10:39:01','公告详情7','2023-05-17 10:39:01'),(8,'公告标题8',1,'upload/news8.jpg','2023-05-17 10:39:01','公告详情8','2023-05-17 10:39:01'),(9,'公告标题9',2,'upload/news9.jpg','2023-05-17 10:39:01','公告详情9','2023-05-17 10:39:01'),(10,'公告标题10',1,'upload/news10.jpg','2023-05-17 10:39:01','公告详情10','2023-05-17 10:39:01'),(11,'公告标题11',1,'upload/news11.jpg','2023-05-17 10:39:01','公告详情11','2023-05-17 10:39:01'),(12,'公告标题12',2,'upload/news12.jpg','2023-05-17 10:39:01','公告详情12','2023-05-17 10:39:01'),(13,'公告标题13',1,'upload/news13.jpg','2023-05-17 10:39:01','公告详情13','2023-05-17 10:39:01'),(14,'公告标题14',1,'upload/news14.jpg','2023-05-17 10:39:01','公告详情14','2023-05-17 10:39:01');

/*Table structure for table `shangpin` */

DROP TABLE IF EXISTS `shangpin`;

CREATE TABLE `shangpin` (
  `id` int(11) NOT NULL AUTO_INCREMENT COMMENT '主键 ',
  `shangpin_name` varchar(200) DEFAULT NULL COMMENT '商品名称  Search111 ',
  `shangpin_uuid_number` varchar(200) DEFAULT NULL COMMENT '商品编号',
  `shangpin_photo` varchar(200) DEFAULT NULL COMMENT '商品照片',
  `shangpin_types` int(11) DEFAULT NULL COMMENT '商品类型 Search111',
  `shangpin_kucun_number` int(11) DEFAULT NULL COMMENT '商品库存',
  `shangpin_old_money` decimal(10,2) DEFAULT NULL COMMENT '商品原价 ',
  `shangpin_new_money` decimal(10,2) DEFAULT NULL COMMENT '现价',
  `shangpin_clicknum` int(11) DEFAULT NULL COMMENT '商品热度',
  `shangpin_content` longtext COMMENT '商品介绍 ',
  `shangxia_types` int(11) DEFAULT NULL COMMENT '是否上架 ',
  `data_delete` int(11) DEFAULT NULL COMMENT '逻辑删除',
  `insert_time` timestamp NULL DEFAULT NULL COMMENT '录入时间',
  `create_time` timestamp NULL DEFAULT NULL COMMENT '创建时间  show1 show2 photoShow',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=15 DEFAULT CHARSET=utf8 COMMENT='商品';

/*Data for the table `shangpin` */

insert  into `shangpin`(`id`,`shangpin_name`,`shangpin_uuid_number`,`shangpin_photo`,`shangpin_types`,`shangpin_kucun_number`,`shangpin_old_money`,`shangpin_new_money`,`shangpin_clicknum`,`shangpin_content`,`shangxia_types`,`data_delete`,`insert_time`,`create_time`) values (1,'商品名称1','1684291141418','upload/shangpin1.jpg',2,101,'834.11','195.14',301,'商品介绍1',1,1,'2023-05-17 10:39:01','2023-05-17 10:39:01'),(2,'商品名称2','1684291141464','upload/shangpin2.jpg',1,102,'964.86','262.72',325,'商品介绍2',1,1,'2023-05-17 10:39:01','2023-05-17 10:39:01'),(3,'商品名称3','1684291141420','upload/shangpin3.jpg',2,103,'829.27','385.89',8,'商品介绍3',1,1,'2023-05-17 10:39:01','2023-05-17 10:39:01'),(4,'商品名称4','1684291141433','upload/shangpin4.jpg',3,104,'947.36','44.56',160,'商品介绍4',1,1,'2023-05-17 10:39:01','2023-05-17 10:39:01'),(5,'商品名称5','1684291141387','upload/shangpin5.jpg',2,105,'932.07','307.75',296,'商品介绍5',1,1,'2023-05-17 10:39:01','2023-05-17 10:39:01'),(6,'商品名称6','1684291141422','upload/shangpin6.jpg',2,106,'708.62','48.85',426,'商品介绍6',1,1,'2023-05-17 10:39:01','2023-05-17 10:39:01'),(7,'商品名称7','1684291141458','upload/shangpin7.jpg',2,107,'706.16','125.47',49,'商品介绍7',1,1,'2023-05-17 10:39:01','2023-05-17 10:39:01'),(8,'商品名称8','1684291141460','upload/shangpin8.jpg',1,108,'568.77','142.52',369,'商品介绍8',1,1,'2023-05-17 10:39:01','2023-05-17 10:39:01'),(9,'商品名称9','1684291141407','upload/shangpin9.jpg',1,109,'987.08','24.92',32,'商品介绍9',1,1,'2023-05-17 10:39:01','2023-05-17 10:39:01'),(10,'商品名称10','1684291141421','upload/shangpin10.jpg',2,1010,'932.70','226.00',347,'商品介绍10',1,1,'2023-05-17 10:39:01','2023-05-17 10:39:01'),(11,'商品名称11','1684291141449','upload/shangpin11.jpg',1,1011,'631.62','321.56',418,'商品介绍11',1,1,'2023-05-17 10:39:01','2023-05-17 10:39:01'),(12,'商品名称12','1684291141479','upload/shangpin12.jpg',1,1011,'989.82','212.94',86,'商品介绍12',1,1,'2023-05-17 10:39:01','2023-05-17 10:39:01'),(13,'商品名称13','1684291141408','upload/shangpin13.jpg',1,1012,'845.11','378.66',202,'商品介绍13',1,1,'2023-05-17 10:39:01','2023-05-17 10:39:01'),(14,'商品名称14','1684291141449','upload/shangpin14.jpg',1,1014,'733.64','359.84',219,'商品介绍14',1,1,'2023-05-17 10:39:01','2023-05-17 10:39:01');

/*Table structure for table `shangpin_collection` */

DROP TABLE IF EXISTS `shangpin_collection`;

CREATE TABLE `shangpin_collection` (
  `id` int(11) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `shangpin_id` int(11) DEFAULT NULL COMMENT '商品',
  `yonghu_id` int(11) DEFAULT NULL COMMENT '用户',
  `shangpin_collection_types` int(11) DEFAULT NULL COMMENT '类型',
  `insert_time` timestamp NULL DEFAULT NULL COMMENT '收藏时间',
  `create_time` timestamp NULL DEFAULT NULL COMMENT '创建时间 show3 photoShow',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=15 DEFAULT CHARSET=utf8 COMMENT='商品收藏';

/*Data for the table `shangpin_collection` */

insert  into `shangpin_collection`(`id`,`shangpin_id`,`yonghu_id`,`shangpin_collection_types`,`insert_time`,`create_time`) values (1,1,3,1,'2023-05-17 10:39:01','2023-05-17 10:39:01'),(2,2,3,1,'2023-05-17 10:39:01','2023-05-17 10:39:01'),(3,3,2,1,'2023-05-17 10:39:01','2023-05-17 10:39:01'),(4,4,3,1,'2023-05-17 10:39:01','2023-05-17 10:39:01'),(5,5,2,1,'2023-05-17 10:39:01','2023-05-17 10:39:01'),(6,6,3,1,'2023-05-17 10:39:01','2023-05-17 10:39:01'),(7,7,2,1,'2023-05-17 10:39:01','2023-05-17 10:39:01'),(8,8,2,1,'2023-05-17 10:39:01','2023-05-17 10:39:01'),(9,9,1,1,'2023-05-17 10:39:01','2023-05-17 10:39:01'),(10,10,1,1,'2023-05-17 10:39:01','2023-05-17 10:39:01'),(11,11,2,1,'2023-05-17 10:39:01','2023-05-17 10:39:01'),(14,14,1,1,'2023-05-17 10:39:01','2023-05-17 10:39:01');

/*Table structure for table `shangpin_commentback` */

DROP TABLE IF EXISTS `shangpin_commentback`;

CREATE TABLE `shangpin_commentback` (
  `id` int(11) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `shangpin_id` int(11) DEFAULT NULL COMMENT '商品',
  `yonghu_id` int(11) DEFAULT NULL COMMENT '用户',
  `shangpin_commentback_text` longtext COMMENT '评价内容',
  `insert_time` timestamp NULL DEFAULT NULL COMMENT '评价时间',
  `reply_text` longtext COMMENT '回复内容',
  `update_time` timestamp NULL DEFAULT NULL COMMENT '回复时间',
  `create_time` timestamp NULL DEFAULT NULL COMMENT '创建时间 show3 listShow',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=16 DEFAULT CHARSET=utf8 COMMENT='商品评价';

/*Data for the table `shangpin_commentback` */

insert  into `shangpin_commentback`(`id`,`shangpin_id`,`yonghu_id`,`shangpin_commentback_text`,`insert_time`,`reply_text`,`update_time`,`create_time`) values (1,1,3,'评价内容1','2023-05-17 10:39:01','回复信息1','2023-05-17 10:39:01','2023-05-17 10:39:01'),(2,2,1,'评价内容2','2023-05-17 10:39:01','回复信息2','2023-05-17 10:39:01','2023-05-17 10:39:01'),(3,3,2,'评价内容3','2023-05-17 10:39:01','回复信息3','2023-05-17 10:39:01','2023-05-17 10:39:01'),(4,4,3,'评价内容4','2023-05-17 10:39:01','回复信息4','2023-05-17 10:39:01','2023-05-17 10:39:01'),(5,5,1,'评价内容5','2023-05-17 10:39:01','回复信息5','2023-05-17 10:39:01','2023-05-17 10:39:01'),(6,6,1,'评价内容6','2023-05-17 10:39:01','回复信息6','2023-05-17 10:39:01','2023-05-17 10:39:01'),(7,7,3,'评价内容7','2023-05-17 10:39:01','回复信息7','2023-05-17 10:39:01','2023-05-17 10:39:01'),(8,8,2,'评价内容8','2023-05-17 10:39:01','回复信息8','2023-05-17 10:39:01','2023-05-17 10:39:01'),(9,9,3,'评价内容9','2023-05-17 10:39:01','回复信息9','2023-05-17 10:39:01','2023-05-17 10:39:01'),(10,10,1,'评价内容10','2023-05-17 10:39:01','回复信息10','2023-05-17 10:39:01','2023-05-17 10:39:01'),(11,11,3,'评价内容11','2023-05-17 10:39:01','回复信息11','2023-05-17 10:39:01','2023-05-17 10:39:01'),(12,12,2,'评价内容12','2023-05-17 10:39:01','回复信息12','2023-05-17 10:39:01','2023-05-17 10:39:01'),(13,13,1,'评价内容13','2023-05-17 10:39:01','回复信息13','2023-05-17 10:39:01','2023-05-17 10:39:01'),(14,14,1,'评价内容14','2023-05-17 10:39:01','回复信息14','2023-05-17 10:39:01','2023-05-17 10:39:01');

/*Table structure for table `shangpin_order` */

DROP TABLE IF EXISTS `shangpin_order`;

CREATE TABLE `shangpin_order` (
  `id` int(11) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `shangpin_order_uuid_number` varchar(200) DEFAULT NULL COMMENT '订单号 Search111 ',
  `address_id` int(11) DEFAULT NULL COMMENT '收货地址 ',
  `shangpin_id` int(11) DEFAULT NULL COMMENT '商品',
  `yonghu_id` int(11) DEFAULT NULL COMMENT '用户',
  `buy_number` int(11) DEFAULT NULL COMMENT '购买数量',
  `shangpin_order_true_price` decimal(10,2) DEFAULT NULL COMMENT '实付价格',
  `shangpin_order_courier_name` varchar(200) DEFAULT NULL COMMENT '物流公司',
  `shangpin_order_courier_number` varchar(200) DEFAULT NULL COMMENT '订单物流单号',
  `shangpin_order_types` int(11) DEFAULT NULL COMMENT '订单类型 Search111 ',
  `shangpin_order_payment_types` int(11) DEFAULT NULL COMMENT '支付类型',
  `insert_time` timestamp NULL DEFAULT NULL COMMENT '订单创建时间',
  `create_time` timestamp NULL DEFAULT NULL COMMENT '创建时间 show3 listShow',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8 COMMENT='商品订单';

/*Data for the table `shangpin_order` */

insert  into `shangpin_order`(`id`,`shangpin_order_uuid_number`,`address_id`,`shangpin_id`,`yonghu_id`,`buy_number`,`shangpin_order_true_price`,`shangpin_order_courier_name`,`shangpin_order_courier_number`,`shangpin_order_types`,`shangpin_order_payment_types`,`insert_time`,`create_time`) values (1,'1684295439334',10,12,1,1,'212.94','JD','2134684768465',103,1,'2023-05-17 11:50:39','2023-05-17 11:50:39'),(2,'1684301148499',9,13,1,1,'378.66','JD','1231241365342341',105,1,'2023-05-17 13:25:49','2023-05-17 13:25:49'),(3,'1684301332669',10,8,1,1,'142.52',NULL,NULL,102,1,'2023-05-17 13:28:53','2023-05-17 13:28:53');

/*Table structure for table `siji` */

DROP TABLE IF EXISTS `siji`;

CREATE TABLE `siji` (
  `id` int(11) NOT NULL AUTO_INCREMENT COMMENT '主键 ',
  `username` varchar(200) DEFAULT NULL COMMENT '账户 ',
  `password` varchar(200) DEFAULT NULL COMMENT '密码 ',
  `siji_name` varchar(200) DEFAULT NULL COMMENT '司机名称 Search111 ',
  `siji_phone` varchar(200) DEFAULT NULL COMMENT '联系方式',
  `siji_email` varchar(200) DEFAULT NULL COMMENT '邮箱',
  `siji_photo` varchar(200) DEFAULT NULL COMMENT '司机头像 ',
  `siji_types` int(11) DEFAULT NULL COMMENT '司机类型 Search111',
  `siji_content` longtext COMMENT '司机介绍 ',
  `data_delete` int(11) DEFAULT NULL COMMENT '逻辑删除',
  `create_time` timestamp NULL DEFAULT NULL COMMENT '创建时间',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8 COMMENT='司机';

/*Data for the table `siji` */

insert  into `siji`(`id`,`username`,`password`,`siji_name`,`siji_phone`,`siji_email`,`siji_photo`,`siji_types`,`siji_content`,`data_delete`,`create_time`) values (1,'a1','123456','司机名称1','17703786901','1@qq.com','upload/siji1.jpg',3,'司机介绍1',1,'2023-05-17 10:39:01'),(2,'a2','123456','司机名称2','17703786902','2@qq.com','upload/siji2.jpg',3,'司机介绍2',1,'2023-05-17 10:39:01'),(3,'a3','123456','司机名称3','17703786903','3@qq.com','upload/siji3.jpg',2,'司机介绍3',1,'2023-05-17 10:39:01');

/*Table structure for table `token` */

DROP TABLE IF EXISTS `token`;

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

/*Data for the table `token` */

insert  into `token`(`id`,`userid`,`username`,`tablename`,`role`,`token`,`addtime`,`expiratedtime`) values (1,1,'a1','yonghu','用户','egjo3oai1dajelf87toagvs88d0ex1ny','2023-05-17 11:50:29','2023-05-17 14:31:24'),(2,1,'a1','siji','司机','wsa41j8mhd5cb1yewwul5dy4051eyvym','2023-05-17 11:55:17','2023-05-17 14:24:15'),(3,1,'admin','users','管理员','u2hm1rrnyt4dnvdmnovsrr9zfqwqiya0','2023-05-17 13:15:28','2023-05-17 14:30:44');

/*Table structure for table `users` */

DROP TABLE IF EXISTS `users`;

CREATE TABLE `users` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `username` varchar(100) NOT NULL COMMENT '用户名',
  `password` varchar(100) NOT NULL COMMENT '密码',
  `role` varchar(100) DEFAULT '管理员' COMMENT '角色',
  `addtime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '新增时间',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8 COMMENT='管理员';

/*Data for the table `users` */

insert  into `users`(`id`,`username`,`password`,`role`,`addtime`) values (1,'admin','admin','管理员','2023-05-17 10:19:46');

/*Table structure for table `wuliu` */

DROP TABLE IF EXISTS `wuliu`;

CREATE TABLE `wuliu` (
  `id` int(11) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `yonghu_id` int(11) DEFAULT NULL COMMENT '用户',
  `wuliu_courier_name` varchar(200) DEFAULT NULL COMMENT '物流公司',
  `wuliu_courier_number` varchar(200) DEFAULT NULL COMMENT '物流单号',
  `wuliu_text` longtext COMMENT '物流路线',
  `wuliu_content` longtext COMMENT '物流详情',
  `insert_time` timestamp NULL DEFAULT NULL COMMENT '添加时间',
  `create_time` timestamp NULL DEFAULT NULL COMMENT '创建时间 show3 listShow',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=17 DEFAULT CHARSET=utf8 COMMENT='物流信息';

/*Data for the table `wuliu` */

insert  into `wuliu`(`id`,`yonghu_id`,`wuliu_courier_name`,`wuliu_courier_number`,`wuliu_text`,`wuliu_content`,`insert_time`,`create_time`) values (15,1,'JD','2134684768465','物流路线物流路线物流路线物流路线物流路线物流路线物流','<p><span style=\"color: rgb(96, 98, 102);\">物流详情物流详情物流详情物流详情物流详情物流详情物流详情物流详情物流详情</span></p>','2023-05-17 13:24:47','2023-05-17 13:24:47'),(16,1,'JD','1231241365342341','123','<p>123</p>','2023-05-17 13:26:26','2023-05-17 13:26:26');

/*Table structure for table `yonghu` */

DROP TABLE IF EXISTS `yonghu`;

CREATE TABLE `yonghu` (
  `id` int(11) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `username` varchar(200) DEFAULT NULL COMMENT '账户',
  `password` varchar(200) DEFAULT NULL COMMENT '密码',
  `yonghu_name` varchar(200) DEFAULT NULL COMMENT '用户姓名 Search111 ',
  `yonghu_phone` varchar(200) DEFAULT NULL COMMENT '联系方式',
  `yonghu_id_number` varchar(200) DEFAULT NULL COMMENT '身份证号',
  `yonghu_photo` varchar(200) DEFAULT NULL COMMENT '用户头像',
  `sex_types` int(11) DEFAULT NULL COMMENT '性别 Search111',
  `yonghu_email` varchar(200) DEFAULT NULL COMMENT '电子邮箱',
  `new_money` decimal(10,2) DEFAULT NULL COMMENT '余额 ',
  `data_delete` int(11) DEFAULT NULL COMMENT '逻辑删除',
  `create_time` timestamp NULL DEFAULT NULL COMMENT '创建时间',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8 COMMENT='用户';

/*Data for the table `yonghu` */

insert  into `yonghu`(`id`,`username`,`password`,`yonghu_name`,`yonghu_phone`,`yonghu_id_number`,`yonghu_photo`,`sex_types`,`yonghu_email`,`new_money`,`data_delete`,`create_time`) values (1,'a1','123456','用户姓名1','17703786901','410224199010102001','upload/yonghu1.jpg',1,'1@qq.com','3000.34',1,'2023-05-17 10:39:01'),(2,'a2','123456','用户姓名2','17703786902','410224199010102002','upload/yonghu2.jpg',2,'2@qq.com','772.10',1,'2023-05-17 10:39:01'),(3,'a3','123456','用户姓名3','17703786903','410224199010102003','upload/yonghu3.jpg',2,'3@qq.com','427.62',1,'2023-05-17 10:39:01');

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;
