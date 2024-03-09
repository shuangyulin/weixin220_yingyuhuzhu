/*
SQLyog Ultimate v11.3 (64 bit)
MySQL - 5.7.32-log : Database - yingyuhuzhuxiaochengxu
*********************************************************************
*/

/*!40101 SET NAMES utf8 */;

/*!40101 SET SQL_MODE=''*/;

/*!40014 SET @OLD_UNIQUE_CHECKS=@@UNIQUE_CHECKS, UNIQUE_CHECKS=0 */;
/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;
/*!40111 SET @OLD_SQL_NOTES=@@SQL_NOTES, SQL_NOTES=0 */;
CREATE DATABASE /*!32312 IF NOT EXISTS*/`yingyuhuzhuxiaochengxu` /*!40100 DEFAULT CHARACTER SET utf8 */;

USE `yingyuhuzhuxiaochengxu`;

/*Table structure for table `chat` */

DROP TABLE IF EXISTS `chat`;

CREATE TABLE `chat` (
  `id` int(11) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `yonghu_id` int(11) DEFAULT NULL COMMENT '提问用户',
  `chat_issue` varchar(200) DEFAULT NULL COMMENT '问题',
  `issue_time` timestamp NULL DEFAULT NULL COMMENT '问题时间 Search111',
  `chat_reply` varchar(200) DEFAULT NULL COMMENT '回复',
  `reply_time` timestamp NULL DEFAULT NULL COMMENT '回复时间 Search111',
  `zhuangtai_types` int(255) DEFAULT NULL COMMENT '状态',
  `chat_types` int(11) DEFAULT NULL COMMENT '数据类型',
  `insert_time` timestamp NULL DEFAULT NULL COMMENT '创建时间',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=utf8 COMMENT='客服聊天';

/*Data for the table `chat` */

insert  into `chat`(`id`,`yonghu_id`,`chat_issue`,`issue_time`,`chat_reply`,`reply_time`,`zhuangtai_types`,`chat_types`,`insert_time`) values (1,1,'112233',NULL,NULL,NULL,1,1,'2022-03-28 09:28:40'),(2,1,'管理在后台可以回复',NULL,NULL,NULL,1,1,'2022-03-28 09:28:52');

/*Table structure for table `config` */

DROP TABLE IF EXISTS `config`;

CREATE TABLE `config` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `name` varchar(100) NOT NULL COMMENT '配置参数名称',
  `value` varchar(100) DEFAULT NULL COMMENT '配置参数值',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8 COMMENT='配置文件';

/*Data for the table `config` */

insert  into `config`(`id`,`name`,`value`) values (1,'轮播图1','http://localhost:8080/yingyuhuzhuxiaochengxu/upload/config1.jpg'),(2,'轮播图2','http://localhost:8080/yingyuhuzhuxiaochengxu/upload/config2.jpg'),(3,'轮播图3','http://localhost:8080/yingyuhuzhuxiaochengxu/upload/config3.jpg');

/*Table structure for table `dictionary` */

DROP TABLE IF EXISTS `dictionary`;

CREATE TABLE `dictionary` (
  `id` int(20) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `dic_code` varchar(200) DEFAULT NULL COMMENT '字段',
  `dic_name` varchar(200) DEFAULT NULL COMMENT '字段名',
  `code_index` int(11) DEFAULT NULL COMMENT '编码',
  `index_name` varchar(200) DEFAULT NULL COMMENT '编码名字  Search111 ',
  `super_id` int(11) DEFAULT NULL COMMENT '父字段id',
  `beizhu` varchar(200) DEFAULT NULL COMMENT '备注',
  `create_time` timestamp NULL DEFAULT NULL COMMENT '创建时间',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=35 DEFAULT CHARSET=utf8 COMMENT='字典表';

/*Data for the table `dictionary` */

insert  into `dictionary`(`id`,`dic_code`,`dic_name`,`code_index`,`index_name`,`super_id`,`beizhu`,`create_time`) values (1,'xingquxiaozu_types','小组类型',1,'小组类型1',NULL,NULL,'2022-03-22 16:21:30'),(2,'xingquxiaozu_types','小组类型',2,'小组类型2',NULL,NULL,'2022-03-22 16:21:30'),(3,'xingquxiaozu_types','小组类型',3,'小组类型3',NULL,NULL,'2022-03-22 16:21:30'),(4,'zhuanye_types','专业',1,'专业1',NULL,NULL,'2022-03-22 16:21:30'),(5,'zhuanye_types','专业',2,'专业2',NULL,NULL,'2022-03-22 16:21:30'),(6,'zhuanye_types','专业',3,'专业3',NULL,NULL,'2022-03-22 16:21:30'),(7,'shuiping_types','英语水平',1,'英语水平1',NULL,NULL,'2022-03-22 16:21:30'),(8,'shuiping_types','英语水平',2,'英语水平2',NULL,NULL,'2022-03-22 16:21:30'),(9,'shuiping_types','英语水平',3,'英语水平3',NULL,NULL,'2022-03-22 16:21:30'),(10,'zhutizixun_types','资讯类型',1,'资讯类型1',NULL,NULL,'2022-03-22 16:21:31'),(11,'zhutizixun_types','资讯类型',2,'资讯类型2',NULL,NULL,'2022-03-22 16:21:31'),(12,'zhutizixun_types','资讯类型',3,'资讯类型3',NULL,NULL,'2022-03-22 16:21:31'),(13,'zhutizixun_collection_types','收藏表类型',1,'收藏',NULL,NULL,'2022-03-22 16:21:31'),(14,'zhutizixun_collection_types','收藏表类型',2,'赞',NULL,NULL,'2022-03-22 16:21:31'),(15,'zhutizixun_collection_types','收藏表类型',3,'踩',NULL,NULL,'2022-03-22 16:21:31'),(16,'chat_types','数据类型',1,'问题',NULL,NULL,'2022-03-22 16:21:31'),(17,'chat_types','数据类型',2,'回复',NULL,NULL,'2022-03-22 16:21:31'),(18,'zhuangtai_types','状态',1,'未回复',NULL,NULL,'2022-03-22 16:21:31'),(19,'zhuangtai_types','状态',2,'已回复',NULL,NULL,'2022-03-22 16:21:31'),(20,'news_types','公告类型',1,'公告类型1',NULL,NULL,'2022-03-22 16:21:31'),(21,'news_types','公告类型',2,'公告类型2',NULL,NULL,'2022-03-22 16:21:31'),(22,'news_types','公告类型',3,'公告类型3',NULL,NULL,'2022-03-22 16:21:31'),(23,'sex_types','性别',1,'男',NULL,NULL,'2022-03-22 16:21:31'),(24,'sex_types','性别',2,'女',NULL,NULL,'2022-03-22 16:21:31'),(25,'forum_types','帖子类型',1,'四六级',NULL,NULL,'2022-03-22 16:21:31'),(26,'forum_types','帖子类型',2,'雅思托福',NULL,NULL,'2022-03-22 16:21:31'),(27,'forum_state_types','帖子状态',1,'发帖',NULL,NULL,'2022-03-22 16:21:31'),(28,'forum_state_types','帖子状态',2,'回帖',NULL,NULL,'2022-03-22 16:21:31'),(29,'examquestion_types','试题类型',1,'单选题',NULL,NULL,'2022-03-22 16:21:31'),(30,'examquestion_types','试题类型',2,'多选题',NULL,NULL,'2022-03-22 16:21:31'),(31,'examquestion_types','试题类型',3,'判断题',NULL,NULL,'2022-03-22 16:21:31'),(32,'examquestion_types','试题类型',4,'填空题',NULL,NULL,'2022-03-22 16:21:31'),(33,'exampaper_types','试卷状态',1,'启用',NULL,NULL,'2022-03-22 16:21:31'),(34,'exampaper_types','试卷状态',2,'禁用',NULL,NULL,'2022-03-22 16:21:31');

/*Table structure for table `exampaper` */

DROP TABLE IF EXISTS `exampaper`;

CREATE TABLE `exampaper` (
  `id` int(20) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `exampaper_name` varchar(200) NOT NULL COMMENT '试卷名称 Search111',
  `exampaper_date` int(11) NOT NULL COMMENT '考试时长(分钟)',
  `exampaper_myscore` int(20) NOT NULL DEFAULT '0' COMMENT '试卷总分数',
  `exampaper_types` int(11) NOT NULL DEFAULT '0' COMMENT '试卷状态 Search111',
  `exampaper_delete` int(255) DEFAULT '0' COMMENT '逻辑删除（0代表未删除 1代表已删除）',
  `create_time` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '创建时间 show2 photoShow',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=utf8 COMMENT='试卷表';

/*Data for the table `exampaper` */

insert  into `exampaper`(`id`,`exampaper_name`,`exampaper_date`,`exampaper_myscore`,`exampaper_types`,`exampaper_delete`,`create_time`) values (1,'测试试卷1',100,50,1,1,'2022-03-22 16:21:31'),(2,'123',123,0,1,2,'2022-03-28 09:19:55');

/*Table structure for table `examquestion` */

DROP TABLE IF EXISTS `examquestion`;

CREATE TABLE `examquestion` (
  `id` int(20) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `exampaper_id` int(20) NOT NULL COMMENT '所属试卷id（外键）',
  `examquestion_name` varchar(400) NOT NULL COMMENT '试题名称 Search111',
  `examquestion_options` longtext COMMENT '选项，json字符串',
  `examquestion_score` int(20) DEFAULT '0' COMMENT '分值 Search111',
  `examquestion_answer` varchar(200) DEFAULT NULL COMMENT '正确答案',
  `examquestion_analysis` longtext COMMENT '答案解析',
  `examquestion_types` int(20) DEFAULT '0' COMMENT '试题类型',
  `examquestion_sequence` int(20) DEFAULT '100' COMMENT '试题排序，值越大排越前面',
  `create_time` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '创建时间',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=61 DEFAULT CHARSET=utf8 COMMENT='试题表';

/*Data for the table `examquestion` */

insert  into `examquestion`(`id`,`exampaper_id`,`examquestion_name`,`examquestion_options`,`examquestion_score`,`examquestion_answer`,`examquestion_analysis`,`examquestion_types`,`examquestion_sequence`,`create_time`) values (54,1,'I can’ t_____on my studies with all that noise going on.','[{\"text\":\"absorb\",\"code\":\"A\"},{\"text\":\"concern\",\"code\":\"B\"},{\"text\":\"involve\",\"code\":\"C\"},{\"text\":\"concentrate\",\"code\":\"D\"}]',5,'D','无',1,6,'2022-03-22 16:21:31'),(55,1,'It is said that math teacher seems_____towards bright student.(2000.6)','[{\"text\":\"partial\",\"code\":\"A\"},{\"text\":\"beneficial\",\"code\":\"B\"},{\"text\":\"preferable\",\"code\":\"C\"},{\"text\":\"liable\",\"code\":\"D\"}]',5,'A','无',1,7,'2022-03-22 16:21:31'),(56,1,'During the recent__1___, three men lost their jobs for every woman. Many unemployed fathers have ended up caring for their children full-time while their wives are the___2__wage earners. ','[{\"text\":\"occurring\",\"code\":\"A\"},{\"text\":\"primary\",\"code\":\"B\"},{\"text\":\"recession\",\"code\":\"C\"},{\"text\":\"positions\",\"code\":\"D\"}]',10,'B,C','无',2,17,'2022-03-22 16:21:31'),(57,1,'The more secure we are in our_____to Mom, the more likely we are to try new things and take risks. ','[]',10,'attachment','无',4,26,'2022-03-23 00:38:25'),(58,1,'Sun School in the town of Ashbert in England is a day school for children age 10 _____ 18.','[]',10,'to','无',4,35,'2022-03-23 00:38:25'),(59,1,'The weekly school meeting is at the center of the way sun school is orgnized.','[{\"text\":\"A.对\",\"code\":\"A\"},{\"text\":\"B.错\",\"code\":\"B\"}]',5,'B','无',3,36,'2022-03-23 00:38:25'),(60,1,'It seemed very confusing for a long time.','[{\"text\":\"A.对\",\"code\":\"A\"},{\"text\":\"B.错\",\"code\":\"B\"}]',5,'A','无',3,37,'2022-03-23 00:38:25');

/*Table structure for table `examrecord` */

DROP TABLE IF EXISTS `examrecord`;

CREATE TABLE `examrecord` (
  `id` int(20) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `examrecord_uuid_number` varchar(200) DEFAULT NULL COMMENT '考试编号',
  `yonghu_id` int(20) NOT NULL COMMENT '考试用户',
  `exampaper_id` int(20) NOT NULL COMMENT '所属试卷id（外键）',
  `total_score` int(200) DEFAULT NULL COMMENT '所得总分',
  `insert_time` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP COMMENT '考试时间',
  `create_time` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '创建时间',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=6 DEFAULT CHARSET=utf8 COMMENT='考试记录表';

/*Data for the table `examrecord` */

insert  into `examrecord`(`id`,`examrecord_uuid_number`,`yonghu_id`,`exampaper_id`,`total_score`,`insert_time`,`create_time`) values (3,'1648006267807',1,1,10,'2022-03-23 11:31:08','2022-03-23 11:31:08'),(4,'1648430991769',1,1,10,'2022-03-28 09:29:52','2022-03-28 09:29:52'),(5,'1648431017113',1,1,0,'2022-03-28 09:30:17','2022-03-28 09:30:17');

/*Table structure for table `examredetails` */

DROP TABLE IF EXISTS `examredetails`;

CREATE TABLE `examredetails` (
  `id` int(20) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `examredetails_uuid_number` varchar(200) DEFAULT NULL COMMENT '试卷编号',
  `yonghu_id` int(20) NOT NULL COMMENT '用户id',
  `examquestion_id` int(20) NOT NULL COMMENT '试题id（外键）',
  `examredetails_myanswer` varchar(200) DEFAULT NULL COMMENT '考生答案',
  `examredetails_myscore` int(20) NOT NULL DEFAULT '0' COMMENT '试题得分',
  `create_time` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '创建时间',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=73 DEFAULT CHARSET=utf8 COMMENT='答题详情表';

/*Data for the table `examredetails` */

insert  into `examredetails`(`id`,`examredetails_uuid_number`,`yonghu_id`,`examquestion_id`,`examredetails_myanswer`,`examredetails_myscore`,`create_time`) values (52,'1648006267807',1,60,'A',5,'2022-03-23 11:31:10'),(53,'1648006267807',1,59,'B',5,'2022-03-23 11:31:13'),(54,'1648006267807',1,58,'123',0,'2022-03-23 11:31:16'),(55,'1648006267807',1,57,'123',0,'2022-03-23 11:31:18'),(56,'1648006267807',1,56,'A,B',0,'2022-03-23 11:31:32'),(57,'1648006267807',1,55,'D',0,'2022-03-23 11:31:34'),(58,'1648006267807',1,54,'B',0,'2022-03-23 11:31:36'),(59,'1648430991769',1,60,'B',0,'2022-03-28 09:29:54'),(60,'1648430991769',1,59,'A',0,'2022-03-28 09:29:56'),(61,'1648430991769',1,58,'123',0,'2022-03-28 09:30:02'),(62,'1648430991769',1,57,'123',0,'2022-03-28 09:30:04'),(63,'1648430991769',1,56,'B,C',10,'2022-03-28 09:30:08'),(64,'1648430991769',1,55,'C',0,'2022-03-28 09:30:11'),(65,'1648430991769',1,54,'C',0,'2022-03-28 09:30:14'),(66,'1648431017113',1,54,'未作答',0,'2022-03-28 09:30:20'),(67,'1648431017113',1,55,'未作答',0,'2022-03-28 09:30:20'),(68,'1648431017113',1,56,'未作答',0,'2022-03-28 09:30:20'),(69,'1648431017113',1,57,'未作答',0,'2022-03-28 09:30:20'),(70,'1648431017113',1,58,'未作答',0,'2022-03-28 09:30:20'),(71,'1648431017113',1,59,'未作答',0,'2022-03-28 09:30:20'),(72,'1648431017113',1,60,'未作答',0,'2022-03-28 09:30:20');

/*Table structure for table `examrewrongquestion` */

DROP TABLE IF EXISTS `examrewrongquestion`;

CREATE TABLE `examrewrongquestion` (
  `id` int(20) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `yonghu_id` int(20) NOT NULL COMMENT '用户id',
  `exampaper_id` int(20) NOT NULL COMMENT '试卷（外键）',
  `examquestion_id` int(20) NOT NULL COMMENT '试题id（外键）',
  `examredetails_myanswer` varchar(200) DEFAULT NULL COMMENT '考生作答',
  `insert_time` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '记录时间',
  `create_time` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '创建时间 show3',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=70 DEFAULT CHARSET=utf8 COMMENT='错题表';

/*Data for the table `examrewrongquestion` */

insert  into `examrewrongquestion`(`id`,`yonghu_id`,`exampaper_id`,`examquestion_id`,`examredetails_myanswer`,`insert_time`,`create_time`) values (52,1,1,58,'123','2022-03-23 11:31:16','2022-03-23 11:31:16'),(53,1,1,57,'123','2022-03-23 11:31:18','2022-03-23 11:31:18'),(54,1,1,56,'A,B','2022-03-23 11:31:32','2022-03-23 11:31:32'),(55,1,1,55,'D','2022-03-23 11:31:34','2022-03-23 11:31:34'),(56,1,1,54,'B','2022-03-23 11:31:36','2022-03-23 11:31:36'),(57,1,1,60,'B','2022-03-28 09:29:54','2022-03-28 09:29:54'),(58,1,1,59,'A','2022-03-28 09:29:56','2022-03-28 09:29:56'),(59,1,1,58,'123','2022-03-28 09:30:02','2022-03-28 09:30:02'),(60,1,1,57,'123','2022-03-28 09:30:04','2022-03-28 09:30:04'),(61,1,1,55,'C','2022-03-28 09:30:11','2022-03-28 09:30:11'),(62,1,1,54,'C','2022-03-28 09:30:14','2022-03-28 09:30:14'),(63,1,1,54,'未作答','2022-03-28 09:30:20','2022-03-28 09:30:20'),(64,1,1,55,'未作答','2022-03-28 09:30:20','2022-03-28 09:30:20'),(65,1,1,56,'未作答','2022-03-28 09:30:20','2022-03-28 09:30:20'),(66,1,1,57,'未作答','2022-03-28 09:30:20','2022-03-28 09:30:20'),(67,1,1,58,'未作答','2022-03-28 09:30:20','2022-03-28 09:30:20'),(68,1,1,59,'未作答','2022-03-28 09:30:20','2022-03-28 09:30:20'),(69,1,1,60,'未作答','2022-03-28 09:30:20','2022-03-28 09:30:20');

/*Table structure for table `forum` */

DROP TABLE IF EXISTS `forum`;

CREATE TABLE `forum` (
  `id` int(11) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `forum_name` varchar(200) DEFAULT NULL COMMENT '帖子标题  Search111 ',
  `yonghu_id` int(11) DEFAULT NULL COMMENT '用户',
  `users_id` int(11) DEFAULT NULL COMMENT '管理员',
  `forum_content` text COMMENT '发布内容',
  `super_ids` int(11) DEFAULT NULL COMMENT '父id',
  `forum_types` int(11) DEFAULT NULL COMMENT '帖子类型',
  `forum_state_types` int(11) DEFAULT NULL COMMENT '帖子状态',
  `insert_time` timestamp NULL DEFAULT NULL COMMENT '发帖时间',
  `update_time` timestamp NULL DEFAULT NULL COMMENT '修改时间',
  `create_time` timestamp NULL DEFAULT NULL COMMENT '创建时间 show2',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=8 DEFAULT CHARSET=utf8 COMMENT='学习讨论';

/*Data for the table `forum` */

insert  into `forum`(`id`,`forum_name`,`yonghu_id`,`users_id`,`forum_content`,`super_ids`,`forum_types`,`forum_state_types`,`insert_time`,`update_time`,`create_time`) values (1,'帖子标题1',2,NULL,'发布内容1',NULL,1,1,'2022-03-22 16:31:01','2022-03-22 16:31:01','2022-03-22 16:31:01'),(2,'帖子标题2',2,NULL,'发布内容2',NULL,2,1,'2022-03-22 16:31:01','2022-03-22 16:31:01','2022-03-22 16:31:01'),(3,'帖子标题3',1,NULL,'发布内容3',NULL,1,1,'2022-03-22 16:31:01','2022-03-22 16:31:01','2022-03-22 16:31:01'),(4,'帖子标题4',3,NULL,'发布内容4',NULL,2,1,'2022-03-22 16:31:01','2022-03-22 16:31:01','2022-03-22 16:31:01'),(6,NULL,NULL,1,'111',5,NULL,2,'2022-03-28 09:18:20',NULL,'2022-03-28 09:18:20'),(7,NULL,1,NULL,'用户评论123',5,NULL,2,'2022-03-28 09:28:27',NULL,'2022-03-28 09:28:27');

/*Table structure for table `jiarudexiaozu` */

DROP TABLE IF EXISTS `jiarudexiaozu`;

CREATE TABLE `jiarudexiaozu` (
  `id` int(11) NOT NULL AUTO_INCREMENT COMMENT '主键 ',
  `xingquxiaozu_id` int(11) DEFAULT NULL COMMENT '小组',
  `yonghu_id` int(11) DEFAULT NULL COMMENT '用户',
  `insert_time` timestamp NULL DEFAULT NULL COMMENT '加入时间',
  `create_time` timestamp NULL DEFAULT NULL COMMENT '创建时间',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=12 DEFAULT CHARSET=utf8 COMMENT='加入的小组';

/*Data for the table `jiarudexiaozu` */

insert  into `jiarudexiaozu`(`id`,`xingquxiaozu_id`,`yonghu_id`,`insert_time`,`create_time`) values (10,3,1,'2022-03-22 19:27:52','2022-03-22 19:27:52'),(11,4,1,'2022-03-28 09:27:29','2022-03-28 09:27:29');

/*Table structure for table `news` */

DROP TABLE IF EXISTS `news`;

CREATE TABLE `news` (
  `id` int(11) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `news_name` varchar(200) DEFAULT NULL COMMENT '公告标题  Search111 ',
  `news_types` int(11) DEFAULT NULL COMMENT '公告类型  Search111 ',
  `news_photo` varchar(200) DEFAULT NULL COMMENT '公告图片',
  `insert_time` timestamp NULL DEFAULT NULL COMMENT '公告时间',
  `news_content` text COMMENT '公告详情',
  `create_time` timestamp NULL DEFAULT NULL COMMENT '创建时间 show1 show2 nameShow',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=6 DEFAULT CHARSET=utf8 COMMENT='公告信息';

/*Data for the table `news` */

insert  into `news`(`id`,`news_name`,`news_types`,`news_photo`,`insert_time`,`news_content`,`create_time`) values (1,'公告标题1',3,'http://localhost:8080/yingyuhuzhuxiaochengxu/upload/news1.jpg','2022-03-22 16:31:01','公告详情1','2022-03-22 16:31:01'),(2,'公告标题2',2,'http://localhost:8080/yingyuhuzhuxiaochengxu/upload/news2.jpg','2022-03-22 16:31:01','公告详情2','2022-03-22 16:31:01'),(3,'公告标题3',2,'http://localhost:8080/yingyuhuzhuxiaochengxu/upload/news3.jpg','2022-03-22 16:31:01','公告详情3','2022-03-22 16:31:01'),(4,'公告标题4',1,'http://localhost:8080/yingyuhuzhuxiaochengxu/upload/news4.jpg','2022-03-22 16:31:01','公告详情4','2022-03-22 16:31:01'),(5,'公告标题5',2,'http://localhost:8080/yingyuhuzhuxiaochengxu/upload/news5.jpg','2022-03-22 16:31:01','公告详情5','2022-03-22 16:31:01');

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

insert  into `token`(`id`,`userid`,`username`,`tablename`,`role`,`token`,`addtime`,`expiratedtime`) values (1,1,'admin','users','管理员','lmpqh0emr7vmyiywlh920rx6x6g7ag0g','2022-03-22 16:49:05','2022-03-28 10:34:44'),(2,1,'a1','yonghu','用户','klxq8fbmcbrfes0kv2el415hm78yinoj','2022-03-22 16:59:35','2022-03-28 10:32:38'),(3,2,'a2','yonghu','用户','7yptklh84j1q36lb6nkchym2d8agl818','2022-03-28 09:24:46','2022-03-28 10:24:47');

/*Table structure for table `users` */

DROP TABLE IF EXISTS `users`;

CREATE TABLE `users` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `username` varchar(100) NOT NULL COMMENT '用户名',
  `password` varchar(100) NOT NULL COMMENT '密码',
  `role` varchar(100) DEFAULT '管理员' COMMENT '角色',
  `addtime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '新增时间',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8 COMMENT='用户表';

/*Data for the table `users` */

insert  into `users`(`id`,`username`,`password`,`role`,`addtime`) values (1,'admin','admin','管理员','2022-05-01 00:00:00');

/*Table structure for table `xingquxiaozu` */

DROP TABLE IF EXISTS `xingquxiaozu`;

CREATE TABLE `xingquxiaozu` (
  `id` int(11) NOT NULL AUTO_INCREMENT COMMENT '主键 ',
  `xingquxiaozu_name` varchar(200) DEFAULT NULL COMMENT '小组名称  Search111 ',
  `xingquxiaozu_photo` varchar(200) DEFAULT NULL COMMENT '小组封面',
  `xingquxiaozu_types` int(11) DEFAULT NULL COMMENT '小组类型 Search111',
  `zhuanye_types` int(11) DEFAULT NULL COMMENT '专业 Search111',
  `shuiping_types` int(11) DEFAULT NULL COMMENT '英语水平 Search111',
  `xingquxiaozu_address` varchar(200) DEFAULT NULL COMMENT '所属地点',
  `yonghu_id` int(11) DEFAULT NULL COMMENT '小组组长',
  `xingquxiaozu_content` text COMMENT '小组简介 ',
  `create_time` timestamp NULL DEFAULT NULL COMMENT '创建时间  show1 show2 photoShow',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=6 DEFAULT CHARSET=utf8 COMMENT='兴趣小组';

/*Data for the table `xingquxiaozu` */

insert  into `xingquxiaozu`(`id`,`xingquxiaozu_name`,`xingquxiaozu_photo`,`xingquxiaozu_types`,`zhuanye_types`,`shuiping_types`,`xingquxiaozu_address`,`yonghu_id`,`xingquxiaozu_content`,`create_time`) values (1,'小组名称1','http://localhost:8080/yingyuhuzhuxiaochengxu/upload/1648430203015.jpeg',2,2,1,'所属地点1',3,'<p>小组简介1</p>','2022-03-22 16:31:01'),(2,'小组名称2','http://localhost:8080/yingyuhuzhuxiaochengxu/upload/1648430194691.jpeg',2,2,3,'所属地点2',1,'<p>小组简介2</p>','2022-03-22 16:31:01'),(3,'小组名称3','http://localhost:8080/yingyuhuzhuxiaochengxu/upload/1648430185043.jpeg',3,1,3,'所属地点3',3,'<p>小组简介3</p>','2022-03-22 16:31:01'),(4,'小组名称4','http://localhost:8080/yingyuhuzhuxiaochengxu/upload/1648430177991.jpeg',2,3,3,'所属地点4',3,'<p>小组简介4</p>','2022-03-22 16:31:01'),(5,'小组名称5','http://localhost:8080/yingyuhuzhuxiaochengxu/upload/1648430170045.jpeg',1,3,3,'所属地点5',1,'<p>小组简介5</p>','2022-03-22 16:31:01');

/*Table structure for table `xingquxiaozu_liuyan` */

DROP TABLE IF EXISTS `xingquxiaozu_liuyan`;

CREATE TABLE `xingquxiaozu_liuyan` (
  `id` int(11) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `xingquxiaozu_id` int(11) DEFAULT NULL COMMENT '兴趣小组',
  `yonghu_id` int(11) DEFAULT NULL COMMENT '用户',
  `xingquxiaozu_liuyan_text` text COMMENT '小组打卡内容',
  `insert_time` timestamp NULL DEFAULT NULL COMMENT '小组打卡时间',
  `create_time` timestamp NULL DEFAULT NULL COMMENT '创建时间',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=9 DEFAULT CHARSET=utf8 COMMENT='小组打卡';

/*Data for the table `xingquxiaozu_liuyan` */

insert  into `xingquxiaozu_liuyan`(`id`,`xingquxiaozu_id`,`yonghu_id`,`xingquxiaozu_liuyan_text`,`insert_time`,`create_time`) values (1,1,3,'小组打卡内容1','2022-03-22 16:31:01','2022-03-22 16:31:01'),(2,2,2,'小组打卡内容2','2022-03-22 16:31:01','2022-03-22 16:31:01'),(3,3,3,'小组打卡内容3','2022-03-22 16:31:01','2022-03-22 16:31:01'),(4,4,2,'小组打卡内容4','2022-03-22 16:31:01','2022-03-22 16:31:01'),(5,5,3,'小组打卡内容5','2022-03-22 16:31:01','2022-03-22 16:31:01'),(6,5,1,'打卡内容1','2022-03-22 19:09:10','2022-03-22 19:09:10'),(7,5,1,'组长发言','2022-03-28 09:27:16','2022-03-28 09:27:16');

/*Table structure for table `yonghu` */

DROP TABLE IF EXISTS `yonghu`;

CREATE TABLE `yonghu` (
  `id` int(11) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `username` varchar(200) DEFAULT NULL COMMENT '账户',
  `password` varchar(200) DEFAULT NULL COMMENT '密码',
  `yonghu_name` varchar(200) DEFAULT NULL COMMENT '用户姓名 Search111 ',
  `yonghu_photo` varchar(255) DEFAULT NULL COMMENT '头像',
  `sex_types` int(11) DEFAULT NULL COMMENT '性别 Search111 ',
  `yonghu_phone` varchar(200) DEFAULT NULL COMMENT '联系方式',
  `yonghu_id_number` varchar(200) DEFAULT NULL COMMENT '身份证号 ',
  `yonghu_email` varchar(200) DEFAULT NULL COMMENT '邮箱',
  `yonghu_delete` int(11) DEFAULT '1' COMMENT '假删',
  `create_time` timestamp NULL DEFAULT NULL COMMENT '创建时间',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8 COMMENT='用户';

/*Data for the table `yonghu` */

insert  into `yonghu`(`id`,`username`,`password`,`yonghu_name`,`yonghu_photo`,`sex_types`,`yonghu_phone`,`yonghu_id_number`,`yonghu_email`,`yonghu_delete`,`create_time`) values (1,'a1','123456','用户姓名1','http://localhost:8080/yingyuhuzhuxiaochengxu/upload/yonghu1.jpg',2,'17703786901','410224199610232001','1@qq.com',1,'2022-03-22 16:31:01'),(2,'a2','123456','用户姓名2','http://localhost:8080/yingyuhuzhuxiaochengxu/upload/yonghu2.jpg',2,'17703786902','410224199610232002','2@qq.com',1,'2022-03-22 16:31:01'),(3,'a3','123456','用户姓名3','http://localhost:8080/yingyuhuzhuxiaochengxu/upload/yonghu3.jpg',2,'17703786903','410224199610232003','3@qq.com',1,'2022-03-22 16:31:01');

/*Table structure for table `zhutizixun` */

DROP TABLE IF EXISTS `zhutizixun`;

CREATE TABLE `zhutizixun` (
  `id` int(11) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `zhutizixun_name` varchar(200) DEFAULT NULL COMMENT '资讯标题  Search111 ',
  `zhutizixun_types` int(11) DEFAULT NULL COMMENT '资讯类型  Search111 ',
  `zhutizixun_photo` varchar(200) DEFAULT NULL COMMENT '资讯封面',
  `zhutizixun_video` varchar(200) DEFAULT NULL COMMENT '资讯视频',
  `zan_number` int(11) DEFAULT NULL COMMENT '赞',
  `cai_number` int(11) DEFAULT NULL COMMENT '踩',
  `insert_time` timestamp NULL DEFAULT NULL COMMENT '发布时间',
  `zhutizixun_content` text COMMENT '资讯内容',
  `create_time` timestamp NULL DEFAULT NULL COMMENT '创建时间 show1 show2 photoShow',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=6 DEFAULT CHARSET=utf8 COMMENT='主题资讯';

/*Data for the table `zhutizixun` */

insert  into `zhutizixun`(`id`,`zhutizixun_name`,`zhutizixun_types`,`zhutizixun_photo`,`zhutizixun_video`,`zan_number`,`cai_number`,`insert_time`,`zhutizixun_content`,`create_time`) values (1,'资讯标题1',3,'http://localhost:8080/yingyuhuzhuxiaochengxu/upload/1648430257241.jpeg','http://localhost:8080/yingyuhuzhuxiaochengxu/upload/video.mp4',380,45,'2022-03-22 16:31:01','<p>资讯内容1</p>','2022-03-22 16:31:01'),(2,'资讯标题2',3,'http://localhost:8080/yingyuhuzhuxiaochengxu/upload/1648430249311.jpg','http://localhost:8080/yingyuhuzhuxiaochengxu/upload/video.mp4',325,107,'2022-03-22 16:31:01','<p>资讯内容2</p>','2022-03-22 16:31:01'),(3,'资讯标题3',3,'http://localhost:8080/yingyuhuzhuxiaochengxu/upload/1648430241853.jpg','http://localhost:8080/yingyuhuzhuxiaochengxu/upload/video.mp4',176,314,'2022-03-22 16:31:01','<p>资讯内容3</p>','2022-03-22 16:31:01'),(4,'资讯标题4',2,'http://localhost:8080/yingyuhuzhuxiaochengxu/upload/1648430232974.jpeg','http://localhost:8080/yingyuhuzhuxiaochengxu/upload/video.mp4',171,310,'2022-03-22 16:31:01','<p>资讯内容4</p>','2022-03-22 16:31:01'),(5,'资讯标题5',1,'http://localhost:8080/yingyuhuzhuxiaochengxu/upload/1648430224785.jpeg','http://localhost:8080/yingyuhuzhuxiaochengxu/upload/video.mp4',313,284,'2022-03-22 16:31:01','<p>资讯内容5</p>','2022-03-22 16:31:01');

/*Table structure for table `zhutizixun_collection` */

DROP TABLE IF EXISTS `zhutizixun_collection`;

CREATE TABLE `zhutizixun_collection` (
  `id` int(11) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `zhutizixun_id` int(11) DEFAULT NULL COMMENT '主题资讯',
  `yonghu_id` int(11) DEFAULT NULL COMMENT '用户',
  `zhutizixun_collection_types` int(11) DEFAULT NULL COMMENT '类型',
  `insert_time` timestamp NULL DEFAULT NULL COMMENT '收藏时间',
  `create_time` timestamp NULL DEFAULT NULL COMMENT '创建时间 show3 photoShow',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=11 DEFAULT CHARSET=utf8 COMMENT='资讯收藏';

/*Data for the table `zhutizixun_collection` */

insert  into `zhutizixun_collection`(`id`,`zhutizixun_id`,`yonghu_id`,`zhutizixun_collection_types`,`insert_time`,`create_time`) values (1,1,2,1,'2022-03-22 16:31:01','2022-03-22 16:31:01'),(2,2,3,1,'2022-03-22 16:31:01','2022-03-22 16:31:01'),(3,3,1,1,'2022-03-22 16:31:01','2022-03-22 16:31:01'),(5,5,3,1,'2022-03-22 16:31:01','2022-03-22 16:31:01'),(6,4,1,NULL,'2022-03-22 16:59:50','2022-03-22 16:59:50'),(8,1,1,NULL,'2022-03-22 17:21:11','2022-03-22 17:21:11');

/*Table structure for table `zhutizixun_liuyan` */

DROP TABLE IF EXISTS `zhutizixun_liuyan`;

CREATE TABLE `zhutizixun_liuyan` (
  `id` int(11) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `zhutizixun_id` int(11) DEFAULT NULL COMMENT '主题资讯',
  `yonghu_id` int(11) DEFAULT NULL COMMENT '用户',
  `zhutizixun_liuyan_text` text COMMENT '评论内容',
  `insert_time` timestamp NULL DEFAULT NULL COMMENT '评论时间',
  `update_time` timestamp NULL DEFAULT NULL COMMENT '回复时间',
  `create_time` timestamp NULL DEFAULT NULL COMMENT '创建时间',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=7 DEFAULT CHARSET=utf8 COMMENT='资讯评论';

/*Data for the table `zhutizixun_liuyan` */

insert  into `zhutizixun_liuyan`(`id`,`zhutizixun_id`,`yonghu_id`,`zhutizixun_liuyan_text`,`insert_time`,`update_time`,`create_time`) values (1,1,2,'评论内容1','2022-03-22 16:31:01','2022-03-22 16:31:01','2022-03-22 16:31:01'),(2,2,2,'评论内容2','2022-03-22 16:31:01','2022-03-22 16:31:01','2022-03-22 16:31:01'),(3,3,1,'评论内容3','2022-03-22 16:31:01','2022-03-22 16:31:01','2022-03-22 16:31:01'),(4,4,1,'评论内容4','2022-03-22 16:31:01','2022-03-22 16:31:01','2022-03-22 16:31:01'),(5,5,2,'评论内容5','2022-03-22 16:31:01','2022-03-22 16:31:01','2022-03-22 16:31:01'),(6,5,1,'用户1评论','2022-03-28 09:26:56',NULL,'2022-03-28 09:26:56');

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;
