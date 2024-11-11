/*
SQLyog Ultimate v11.3 (64 bit)
MySQL - 5.7.32-log : Database - jifenguanlixitong
*********************************************************************
*/

/*!40101 SET NAMES utf8 */;

/*!40101 SET SQL_MODE=''*/;

/*!40014 SET @OLD_UNIQUE_CHECKS=@@UNIQUE_CHECKS, UNIQUE_CHECKS=0 */;
/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;
/*!40111 SET @OLD_SQL_NOTES=@@SQL_NOTES, SQL_NOTES=0 */;
CREATE DATABASE /*!32312 IF NOT EXISTS*/`jifenguanlixitong` /*!40100 DEFAULT CHARACTER SET utf8 */;

USE `jifenguanlixitong`;

/*Table structure for table `config` */

DROP TABLE IF EXISTS `config`;

CREATE TABLE `config` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `name` varchar(100) NOT NULL COMMENT '配置参数名称',
  `value` varchar(100) DEFAULT NULL COMMENT '配置参数值',
  PRIMARY KEY (`id`) USING BTREE
) ENGINE=InnoDB DEFAULT CHARSET=utf8 ROW_FORMAT=DYNAMIC COMMENT='配置文件';

/*Data for the table `config` */

/*Table structure for table `dictionary` */

DROP TABLE IF EXISTS `dictionary`;

CREATE TABLE `dictionary` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `dic_code` varchar(200) DEFAULT NULL COMMENT '字段',
  `dic_name` varchar(200) DEFAULT NULL COMMENT '字段名',
  `code_index` int(11) DEFAULT NULL COMMENT '编码',
  `index_name` varchar(200) DEFAULT NULL COMMENT '编码名字  Search111 ',
  `super_id` int(11) DEFAULT NULL COMMENT '父字段id',
  `create_time` timestamp NULL DEFAULT NULL COMMENT '创建时间',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=14 DEFAULT CHARSET=utf8 COMMENT='字典表';

/*Data for the table `dictionary` */

insert  into `dictionary`(`id`,`dic_code`,`dic_name`,`code_index`,`index_name`,`super_id`,`create_time`) values (1,'sex_types','性别类型名称',1,'男',NULL,'2021-05-03 20:05:58'),(2,'sex_types','性别类型名称',2,'女',NULL,'2021-05-03 20:05:58'),(3,'jifen_jilu_types','积分记录类型名称',1,'使用',NULL,'2021-05-03 20:05:58'),(4,'jifen_jilu_types','积分记录类型名称',2,'增加',NULL,'2021-05-03 20:05:58'),(5,'goods_types','物资类型名称',1,'粮油',NULL,'2021-05-03 20:05:58'),(6,'goods_types','物资类型名称',2,'果蔬',NULL,'2021-05-03 20:05:58'),(7,'goods_types','物资类型名称',3,'花卉',NULL,'2021-05-03 20:05:58'),(8,'goods_types','物资类型名称',4,'林产品',NULL,'2021-05-03 20:05:58'),(9,'goods_types','物资类型名称',5,'畜禽产品',NULL,'2021-05-03 20:05:58'),(10,'goods_types','物资类型名称',6,'水产品',NULL,'2021-05-03 20:05:58'),(11,'gonggao_types','公告类型名称',1,'日常公告',NULL,'2021-05-03 20:05:58'),(12,'gonggao_types','公告类型名称',2,'紧急公告',NULL,'2021-05-03 20:05:58'),(13,'goods_types','物资类型名称',7,'日用品',NULL,'2021-05-04 10:44:33');

/*Table structure for table `gonggao` */

DROP TABLE IF EXISTS `gonggao`;

CREATE TABLE `gonggao` (
  `id` int(11) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `gonggao_name` varchar(200) DEFAULT NULL COMMENT '公告名称 Search111 ',
  `gonggao_types` int(11) DEFAULT NULL COMMENT '公告类型 Search111 ',
  `insert_time` timestamp NULL DEFAULT NULL COMMENT '公告时间',
  `gonggao_content` text COMMENT '公告详情',
  `create_time` timestamp NULL DEFAULT NULL COMMENT '创建时间',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8 COMMENT='公告';

/*Data for the table `gonggao` */

insert  into `gonggao`(`id`,`gonggao_name`,`gonggao_types`,`insert_time`,`gonggao_content`,`create_time`) values (1,'公告1',1,'2021-05-04 10:36:37','公告1的详情\r\n','2021-05-04 10:36:37'),(2,'公告2',2,'2021-05-04 10:36:48','公告2的详情\r\n','2021-05-04 10:36:48'),(3,'公告3',1,'2021-05-04 10:43:52','公告3的详情\r\n','2021-05-04 10:43:52');

/*Table structure for table `goods` */

DROP TABLE IF EXISTS `goods`;

CREATE TABLE `goods` (
  `id` int(11) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `goods_name` varchar(200) DEFAULT NULL COMMENT '商品名字 Search111 ',
  `goods_types` int(11) DEFAULT NULL COMMENT '商品种类  Search111 ',
  `goods_number` int(11) DEFAULT NULL COMMENT '商品数量  Search111 ',
  `goods_photo` varchar(200) DEFAULT NULL COMMENT '商品图片',
  `danwei` varchar(200) DEFAULT NULL COMMENT '单位',
  `danjia` decimal(10,2) DEFAULT NULL COMMENT '价格 Search111 ',
  `suoxu_jifen` int(11) DEFAULT NULL COMMENT '所需积分 Search111 ',
  `goods_content` text COMMENT '商品详情',
  `flag` int(11) DEFAULT NULL COMMENT '是否删除',
  `create_time` timestamp NULL DEFAULT NULL COMMENT '创建时间',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=5 DEFAULT CHARSET=utf8 COMMENT='商品';

/*Data for the table `goods` */

insert  into `goods`(`id`,`goods_name`,`goods_types`,`goods_number`,`goods_photo`,`danwei`,`danjia`,`suoxu_jifen`,`goods_content`,`flag`,`create_time`) values (1,'鞋子',2,100,'http://localhost:8080/jifenguanlixitong/file/download?fileName=1620095539712.webp','个','100.00',10,'鞋子的详情\r\n',1,'2021-05-04 10:35:06'),(2,'笔记本散热器',3,119,'http://localhost:8080/jifenguanlixitong/file/download?fileName=1620095713388.webp','个','120.00',15,'硕大的\r\n',1,'2021-05-04 10:35:43'),(3,'电脑主机',4,99,'http://localhost:8080/jifenguanlixitong/file/download?fileName=1620096124211.webp','台','100.00',30,'电脑主机的详情\r\n',1,'2021-05-04 10:42:29'),(4,'茉莉花茶',7,99,'http://localhost:8080/jifenguanlixitong/file/download?fileName=1620096704861.webp','瓶','20.00',21,'茉莉茶的详情\r\n',1,'2021-05-04 10:52:19');

/*Table structure for table `goods_duihuan` */

DROP TABLE IF EXISTS `goods_duihuan`;

CREATE TABLE `goods_duihuan` (
  `id` int(11) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `huiyuan_id` int(11) DEFAULT NULL COMMENT '会员',
  `goods_id` int(11) DEFAULT NULL COMMENT '商品',
  `yonghu_id` int(11) DEFAULT NULL COMMENT '操作人',
  `insert_time` timestamp NULL DEFAULT NULL COMMENT '兑换时间',
  `create_time` timestamp NULL DEFAULT NULL COMMENT '创建时间',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8 COMMENT='商品兑换';

/*Data for the table `goods_duihuan` */

insert  into `goods_duihuan`(`id`,`huiyuan_id`,`goods_id`,`yonghu_id`,`insert_time`,`create_time`) values (1,3,2,0,'2021-05-04 10:36:06','2021-05-04 10:36:06'),(2,4,3,0,'2021-05-04 10:43:08','2021-05-04 10:43:08'),(3,5,4,3,'2021-05-04 10:52:36','2021-05-04 10:52:36');

/*Table structure for table `huiyuan` */

DROP TABLE IF EXISTS `huiyuan`;

CREATE TABLE `huiyuan` (
  `id` int(11) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `huiyuan_name` varchar(200) DEFAULT NULL COMMENT '会员姓名 Search111 ',
  `huiyuan_phone` varchar(200) DEFAULT NULL COMMENT '会员手机号 Search111 ',
  `huiyuan_id_number` varchar(200) DEFAULT NULL COMMENT '会员身份证号 Search111 ',
  `huiyuan_photo` varchar(200) DEFAULT NULL COMMENT '会员照片',
  `sex_types` int(11) DEFAULT NULL COMMENT '性别',
  `jifen` int(11) DEFAULT NULL COMMENT '积分 Search111 ',
  `create_time` timestamp NULL DEFAULT NULL COMMENT '创建时间',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=6 DEFAULT CHARSET=utf8 COMMENT='会员';

/*Data for the table `huiyuan` */

insert  into `huiyuan`(`id`,`huiyuan_name`,`huiyuan_phone`,`huiyuan_id_number`,`huiyuan_photo`,`sex_types`,`jifen`,`create_time`) values (1,'张11','17703786911','410224199610232011','http://localhost:8080/jifenguanlixitong/file/download?fileName=1620094775880.jpg',1,1,'2021-05-04 10:20:06'),(2,'张22','17703786922','410224199610232022','http://localhost:8080/jifenguanlixitong/file/download?fileName=1620094822860.jpg',1,0,'2021-05-04 10:20:27'),(3,'张33','17703786933','410224199610232033','http://localhost:8080/jifenguanlixitong/file/download?fileName=1620094843063.jpg',1,24,'2021-05-04 10:20:48'),(4,'张44','17703786944','410224199610232044','http://localhost:8080/jifenguanlixitong/file/download?fileName=1620095950351.jpg',2,50,'2021-05-04 10:39:14'),(5,'张55','17703786955','410224199610232055','http://localhost:8080/jifenguanlixitong/file/download?fileName=1620096493765.webp',1,12,'2021-05-04 10:48:16');

/*Table structure for table `jifen_jilu` */

DROP TABLE IF EXISTS `jifen_jilu`;

CREATE TABLE `jifen_jilu` (
  `id` int(11) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `huiyuan_id` int(11) DEFAULT NULL COMMENT '会员',
  `yonghu_id` int(11) DEFAULT NULL COMMENT '操作人',
  `jifen_jilu_types` int(11) DEFAULT NULL COMMENT '类型',
  `jifen_jilu_jifen` int(11) DEFAULT NULL COMMENT '积分 Search111 ',
  `jifen_jilu_content` text COMMENT '备注',
  `insert_time` timestamp NULL DEFAULT NULL COMMENT '操作时间',
  `create_time` timestamp NULL DEFAULT NULL COMMENT '创建时间',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=8 DEFAULT CHARSET=utf8 COMMENT='积分记录';

/*Data for the table `jifen_jilu` */

insert  into `jifen_jilu`(`id`,`huiyuan_id`,`yonghu_id`,`jifen_jilu_types`,`jifen_jilu_jifen`,`jifen_jilu_content`,`insert_time`,`create_time`) values (1,3,0,1,3,'','2021-05-04 10:25:40','2021-05-04 10:25:40'),(2,3,0,1,15,'购买笔记本散热器使用了15','2021-05-04 10:36:06','2021-05-04 10:36:06'),(3,3,0,2,22,'购买某某某商品 增加22积分\r\n','2021-05-04 10:41:35','2021-05-04 10:41:35'),(4,4,0,1,30,'购买电脑主机使用了30','2021-05-04 10:43:08','2021-05-04 10:43:08'),(5,5,3,2,36,'购买 某某某商品增加30积分\r\n','2021-05-04 10:50:13','2021-05-04 10:50:13'),(6,5,3,1,3,'','2021-05-04 10:50:28','2021-05-04 10:50:28'),(7,5,3,1,21,'购买茉莉花茶使用了21积分','2021-05-04 10:52:36','2021-05-04 10:52:36');

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
  PRIMARY KEY (`id`) USING BTREE
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=utf8 ROW_FORMAT=DYNAMIC COMMENT='token表';

/*Data for the table `token` */

insert  into `token`(`id`,`userid`,`username`,`tablename`,`role`,`token`,`addtime`,`expiratedtime`) values (1,6,'admin','users','管理员','c2f0zn3ln8d6ifsp735epx94384w5zr5','2021-05-04 10:13:37','2021-05-04 11:37:45'),(2,3,'a3','yonghu','用户','ougt6sz682yswy1rta8zpkr1bns0hu17','2021-05-04 10:45:38','2021-05-04 11:45:38');

/*Table structure for table `users` */

DROP TABLE IF EXISTS `users`;

CREATE TABLE `users` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `username` varchar(100) NOT NULL COMMENT '用户名',
  `password` varchar(100) NOT NULL COMMENT '密码',
  `role` varchar(100) DEFAULT '管理员' COMMENT '角色',
  `addtime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '新增时间',
  PRIMARY KEY (`id`) USING BTREE
) ENGINE=InnoDB AUTO_INCREMENT=7 DEFAULT CHARSET=utf8 ROW_FORMAT=DYNAMIC COMMENT='管理员表';

/*Data for the table `users` */

insert  into `users`(`id`,`username`,`password`,`role`,`addtime`) values (6,'admin','123456','管理员','2021-04-27 14:51:13');

/*Table structure for table `yonghu` */

DROP TABLE IF EXISTS `yonghu`;

CREATE TABLE `yonghu` (
  `id` int(11) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `username` varchar(200) DEFAULT NULL COMMENT '账户',
  `password` varchar(200) DEFAULT NULL COMMENT '密码',
  `yonghu_name` varchar(200) DEFAULT NULL COMMENT '员工姓名 Search111 ',
  `yonghu_phone` varchar(200) DEFAULT NULL COMMENT '员工手机号 Search111 ',
  `yonghu_id_number` varchar(200) DEFAULT NULL COMMENT '员工身份证号 Search111 ',
  `yonghu_photo` varchar(200) DEFAULT NULL COMMENT '员工照片',
  `sex_types` int(11) DEFAULT NULL COMMENT '性别',
  `create_time` timestamp NULL DEFAULT NULL COMMENT '创建时间',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8 COMMENT='员工';

/*Data for the table `yonghu` */

insert  into `yonghu`(`id`,`username`,`password`,`yonghu_name`,`yonghu_phone`,`yonghu_id_number`,`yonghu_photo`,`sex_types`,`create_time`) values (1,'a1','123456','张1','17703786901','410224199610232001','http://localhost:8080/jifenguanlixitong/file/download?fileName=1620094728062.jpg',2,'2021-05-04 10:18:49'),(2,'a2','123456','张2','17703786902','410224199610232002','http://localhost:8080/jifenguanlixitong/file/download?fileName=1620094743611.jpg',1,'2021-05-04 10:19:11'),(3,'a3','123456','张三伞三','17703786903','410224199610232003','http://localhost:8080/jifenguanlixitong/file/download?fileName=1620095906300.jpg',1,'2021-05-04 10:38:33');

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;
