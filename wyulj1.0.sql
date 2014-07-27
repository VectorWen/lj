/*
Navicat MySQL Data Transfer

Source Server         : local
Source Server Version : 50517
Source Host           : localhost:3306
Source Database       : wyulj

Target Server Type    : MYSQL
Target Server Version : 50517
File Encoding         : 65001

Date: 2014-06-09 10:40:45
*/
-- 上线后不能用这个来更新数据库'

SET FOREIGN_KEY_CHECKS=0;

DROP TABLE IF EXISTS `lj_feedback`; 
CREATE TABLE `lj_feedback` (
  `feedback_id` int(11) NOT NULL AUTO_INCREMENT COMMENT'自增ID',
  `user_id` int(11) NOT NULL COMMENT '发送该反馈信息的用户id,取值为lj_user的user_id',
  `title` varchar(64) NOT NULL COMMENT'反馈的标题',
  `content` text COMMENT'反馈的描述内容',
  `at` text COMMENT '@ 的用户，用@user_id1@user_id2 方式保存',
  `time` int(11) DEFAULT 0 COMMENT '发送该反馈的时间',
  PRIMARY KEY (`feedback_id`),
  KEY `FK_user` (`user_id`),
  CONSTRAINT `FK_user` FOREIGN KEY (`user_id`) REFERENCES `lj_user` (`user_id`)
) ENGINE=InnoDB AUTO_INCREMENT=7 DEFAULT CHARSET=utf8 COMMENT '反馈信息表';


DROP TABLE IF EXISTS `lj_feedback_comment`;
CREATE TABLE `lj_feedback_comment` (
  `comment_id` int(11) NOT NULL AUTO_INCREMENT COMMENT '自增ID',
  `user_id` int(11) NOT NULL COMMENT '发送该反馈评论的用户id,取值为lj_user的user_id',
  `feedback_id` int(11) NOT NULL COMMENT '该评论是对哪条反馈，取值为lj_feedback 的feedback_id',
  `at` text COMMENT '@ 的用户，用@user_id1@user_id2 方式保存',
  `content` text COMMENT '反馈的描述内容',
  `time` int(11) DEFAULT 0 COMMENT '发送该反馈的时间',
  PRIMARY KEY (`comment_id`),
   KEY `FK_user` (`user_id`),
   KEY `FK_feedback` (`feedback_id`),
  CONSTRAINT `FK_user` FOREIGN KEY (`user_id`) REFERENCES `lj_user` (`user_id`),
  CONSTRAINT `FK_feedback` FOREIGN KEY (`feedback_id`) REFERENCES `lj_feedback` (`feedback_id`)
) ENGINE=InnoDB AUTO_INCREMENT=7 DEFAULT CHARSET=utf8 COMMENT '反馈评论表';


-- ----------------------------
-- Table structure for `lj_user`
-- ----------------------------
DROP TABLE IF EXISTS `lj_user`;
CREATE TABLE `lj_user` (
  `user_id` int(11) NOT NULL AUTO_INCREMENT COMMENT '自增ID',
  `username` varchar(45) NOT NULL COMMENT '用来登录的用户名',
  `password` varchar(45) DEFAULT '25f9e794323b453885f5181f1b624d0b' COMMENT '登录密码，默认123456789',
  -- `profile_id` int(11) NOT NULL COMMENT '用户的详细信息', -- 优化再改
  `true_name` varchar(32) DEFAULT NULL COMMENT '真名',
  `sex` tinyint(4) DEFAULT NULL COMMENT '0:男 1:女',
  `specialty` varchar(45) DEFAULT NULL,
  `school_address` varchar(255) DEFAULT NULL COMMENT '校地址',
  `home_address` varchar(255) DEFAULT NULL COMMENT '家地址',
  `phone` varchar(225) DEFAULT NULL,
  `short_phone` varchar(11) DEFAULT NULL,
  `entry_year` varchar(11) DEFAULT NULL,
  `big_picture` varchar(255) DEFAULT NULL,
  `middle_picture` varchar(255) DEFAULT NULL,
  `small_picture` varchar(255) DEFAULT NULL,
  `level` tinyint(4) DEFAULT '0' COMMENT '0.在校1.非在校',
  PRIMARY KEY (`user_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of lj_user
-- ----------------------------
INSERT INTO `lj_user` VALUES (1,'11070512', '25f9e794323b453885f5181f1b624d0b','黄廉温', 0, '会计', 
'18-142', '石岭', '13849291021', '894312', '2010', null, null, null, 0);
INSERT INTO `lj_user` VALUES (2,'123456', 'e10adc3949ba59abbe56e057f20f883e','admin', 0,
 '会计', '18-142', '石岭', '13849291021', '894312', '2010', null, null, null, 0);


-- ----------------------
-- 以下是之前的建表和数据，为了兼容测试，在还没有用到的都会留在下面，新建的表、更新的表会在这之上
-- ----------------------



-- ----------------------------
-- Table structure for `lj_activity`
-- ----------------------------
DROP TABLE IF EXISTS `lj_activity`;
CREATE TABLE `lj_activity` (
  `activityid` int(11) NOT NULL AUTO_INCREMENT,
  `adminid` varchar(255) DEFAULT NULL,
  `title` varchar(255) DEFAULT NULL,
  `begintime` int(11) DEFAULT NULL,
  `endtime` int(11) DEFAULT NULL,
  `content` text,
  `address` varchar(255) DEFAULT NULL,
  `cost` double DEFAULT NULL,
  `priority` tinyint(4) DEFAULT '3',
  `status` tinyint(4) DEFAULT '0' COMMENT '0.未报名1.已报名',
  PRIMARY KEY (`activityid`),
  KEY `FK_admin_activity` (`adminid`),
  CONSTRAINT `FK_admin_activity` FOREIGN KEY (`adminid`) REFERENCES `lj_admin` (`adminid`)
) ENGINE=InnoDB AUTO_INCREMENT=7 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of lj_activity
-- ----------------------------
INSERT INTO `lj_activity` VALUES ('1', 'adminxc', '端午节包车回廉江', '1399996800', '1401465599', '请大家尽快报名，名额优先，先报先得', '五邑大学', '120', '3', '0');
INSERT INTO `lj_activity` VALUES ('2', 'adminxc', '同乡送旧活动', '1399996800', '1400342399', '<h3>\r\n	<span style=\"background-color:#4C33E5;\">希望各位师兄师姐都回来聚聚，我们同聚一堂</span>\r\n</h3>', '银晶酒店', '35', '3', '0');
INSERT INTO `lj_activity` VALUES ('3', 'adminxc', '圭峰山爬山', '1400515200', '1400601599', '<p>\r\n	&nbsp;&nbsp;&nbsp;&nbsp;我们到时9:20分集中，然后9.30分到旧车站搭车，到圭峰山大概10.30分，到时我们一起爬\r\n</p>\r\n<p>\r\n	&nbsp;我们需要兵分两路，一起爬到山顶就完成任务，同时最利害的将获得礼品一份\r\n</p>', '圭峰山', '0', '3', '0');
INSERT INTO `lj_activity` VALUES ('4', null, '测试一下', '1399305600', '1399391999', '<div class=\"result c-container \" id=\"2\" style=\"font-size:13px;color:#333333;font-family:arial;background-color:#FFFFFF;\">\r\n	<h3 class=\"t\" style=\"font-weight:normal;font-size:medium;\">\r\n		<a href=\"http://www.baidu.com/link?url=tpZwS267iHpdSTgGRbJVj8zNo7C_hpPS36Mc7GW5xPZd9Y-Ah0deCTksSOqN37Ku\" target=\"_blank\"><span style=\"color:#CC0000;\">策划书</span>_<span style=\"color:#CC0000;\">策划书</span>范文模板</a>\r\n	</h3>\r\n	<div class=\"c-row c-gap-top-small\">\r\n		<div class=\"general_image_pic c-span6\">\r\n			<a class=\"c-img6\" href=\"http://www.baidu.com/link?url=tpZwS267iHpdSTgGRbJVj8zNo7C_hpPS36Mc7GW5xPZd9Y-Ah0deCTksSOqN37Ku\" target=\"_blank\"><img src=\"http://i8.baidu.com/it/u=2111664819,1349937204&amp;fm=96&amp;s=ED079557DEF207A1481515060300D066\" style=\"height:75px;\" /></a>\r\n		</div>\r\n		<div class=\"c-span18 c-span-last\">\r\n			<div class=\"c-abstract\">\r\n				策划书频道专业提供优秀的策划书范文,其内容包括有策划书格式、<span style=\"color:#CC0000;\">活动策划书</span>、策划书模板、项目策划书、企业策划书、营销策划书、运动会策划书、服装店策划书、节目...\r\n			</div>\r\n			<div class=\"f13\">\r\n				<span class=\"g\" style=\"color:#008000;\">yjbys.com/cehuashu/&nbsp;2014-05-16&nbsp;</span>\r\n				<div class=\"c-tools\" id=\"tools_5018445628674313400\">\r\n					<span class=\"c-icon c-icon-triangle-down-g\" style=\"vertical-align:text-bottom;\"></span>\r\n				</div>\r\n<span class=\"c-icons-outer\" style=\"vertical-align:bottom;\"><span class=\"c-icons-inner\"></span></span>&nbsp;-&nbsp;<a href=\"http://cache.baiducontent.com/c?m=9d78d513d9d431df4f9ae3697d12c0156d4381132ba7d00209a08438e37328365321a3e52878564291d27d141cb20204babb7765377471eac4d5d91d87fcc16975cf3a&amp;p=8d3ed25d928a12a05abd9b7d0a14c9&amp;newp=882a9642d4db00e909b6d62d0214cf231611c20e3bd7c8543985c80a&amp;user=baidu&amp;fm=sc&amp;query=%BB%EE%B6%AF%B2%DF%BB%AE&amp;qid=&amp;p1=2\" target=\"_blank\" class=\"m\">百度快照</a>\r\n			</div>\r\n		</div>\r\n	</div>\r\n</div>\r\n<div class=\"result c-container \" id=\"3\" style=\"font-size:13px;color:#333333;font-family:arial;background-color:#FFFFFF;\">\r\n	<h3 class=\"t\" style=\"font-weight:normal;font-size:medium;\">\r\n		<a href=\"http://www.baidu.com/link?url=Yp4EDZO80SGYUdJ4Fi2BuGa9SOyaAA0_gasCNuIUmLb4FvH-V9gYEWiZ4AHlJGLpq3UTUQjs9Qq-jyRgATPWhq\" target=\"_blank\">校园<span style=\"color:#CC0000;\">活动策划书</span></a>\r\n	</h3>\r\n	<div class=\"c-abstract\">\r\n		校园定向越野赛<span style=\"color:#CC0000;\">活动策划书</span>&nbsp;“感谢有你”朗诵大赛<span style=\"color:#CC0000;\">活动策划书</span>&nbsp;大学生义务支教<span style=\"color:#CC0000;\">活动策划</span>方案 电子竞技大赛策划书 “twinkle girls”女生节<span style=\"color:#CC0000;\">活动策划书</span>&nbsp;校园达人秀才艺大赛...\r\n	</div>\r\n	<div class=\"f13\">\r\n		<span class=\"g\" style=\"color:#008000;\">www.diyifanwen.com/fa...&nbsp;2014-05-03&nbsp;</span>\r\n		<div class=\"c-tools\" id=\"tools_3420226919416154862\">\r\n			<span class=\"c-icon c-icon-triangle-down-g\" style=\"vertical-align:text-bottom;\"></span>\r\n		</div>\r\n<span class=\"c-icons-outer\" style=\"vertical-align:bottom;\"><span class=\"c-icons-inner\"></span></span>&nbsp;-&nbsp;<a href=\"http://cache.baiducontent.com/c?m=9d78d513d9d431df4f9ae3697d12c0156d4381132ba7d00209a08438e37328365321a3e52878564291d27d141cb20c19afe7360561586beccf9bd40f8ae7852858d97a6b6d48d51d578445b2810d7f9771ca1bf4&amp;p=8a3edf16d9c107ff57ee93784a4392&amp;newp=8b2a971bc7d018e440bd9b7d0a10cb231611c20e3bd38e046c8dd850&amp;user=baidu&amp;fm=sc&amp;query=%BB%EE%B6%AF%B2%DF%BB%AE&amp;qid=&amp;p1=3\" target=\"_blank\" class=\"m\">百度快照</a>&nbsp;-&nbsp;<a href=\"http://www.baidu.com/tools?url=http%3A%2F%2Fwww.baidu.com%2Flink%3Furl%3DYp4EDZO80SGYUdJ4Fi2BuGa9SOyaAA0_gasCNuIUmLb4FvH-V9gYEWiZ4AHlJGLpq3UTUQjs9Qq-jyRgATPWhq&amp;jump=http%3A%2F%2Fkoubei.baidu.com%2Fwomc%2Fp%2Fsentry%3Ftitle%3D%01%E6%A0%A1%E5%9B%AD%02%E6%B4%BB%E5%8A%A8%01%E7%AD%96%E5%88%92%01%E4%B9%A6%03%26q%3D%BB%EE%B6%AF%B2%DF%BB%AE&amp;key=surl\" target=\"_blank\" class=\"m\">评价</a>\r\n	</div>\r\n	<div class=\"extquery\" style=\"padding:3px 0px 0px;\">\r\n		<a href=\"http://www.baidu.com/s?usm=3&amp;tn=site888_pg&amp;f=0&amp;wd=%E6%A0%A1%E5%9B%AD%E6%B4%BB%E5%8A%A8%E7%AD%96%E5%88%92%E4%B9%A6&amp;ie=utf-8&amp;rsv_crq=1\" target=\"_blank\">查看更多关于“<span style=\"color:#CC0000;\">校园活动策划书</span>”的内容 &gt;&gt;</a>\r\n	</div>\r\n</div>\r\n<div class=\"result c-container \" id=\"4\" style=\"font-size:13px;color:#333333;font-family:arial;background-color:#FFFFFF;\">\r\n	<h3 class=\"t\" style=\"font-weight:normal;font-size:medium;\">\r\n		<a href=\"http://www.baidu.com/link?url=7b7vxg55hV9WFYmq4LuzA1YTbhuddSpENS40V9MK9py\" target=\"_blank\"><span style=\"color:#CC0000;\">策划</span>吧 - 打造最全面的<span style=\"color:#CC0000;\">策划方案</span>参考网站</a>\r\n	</h3>\r\n	<div class=\"c-row c-gap-top-small\">\r\n		<div class=\"general_image_pic c-span6\">\r\n			<a class=\"c-img6\" href=\"http://www.baidu.com/link?url=7b7vxg55hV9WFYmq4LuzA1YTbhuddSpENS40V9MK9py\" target=\"_blank\"><img src=\"http://i9.baidu.com/it/u=2078197397,571890408&amp;fm=96&amp;s=0A647022F8FA43B514CCE8860100A0E0\" style=\"height:75px;\" /></a>\r\n		</div>\r\n		<div class=\"c-span18 c-span-last\">\r\n			<div class=\"c-abstract\">\r\n				免费提供商业策划书、创业计划书、广告策划书、<span style=\"color:#CC0000;\">活动策划书</span>、营销策划书、网站策划书、项目策划书、公关策划书、婚礼策划书、<span style=\"color:#CC0000;\">活动策划书</span>,让您在最短的时间内就可以...\r\n			</div>\r\n			<div class=\"f13\">\r\n				<span class=\"g\" style=\"color:#008000;\">www.alafy.com/&nbsp;2014-04-30&nbsp;</span>\r\n				<div class=\"c-tools\" id=\"tools_2853317794126792286\">\r\n					<span class=\"c-icon c-icon-triangle-down-g\" style=\"vertical-align:text-bottom;\"></span>\r\n				</div>\r\n<span class=\"c-icons-outer\" style=\"vertical-align:bottom;\"><span class=\"c-icons-inner\"></span></span>&nbsp;-&nbsp;<a href=\"http://cache.baiducontent.com/c?m=9d78d513d9d431df4f9ae3697d12c0156d4381132ba7d00209a08438e37328365321a3e52878564291d27d141cb20c19afe73605645d73e3d0df883d8ce6cd35&amp;p=9d3ecc1886cc41ae5dadc7710f6496&amp;newp=90759a45d7c605e61afbdc2d0214cc231610db2151d4d2103b9dd15edb&amp;user=baidu&amp;fm=sc&amp;query=%BB%EE%B6%AF%B2%DF%BB%AE&amp;qid=&amp;p1=4\" target=\"_blank\" class=\"m\">百度快照</a>\r\n			</div>\r\n		</div>\r\n	</div>\r\n</div>\r\n<div class=\"result c-container \" id=\"5\" style=\"font-size:13px;color:#333333;font-family:arial;background-color:#FFFFFF;\">\r\n	<h3 class=\"t\" style=\"font-weight:normal;font-size:medium;\">\r\n		<a href=\"http://www.baidu.com/link?url=tON0B9dRTnjLXl3MsztYR04X4wVuIGRz36AAHwJLPM_U7OZH2Q-8d2bbq2bN-EYY\" target=\"_blank\">北京<span style=\"color:#CC0000;\">活动策划</span>招聘求职信息_智联招聘</a>\r\n	</h3>\r\n	<div class=\"c-abstract\">\r\n		智联招聘为您提供所有行业所有类别的北京<span style=\"color:#CC0000;\">活动策划</span>招聘信息、北京<span style=\"color:#CC0000;\">活动策划</span>求职信息,想找最新最全的北京<span style=\"color:#CC0000;\">活动策划</span>招聘信息、求职信息就上智联招聘.\r\n	</div>\r\n	<div class=\"f13\">\r\n		<span class=\"g\" style=\"color:#008000;\">jobs.zhaopin.com/beij...&nbsp;2014-05-02&nbsp;</span>\r\n		<div class=\"c-tools\" id=\"tools_8886976139714523425\">\r\n			<span class=\"c-icon c-icon-triangle-down-g\" style=\"vertical-align:text-bottom;\"></span>\r\n		</div>\r\n<span class=\"c-icons-outer\" style=\"vertical-align:bottom;\"><span class=\"c-icons-inner\"><span class=\"c-vline\"></span><span class=\"certification vstar\"><a href=\"http://trust.baidu.com/vcard/index/show?id=v_6f95ab13c90aebca2e64b85829bd9d46\" class=\"c-icon c-icon-v c-icon-v1 c-icon-v3\" target=\"_blank\"></a></span></span></span>&nbsp;-&nbsp;<a href=\"http://cache.baiducontent.com/c?m=9f65cb4a8c8507ed4fece763104e8a3658438014748d83483d8fcf5f93130a1c187bb3ec7c7a4b5886d83d3f04a94241feb56b32610c37c7ebdfff3dcacb963f5cfc3035000bf64105a56db8bb3632b257&amp;p=8378d65d85cc43ff57ed9574495f9d&amp;newp=882a9544dc8a1aee1fbe9b7c7f4dc1231610db2151d2d015368fd20f&amp;user=baidu&amp;fm=sc&amp;query=%BB%EE%B6%AF%B2%DF%BB%AE&amp;qid=&amp;p1=5\" target=\"_blank\" class=\"m\">百度快照</a>&nbsp;-&nbsp;<a href=\"http://www.baidu.com/tools?url=http%3A%2F%2Fwww.baidu.com%2Flink%3Furl%3DtON0B9dRTnjLXl3MsztYR04X4wVuIGRz36AAHwJLPM_U7OZH2Q-8d2bbq2bN-EYY&amp;jump=http%3A%2F%2Fkoubei.baidu.com%2Fwomc%2Fp%2Fsentry%3Ftitle%3D%01%E5%8C%97%E4%BA%AC%02%E6%B4%BB%E5%8A%A8%01%E7%AD%96%E5%88%92%03%E6%8B%9B%E8%81%98%01%E6%B1%82%E8%81%8C%01%E4%BF%A1%E6%81%AF%01_%01%E6%99%BA%E8%81%94%01%E6%8B%9B%E8%81%98%01%26q%3D%BB%EE%B6%AF%B2%DF%BB%AE&amp;key=surl\" target=\"_blank\" class=\"m\">评价</a>\r\n	</div>\r\n</div>', '五邑大学', '500', '3', '0');
INSERT INTO `lj_activity` VALUES ('5', null, '端午节来了', '1401796055', null, '西瓜，饺子，粽子，应有尽有', '北区饭堂2楼', '0', '3', '0');
INSERT INTO `lj_activity` VALUES ('6', null, '我我我我我哇', '1401796737', '1402487941', '哇哇哇', '哇哇哇', '50', '3', '0');

-- ----------------------------
-- Table structure for `lj_activityinfo`
-- ----------------------------
DROP TABLE IF EXISTS `lj_activityinfo`;
CREATE TABLE `lj_activityinfo` (
  `activityinfoid` int(11) NOT NULL AUTO_INCREMENT,
  `activityid` int(11) DEFAULT NULL,
  `userid` varchar(45) DEFAULT NULL,
  `joinnumber` int(11) DEFAULT NULL COMMENT '默认为1',
  `status` tinyint(4) DEFAULT NULL COMMENT '0.不参与(默认)1.参与',
  PRIMARY KEY (`activityinfoid`),
  KEY `FK_activity_activityinfo` (`activityid`),
  KEY `FK_user_activityinfo` (`userid`),
  CONSTRAINT `FK_activity_activityinfo` FOREIGN KEY (`activityid`) REFERENCES `lj_activity` (`activityid`),
  CONSTRAINT `FK_user_activityinfo` FOREIGN KEY (`userid`) REFERENCES `lj_user` (`userid`)
) ENGINE=InnoDB AUTO_INCREMENT=48 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of lj_activityinfo
-- ----------------------------
INSERT INTO `lj_activityinfo` VALUES ('13', '3', 'AP1006451', '1', '1');
INSERT INTO `lj_activityinfo` VALUES ('14', '4', 'AP1006451', '1', '1');
INSERT INTO `lj_activityinfo` VALUES ('17', '3', 'AP1006453', '5', '1');
INSERT INTO `lj_activityinfo` VALUES ('18', '1', 'AP1006419', '2', '1');
INSERT INTO `lj_activityinfo` VALUES ('19', '1', 'ap1003212', '4', '1');
INSERT INTO `lj_activityinfo` VALUES ('20', '1', 'AP1006429', '1', '1');
INSERT INTO `lj_activityinfo` VALUES ('21', '1', 'AP1006452', '1', '1');
INSERT INTO `lj_activityinfo` VALUES ('23', '1', 'AP1006459', '4', '1');
INSERT INTO `lj_activityinfo` VALUES ('24', '1', 'AP1006458', '1', '1');
INSERT INTO `lj_activityinfo` VALUES ('25', '1', 'AP1006457', '1', '1');
INSERT INTO `lj_activityinfo` VALUES ('26', '1', 'AP1006456', '1', '1');
INSERT INTO `lj_activityinfo` VALUES ('27', '1', 'AP1006455', '1', '1');
INSERT INTO `lj_activityinfo` VALUES ('30', '1', 'AP1006454', '3', '1');
INSERT INTO `lj_activityinfo` VALUES ('31', '3', 'AP1006454', '1', '1');
INSERT INTO `lj_activityinfo` VALUES ('33', '2', 'AP1006429', '1', '1');
INSERT INTO `lj_activityinfo` VALUES ('34', '4', 'AP1006429', '1', '1');
INSERT INTO `lj_activityinfo` VALUES ('35', '3', 'AP1006429', '1', '1');
INSERT INTO `lj_activityinfo` VALUES ('36', '3', 'AP1006452', '1', '1');
INSERT INTO `lj_activityinfo` VALUES ('37', '1', 'AP1006451', '1', '1');
INSERT INTO `lj_activityinfo` VALUES ('38', '1', 'AP1006453', '1', '1');
INSERT INTO `lj_activityinfo` VALUES ('39', '5', 'AP1006458', '1', '1');
INSERT INTO `lj_activityinfo` VALUES ('40', '6', 'ap1006459', '1', '1');
INSERT INTO `lj_activityinfo` VALUES ('44', '6', 'AP1006452', '5', '1');
INSERT INTO `lj_activityinfo` VALUES ('45', '6', 'AP1006429', '3', '1');
INSERT INTO `lj_activityinfo` VALUES ('46', '6', 'AP1006368', '1', '1');
INSERT INTO `lj_activityinfo` VALUES ('47', '6', 'ap1006453', '1', '1');

-- ----------------------------
-- Table structure for `lj_activityreview`
-- ----------------------------
DROP TABLE IF EXISTS `lj_activityreview`;
CREATE TABLE `lj_activityreview` (
  `activityreviewid` int(11) NOT NULL AUTO_INCREMENT,
  `userid` varchar(45) DEFAULT NULL,
  `activityid` int(11) DEFAULT NULL,
  `content` text,
  `picture1` varchar(255) DEFAULT NULL,
  `picture2` varchar(255) DEFAULT NULL,
  `picture3` varchar(255) DEFAULT NULL,
  `addtime` int(11) DEFAULT NULL,
  `status` tinyint(11) DEFAULT NULL COMMENT '0:正常',
  PRIMARY KEY (`activityreviewid`),
  KEY `FK_activity_activityreview` (`activityid`),
  KEY `FK_user_activityreview` (`userid`),
  CONSTRAINT `FK_activity_activityreview` FOREIGN KEY (`activityid`) REFERENCES `lj_activity` (`activityid`),
  CONSTRAINT `FK_user_activityreview` FOREIGN KEY (`userid`) REFERENCES `lj_user` (`userid`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of lj_activityreview
-- ----------------------------

-- ----------------------------
-- Table structure for `lj_admin`
-- ----------------------------
DROP TABLE IF EXISTS `lj_admin`;
CREATE TABLE `lj_admin` (
  `adminid` varchar(45) NOT NULL,
  `adminname` varchar(45) DEFAULT NULL,
  `password` varchar(255) DEFAULT NULL,
  `level` tinyint(4) DEFAULT NULL COMMENT '0:超级管理员 1:一般管理员(默认) 2：新闻部',
  PRIMARY KEY (`adminid`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of lj_admin
-- ----------------------------
INSERT INTO `lj_admin` VALUES ('admin', '超级管理员', '7fa8282ad93047a4d6fe6111c93b308a', '2');
INSERT INTO `lj_admin` VALUES ('adminxc', '宣传部', 'ab7419140617adc41031c1362a8fb89a', '2');

-- ----------------------------
-- Table structure for `lj_article`
-- ----------------------------
DROP TABLE IF EXISTS `lj_article`;
CREATE TABLE `lj_article` (
  `articleid` int(11) NOT NULL AUTO_INCREMENT,
  `classid` int(11) DEFAULT NULL,
  `adminid` varchar(45) DEFAULT NULL,
  `title` varchar(255) DEFAULT NULL,
  `content` longtext,
  `addtime` int(11) DEFAULT NULL,
  `priority` tinyint(4) DEFAULT '3' COMMENT '优先级',
  `slidestatus` tinyint(4) DEFAULT NULL COMMENT '0:不启用1:启用',
  `slidepicture` varchar(255) DEFAULT NULL,
  `viewcount` int(11) DEFAULT '1',
  `origin` varchar(45) DEFAULT NULL,
  `filename` varchar(255) DEFAULT NULL,
  `articlestatus` tinyint(4) DEFAULT NULL COMMENT '0:发布(默认)1:存档',
  PRIMARY KEY (`articleid`),
  KEY `FK_actrticle_class` (`classid`),
  KEY `FK_admin_article` (`adminid`),
  CONSTRAINT `FK_actrticle_class` FOREIGN KEY (`classid`) REFERENCES `lj_class` (`classid`),
  CONSTRAINT `FK_admin_article` FOREIGN KEY (`adminid`) REFERENCES `lj_admin` (`adminid`)
) ENGINE=InnoDB AUTO_INCREMENT=39 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of lj_article
-- ----------------------------
INSERT INTO `lj_article` VALUES ('13', '1', 'admin', '邑大廉盟足球赛对战潮汕，关键最后几分钟，进球了！！', '<p>\r\n	<span style=\"color:#333333;font-family:Arial, Helvetica, sans-serif;font-size:14px;line-height:23px;background-color:#FAFAFA;\"><span style=\"background-color:#009900;\">4月12日</span>，天高气爽。仲春之初，邑大廉盟足球赛对战潮汕，关键最后几分钟，进球了！！最终以1：0险胜潮汕，进军四强！欢呼吧！呐喊吧，但我们的目标不在这里。接下来将在4月19日对战鹤山队，敬请期待！</span>\r\n</p>\r\n<p>\r\n	<span style=\"color:#333333;font-family:Arial, Helvetica, sans-serif;font-size:14px;line-height:23px;background-color:#FAFAFA;\"><img src=\"http://ww4.sinaimg.cn/bmiddle/b0afc4d7jw1efcp3ui1kjj20qo0f0jst.jpg\" alt=\"\" /><br />\r\n</span>\r\n</p>\r\n<p>\r\n	<span style=\"color:#333333;font-family:Arial, Helvetica, sans-serif;font-size:14px;line-height:23px;background-color:#FAFAFA;\"><img src=\"/wyulianjiang/Public/Editor/attached/image/20140414/20140414153634_70051.jpg\" alt=\"\" /><br />\r\n</span>\r\n</p>', '1397489802', '3', '1', '013.jpg', '305', '五邑大学廉江同乡会', null, '0');
INSERT INTO `lj_article` VALUES ('14', '1', 'admin', '今年五邑大学“同乡杯”篮球赛的抽签结果', '<p>\r\n	<span style=\"color:#333333;font-family:Arial, Helvetica, sans-serif;font-size:14px;line-height:23px;background-color:#FAFAFA;\"><span style=\"background-color:#009900;\"><span style=\"color:#333333;font-family:Arial, Helvetica, sans-serif;font-size:14px;line-height:23px;background-color:#FAFAFA;\">这个是今年五邑大学“同乡杯”篮球赛的抽签结果，共有20只球队参加，相比去年，今年更多的队伍加入了我们的行列，在这里先预祝这次比赛顺利进行，赛出我们的实力，赛出我们的风格，重要的都是友谊第一，比赛第二</span><img src=\"http://img.t.sinajs.cn/t4/appstyle/expression/ext/normal/cc/o_org.gif\" title=\"[拳头]\" alt=\"[拳头]\" /><img src=\"http://img.t.sinajs.cn/t4/appstyle/expression/ext/normal/cc/o_org.gif\" title=\"[拳头]\" alt=\"[拳头]\" /></span></span>\r\n</p>\r\n<p>\r\n	<span style=\"color:#333333;font-family:Arial, Helvetica, sans-serif;font-size:14px;line-height:23px;background-color:#FAFAFA;\"><img src=\"http://ww4.sinaimg.cn/bmiddle/b0afc4d7jw1eeu557wis2j218g0p0q5q.jpg\" alt=\"\" /><br />\r\n</span> \r\n</p>', '1397489921', '3', '1', '014.jpg', '314', '五邑大学廉江同乡会', null, '0');
INSERT INTO `lj_article` VALUES ('15', '1', 'admin', '今年五邑大学“同乡杯”篮球赛的抽签结果', '<p>\r\n	<span style=\"color:#333333;font-family:Arial, Helvetica, sans-serif;font-size:14px;line-height:23px;background-color:#FAFAFA;\"><span style=\"color:#333333;font-family:Arial, Helvetica, sans-serif;font-size:14px;line-height:23px;background-color:#FAFAFA;\">今天的比赛太精彩啦，踢出了我们的水平，踢出了我们的风格，“城际杯”足球赛5:0战胜湛江，以小组第一出线，邑大廉盟的所有球员你们是最棒的，所以拉拉队员也是顶呱呱的，今天是属于你们的</span></span>\r\n</p>\r\n<p>\r\n	<span style=\"color:#333333;font-family:Arial, Helvetica, sans-serif;font-size:14px;line-height:23px;background-color:#FAFAFA;\"><span style=\"color:#333333;font-family:Arial, Helvetica, sans-serif;font-size:14px;line-height:23px;background-color:#FAFAFA;\"><img src=\"http://ww2.sinaimg.cn/bmiddle/b0afc4d7jw1eehk6uxx6yj218g0p0gt1.jpg\" alt=\"\" /><br />\r\n</span></span>\r\n</p>', '1397490024', '3', '1', '015.jpg', '303', '五邑大学廉江同乡会', null, '0');
INSERT INTO `lj_article` VALUES ('16', '1', 'admin', '今天的比赛太精彩啦，踢出了我们的水平，踢出了我们的风格.超级利害，加油加油加油啦', '<p>\r\n	<span style=\"color:#333333;font-family:Arial, Helvetica, sans-serif;font-size:14px;line-height:23px;background-color:#FAFAFA;\"><span style=\"color:#333333;font-family:Arial, Helvetica, sans-serif;font-size:14px;line-height:23px;background-color:#FAFAFA;\">今天的比赛太精彩啦，踢出了我们的水平，踢出了我们的风格，“城际杯”足球赛5:0战胜湛江，以小组第一出线，邑大廉盟的所有球员你们是最棒的，所以拉拉队员也是顶呱呱的，今天是属于你们的</span></span>\r\n</p>\r\n<p>\r\n	<span style=\"color:#333333;font-family:Arial, Helvetica, sans-serif;font-size:14px;line-height:23px;background-color:#FAFAFA;\"><span style=\"color:#333333;font-family:Arial, Helvetica, sans-serif;font-size:14px;line-height:23px;background-color:#FAFAFA;\"><img src=\"http://ww2.sinaimg.cn/bmiddle/b0afc4d7jw1eehk6uxx6yj218g0p0gt1.jpg\" alt=\"\" /><br />\r\n</span></span>\r\n</p>', '1397490081', '3', '1', '016.jpg', '312', '五邑大学廉江同乡会', null, '0');
INSERT INTO `lj_article` VALUES ('17', '1', 'admin', '今天的比赛太精彩啦，踢出了我们的水平，踢出了我们的风格.超级利害，加油加油加油啦，你们是最棒的', '<p>\r\n	<span style=\"color:#333333;font-family:Arial, Helvetica, sans-serif;font-size:14px;line-height:23px;background-color:#FAFAFA;\"><span style=\"color:#333333;font-family:Arial, Helvetica, sans-serif;font-size:14px;line-height:23px;background-color:#FAFAFA;\">今天的比赛太精彩啦，踢出了我们的水平，踢出了我们的风格，“城际杯”足球赛5:0战胜湛江，以小组第一出线，邑大廉盟的所有球员你们是最棒的，所以拉拉队员也是顶呱呱的，今天是属于你们的</span></span>\r\n</p>\r\n<p>\r\n	<span style=\"color:#333333;font-family:Arial, Helvetica, sans-serif;font-size:14px;line-height:23px;background-color:#FAFAFA;\"><span style=\"color:#333333;font-family:Arial, Helvetica, sans-serif;font-size:14px;line-height:23px;background-color:#FAFAFA;\"><img src=\"http://ww2.sinaimg.cn/bmiddle/b0afc4d7jw1eehk6uxx6yj218g0p0gt1.jpg\" alt=\"\" /><br />\r\n</span></span>\r\n</p>', '1398878017', '2', '1', '017.jpg', '357', '五邑大学廉江同乡会', null, '0');
INSERT INTO `lj_article` VALUES ('21', '1', 'admin', '踢出了我们的风格.超级利害，加油加油加油啦，你们是最棒的', '<p>\r\n	<span style=\"color:#333333;font-family:Arial, Helvetica, sans-serif;font-size:14px;line-height:23px;background-color:#FAFAFA;\"><span style=\"color:#333333;font-family:Arial, Helvetica, sans-serif;font-size:14px;line-height:23px;background-color:#FAFAFA;\">今天的比赛太精彩啦，踢出了我们的水平，踢出了我们的风格，“城际杯”足球赛5:0战胜湛江，以小组第一出线，邑大廉盟的所有球员你们是最棒的，所以拉拉队员也是顶呱呱的，今天是属于你们的</span></span>\r\n</p>\r\n<p>\r\n	<span style=\"color:#333333;font-family:Arial, Helvetica, sans-serif;font-size:14px;line-height:23px;background-color:#FAFAFA;\"><span style=\"color:#333333;font-family:Arial, Helvetica, sans-serif;font-size:14px;line-height:23px;background-color:#FAFAFA;\"><img src=\"http://ww2.sinaimg.cn/bmiddle/b0afc4d7jw1eehk6uxx6yj218g0p0gt1.jpg\" alt=\"\" /><br />\r\n</span></span>\r\n</p>', '1397490164', '3', '0', null, '329', '五邑大学廉江同乡会', null, '0');
INSERT INTO `lj_article` VALUES ('22', '1', 'admin', '踢出了我们的风格.超级利害，加油加油加油啦，你们是最棒的', '<p>\r\n	<span style=\"color:#333333;font-family:Arial, Helvetica, sans-serif;font-size:14px;line-height:23px;background-color:#FAFAFA;\"><span style=\"color:#333333;font-family:Arial, Helvetica, sans-serif;font-size:14px;line-height:23px;background-color:#FAFAFA;\">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<span style=\"background-color:#337FE5;\"><strong>今天的比赛</strong></span>太精彩啦，踢出了我们的水平，踢出了我们的风格，“城际杯”足球赛5:0战胜湛江，以小组第一出线，邑大廉盟的所有球员你们是最棒的，所以拉拉队员也是顶呱呱的，今天是属于你们的</span></span>\r\n</p>\r\n<p>\r\n	<span style=\"color:#333333;font-family:Arial, Helvetica, sans-serif;font-size:14px;line-height:23px;background-color:#FAFAFA;\"><span style=\"color:#333333;font-family:Arial, Helvetica, sans-serif;font-size:14px;line-height:23px;background-color:#FAFAFA;\"><img src=\"http://ww2.sinaimg.cn/bmiddle/b0afc4d7jw1eehk6uxx6yj218g0p0gt1.jpg\" alt=\"\" /><br />\r\n</span></span> \r\n</p>', '1397490247', '3', '0', null, '303', '五邑大学廉江同乡会', null, '0');
INSERT INTO `lj_article` VALUES ('24', '0', 'admin', '同乡杯篮球赛小组赛的第4场比赛', '&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; &nbsp; <span style=\"font-family:微软雅黑, \'MS Sans Serif\', sans-serif;font-size:13px;line-height:normal;\">明天下午四点半，我们将在2号场迎来同乡杯篮球赛小组赛的第4场比赛，对手是电白。如果大家有时间可以去加加油，我们齐齐做落着距</span>', '1397651856', '3', '0', null, '305', '五邑大学廉江同乡会', null, '0');
INSERT INTO `lj_article` VALUES ('25', '0', 'admin', '今天下午3点在露天篮球场，我们还有一场和恩平的“同乡杯”篮球赛', '&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; &nbsp; <span style=\"font-family:微软雅黑, \'MS Sans Serif\', sans-serif;font-size:13px;line-height:normal;\">各位同乡，大家晚上好。今天下午3点在露天篮球场，我们还有一场和恩平的“同乡杯”篮球赛，大家有空就多多加油吧！昨天我们同乡的足球队进入了4强，目标还没有实现，还要继续努力。篮球虽然没有赢，但我们享受过程，还有我们这么一批强大的拉拉队，大家好样的！！！！</span>', '1397651926', '3', '0', null, '306', '五邑大学廉江同乡会', null, '0');
INSERT INTO `lj_article` VALUES ('26', '0', 'admin', '为冠军梦一起奋战而感到自豪', '&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; &nbsp; <span style=\"font-family:微软雅黑, \'MS Sans Serif\', sans-serif;font-size:13px;line-height:normal;\">【为自己喜欢的球队奋战】有时候，喜欢上一支球队是因为一个人；有时候，喜欢上一支球队是因为一个画面，而我喜欢一支球队是因为我们能在一起踢球，一起追逐冠军梦。我们不知道明天会发生什么，不知道比赛结果如何，但我会因为明天大家能在一起流过汗水，为冠军梦一起奋战而感到自豪。明天10:00假草见，为我们喜欢的球队加油。ps:10:30正式与潮汕对决。</span>', '1397651987', '3', '0', null, '329', '五邑大学廉江同乡会', null, '0');
INSERT INTO `lj_article` VALUES ('27', '0', 'admin', '为冠军梦一起奋战而感到自豪', '&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; &nbsp; <span style=\"font-family:微软雅黑, \'MS Sans Serif\', sans-serif;font-size:13px;line-height:normal;\">【为自己喜欢的球队奋战】有时候，喜欢上一支球队是因为一个人；有时候，喜欢上一支球队是因为一个画面，而我喜欢一支球队是因为我们能在一起踢球，一起追逐冠军梦。我们不知道明天会发生什么，不知道比赛结果如何，但我会因为明天大家能在一起流过汗水，为冠军梦一起奋战而感到自豪。明天10:00假草见，为我们喜欢的球队加油。ps:10:30正式与潮汕对决。</span>', '1397651989', '3', '0', null, '325', '五邑大学廉江同乡会', null, '0');
INSERT INTO `lj_article` VALUES ('28', '0', 'admin', '为冠军梦一起奋战而感到自豪', '&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; &nbsp; <span style=\"font-family:微软雅黑, \'MS Sans Serif\', sans-serif;font-size:13px;line-height:normal;\">【为自己喜欢的球队奋战】有时候，喜欢上一支球队是因为一个人；有时候，喜欢上一支球队是因为一个画面，而我喜欢一支球队是因为我们能在一起踢球，一起追逐冠军梦。我们不知道明天会发生什么，不知道比赛结果如何，但我会因为明天大家能在一起流过汗水，为冠军梦一起奋战而感到自豪。明天10:00假草见，为我们喜欢的球队加油。ps:10:30正式与潮汕对决。</span>', '1397651992', '3', '0', null, '319', '五邑大学廉江同乡会', null, '0');
INSERT INTO `lj_article` VALUES ('31', '1', 'admin', '邑大廉盟足球', '<h2>\r\n	<span style=\"font-family:KaiTi_GB2312;\">虽然我们这次“城际杯”拿不到冠军，但是冠军已经离我们不远了</span> \r\n</h2>', '1398788934', '2', '0', '002.jpg', '206', '五邑大学廉江同乡会', null, '0');
INSERT INTO `lj_article` VALUES ('36', '1', 'admin', '啊啊啊', '飒飒飒飒', '1399901949', '3', '0', null, '3', '五邑大学廉江同乡会', null, '0');
INSERT INTO `lj_article` VALUES ('38', '1', 'adminxc', '是滴是滴', '测试内容', '1402049677', '3', null, null, '1', '五邑大学廉江同乡会', null, '0');

-- ----------------------------
-- Table structure for `lj_articlereview`
-- ----------------------------
DROP TABLE IF EXISTS `lj_articlereview`;
CREATE TABLE `lj_articlereview` (
  `articlereviewid` int(11) NOT NULL AUTO_INCREMENT,
  `articleid` int(11) DEFAULT NULL,
  `userid` varchar(45) DEFAULT NULL,
  `content` text,
  `addtime` int(11) DEFAULT NULL,
  `status` int(11) DEFAULT '0' COMMENT '0:正常',
  PRIMARY KEY (`articlereviewid`),
  KEY `FK_article_articlereview` (`articleid`),
  KEY `FK_user_articlereview` (`userid`),
  CONSTRAINT `FK_article_articlereview` FOREIGN KEY (`articleid`) REFERENCES `lj_article` (`articleid`) ON DELETE NO ACTION ON UPDATE NO ACTION,
  CONSTRAINT `FK_user_articlereview` FOREIGN KEY (`userid`) REFERENCES `lj_user` (`userid`)
) ENGINE=InnoDB AUTO_INCREMENT=36 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of lj_articlereview
-- ----------------------------
INSERT INTO `lj_articlereview` VALUES ('2', '14', 'AP1006429', '粉丝带爱水稍等<img src=\"http://localhost/wyulianjiang/Public/Editor/plugins/emoticons/images/20.gif\" border=\"0\" alt=\"\" />', '1398111550', '0');
INSERT INTO `lj_articlereview` VALUES ('3', '14', 'AP1006429', '<span style=\"font-size:16px;font-family:KaiTi_GB2312;\">加油偶爱</span>', '1398113685', '0');
INSERT INTO `lj_articlereview` VALUES ('4', '14', 'AP1006429', '您发送到', '1398113769', '0');
INSERT INTO `lj_articlereview` VALUES ('5', '14', 'AP1006429', '加油吖', '1398113986', '0');
INSERT INTO `lj_articlereview` VALUES ('6', '14', 'AP1006429', '打昂达啊A&nbsp;<img src=\"http://localhost/wyulianjiang/Public/Editor/plugins/emoticons/images/9.gif\" border=\"0\" alt=\"\" />', '1398114166', '0');
INSERT INTO `lj_articlereview` VALUES ('7', '14', 'AP1006429', '我想', '1398114248', '0');
INSERT INTO `lj_articlereview` VALUES ('8', '28', 'AP1006429', '手动阀', '1398115377', '0');
INSERT INTO `lj_articlereview` VALUES ('11', '26', 'AP1006429', '<div style=\"text-align:center;\">\r\n	<img src=\"http://localhost/wyulianjiang/Public/Editor/plugins/emoticons/images/0.gif\" border=\"0\" alt=\"\" /><span style=\"line-height:1.5;\">加油哦</span>\r\n</div>', '1398159636', '0');
INSERT INTO `lj_articlereview` VALUES ('12', '28', 'AP1006429', '<img src=\"http://localhost/wyulianjiang/Public/Editor/plugins/emoticons/images/11.gif\" border=\"0\" alt=\"\" />', '1398178298', '0');
INSERT INTO `lj_articlereview` VALUES ('20', '27', 'AP1006419', '<img src=\"http://localhost/wyulianjiang/Public/Editor/plugins/emoticons/images/10.gif\" border=\"0\" alt=\"\" />', '1398497200', '0');
INSERT INTO `lj_articlereview` VALUES ('21', '22', 'AP1006419', '<img src=\"http://localhost/wyulianjiang/Public/Editor/plugins/emoticons/images/29.gif\" border=\"0\" alt=\"\" />', '1398497220', '0');
INSERT INTO `lj_articlereview` VALUES ('22', '22', 'AP1006419', '<img src=\"http://localhost/wyulianjiang/Public/Editor/plugins/emoticons/images/30.gif\" border=\"0\" alt=\"\" />', '1398499308', '0');
INSERT INTO `lj_articlereview` VALUES ('23', '17', 'ap1006429', '<img src=\"http://localhost/wyulianjiang/Public/Editor/plugins/emoticons/images/2.gif\" border=\"0\" alt=\"\" />', '1399213605', '0');
INSERT INTO `lj_articlereview` VALUES ('24', '17', 'ap1006429', '<img src=\"http://localhost/wyulianjiang/Public/Editor/plugins/emoticons/images/1.gif\" border=\"0\" alt=\"\" />', '1399217020', '0');
INSERT INTO `lj_articlereview` VALUES ('25', '17', 'ap1006429', '<img src=\"http://localhost/wyulianjiang/Public/Editor/plugins/emoticons/images/13.gif\" border=\"0\" alt=\"\" />', '1399218001', '0');
INSERT INTO `lj_articlereview` VALUES ('26', '17', 'ap1006429', '6456', '1400958903', '0');
INSERT INTO `lj_articlereview` VALUES ('27', '13', 'AP1006456', '我我我<img src=\"http://localhost/wyulianjiang/Public/Editor/plugins/emoticons/images/13.gif\" border=\"0\" alt=\"\" />', '1401103228', '0');
INSERT INTO `lj_articlereview` VALUES ('28', '27', 'AP1006451', '我啊<img src=\"http://localhost/wyulianjiang/Public/Editor/plugins/emoticons/images/13.gif\" border=\"0\" alt=\"\" />', '1401105632', '0');
INSERT INTO `lj_articlereview` VALUES ('29', '21', 'AP1006452', '喔喔', '1401175987', '0');
INSERT INTO `lj_articlereview` VALUES ('30', '21', 'AP1006452', '<p>\r\n	我啊啊节哀节哀哦啊joi<img alt=\"\" src=\"http://localhost/wyulianjiang/Public/Editor/plugins/emoticons/images/29.gif\" border=\"0\" /> \r\n</p>', '1401179418', '0');
INSERT INTO `lj_articlereview` VALUES ('31', '25', 'AP1006452', 'jsiosjoisjos', '1401179842', '0');
INSERT INTO `lj_articlereview` VALUES ('32', '17', 'ap1006429', '<img src=\"http://localhost/wyulianjiang/Public/Editor/plugins/emoticons/images/13.gif\" border=\"0\" alt=\"\" />五邑大学廉江同乡会门户网站新闻评论', '1401181266', '0');
INSERT INTO `lj_articlereview` VALUES ('33', '24', 'AP1006429', '<img src=\"http://localhost/wyulianjiang/Public/Editor/plugins/emoticons/images/42.gif\" border=\"0\" alt=\"\" />五邑大学廉江同乡会门户网站建成', '1401216950', '0');
INSERT INTO `lj_articlereview` VALUES ('34', '16', 'AP1006454', '<img src=\"http://localhost/wyulianjiang/Public/Editor/plugins/emoticons/images/13.gif\" border=\"0\" alt=\"\" />', '1401687272', '0');
INSERT INTO `lj_articlereview` VALUES ('35', '17', 'AP1006368', '<img src=\"http://localhost/wyulianjiang/Public/Editor/plugins/emoticons/images/1.gif\" border=\"0\" alt=\"\" />', '1401890054', '0');

-- ----------------------------
-- Table structure for `lj_book`
-- ----------------------------
DROP TABLE IF EXISTS `lj_book`;
CREATE TABLE `lj_book` (
  `isbn` varchar(125) NOT NULL,
  `bookname` varchar(255) DEFAULT NULL,
  `author` varchar(45) DEFAULT NULL,
  `publisher` varchar(255) DEFAULT NULL,
  `price` double DEFAULT NULL,
  `cover` varchar(255) DEFAULT NULL,
  `introduction` longtext,
  PRIMARY KEY (`isbn`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of lj_book
-- ----------------------------
INSERT INTO `lj_book` VALUES ('9781840785371', 'PHP & MYSQL in Easy Steps', 'McGrath, Mike', null, '0', 'http://img5.douban.com/lpic/s11142716.jpg', '');
INSERT INTO `lj_book` VALUES ('9787040195835', '数据库系统概论', '王珊、萨师煊', null, '39', 'http://img3.douban.com/lpic/s2359163.jpg', '《数据库系统概论(第4版)》第1版、第2版和第3版分别于1983年、1991年、2000年出版。第3版被列为“面向21世纪课程教材”，第4版是普通高等教育“十五”国家级规划教材，相应课程于2005年被评为国家精品课程。《数据库系统概论(第4版)》系统全面地阐述数据库系统的基础理论、基本技术和基本方法。全书分为4篇17章。基础篇包括绪论、关系数据库、关系数据库标准语言SQL、数据库安全性和数据库完整性，共5章；设计与应用开发篇包括关系数据理论、数据库设计和数据库编程，共3章；系统篇包括关系查询处理和查询优化、数据库恢复技术、并发控制和数据库管理系统，共4章；新技术篇包括数据库技术新发展、分布式数据库系统、对象关系数据库系统、XML数据库和数据仓库与联机分析处理技术，共5章。《数据库系统概论(第4版)》可以作为高等学校计算机专业、信息管理与信息系统等相关专业数据库课程的教材。也可供从事数据库系统研究、开发和应用的研究人员和工程技术人员参考。');
INSERT INTO `lj_book` VALUES ('9787104032953', '别太单纯，也别太不单纯', '张笑恒', null, '26', 'http://img5.douban.com/lpic/s8465038.jpg', '《别太单纯,也别太不单纯》主要就讲如何适应这个社会，懂的一些人情世故，我们生活在一个现实的社会。一些人和事，你无法改变的时候，就需要改变自己，努力让自己适应这个社会。如果不想处处碰壁，你就必须懂得一些人情世故，掌握一些交际礼仪和沟通技巧，适时宜地“来事”，灵活地处世。 《别太单纯,也别太不单纯》并不是教你违心、虚伪、奸诈地迎合别人，钻空子，占便宜，而是告诉年轻人在处世方面，在善良、真诚、宽容的基础上，做事掌握分寸，谨言慎行，礼行天下，智慧灵活地待人接物。如果能做到这些，我们会少很多烦恼，对自己的生活和工作必定会有所帮助！');
INSERT INTO `lj_book` VALUES ('9787121202681', '我看电商', '黄若', null, '0', 'http://img5.douban.com/lpic/s26592649.jpg', '本书是作者近30年从事及电子商务管理的总结和分享。\r\n近年来电商行业在中国迅猛发展，2012年网络市场规模达到13,000亿人民币，诞生了淘宝、天猫、京东、、凡客、唯品会……等一大批全新的网络公司，电子商务正在日益深入的影响着越来越多人的生活。同时，这个行业连年亏损，顾客服务良莠不齐，也广为人们所关注。作者从地面到电子商务，从跨国公司高管到管理民营企业，从开创天猫模式到带领上市，被业界称为中国实战派的领军人物。如今这位自称跨界老兵的电商操盘手第一次全方位剖析电商风云，细说中美电子商务发展的不同路径，评点国内各大电商企业的是是非非，详解其中的融资、模式、运营、效率……个中经验，毫无保留的娓娓道来，笔触至深，让人不禁掩卷沉思。\r\n本书对于所有从事互联网或电商运营的企业及个人，对于投资电商或服务电商的相关业界人士，对于有志进军电商领域的年轻学生、创业者，以及对于将要触电的线下企业，都是一本不可多得的必读书。');
INSERT INTO `lj_book` VALUES ('9787308076852', '710分', '全国大学英语四、六级考试命题研究组 编', null, '29.9', 'http://img5.douban.com/lpic/s6205288.jpg', '《大学英语四级考试:完形填空、翻译与写作高分突破(710分新题型)》为了帮助准备应考的考生达到新四、六级考试的要求，适应新的考试，我们集合一线专家，倾力推出了本套辅导丛书系列。涵盖历年真题分析、标准模拟考场以及各个专项高分突破。囊括大纲规定的所有考点，综合分析历年命题规律，剖析解题思路和技法。');
INSERT INTO `lj_book` VALUES ('9787505732025', '回忆是一种淡淡的痛', '龙应台 ', '中国友谊出版公司', '20', 'http://img3.douban.com/mpic/s27069821.jpg', '放下过去，释怀自己，感谢那些抹不去的曾经……\r\n\r\n忆旧的人，总有些须事，让我莫名感怀……\r\n\r\n我们生活在这个时代，正是这个时代留给我们的个人记忆。但是，我们也有自己的 表达……\r\n\r\n最是留恋伤感，最是情真动人的心动，更是永恒的美丽！\r\n\r\n心在流浪，何必在意咫尺与远方，看看他人的行走，你也会寻找到一片感动\r\n\r\n岁月换了容颜，你是否还在驻守？\r\n\r\n我们改变不了这个世界，曾经的伤痛和苦闷让我身心疲惫。我曾流着泪，静静地躺在床上，细数前尘。不时，翻开抽屉，数点往事记忆，思绪如浪如潮，这是本来的我么？记忆中的苦，都是福，放下过去，还有什么不能释怀？坚持追逐，做一次勇敢的自己。因此，趁现在，此生未老……');
INSERT INTO `lj_book` VALUES ('9787506065221', '走出电商困局', '黄若', null, '38', 'http://img5.douban.com/lpic/s27155328.jpg', '高速增长的时代趋于结束，迅猛运转的加速器早已锈蚀\r\n这是一场转型，更是一次新的机遇\r\n《走出电商困局》是本年度最畅销管理书籍《我看电商》作者黄若的最新力作，意在深度剖析电商行业发展 ，破解电商困局。经历过10年超常规的快速增长，电商行业即将进入较为平稳的发展期。多年来这个行业不断融资不断烧钱却大多无法盈利的怪圈怎样突破？在很多企业面临估值下跌，资金吃紧，用户流失的关键节点，怎样从零售经营的细节入手构建核心竞争力？\r\n当人口红利逐渐褪去，“蛋糕”再也做不大了， GDP不再高歌猛进，投资回报日益低迷，“跑马圈地 ”的时代一去不返的时候，电商的出路又究竟在哪里？本书是作者多年来涉足零售、电商和投资行业的感想、体会与分享。作为中国连锁零售业及电子商务领域的领军人物，历经现代连锁零售业的蓬勃发展，从跨国巨头到内资民营企业，从开创天猫时代到引领当当成功上市，从电商行业到投资行业，其中作为实践者作者有很多的感悟、收获和体验与电商业者分享。\r\n过去十几年，借助国内经济高速发展的强劲势头与个人消费的时代红利，中国零售及电子商务行业取得了长足进步。消费力上升，中产阶层快速形成，庞大的市场规模吸引着来自全球的商家，自此我们进入一个商业、服务业快速发展的年代。无论是线下连锁或线上团购，每年几十万的零售体量均以两位数的增幅大步向前迈进。当狂热渐退，稳健发展逐步取代高速扩张，我们开始质疑圈地式的运动产物之下是否有足够的产出？为什么那么多的企业空有规模没有利润？为什么那么多的企业间模式雷同，价格战不断？我们又能不能以更加理性、更为精细化的管理思维，去实现从零售大国到零售强国的跨越？\r\n时间还不是问题，行业格局还没有真正形成，关键要看是否真有反思和调整的悟性。对于绝大多数过去10多年习惯于快速道上奔跑的企业，此时需要的是全面地检查一下变速器，随时做好准备换挡！');
INSERT INTO `lj_book` VALUES ('9787509742013', '', '靳辉明 李瑞琴', null, '10', 'http://img3.douban.com/lpic/s26722273.jpg', '从1848年2月马克思恩格斯发表《共产党宣言》、阐述人类解放的伟大理论以来，《宣言》已经走过160多年的历程。在《宣言》的伴随下，世界社会主义从思潮，到运动，到实践，到建立制度、打破了资本主义的一统天下。这期间世界社会主义运动有高涨，有低落，曾经波澜壮阔、势如破竹，也曾经风雨如晦、阴云密布。如今，世界早已发生了翻天覆地的变化，但当我们重读《宣言》的基本思想，联系当代世界的实际，重温《宣言》走过的历程时，我们仍能感觉到《宣言》离我们并不远。\r\n\r\n靳辉明、李瑞琴编写的这本《共产党宣言与世界社会主义》主要向读者介绍《宣言》对世界社会主义的影响，对中国革命和建设的影响，特别是对在当代历史条件下，在世界进入21世纪以来国际政治经济危机频频爆发的形势下，我们坚持用《宣言》指导当代的社会主义实践是否还有现实意义这一问题进行了阐释。希望《共产党宣言与世界社会主义》能给读者以满意的答案。');
INSERT INTO `lj_book` VALUES ('9787509744277', '马克思主义与社会主义的历史命运', '王伟光', null, '10', 'http://img5.douban.com/lpic/s26757597.jpg', '如何正确理解马克思主义与社会主义的历史命运，这是一个重大而又严肃的现实问题。《马克思主义与社会主义的历史命运》将理论与现实紧密联系起来，用平实、流畅的文字集中回答了这一问题。从中我们可以认识到推进马克思主义中国化、时代化和大众化，建设马克思主义学习型政党，坚定不移地高举中国特色社会主义旗帜，走中国特色社会主义道路的重要性、必要性和紧迫性，从而提高全党，特别是领导干部对于马克思主义和社会主义的理论自觉，坚定对于马克思主义和社会主义的政治信仰。\r\n\r\n《马克思主义与社会主义的历史命运》由王伟光编写。');
INSERT INTO `lj_book` VALUES ('9787511325488', '行为心理学', '龙春华', null, '29.8', 'http://img5.douban.com/lpic/s27285087.jpg', '行为心理学：瞬间读懂他人小动作背后隐藏的秘密，ISBN：9787511325488，作者：龙春华 著');
INSERT INTO `lj_book` VALUES ('9787514205848', '饭局攻心术', '陆洲', null, '29.8', 'http://img5.douban.com/lpic/s25141047.jpg', '《饭局攻心术》内容简介：吃饭事小，出局事大！！！饭局，中国人最重要的社交活动，承载着非同寻常的交际内涵。让一顿饭吃得顺畅，宾主尽欢，这是种能力，而《饭局攻心术》就是一本能提高你饭局交际能力的指导手册。相比其它着重礼仪等外在形式略显空洞的同类书籍，《饭局攻心术》最大的特点就是“实用”！《饭局攻心术》从实用的角度出发，实事求是地帮助读者解决饭局难题。吃从来不是饭局的重点，攻心才是一个饭局的王道。也许你会喝酒，但是用身体去拼下一个又一个饭局，一个又一个的应酬，最后闹得一身病痛，家人为你心痛。酒不在多，重在喝到位。话也不在多，重在说到点。');
INSERT INTO `lj_book` VALUES ('9787535192783', '商战：电商时代', '吴晓波 总撰稿', null, '49.8', 'http://img5.douban.com/lpic/s27185569.jpg', '比尔•盖茨曾说过：“21世纪要么电子商务，要么无商可务。”\r\n在这个一切皆电子商务的时代，人类数千年来的商业行为被颠覆，人们的购物方式、消费方式和生活方式也随之发生了前所未有的改变，我们主动或被动地步入了一个被电商颠覆的时代。\r\n《商战：电商时代》通过对全世界近百位商业大佬的面对面专访，以贝索斯、刘强东、马云、柳传志、雷军、陈年、李国庆等人之亲口讲述，通过一个接一个的传奇故事，概述了20年来世界和中国电商的发展史，以及电商对整个经济的意义；同时也告诉我们，电商时代，企业和我们应该怎样去“活”。');
INSERT INTO `lj_book` VALUES ('9787539959627', '洗脑术', '高德', null, '35', 'http://img3.douban.com/lpic/s24681892.jpg', '这是一部让你变得更加聪明的书，它是一场头脑风暴，注定改变你的思维逻辑。\r\n作者结合15年经验5万份资料3000次实验调查，从心理学上解读世界各隐秘部门、知名的领导人物都是通过什么样的手段、理念与程序把自己变成一个宗教，在跟不同的角色合作时都能有逻辑地说服对方、说服一个团队甚至说服一个国家，这里面到底隐藏着怎样的秘密。\r\n同时，作者让你从本质上全面了解洗脑真相，让你能够从根源上学会区分：什么样的洗脑是一种激励，什么样的洗脑是个美妙的陷阱，作为我们个人如何获取“洗脑术”里的正能量，并巧妙运用到人际沟通、高端谈判、公关危机、品牌营销、企业管理、情感对话等日常生活的方方面面！');
INSERT INTO `lj_book` VALUES ('9787539973043', '找对你人生中最重要的7个人', '', null, '0', 'http://img5.douban.com/lpic/s27270429.jpg', '作者为资深公共关系培训专家，总统顾问。一直致力于“六度人脉”理论研究，曾推出过畅销书《六度人脉》。这次作者化繁为简，将目光对准每个人成长过程中都要接触的七个关键角色——玩伴、同学、同事、上司、合作伙伴、知己、爱人，这7种角色代表人生不同阶段的7种关键力量！\r\n作者以生动的案例，深入浅出地分析了他们的重要作用，以及识别、交往的各种技巧要点。阅读本书，我们还将知道自己在不同的阶段需要制定的怎样的成长目标，需要与哪些人同行，以及与他们的相处之道。无论是学生、白领还是中高层管理者等，都可以从本书中找到参考的答案。');
INSERT INTO `lj_book` VALUES ('9787540448806', '圈子对了，事就成了', '黄志坚//将离', null, '29.8', 'http://img3.douban.com/lpic/s6473912.jpg', '《圈子对了,事就成了》\r\n《圈子对了,事就成了》是人际交往类励志书，读者范围较广泛。全书分为八个部分：认识人脉圈子，圈子对人生的重要性，怎样建立人脉圈子，积极开拓人脉圈子，提炼、优化自己的人脉圈子，经营和驾驭自己的人脉圈子，借鉴古今中外名人的人脉圈子。\r\n内容翔实、完备，结构清晰，由认识到建立，再到经营、驾驭。作者通过现身说事、精练的要点提示，以及引述经典案例相结合的方法，生动地讲述和展示了圈子的力量、圈子的社会现象、圈子的广度、圈子的深度，以及优化圈子、驾驭和利用圈子等，当你掌握了圈子的这些知识、技巧和方法，你将会在人际交往中如鱼得水，轻松踏上圈子铺就的成功之路。');
INSERT INTO `lj_book` VALUES ('9787550228559', '梦想还是要有的，万一实现了呢', '郭斯特', null, '39.8', 'http://img3.douban.com/lpic/s27276521.jpg', '如果给你一个回到10年前的机会，你会选择紧紧抓住自己的梦想还是选择放弃？\r\n这是一个关于梦想、成长和爱的故事，一个温暖、治愈、正能量的故事。\r\n薇薇从小患有色盲症，虽然热爱画画，但是总无法填充正确的颜色，她画的所有画都是黑白的，并且因此遭到同学嘲笑非常自卑。6岁的薇薇第一次见到彩虹，依然是黑白的。在最无助的时候，郭斯特出现在她的生活里，声称自己来自2012年，是薇薇笔下的作品。郭斯特和薇薇约定，陪她一起经历七个故事，同时她会分别见到彩虹的七种颜色，七种颜色分别代表着：希望、温暖、守候、梦想、宽容、智慧、成长。很快，薇薇见到了第一种颜色，红色，代表着鲜活的希望。\r\n每个人都希望回到生命中某一个特定的时刻，只因为那时候有放不下的事情。回到过去的郭斯特，提醒着我们的失去，也揣着我们这些年来学会的成长和明白。\r\n一本让你在残酷世界里变得强大的治愈读物，一个温暖的、感人至深的故事，一次笑泪交织的阅读体验。在充斥着不安感的浮躁社会，《梦想还是要有的，万一实现了呢》给予我们的内心坚强的力量，我们一起经历着生命中的惊喜与惶恐，经历梦想的路上的迷茫和坚持。谨以此书，献给所有相信爱和梦想的人。');
INSERT INTO `lj_book` VALUES ('9787564051532', '别让不好意思害了你', '周维丽', null, '26', 'http://img3.douban.com/lpic/s9003274.jpg', '《别让不好意思害了你》由周维丽编著。一直来，我们推崇敦厚、谦让的品格，从小，父母一边潜移默化一边耳提面命地教育我们要谦让，要相信吃亏是福，从而导致了大部分人不好意思，所以遇事不争，委曲求全。随着时代的发展，目前社会越来越遵循丛林法则，适者生存，弱肉强食之下，不好意思已经是懦弱、无能、自卑的代名词。我们时刻受到不好意思的伤害——不好意思争取合理利益，从而处处受损；不好意思拒绝无理要求，从而麻烦不断；不好意思赞美，从而失去升迁机会……《别让不好意思害了你》，让你彻底意识到不好意思的危害，完全去掉不好意思的心理疾病。学会拒绝别人和要求，学会赞美和沟通，不再懦弱和自卑，做生活中的主人！！！');
INSERT INTO `lj_book` VALUES ('9787802287976', '每天学点相处学', '柯君', null, '39', 'http://img5.douban.com/lpic/s5963748.jpg', '《每天学点相处学》主要内容：怎样在处理人际关系中做到不卑不亢，尽量照顾别人的面子；怎样在出现尴尬场面时。妥善地化解并调节气氛；怎样在出现激烈的争执时，能最适时地打圆场，照顾双方的情绪，起到调节的作用；怎样在交际中融洽气氛、沟通感情、活跃场面；怎样与最亲爱的人始终保持温馨真挚的感情……花费一些时间和精力阅读这些相处之道，在人生中的每一个重要时刻，你都会做到从容不迫、应付自如，使自己受益无穷。');
INSERT INTO `lj_book` VALUES ('9787807590231', '谋败', '何森', null, '29.8', 'http://img5.douban.com/lpic/s8823429.jpg', '善弈者谋势　先谋者不败\r\n分析企业家决策成败　揭秘成功企业运营内幕\r\n\r\n这是一本将历史和经管结合起来的奇书\r\n借历史说现实，融历史智慧于现世管理。\r\n未谋胜先谋败，是策略，是中国式管理的大智慧。\r\n企业家究竟需要什么素质才能应对派系之间的斗争？家族企业在选择接班人问题上又必须拥有怎么样的自知之明？权力制衡、资源管理、企业借势……在这些方面的谋略败局又能给中国企业家哪些警示？\r\n透视、避免这十大谋略败局，中国企业将赢得胜局，走向卓越之路。\r\n\r\n永远战战兢兢，永远如履薄冰。\r\n　　　　　　　　　　　　　　　　　　　——海尔集团董事局主席张瑞敏\r\n十年来我天天思考的都是失败，对成功视而不见，也没有什么荣誉感、自豪感，而是危机感。\r\n　　　　　　　　　　　　　　　　　　　——华为科技有限公司总裁任正非\r\n\r\n这是一本书值得特别推荐的书，作者打破时空观，用古今人物对话的形式，用小说的笔触叙写经管类文章，是一种大胆的创意，作者对“楚汉相争”中的刘项之争、“甲申三百年祭”的李自成、以及“纸上谈兵”的赵括等历史名人做了新的阐释，令人耳目一新。\r\n古语说，“谋事在人，成事在天”，无论如何，谋略，将是企业家永恒的情结。《谋败》是何森先生继《企业英雄》之后，推出的又一部分析企业家成败的力作，他以深刻的理论见解、丰富的思想内涵、诙谐而幽默的笔触，为我们揭开了“成功主题”背后的隐秘，这是一种独特的视角，值得关注。');

-- ----------------------------
-- Table structure for `lj_borrow`
-- ----------------------------
DROP TABLE IF EXISTS `lj_borrow`;
CREATE TABLE `lj_borrow` (
  `borrowid` int(11) NOT NULL AUTO_INCREMENT,
  `offerid` varchar(45) DEFAULT NULL,
  `isbn` varchar(125) DEFAULT NULL,
  `status` tinyint(4) DEFAULT NULL COMMENT '0.未借出1.下架',
  `borrowerid` varchar(45) DEFAULT NULL,
  PRIMARY KEY (`borrowid`),
  KEY `FK_book_borrow` (`isbn`),
  KEY `FK_user_borrow` (`offerid`),
  CONSTRAINT `FK_book_borrow` FOREIGN KEY (`isbn`) REFERENCES `lj_book` (`isbn`),
  CONSTRAINT `FK_user_borrow` FOREIGN KEY (`offerid`) REFERENCES `lj_user` (`userid`)
) ENGINE=InnoDB AUTO_INCREMENT=22 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of lj_borrow
-- ----------------------------
INSERT INTO `lj_borrow` VALUES ('1', 'AP1006429', '9787535192783', '3', 'ap1006419');
INSERT INTO `lj_borrow` VALUES ('2', 'AP1006429', '9787121202681', '4', 'AP1006453');
INSERT INTO `lj_borrow` VALUES ('3', 'AP1006429', '9787506065221', '0', null);
INSERT INTO `lj_borrow` VALUES ('4', 'AP1006429', '9787509744277', '1', 'ap1006419');
INSERT INTO `lj_borrow` VALUES ('5', 'AP1006419', '9787509742013', '1', 'AP1006429');
INSERT INTO `lj_borrow` VALUES ('6', 'ap1006429', '9787308076852', '0', null);
INSERT INTO `lj_borrow` VALUES ('7', 'AP1006454', '9787505732025', '0', null);
INSERT INTO `lj_borrow` VALUES ('8', 'AP1006453', '9787506065221', '0', null);
INSERT INTO `lj_borrow` VALUES ('9', 'AP1006453', '9787564051532', '0', null);
INSERT INTO `lj_borrow` VALUES ('10', 'AP1006453', '9787802287976', '0', null);
INSERT INTO `lj_borrow` VALUES ('11', 'AP1006453', '9787104032953', '4', 'AP1006429');
INSERT INTO `lj_borrow` VALUES ('12', 'AP1006453', '9787539959627', '0', null);
INSERT INTO `lj_borrow` VALUES ('13', 'AP1006453', '9787514205848', '0', null);
INSERT INTO `lj_borrow` VALUES ('14', 'AP1006453', '9787539973043', '0', null);
INSERT INTO `lj_borrow` VALUES ('15', 'AP1006453', '9787540448806', '0', null);
INSERT INTO `lj_borrow` VALUES ('16', 'ap1006452', '9787511325488', '1', 'AP1006429');
INSERT INTO `lj_borrow` VALUES ('17', 'AP1006453', '9787511325488', '0', null);
INSERT INTO `lj_borrow` VALUES ('18', 'AP1006453', '9787807590231', '0', null);
INSERT INTO `lj_borrow` VALUES ('19', 'AP1006453', '9787550228559', '0', null);
INSERT INTO `lj_borrow` VALUES ('20', 'ap1006429', '9787040195835', '0', null);
INSERT INTO `lj_borrow` VALUES ('21', 'ap1006454', '9781840785371', '0', null);

-- ----------------------------
-- Table structure for `lj_class`
-- ----------------------------
DROP TABLE IF EXISTS `lj_class`;
CREATE TABLE `lj_class` (
  `classid` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(225) DEFAULT NULL,
  PRIMARY KEY (`classid`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of lj_class
-- ----------------------------
INSERT INTO `lj_class` VALUES ('0', '同乡公告');
INSERT INTO `lj_class` VALUES ('1', '同乡新闻');

-- ----------------------------
-- Table structure for `lj_link`
-- ----------------------------
DROP TABLE IF EXISTS `lj_link`;
CREATE TABLE `lj_link` (
  `linkid` int(11) NOT NULL AUTO_INCREMENT,
  `linktitle` varchar(45) DEFAULT NULL,
  `link` varchar(255) DEFAULT NULL,
  `linkstatus` tinyint(4) DEFAULT '0' COMMENT '0:显示；1:不显示',
  PRIMARY KEY (`linkid`)
) ENGINE=InnoDB AUTO_INCREMENT=6 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of lj_link
-- ----------------------------
INSERT INTO `lj_link` VALUES ('1', '江门市廉江同乡会', 'http://www.jmlianjiang.com/', '0');
INSERT INTO `lj_link` VALUES ('2', '五邑大学', 'http://www.wyu.cn/', '0');
INSERT INTO `lj_link` VALUES ('3', '五邑大学学生子服务系统', 'http://jwc.wyu.edu.cn/student/', '0');
INSERT INTO `lj_link` VALUES ('4', '选课系统', 'http://202.192.240.54/xspj/', '0');
INSERT INTO `lj_link` VALUES ('5', '网络教学平台', 'http://eol.wyu.edu.cn/eol/homepage/common/', '0');

-- ----------------------------
-- Table structure for `lj_showpicture`
-- ----------------------------
DROP TABLE IF EXISTS `lj_showpicture`;
CREATE TABLE `lj_showpicture` (
  `showpictureid` int(11) NOT NULL AUTO_INCREMENT,
  `title` varchar(255) DEFAULT NULL,
  `name` varchar(255) DEFAULT NULL,
  `status` tinyint(4) DEFAULT NULL COMMENT '0.不启用；1.启用',
  PRIMARY KEY (`showpictureid`)
) ENGINE=InnoDB AUTO_INCREMENT=8 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of lj_showpicture
-- ----------------------------
INSERT INTO `lj_showpicture` VALUES ('1', '廉江足球胜利', '001.jpg', '1');
INSERT INTO `lj_showpicture` VALUES ('2', '同乡骄傲', '002.jpg', '1');
INSERT INTO `lj_showpicture` VALUES ('3', '出色廉江', '003.jpg', '1');
INSERT INTO `lj_showpicture` VALUES ('4', '同乡冬至', '004.jpg', '1');
INSERT INTO `lj_showpicture` VALUES ('5', '同乡羽毛球', '005.jpg', '1');
INSERT INTO `lj_showpicture` VALUES ('6', '廉江饺子', '006.jpg', '1');
INSERT INTO `lj_showpicture` VALUES ('7', '同乡情', '007.jpg', '1');

-- ----------------------------
-- Table structure for `lj_source`
-- ----------------------------
DROP TABLE IF EXISTS `lj_source`;
CREATE TABLE `lj_source` (
  `sourceid` int(11) NOT NULL AUTO_INCREMENT,
  `userid` varchar(45) DEFAULT NULL,
  `showname` varchar(255) DEFAULT NULL,
  `filename` varchar(255) DEFAULT NULL,
  `size` varchar(45) DEFAULT NULL,
  `addtime` int(11) DEFAULT NULL,
  `downloadcount` int(11) DEFAULT '0' COMMENT '资源下载次数',
  `status` tinyint(4) DEFAULT '0' COMMENT '0:正常 1:删除',
  PRIMARY KEY (`sourceid`),
  KEY `FK_user_source` (`userid`),
  CONSTRAINT `FK_user_source` FOREIGN KEY (`userid`) REFERENCES `lj_user` (`userid`)
) ENGINE=InnoDB AUTO_INCREMENT=56 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of lj_source
-- ----------------------------
INSERT INTO `lj_source` VALUES ('2', 'ap1006429', '002.jpg', '5354dc0fe59c7.jpg', '16578', '1398070287', '10', '0');
INSERT INTO `lj_source` VALUES ('3', 'ap1006429', 'config.php', '5354e1f68f976.php', '776', '1398071798', '11', '0');
INSERT INTO `lj_source` VALUES ('4', 'ap1006429', '本科生毕业论文撰写规范（参考）.doc', '5354e266ce7a2.doc', '130560', '1398071910', '20', '0');
INSERT INTO `lj_source` VALUES ('5', 'ap1006429', 'kindeditor-4.1.10.zip', '5354eea428ee7.zip', '1170841', '1398075044', '1', '0');
INSERT INTO `lj_source` VALUES ('6', 'ap1006429', 'kindeditor-4.1.10.zip', '5354ef1148f23.zip', '1170841', '1398075153', '1', '0');
INSERT INTO `lj_source` VALUES ('7', 'AP1006429', 'PersonalBankPortal.exe', '5354f2f15471a.exe', '186264', '1398076145', '0', '0');
INSERT INTO `lj_source` VALUES ('8', 'AP1006429', 'message.sql', '5354f698a185f.sql', '2156', '1398077080', '0', '0');
INSERT INTO `lj_source` VALUES ('9', 'AP1006429', 'apdefault.ini', '535505243b18c.ini', '2697', '1398080804', '1', '0');
INSERT INTO `lj_source` VALUES ('10', 'AP1006429', '财务危机与公司治理的相关性.doc', '53550a011edcc.doc', '425984', '1398082049', '2', '0');
INSERT INTO `lj_source` VALUES ('11', 'AP1006429', '截屏图片.jpg', '5355132fd43c1.jpg', '130505', '1398084399', '6', '0');
INSERT INTO `lj_source` VALUES ('43', 'AP1006429', '002.jpg', '535a6d13e9b31.jpg', '16578', '1398435091', '1', '0');
INSERT INTO `lj_source` VALUES ('45', 'AP1006419', '001.jpg', '535a705fe385c.jpg', '14455', '1398435935', '0', '0');
INSERT INTO `lj_source` VALUES ('46', 'AP1006429', 'default.jpeg', '53823917e894a.jpeg', '760790', '1401043223', '1', '0');
INSERT INTO `lj_source` VALUES ('47', 'AP1006453', 'default.jpeg', '53847feb50b36.jpeg', '760790', '1401192427', '1', '0');
INSERT INTO `lj_source` VALUES ('48', 'ap1006429', 'VS2012快捷键.doc', '5384b88b00b3a.doc', '49664', '1401206923', '1', '0');
INSERT INTO `lj_source` VALUES ('49', 'ap1006429', '登陆窗口.jpg', '5384bfefd55aa.jpg', '217787', '1401208815', '1', '0');
INSERT INTO `lj_source` VALUES ('54', 'AP1006429', 'VS2012快捷键.doc', '538df41505f7c.doc', '49664', '1401811989', '2', '0');
INSERT INTO `lj_source` VALUES ('55', 'AP1006429', '问题汇总.txt', '538df46f06727.txt', '1222', '1401812079', '4', '0');


-- ----------------------------
-- Table structure for `lj_website`
-- ----------------------------
DROP TABLE IF EXISTS `lj_website`;
CREATE TABLE `lj_website` (
  `key` varchar(255) NOT NULL,
  `value` text,
  `group` varchar(45) DEFAULT NULL,
  PRIMARY KEY (`key`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of lj_website
-- ----------------------------
INSERT INTO `lj_website` VALUES ('aboutcontent', '<span style=\"color:#000000;font-family:KaiTi_GB2312;font-size:16px;line-height:24px;\">&nbsp;&nbsp;&nbsp;&nbsp;五邑大学廉江同乡会创建于1996年，秉承团结互助，共同进步的宗旨，以增进同乡感情为工作主线，以方便同乡为依据，以坦诚决策为处事方式，以把廉江同乡会建成五邑大学最团结和谐的同乡会为精神动力，真诚为同乡搭建交流学习平台，总结历届师兄师姐的优秀经验，加速新入学同乡的成功...</span><span style=\"color:#000000;font-family:KaiTi_GB2312;\"></span><br />', 'about');
INSERT INTO `lj_website` VALUES ('abouttitle', '五邑大学廉江同乡会', 'about');
INSERT INTO `lj_website` VALUES ('bookstatecontent', '1、由于资源有限，成功借阅的书籍要好好保护', 'book');
INSERT INTO `lj_website` VALUES ('bookstatetitle', '五邑大学廉江同乡会', 'book');
INSERT INTO `lj_website` VALUES ('contactaddress', '江门市蓬江区五邑大学', 'contact');
INSERT INTO `lj_website` VALUES ('contactemail', 'wyulianjiang@163.com', 'contact');
INSERT INTO `lj_website` VALUES ('contactphone', '13533652125', 'contact');
INSERT INTO `lj_website` VALUES ('contactpostcode', '529020', 'contact');
INSERT INTO `lj_website` VALUES ('contacttitle', '五邑大学廉江同乡会', 'contact');
INSERT INTO `lj_website` VALUES ('contactwebsite', 'www.wyulianjiang.com', 'contact');
INSERT INTO `lj_website` VALUES ('sourcestatecontent', '<strong>1.本资源由同乡成员提供</strong><br />\r\n<p>\r\n	<strong> 2.资源仅供学习参考，不可以商业使用。</strong>\r\n</p>\r\n<p>\r\n	<strong>3.文件上传最大不能超过15M,否则无法上传&nbsp;</strong>\r\n</p>', 'source');
INSERT INTO `lj_website` VALUES ('sourcestatetitle', '资源共享声明', 'source');
INSERT INTO `lj_website` VALUES ('systemcopyright', '五邑大学廉江同乡会 2014 版权所有  Copyright ©2014 电话：18902889789				    					    					    					    					    					    					    					    ', 'system');
INSERT INTO `lj_website` VALUES ('systemicp', ' 粤ICP备03023965号', 'system');
INSERT INTO `lj_website` VALUES ('systemlink', 'www.wyulj.500yun.pw', 'system');
INSERT INTO `lj_website` VALUES ('systemname', '五邑大学廉江同乡会', 'system');
