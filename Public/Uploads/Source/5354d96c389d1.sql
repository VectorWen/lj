-- MySQL dump 10.13  Distrib 5.1.55, for Win32 (ia32)
--
-- Host: localhost    Database: webcms
-- ------------------------------------------------------
-- Server version	5.1.55-community

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
-- Current Database: `webcms`
--

CREATE DATABASE /*!32312 IF NOT EXISTS*/ `webcms` /*!40100 DEFAULT CHARACTER SET utf8 COLLATE utf8_unicode_ci */;

USE `webcms`;

--
-- Table structure for table `web_admin`
--

DROP TABLE IF EXISTS `web_admin`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `web_admin` (
  `id` int(8) NOT NULL AUTO_INCREMENT,
  `username` varchar(200) COLLATE utf8_unicode_ci NOT NULL,
  `password` varchar(200) COLLATE utf8_unicode_ci NOT NULL,
  `addtime` datetime NOT NULL,
  `menu` text COLLATE utf8_unicode_ci,
  `truename` varchar(50) COLLATE utf8_unicode_ci DEFAULT NULL,
  `level` int(4) NOT NULL DEFAULT '0',
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=10 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `web_admin`
--

LOCK TABLES `web_admin` WRITE;
/*!40000 ALTER TABLE `web_admin` DISABLE KEYS */;
INSERT INTO `web_admin` VALUES (1,'ly','21232f297a57a5a743894a0e4a801fc3','2011-01-17 17:57:28','1|2|6|13|14|15|22|25|26|27','李寅',100),(9,'admin','4916f9035d370b56f430793947db8fef','2011-03-06 21:39:18','1|2|6|13|14|15|22|25|26|27','凌讯网络',0);
/*!40000 ALTER TABLE `web_admin` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `web_ads`
--

DROP TABLE IF EXISTS `web_ads`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `web_ads` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `title` varchar(200) COLLATE utf8_unicode_ci NOT NULL,
  `colors` varchar(7) COLLATE utf8_unicode_ci NOT NULL DEFAULT '#000000',
  `pic` varchar(300) COLLATE utf8_unicode_ci NOT NULL,
  `stime` datetime NOT NULL,
  `etime` datetime NOT NULL,
  `addtime` datetime NOT NULL,
  `content` text COLLATE utf8_unicode_ci NOT NULL,
  `sort` int(6) DEFAULT NULL,
  `bid` int(4) NOT NULL DEFAULT '0',
  `sid` int(4) NOT NULL DEFAULT '0',
  `tid` int(4) NOT NULL DEFAULT '0',
  `fid` int(4) NOT NULL DEFAULT '0',
  `url` varchar(200) COLLATE utf8_unicode_ci DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `web_ads`
--

LOCK TABLES `web_ads` WRITE;
/*!40000 ALTER TABLE `web_ads` DISABLE KEYS */;
/*!40000 ALTER TABLE `web_ads` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `web_base`
--

DROP TABLE IF EXISTS `web_base`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `web_base` (
  `id` int(4) NOT NULL AUTO_INCREMENT,
  `webname` varchar(200) COLLATE utf8_unicode_ci NOT NULL,
  `webkey` varchar(200) COLLATE utf8_unicode_ci DEFAULT NULL,
  `webcontent` text COLLATE utf8_unicode_ci,
  `webba` varchar(200) COLLATE utf8_unicode_ci NOT NULL,
  `webjs` varchar(200) COLLATE utf8_unicode_ci DEFAULT NULL,
  `webphone` varchar(200) COLLATE utf8_unicode_ci DEFAULT NULL,
  `webfax` varchar(200) COLLATE utf8_unicode_ci DEFAULT NULL,
  `webemail` varchar(200) COLLATE utf8_unicode_ci DEFAULT NULL,
  `webbq` varchar(200) COLLATE utf8_unicode_ci DEFAULT NULL,
  `lxfs` varchar(200) COLLATE utf8_unicode_ci DEFAULT NULL,
  `lxdz` varchar(200) COLLATE utf8_unicode_ci DEFAULT NULL,
  `config` int(4) NOT NULL DEFAULT '0',
  `copys` int(4) NOT NULL DEFAULT '0',
  `webqq` varchar(200) COLLATE utf8_unicode_ci DEFAULT NULL,
  `parents` int(4) NOT NULL DEFAULT '0',
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=2 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `web_base`
--

LOCK TABLES `web_base` WRITE;
/*!40000 ALTER TABLE `web_base` DISABLE KEYS */;
INSERT INTO `web_base` VALUES (1,'凌讯学校网站管理系统','凌讯,学校','网站管理系统','皖ICP备201015635','','13966773812','13966773812','414028660@qq.com','安徽合肥凌讯网络','安徽合肥市','潜山路',1,0,'414028660',0);
/*!40000 ALTER TABLE `web_base` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `web_change`
--

DROP TABLE IF EXISTS `web_change`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `web_change` (
  `id` int(6) NOT NULL AUTO_INCREMENT,
  `title` varchar(200) COLLATE utf8_unicode_ci NOT NULL,
  `pic` varchar(300) COLLATE utf8_unicode_ci DEFAULT NULL,
  `url` varchar(300) COLLATE utf8_unicode_ci DEFAULT NULL,
  `addtime` datetime NOT NULL,
  `bid` int(6) NOT NULL DEFAULT '0',
  `sid` int(6) NOT NULL DEFAULT '0',
  `tid` int(6) NOT NULL DEFAULT '0',
  `fid` int(6) NOT NULL DEFAULT '0',
  PRIMARY KEY (`id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `web_change`
--

LOCK TABLES `web_change` WRITE;
/*!40000 ALTER TABLE `web_change` DISABLE KEYS */;
/*!40000 ALTER TABLE `web_change` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `web_comment`
--

DROP TABLE IF EXISTS `web_comment`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `web_comment` (
  `getid` int(6) NOT NULL DEFAULT '0',
  `id` int(6) NOT NULL AUTO_INCREMENT,
  `username` varchar(200) COLLATE utf8_unicode_ci NOT NULL,
  `comment` text COLLATE utf8_unicode_ci NOT NULL,
  `bid` int(6) NOT NULL DEFAULT '0',
  `sid` int(6) NOT NULL DEFAULT '0',
  `tid` int(6) NOT NULL DEFAULT '0',
  `fid` int(6) NOT NULL DEFAULT '0',
  `addtime` datetime NOT NULL,
  `ischeck` int(4) NOT NULL DEFAULT '0',
  PRIMARY KEY (`id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `web_comment`
--

LOCK TABLES `web_comment` WRITE;
/*!40000 ALTER TABLE `web_comment` DISABLE KEYS */;
/*!40000 ALTER TABLE `web_comment` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `web_content`
--

DROP TABLE IF EXISTS `web_content`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `web_content` (
  `id` int(6) NOT NULL AUTO_INCREMENT,
  `title` varchar(200) COLLATE utf8_unicode_ci NOT NULL,
  `colors` varchar(10) COLLATE utf8_unicode_ci NOT NULL DEFAULT '#000000',
  `pic` varchar(200) COLLATE utf8_unicode_ci NOT NULL,
  `viewcount` int(4) NOT NULL DEFAULT '1',
  `state` int(4) NOT NULL DEFAULT '1',
  `open` int(4) NOT NULL DEFAULT '0',
  `addtime` datetime NOT NULL,
  `con` text COLLATE utf8_unicode_ci,
  `content` text COLLATE utf8_unicode_ci,
  `showpic` int(4) NOT NULL DEFAULT '1',
  `showstr` int(4) NOT NULL DEFAULT '200',
  `bid` int(6) NOT NULL,
  `sid` int(6) NOT NULL,
  `tid` int(6) NOT NULL,
  `fid` int(6) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=4 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `web_content`
--

LOCK TABLES `web_content` WRITE;
/*!40000 ALTER TABLE `web_content` DISABLE KEYS */;
INSERT INTO `web_content` VALUES (1,'舒城县第一中学','#000000','/uploadfile/images/20110304145447.jpg',1,1,0,'2011-01-25 00:00:00','    我校于1946年创建，前身为合肥市万慈小学，1975年更名为合肥市第四十六中学。为了加快合肥现代化滨湖大城市建设，合理调整教育资源布局，推进合肥市教育均衡发展，充分发挥我校办学优势，扩大优质教育资源的社会效益，更好地满足人民群众“好上学，上好学”的需求，根据市委、市政府的决定，2007年9月，我校与合肥师范附校初中部合并,整建制迁入滨湖新区,隶属包河区教育局，成为合肥市第一所公办全日制寄宿制初中。\r\n\r\n校风：团结、奋进、求实、创新。\r\n\r\n教风：严谨治学、竭诚奉献。\r\n\r\n学风：行知结合、好学向上。\r\n\r\n校训：方正通达。\r\n','<P>&nbsp;&nbsp;&nbsp; 我校于1946年创建，前身为合肥市万慈小学，1975年更名为合肥市第四十六中学。为了加快合肥现代化滨湖大城市建设，合理调整教育资源布局，推进合肥市教育均衡发展，充分发挥我校办学优势，扩大优质教育资源的社会效益，更好地满足人民群众“好上学，上好学”的需求，根据市委、市政府的决定，2007年9月，我校与合肥师范附校初中部合并,整建制迁入滨湖新区,隶属包河区教育局，成为合肥市第一所公办全日制寄宿制初中。</P>\r\n<P>校风：团结、奋进、求实、创新。</P>\r\n<P>教风：严谨治学、竭诚奉献。</P>\r\n<P>学风：行知结合、好学向上。</P>\r\n<P>校训：方正通达。</P>\r\n<P>&nbsp;</P>\r\n<P align=center><B>学校设施一流</B></P>\r\n<P>&nbsp;&nbsp;&nbsp; 新校东邻徽州大道，南望合肥一中，西靠徽一路，北临紫云路，乘BRT专线至市中心仅需20分钟，交通便捷畅达。新校占地165亩，绿化率达54%，环境优雅宜人，徽派建筑，总建筑面积达10万多㎡，古朴风格与现代气息交相辉映，名校风范与一流设施相得益彰。新校按照国内一流标准，建设并配齐各类教育教学、学生寄宿生活所需的设施设备。</P>\r\n<P>&nbsp;&nbsp;&nbsp;&nbsp;三幢教学楼有68个教室容纳3400名学生，每层之间都以连廊连接；办公楼建筑面积4355㎡，科技楼4468㎡，实验楼7240㎡，学生食堂建筑面积达6407㎡。各类器室按部颁标准配齐配足，有多媒体、计算机教室，物理、化学、生物实验室，阶梯教室、语音室和劳技、美术、音乐教室，科普活动室与书法、地理教室等，还有可容纳近400人的现代化学术报告厅2座；7807㎡的综艺楼一座，内设健身房、舞蹈房、校园电视台以及各类功能教室；3000㎡图书馆1座，配备现代化的电子书库，各类书籍应有尽有；拥有标准400米塑胶跑道运动场一个，室外篮球场、羽毛球、排球场各10个；学生公寓3幢，可容纳2800学生住宿，4人一间，每间27㎡，配有卫生洗浴间、空调、电话及各种网线，每层楼都配备开水房、洗衣间、公共卫生间和学生活动室；餐厅两座，可供3600学生同时就餐；学校还将建设体育馆一座与体育场看台。</P>\r\n<P align=center><B>管理机制健全</B></P>\r\n<P>&nbsp;&nbsp;&nbsp; 学校实行校长负责制，下设办公室、教务处、政教处、总务处、寄管处五个职能部门以及工、团、妇、队等群众组织。1994年学校实行内部体制改革，各处室职责明确，工作效率高；全体教师实行双向选择聘任制，一年一聘任，三年一循环，极大调动了教师工作积极性；为进一步深化教育系统人事制度改革，优化教师队伍结构，增强办学活力；自2000年开始，实行全员聘用合同制，竞争上岗，优化组合，真正做到教书育人、管理育人、服务育人。</P>\r\n<P align=center><B>师资队伍优秀</B></P>\r\n<P>&nbsp;&nbsp;&nbsp; 学校现有教职员工242人， 其中在编教师196人，生活辅导教师29人，党员85人，高级职称67人，截止2008年8月底具有本科学历教师173人，硕士1人，学历合格率100%；学校将全面整合原46中和师范附中的优秀教师队伍群体，并面向全国遴选年富力强、品学兼优的优秀教师加盟，建立起一支高素质的优秀课任教师和生活教师队伍；现各学科均有学科带头人和相对稳定的老中青三结合的专职老师任教，他们学有专攻，教有所长，治学严谨，师德高尚，为人师表。</P>\r\n<P align=center><B>学生品学兼优</B></P>\r\n<P>&nbsp;&nbsp;&nbsp;&nbsp;学校现有60个教学班，3400多名学生，其中共青团员700多人，优良的校风、严谨的教风，必将促进学生文明守纪、勤奋学习、积极向上、多才多艺、全面发展，受到社会和家长的一致好评。</P>\r\n<P align=center><B>办学特色凸显</B></P>\r\n<P>&nbsp;&nbsp;&nbsp; 84年以来，我校中考成绩逐年提高，从86-91年（92年后，市里不排名次）连续六年中考获合肥市第一，在不断总结经验的基础上，我校提出了“严管理、轻负担、高质量、重特色”的办学思想，面向全体学生，全面实施素质教育，为我校的教育教学改革注入了新的活力；1999年8月17日，《中国教育报》在“素质教育特别报道”栏目中以 “为有源头活水来”“创新是一个民族的灵魂”为题报道了我校实施素质教育的情况；近年来，46中人经过深刻反思论证，在专家的指导下，结合我校实际提出了新的办学目标、办学理念和办学特色，“育高素质人才，办特色化学校”；实施新课改以来，我校大力开展校本教研活动，以教育科研促学校质量，以教师成长促学生发展，凸显科普特色，培养学生的科学精神、创新意识、实践能力，每一个学生都获得个性化的发展空间；2003年被确定为“合肥市科普示范学校”，2005年首批被命名为“合肥市特色初中”（全市仅两所中学）。</P>\r\n<P align=center><B>教育教学成果显著</B></P>\r\n<P>&nbsp;&nbsp;&nbsp; 我校在新的办学理念的指导下，经过全体教职工的艰苦奋斗，学校的特色建设已经取得成效。顺应自然、强化基础、发展特长，我校学生的入学率、巩固率和毕业率稳定在100%。多年来，中考各项成绩统计名列全市前茅，毕业生受到高一级学校的普遍欢迎，他们认为：我校学生发展潜力大，学习方法活，富有创新精神。2004年中考，张少愚同学名列全市第一；04年、05年被合肥一中理科实验班录取的人数全区第一，被合肥一中录取率在10%以上。04年、05年我校连续两年获庐阳区教学成果一等奖（全区仅两所）。2006年中考一、六、八中学联合招生录取率达34%，省示范高中的达线率为63%，居合肥市第一。2007、2008两年在面临迁址滨湖新区的特殊历史时期，全校干部教师齐心协力，克服种种困难，继续保持高质量的办学水平。合肥一六八联合招生录取率等各项指标均居合肥市前列；在合肥市省示范高中特长生录取总人数和录取率位居同类学校之首。</P>',2,200,2,0,0,3),(2,'张孝感','#000000','/uploadfile/images/20110305104639.gif',1,1,1,'2011-01-25 00:00:00','暂无数据','暂无数据',2,200,0,0,0,14),(3,'联系我们','#000000','/',1,1,0,'2011-01-25 00:00:00','联系人：李寅\r\n\r\n手机：13966773812\r\n\r\nQQ：414028660\r\n\r\nE-mail:414028660@qq.com\r\n\r\n','<P><FONT face=Verdana>(凌讯工作室真诚期待与您合作)</FONT></P>\r\n<P><FONT face=Verdana>联系人：李寅</FONT></P>\r\n<P><FONT face=Verdana>手机：13966773812<BR></FONT></P>\r\n<P><FONT face=Verdana>QQ：414028660</FONT></P>\r\n<P><FONT face=Verdana>E-mail:414028660@qq.com<BR>&nbsp;</FONT></P>\r\n<P><FONT face=Verdana>如果你觉得本站不错，别忘记推荐给你的朋友。<BR>&nbsp;</FONT></P>\r\n<P><FONT face=Verdana>注：建议采用QQ等即时聊天方式，因为大多数时间我都在线。<BR>可发送E-mail给我：<A href=\"mailto:414028660@qq.com\">414028660@qq.com</A><BR></FONT></P>\r\n<P><FONT face=Verdana><IMG border=0 src=\"/admin/uploadfile/201103/20110306130854898.jpg\"></P></FONT>',0,200,0,0,0,27);
/*!40000 ALTER TABLE `web_content` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `web_download`
--

DROP TABLE IF EXISTS `web_download`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `web_download` (
  `id` int(6) NOT NULL AUTO_INCREMENT,
  `title` varchar(200) COLLATE utf8_unicode_ci NOT NULL,
  `colors` varchar(7) COLLATE utf8_unicode_ci NOT NULL DEFAULT '#000000',
  `filesize` varchar(50) COLLATE utf8_unicode_ci NOT NULL DEFAULT '0',
  `pic` text COLLATE utf8_unicode_ci,
  `downfile` varchar(200) COLLATE utf8_unicode_ci DEFAULT NULL,
  `viewcount` int(4) NOT NULL DEFAULT '1',
  `downcount` int(4) NOT NULL DEFAULT '1',
  `state` int(4) NOT NULL DEFAULT '0',
  `open` int(4) NOT NULL DEFAULT '0',
  `soft` int(4) NOT NULL DEFAULT '0',
  `language` int(4) NOT NULL DEFAULT '0',
  `level` int(4) NOT NULL DEFAULT '1',
  `company` varchar(200) COLLATE utf8_unicode_ci DEFAULT NULL,
  `win` varchar(200) COLLATE utf8_unicode_ci DEFAULT NULL,
  `filetype` varchar(200) COLLATE utf8_unicode_ci DEFAULT NULL,
  `addtime` datetime NOT NULL,
  `content` text COLLATE utf8_unicode_ci,
  `sort` int(6) DEFAULT NULL,
  `comment` int(4) NOT NULL DEFAULT '0',
  `recommend` int(4) NOT NULL DEFAULT '0',
  `bid` int(4) NOT NULL DEFAULT '0',
  `sid` int(4) NOT NULL DEFAULT '0',
  `tid` int(4) NOT NULL DEFAULT '0',
  `fid` int(4) NOT NULL DEFAULT '0',
  `picotherpar` int(4) NOT NULL DEFAULT '0',
  `recyle` int(4) NOT NULL DEFAULT '0',
  PRIMARY KEY (`id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `web_download`
--

LOCK TABLES `web_download` WRITE;
/*!40000 ALTER TABLE `web_download` DISABLE KEYS */;
/*!40000 ALTER TABLE `web_download` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `web_gbook`
--

DROP TABLE IF EXISTS `web_gbook`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `web_gbook` (
  `id` int(6) NOT NULL AUTO_INCREMENT,
  `title` varchar(200) COLLATE utf8_unicode_ci NOT NULL,
  `name` varchar(200) COLLATE utf8_unicode_ci NOT NULL,
  `tel` varchar(200) COLLATE utf8_unicode_ci NOT NULL,
  `fax` varchar(200) COLLATE utf8_unicode_ci DEFAULT NULL,
  `address` varchar(300) COLLATE utf8_unicode_ci NOT NULL,
  `qq` int(10) DEFAULT NULL,
  `email` varchar(200) COLLATE utf8_unicode_ci DEFAULT NULL,
  `content` text COLLATE utf8_unicode_ci,
  `replay` text COLLATE utf8_unicode_ci,
  `bid` int(6) NOT NULL,
  `sid` int(6) NOT NULL,
  `tid` int(6) NOT NULL,
  `fid` int(6) NOT NULL,
  `addtime` datetime NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `web_gbook`
--

LOCK TABLES `web_gbook` WRITE;
/*!40000 ALTER TABLE `web_gbook` DISABLE KEYS */;
/*!40000 ALTER TABLE `web_gbook` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `web_jobs`
--

DROP TABLE IF EXISTS `web_jobs`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `web_jobs` (
  `id` int(6) NOT NULL AUTO_INCREMENT,
  `title` varchar(200) COLLATE utf8_unicode_ci NOT NULL,
  `depar` varchar(200) COLLATE utf8_unicode_ci DEFAULT NULL,
  `telper` varchar(200) COLLATE utf8_unicode_ci NOT NULL,
  `men` varchar(50) COLLATE utf8_unicode_ci NOT NULL DEFAULT '不限',
  `money` varchar(200) COLLATE utf8_unicode_ci NOT NULL DEFAULT '面议',
  `address` varchar(400) COLLATE utf8_unicode_ci NOT NULL,
  `viewcount` int(4) NOT NULL DEFAULT '1',
  `state` int(4) NOT NULL DEFAULT '1',
  `open` int(4) NOT NULL DEFAULT '0',
  `addtime` datetime NOT NULL,
  `content` text COLLATE utf8_unicode_ci NOT NULL,
  `sort` int(4) DEFAULT NULL,
  `comment` int(4) NOT NULL DEFAULT '1',
  `recommend` int(4) NOT NULL DEFAULT '0',
  `colors` varchar(7) COLLATE utf8_unicode_ci NOT NULL DEFAULT '#000000',
  `bid` int(6) NOT NULL DEFAULT '0',
  `sid` int(6) NOT NULL DEFAULT '0',
  `tid` int(6) NOT NULL DEFAULT '0',
  `fid` int(6) NOT NULL DEFAULT '0',
  `recyle` int(4) NOT NULL DEFAULT '0',
  PRIMARY KEY (`id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `web_jobs`
--

LOCK TABLES `web_jobs` WRITE;
/*!40000 ALTER TABLE `web_jobs` DISABLE KEYS */;
/*!40000 ALTER TABLE `web_jobs` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `web_jobslist`
--

DROP TABLE IF EXISTS `web_jobslist`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `web_jobslist` (
  `id` int(6) NOT NULL AUTO_INCREMENT,
  `title` varchar(200) COLLATE utf8_unicode_ci NOT NULL,
  `getid` int(6) NOT NULL,
  `realname` varchar(200) COLLATE utf8_unicode_ci NOT NULL,
  `sex` varchar(20) COLLATE utf8_unicode_ci NOT NULL,
  `dates` datetime NOT NULL,
  `tel` varchar(200) COLLATE utf8_unicode_ci NOT NULL,
  `jl` text COLLATE utf8_unicode_ci,
  `pj` text COLLATE utf8_unicode_ci,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `web_jobslist`
--

LOCK TABLES `web_jobslist` WRITE;
/*!40000 ALTER TABLE `web_jobslist` DISABLE KEYS */;
/*!40000 ALTER TABLE `web_jobslist` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `web_link`
--

DROP TABLE IF EXISTS `web_link`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `web_link` (
  `id` int(6) NOT NULL AUTO_INCREMENT,
  `title` varchar(200) COLLATE utf8_unicode_ci NOT NULL,
  `pic` varchar(300) COLLATE utf8_unicode_ci DEFAULT NULL,
  `url` varchar(300) COLLATE utf8_unicode_ci DEFAULT NULL,
  `colors` varchar(7) COLLATE utf8_unicode_ci NOT NULL DEFAULT '#000000',
  `state` int(4) NOT NULL DEFAULT '1',
  `open` int(4) NOT NULL DEFAULT '0',
  `type` int(4) NOT NULL DEFAULT '0',
  `addtime` datetime NOT NULL,
  `content` text COLLATE utf8_unicode_ci NOT NULL,
  `sort` int(4) DEFAULT NULL,
  `bid` int(4) NOT NULL DEFAULT '0',
  `sid` int(4) NOT NULL DEFAULT '0',
  `tid` int(4) NOT NULL DEFAULT '0',
  `fid` int(4) NOT NULL DEFAULT '0',
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=3 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `web_link`
--

LOCK TABLES `web_link` WRITE;
/*!40000 ALTER TABLE `web_link` DISABLE KEYS */;
INSERT INTO `web_link` VALUES (1,'合肥一中','','http://www.baidu.com/','#000000',1,1,0,'2011-03-05 00:00:00','合肥一中',1,0,0,0,25),(2,'舒城一中','','http://www.baidu.com/','#000000',1,1,0,'2011-03-05 00:00:00','<P>舒城一中</P>',2,0,0,0,25);
/*!40000 ALTER TABLE `web_link` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `web_menu`
--

DROP TABLE IF EXISTS `web_menu`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `web_menu` (
  `id` int(6) NOT NULL AUTO_INCREMENT,
  `name` varchar(200) COLLATE utf8_unicode_ci NOT NULL,
  `menu` varchar(200) COLLATE utf8_unicode_ci DEFAULT NULL,
  `menu_type` varchar(200) COLLATE utf8_unicode_ci NOT NULL,
  `showfile` varchar(200) COLLATE utf8_unicode_ci NOT NULL,
  `adminfile` varchar(200) COLLATE utf8_unicode_ci NOT NULL,
  `news_par` int(4) NOT NULL DEFAULT '10',
  `pro_h` int(4) NOT NULL DEFAULT '100',
  `pro_w` int(4) NOT NULL DEFAULT '100',
  `pro_par` int(4) NOT NULL DEFAULT '10',
  `pro_row` int(4) NOT NULL DEFAULT '4',
  `pic_h` int(4) NOT NULL DEFAULT '100',
  `pic_w` int(4) NOT NULL DEFAULT '100',
  `pic_par` int(4) NOT NULL DEFAULT '12',
  `pic_row` int(4) NOT NULL DEFAULT '4',
  `sort` int(6) NOT NULL,
  `view` int(4) NOT NULL DEFAULT '0',
  `addtime` datetime NOT NULL,
  `bid` int(6) NOT NULL DEFAULT '0',
  `sid` int(6) NOT NULL DEFAULT '0',
  `tid` int(6) NOT NULL DEFAULT '0',
  `otherpar` varchar(100) COLLATE utf8_unicode_ci DEFAULT NULL,
  `picotherpar` varchar(200) COLLATE utf8_unicode_ci DEFAULT '0110',
  `imgotherpar` varchar(200) COLLATE utf8_unicode_ci DEFAULT NULL,
  `download` int(4) DEFAULT '0',
  `down_par` int(4) DEFAULT '12',
  `down_row` int(4) DEFAULT '4',
  `ord` int(4) NOT NULL DEFAULT '0',
  `menuredirect` varchar(300) COLLATE utf8_unicode_ci DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=28 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `web_menu`
--

LOCK TABLES `web_menu` WRITE;
/*!40000 ALTER TABLE `web_menu` DISABLE KEYS */;
INSERT INTO `web_menu` VALUES (1,'首页',NULL,'other','index.php','admin_right.php',10,100,100,10,4,100,100,12,4,1,1,'2011-03-04 11:04:52',0,0,0,NULL,'0110',NULL,0,12,4,0,NULL),(2,'学校概况',NULL,'other','#','#',10,100,100,10,4,100,100,12,4,2,1,'2011-03-04 11:07:54',0,0,0,NULL,'0110',NULL,0,12,4,0,'EMS_Content.php?bid=2&sid=0&tid=0&fid=3'),(3,'学校概况',NULL,'content','EMS_Content.php','admin_content.php',10,100,100,10,4,100,100,12,4,1,0,'2011-03-04 11:08:13',2,0,0,NULL,'0110',NULL,0,12,4,0,NULL),(4,'最新通知',NULL,'news','EMS_News.php','admin_news.php',12,100,100,10,4,100,100,12,4,2,1,'2011-03-04 11:08:27',2,0,0,'00100100','0110',NULL,0,12,4,0,NULL),(5,'图片新闻',NULL,'news','EMS_News.php','admin_news.php',12,100,100,10,4,100,100,12,4,3,1,'2011-03-04 11:08:36',2,0,0,'00100100','0110',NULL,0,12,4,0,NULL),(6,'培训平台',NULL,'other','#','#',10,100,100,10,4,100,100,12,4,3,1,'2011-03-04 11:15:37',0,0,0,NULL,'0110',NULL,0,12,4,0,NULL),(7,'继续教育',NULL,'news','EMS_News.php','admin_news.php',12,100,100,10,4,100,100,12,4,1,1,'2011-03-04 11:15:52',6,0,0,'00100100','0110',NULL,0,12,4,0,NULL),(8,'学历教育',NULL,'news','EMS_News.php','admin_news.php',12,100,100,10,4,100,100,12,4,2,1,'2011-03-04 11:15:58',6,0,0,'00100100','0110',NULL,0,12,4,0,NULL),(9,'信息技术',NULL,'news','EMS_News.php','admin_news.php',12,100,100,10,4,100,100,12,4,3,1,'2011-03-04 11:16:09',6,0,0,'00100100','0110',NULL,0,12,4,0,NULL),(10,'教育技术',NULL,'news','EMS_News.php','admin_news.php',12,100,100,10,4,100,100,12,4,4,1,'2011-03-04 11:16:15',6,0,0,'00100100','0110',NULL,0,12,4,0,NULL),(11,'短期培训',NULL,'news','EMS_News.php','admin_news.php',12,100,100,10,4,100,100,12,4,5,1,'2011-03-04 11:16:26',6,0,0,'00100100','0110',NULL,0,12,4,0,NULL),(12,'英特尔培训',NULL,'news','EMS_News.php','admin_news.php',12,100,100,10,4,100,100,12,4,6,1,'2011-03-04 11:16:38',6,0,0,'00100100','0110',NULL,0,12,4,0,NULL),(13,'校园专栏',NULL,'other','#','#',12,100,100,10,4,100,100,12,4,4,1,'2011-03-04 11:17:43',0,0,0,'00100100','0110',NULL,0,12,4,0,'EMS_News.php?bid=13&sid=0&tid=0&fid=20'),(14,'校长之窗',NULL,'content','EMS_Content.php','admin_content.php',10,100,100,10,4,100,100,12,4,5,1,'2011-03-04 11:18:08',0,0,0,NULL,'0110',NULL,0,12,4,0,NULL),(15,'教师之友',NULL,'other','#','#',10,100,100,10,4,100,100,12,4,6,1,'2011-03-04 11:20:16',0,0,0,NULL,'0110',NULL,0,12,4,0,'EMS_News.php?bid=15&sid=0&tid=0&fid=16'),(16,'教师之友',NULL,'news','EMS_News.php','admin_news.php',12,100,100,10,4,100,100,12,4,1,0,'2011-03-04 11:20:28',15,0,0,'00100100','0110',NULL,0,12,4,0,NULL),(17,'教研信息',NULL,'news','EMS_News.php','admin_news.php',12,100,100,10,4,100,100,12,4,2,1,'2011-03-04 11:20:40',15,0,0,'00100100','0110',NULL,0,12,4,0,NULL),(20,'校务专栏',NULL,'news','EMS_News.php','admin_news.php',12,100,100,10,4,100,100,12,4,1,0,'2011-03-04 11:25:45',13,0,0,'00100130','0110',NULL,0,12,4,0,NULL),(21,'校园风光',NULL,'picture','EMS_Picture.php','admin_picture.php',10,100,100,10,4,100,100,12,4,2,1,'2011-03-04 11:25:57',13,0,0,NULL,'0110',NULL,0,12,4,0,NULL),(22,'招生考试',NULL,'other','#','#',10,100,100,10,4,100,100,12,4,7,1,'2011-03-04 11:26:28',0,0,0,NULL,'0110',NULL,0,12,4,0,'EMS_News.php?bid=22&sid=0&tid=0&fid=24'),(23,'学员天地',NULL,'news','EMS_News.php','admin_news.php',12,100,100,10,4,100,100,12,4,1,1,'2011-03-04 11:26:55',22,0,0,'00100100','0110',NULL,0,12,4,0,NULL),(24,'招生考试',NULL,'news','EMS_News.php','admin_news.php',12,100,100,10,4,100,100,12,4,2,0,'2011-03-04 11:27:04',22,0,0,'00100100','0110',NULL,0,12,4,0,NULL),(25,'友情链接',NULL,'link','EMS_Link.php','admin_link.php',10,100,100,10,4,100,100,12,4,8,0,'2011-03-05 15:03:22',0,0,0,NULL,'0110',NULL,0,12,4,0,NULL),(26,'给我留言',NULL,'gbook','EMS_Gbook.php','admin_gbook.php',10,100,100,10,4,100,100,12,4,9,0,'2011-03-06 20:44:26',0,0,0,NULL,'0110',NULL,0,12,4,0,NULL),(27,'联系我们',NULL,'content','EMS_Content.php','admin_content.php',10,100,100,10,4,100,100,12,4,10,0,'2011-03-06 20:44:39',0,0,0,NULL,'0110',NULL,0,12,4,0,NULL);
/*!40000 ALTER TABLE `web_menu` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `web_news`
--

DROP TABLE IF EXISTS `web_news`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `web_news` (
  `id` int(6) NOT NULL AUTO_INCREMENT,
  `title` varchar(200) COLLATE utf8_unicode_ci NOT NULL,
  `colors` varchar(7) COLLATE utf8_unicode_ci DEFAULT '#000000',
  `keyword` varchar(200) COLLATE utf8_unicode_ci DEFAULT NULL,
  `pic` varchar(300) COLLATE utf8_unicode_ci DEFAULT NULL,
  `comefrom` varchar(200) COLLATE utf8_unicode_ci NOT NULL,
  `viewcount` int(6) NOT NULL DEFAULT '1',
  `state` int(4) NOT NULL DEFAULT '1',
  `open` int(4) NOT NULL DEFAULT '0',
  `addtime` datetime NOT NULL,
  `content` text COLLATE utf8_unicode_ci NOT NULL,
  `sort` int(6) DEFAULT NULL,
  `comment` int(4) NOT NULL DEFAULT '1',
  `bid` int(6) NOT NULL DEFAULT '0',
  `sid` int(6) NOT NULL DEFAULT '0',
  `tid` int(6) NOT NULL DEFAULT '0',
  `fid` int(6) NOT NULL DEFAULT '0',
  `recommend` int(4) NOT NULL DEFAULT '0',
  `recyle` int(4) NOT NULL DEFAULT '0',
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=44 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci COMMENT='新闻列表';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `web_news`
--

LOCK TABLES `web_news` WRITE;
/*!40000 ALTER TABLE `web_news` DISABLE KEYS */;
INSERT INTO `web_news` VALUES (1,'我校学生喜获市英语文化艺术节小品剧比赛特等奖','#0066a4','学校,英语,小品','','本站',5,1,0,'2011-03-05 00:00:00','<P><FONT size=4>&nbsp;&nbsp;&nbsp;</FONT><FONT size=2> 12月9日上午“尚街杯”合肥市第三届校园英语文化艺术节开幕式暨小品剧比赛在合肥财经学院隆重举行，此次活动我校团委高度重视，联合英语教研组首先在校内进行了海选，最终参赛的是由我校于一冰同学编剧，周雨琪、彭可静、胡怡娜、李玮琛、董俊伶位同学演绎的《Making a mountain out?小题大做》小品短剧，切合此次比赛的主题——“低碳生活，快乐你我”，同学们英语口语流利，台风清新、自然、大方，博得了观众的阵阵喝彩，评委也给出了全场最高分，最终获得了特等奖，这是继去年我校在此类比赛中获得特等奖后的又一佳绩。</FONT></P>\r\n<P><FONT size=2>&nbsp;&nbsp;&nbsp; 这次比赛不仅发掘了我校学生潜力，展示了我校学子风采，更是激发了我校学生英语学习兴趣，也是我校素质教育成果的最好体现。</FONT></P>',1,1,2,0,0,5,0,0),(2,'合肥46中一教师喜获两项国家级奖','#0066a4','获奖','/uploadfile/images/news/20110304160024.jpg','本站',9,1,0,'2011-03-05 00:00:00','<P>近日，“第七届全国中学骨干英语教师新课程教学高级研修班”相关奖项揭晓，合肥46中英语教师金家军的教学设计和教学论文均荣获国家级三等奖。</P>\r\n<P>据悉，“第七届全国中学骨干英语教师新课程教学高级研修班”是由中国教育学会外语教学专业委员会和北京师范大学外国语言文学学院在河南开封联合举办“。在英语教师新课程教学高级研修班期间，教学设计评比是现场指定内容而非平时所上的教材，合肥46中英语教师金家军的教学设计荣获国家级三等奖，其教学论文也同时获国家级三等奖。</P>',2,1,2,0,0,5,1,0),(3,'合肥46中两教师喜获市优秀科技辅导员','#0066a4','优秀,辅导员','','本站',6,1,0,'2011-03-05 00:00:00','<P>在刚刚结束的合肥市第八届青少年科技创新市长奖颁奖大会上，合肥46中两教师高歆、王俊喜获“合肥市优秀科技辅导员”。</P>\r\n<P>2010年10月25日上午，合肥市第八届青少年科技创新市长奖颁奖大会在合肥市科技馆隆重举行。在过去的一年里，高歆和王俊老师在科技教育方面取得诸多荣誉。</P>\r\n<P>高歆老师辅导学生获得2010年合肥市青少年第25届科技创新大赛3个一等奖，安徽省青少年科技创新大赛2个二等奖；在辅导学生青少年机器人竞赛方面，获得科协举办的安徽省青少年电脑机器人竞赛1个二等奖，全国青少年电脑机器人竞赛获得1个银奖，教育部门举办的机器人竞赛获得安徽省二、三等奖。</P>\r\n<P>王俊老师辅导学生获得2010年合肥市青少年机器人竞赛1项一等奖；全国青少年机器人竞赛二等奖；华东六省一市机器人选拔赛一等奖；澳大利亚亚太机器人竞赛最佳设计和能力奖。</P>\r\n<P>在合肥市第八届青少年科技创新市长奖颁奖大会上，高歆、王俊喜获“合肥市优秀科技辅导员”。</P>',3,1,2,0,0,5,0,0),(4,'合肥46中全国机器人比赛再获殊荣','#0066a4','机器人','/uploadfile/images/news/20110304162101.jpg','网络',7,1,0,'2011-03-05 00:00:00','<P style=\"LINE-HEIGHT: 180%; mso-char-indent-count: 2.0\"><FONT size=3>日前，中国第十届青少年机器人大赛结果揭晓。合肥<SPAN lang=EN-US>46</SPAN>中郑钰凡、李苇杭和刘学宇<SPAN lang=EN-US>3</SPAN>位参赛选手在<SPAN lang=EN-US>FLL</SPAN>和<SPAN lang=EN-US>VEX</SPAN>项目中共获得两块银牌的好成绩。</FONT></P>\r\n<P style=\"LINE-HEIGHT: 180%; mso-char-indent-count: 2.0\"><FONT size=3>据悉，<SPAN lang=EN-US>2010</SPAN>年中国第十届青少年机器人竞赛于<?xml:namespace prefix = st1 ns = \"urn:schemas-microsoft-com:office:smarttags\" /><st1:chsdate w:st=\"on\" Year=\"2010\" Month=\"7\" Day=\"19\" IsLunarDate=\"False\" IsROCDate=\"False\"><SPAN lang=EN-US>7</SPAN>月<SPAN lang=EN-US>19</SPAN>日</st1:chsdate>至<SPAN lang=EN-US>23</SPAN>日在北京举行，合肥<SPAN lang=EN-US>46</SPAN>中代表队参加了其中<SPAN lang=EN-US>FLL</SPAN>和<SPAN lang=EN-US>VEX</SPAN>两个项目的竞赛。经过激烈的比赛和问辩，合肥<SPAN lang=EN-US>46</SPAN>中<SPAN lang=EN-US>3</SPAN>位选手奋力拼搏，斗智斗勇，充分发挥创新精神和实践能力，最终取得银牌。为合肥<SPAN lang=EN-US>46</SPAN>中的“科技创新”再添新荣誉。</FONT></P>',4,1,2,0,0,5,1,0),(5,'我校学生在包河区读书活动演讲比赛中喜获佳绩','#0066a4','包河','','本站',33,1,0,'2011-03-05 00:00:00','<DIV><FONT size=4>\r\n<P>为了营造浓厚的读书氛围，深入推进我市中小学生读书活动，引导广大中小学生多读书，读好书，让他们在大量的阅读中丰富知识，开阔视野，领悟人生真谛，区教体局于<FONT face=\"Times New Roman\">9</FONT>月<FONT face=\"Times New Roman\">21</FONT>日举办了包河区第二届中小学生读书活动演讲比赛。</P>\r\n<P>此次比赛以“以书为友，快乐成长”为主题，参赛选手可以从省教育厅推荐的50本书籍中任选一本，也可选择自己阅读的其他书籍，自拟演讲标题，撰写演讲稿，畅谈读书感悟，交流读书收获。在这次比赛中，我校参赛的三名同学不负众望，在比赛中，他们结合自己的读书心得演讲感悟，精神饱满，激情飞扬，取得了优秀的成绩。其中：杨晨同学荣获一等奖并将代表包河区参加合肥市比赛；郑子贤同学荣获二等奖；王呈静同学荣获三等奖。</P>\r\n<P>在此向获奖同学表示祝贺，同时向他们的指导老师申长友、郑瑾、黄凤鸣老师表示感谢。</FONT></P>\r\n<P></P></DIV>',5,1,2,0,0,5,0,0),(6,'我校在市第三届“暑假读一本好书”读书征文活动再获佳绩','#ff0000','征文,佳绩','','本站',52,1,1,'2011-03-04 00:00:00','<P>在<FONT face=\"Times New Roman\">2010</FONT>年暑假“读一本好书”征文活动中，我校再获佳绩：张雨婷、刘梦桃、童婉涓三位同学的作品在参赛的千余份作品中脱颖而出，获得合肥市一等奖，还有多名同学获得二、三等奖。学校获优秀组织奖。</P>\r\n<P>我校一直注重学习型学校的建设，培养学生“多读书、读好书”的习惯，在班级建设中大力加强各班的图书角建设；在平时的教育教学中，强调让每位同学养成写读书笔记的习惯，持续不断地坚持和努力，使得我校书香校园建设再次获得佳绩，继前两届读书活动荣获优秀组织奖之后，在合肥市第三届“暑假读一本好书”读书征文活动中，再次获此殊荣！</P>\r\n<P>我校将一如既往地开展系列读书活动，为培养学生的读书习惯，提高学生的读书能力，帮助青少年不断通过读书活动陶冶情操、净化心灵、启迪人生。切实把读书活动作为加强学校德育工作的重要载体，进一步将我校打造成文明、和谐的书香校园。</P>',6,1,2,0,0,5,0,0),(7,'合肥46中召开德育工作大会','#000000','德育','','本站',1,1,0,'2011-03-04 00:00:00','人无德不立，国无德不兴。加强师德建设，提升学生思想品德，是学校德育育人的关键环节和重要目标。我校为更好地发挥学校德育育人主阵地的作用，常态化、规范化开展各种师德师风建设和学生思想品德教育活动，新学期将德育工作确定为本学期的重点工作。\r\n<P>&nbsp; 为更好地研究探讨德育工作的有效性和针对性，在学校树立全面育人、人人育人、全体教职工都是德育工作者的良好德育氛围，2011年3月2日下午，我校在学术报告厅隆重召开全校德育工作会议。</P>\r\n<P>&nbsp; 会议由陆桂云副校长主持。陆桂云副校长首先全面布置了新学期的德育工作目标和具体实施计划。杨立新、贺咏琴、方庆浪三位老师分别作为文科、理科及班主任代表作了题为《语文教学的文与道》、《浅谈如何在物理教学中渗透德育教育》、《破窗理论与班级德育管理》的发言。老师们结合个人教育教学经验和生活中的点滴积累，从自身的实践出发，分别从不同角度诠释了教育教学管理中德育的作用、意义和具体做法，给全体老师带来了很多启发。</P>\r\n<P>&nbsp; 最后，黄先银校长作了总结并对新学期德育工作提出要求，他强调广大教师要率先垂范，竭诚奉献，争做专家型、复合型、智慧型教师。学生要学会做人，端正品行，争做文明学生，全面而有个性地成长。我校将以此次德育工作会议为契机，加强学习和研究，整体提升德育水平，培养新时代优秀人才。</P>',1,1,2,0,0,4,0,0),(8,'新学期合肥46中举行教师师德宣誓活动','#000000','师德','','本站',1,1,0,'2011-03-04 00:00:00','<P>新学期的第一天上午，合肥46中举行了以“强师德 明责任 育英才”为主题的师德宣誓活动。全体教职工排成整齐的队伍，在施建副书记带领下，举起右手，在国旗下庄严宣誓：“我是光荣的人民教师，忠于人民教育事业，履行教师神圣职责，贯彻国家教育方针，全面实施素质教育。热爱学生，为人师表。追求真理，崇尚科学。严谨治学，竭诚奉献。学会感恩，勇担责任。终身学习，勇于创新。做学生良师益友，铸教师高尚人格……”</P>\r\n<P align=left>开展教师宣誓活动，一方面向学生和家长表明学校的服务心迹，另一方面增强教师从事教育事业的使命感，促进自身教育观念转变，着力建立一种平等、互动的新型师生关系。教师宣誓，尽管只是一种象征，一种形式，但充分相信在宣誓的瞬间，全体教职工会油然而生一种教师职业的荣誉感、自豪感和责任感。心灵必将感知到神圣，承受起震撼，这种神圣和震撼必将促使宣誓者在今后的教书育人中，不断反思自己，警示自己，一定会把誓词的要求鲜活地印在自己的脑海里，渗透到具体行动中，从而使誓词不再是一段文字，而成为教师切切实实的职业准则，成为鞭策成长的力量。</P>\r\n<P align=left>宣誓后，每个教师胸中都涌动着一股更为强烈的教书育人、报效祖国的激情。老师们纷纷表示，当我们走上教师这个神圣的岗位，注定着我们每时每刻都在传承文明的薪火，一言一行都应成为下一代的楷模。这是师德师风建设赋予我们的职责，作为教师，我们要用智慧启迪学生，用人格陶冶学生，用情感感化学生，用爱心点燃学生的心灵之火，为办好人民满意的教育，为打造安徽教育第一强区，奉献出全部的智慧与力量！！</P>',2,1,2,0,0,4,0,0),(9,'46中把安全工作放在首位','#000000','安全','','本站',1,1,0,'2011-03-04 00:00:00','<P>2月18日开学第一天，46中召开了全体教职工大会。校长黄先银在会上强调学校安全工作“重于泰山”，安全工作是一切工作的重要前提和保障，时刻要把安全这根弦绷紧。接着黄先银校长与几位副校长之间、几位副校长与各自分管的部门负责人之间一一签订了安全责任书。然后总务处与保洁、保绿、两家食堂、师生服务部、医务室、浴室、电梯工、水电工；教务处与近230多名教师；政教处与69位班主任；寄管处与41位生活教师；办公室与3位驾驶员；保卫科与物业保安人员等分别一一签订安全责任书。安全工作实行层层负责制，谁主管、谁负责，责任到人，落实到位。定期每周检查一次，发现问题及时整改，不留隐患。</P>\r\n<P>最后施建副书记强调安全工作要常抓不懈，持之以恒，确保我校的“平安校园”名副其实，校园保持长治久安。</P>',3,1,2,0,0,4,0,0),(10,'合肥46中迎来“长江水学校”项目专家组来校调研','#000000','专家,46中','','本站',2,1,0,'2011-03-04 00:00:00','<FONT size=2 face=Verdana>&nbsp;</FONT>\r\n<P>2月21日下午，“长江水学校”项目组专家、香格里拉社区学会项目主持多杰才旦、华东师范大学地理系环教中心余国培教授、教育部课程教材研究所丁尧清博士等一行四人，在安徽省教育科学研究所夏建华主任的陪同下来46中指导、调研。</P>\r\n<P>“长江水学校”项目专家组一行在46中校党支部书记、校长黄先银等学校领导陪同下兴致勃勃地参观了校史荣誉室、学生宿舍、学生餐厅，感受着浓厚的校园文化氛围，对46中的软硬件设施设备非常满意。</P>\r\n<P>随后，在46中会议室，校党支部书记、校长黄先银对远到而来的项目组专家表示热烈欢迎并简要介绍了学校的概况。凌强副校长就学校在环境教育、可持续发展教育方面所做的工作及下一步的计划做了介绍。丁尧清博士介绍了“水学校项目”在我国开展三年来的情况，余国培教授对于“长江水学校”的工作做了具体指导，同时就有关问题进行了深入的座谈和交流。</P>\r\n<P>会后，黄先银校长、凌强副校长又陪同专家组一行参观了塘西河、滨湖污水处理厂、巢湖万年埠码头。</P>\r\n<P>“水学校”概念由全球著名切割仿水晶制造商施华洛世奇在奥地利发起，通过“保护自然水源基金”于世界各地的爱护水源项目。“长江水学校”是联合国“生命之水”国际行动的一部分，由香格里拉社区学会、教育部基础教育课程教材发展中心、联合国教育科学文化组织和施华洛世奇集团共同启动，旨在通过教育学生掌握对水资源的可持续性利用的方法，保护长江流域的生态完整性。</P>',4,1,2,0,0,4,0,0),(11,'合肥46中学期教学工作会议暨省教科院专家报告会如期举行','#000000','','','本站',8,1,0,'2011-03-04 00:00:00','<P>2月23日下午，合肥46中2010—2011学年度第二学期教学工作会议暨省教科院专家报告会如期举行！</P>\r\n<P>当日15：30，学期教学工作会议先行召开，凌强副校长就整个教育教学作工作具体布置和要求，他重点强调，在做好日常工作的同时，要创造性的开展工作。</P>\r\n<P>随后，安徽省教育科学研究院专家吴儒敏老师为全体教师作精彩报告，主题是《追求整体课堂效益》。</P>\r\n<P>“没有反对者的督促，思想者的思考将会变得平庸”！</P>\r\n<P>“教学的原点是什么”?“教育的本义是什么？”</P>\r\n<P>“好课=学科深度+教育宽度+思想高度”！</P>\r\n<P>报告会上，吴儒敏老师妙语连珠，真知灼见，以大量生动的案例、以及诸多来自课堂一线实践等等，诠释生命化的课堂，追求并达到整体课堂效益的目标，似乎并非难事！用“兴趣、创造、生活、思路、超越、开放”等语眼，点亮理想的课堂!</P>',5,1,2,0,0,4,0,0),(12,'团市委授予合肥46中第七批优秀“青少年维权岗”','#000000','维权','','本站',21,1,0,'2011-03-04 00:00:00','&nbsp;2011年3月2日下午，共青团合肥市委权益部吴钊部长在包河区团委王素娟书记、包河区教体局团委黄宇波书记等领导陪同下来到合肥市第四十六中学，授予学校合肥市第七批优秀“青少年维权岗”，据悉，46中是包河区唯一一所获此殊荣的学校。\r\n<P>&nbsp; 合肥46中党支部书记、校长黄先银，党支部副书记施建，校团委书记胡海光及寄管处副主任蔡薇等相关负责老师热情接待了吴钊部长一行。授牌仪式后，合肥46中校长黄先银介绍了46中的概况、办学特色以及学校“青少年维权岗”工作的开展情况。</P>\r\n<P>&nbsp;&nbsp;&nbsp;吴部长一行在听取汇报后，对46中的工作给予了充分肯定。与会交流中，他提出：要注重学生的当前发展，注重学生现在既是关心学生的未来；同时指出广泛开展家庭法制教育的重要性。为学校下一步更好更有效地开展青少年服务活动指明了方向。</P>',6,1,2,0,0,4,0,0),(13,'展望未来 再创辉煌','#000000','','','本站',10,1,0,'2011-03-05 00:00:00','<DIV class=content>\r\n<P>2011年元月8日，星期六，寒风凛冽，滴水成冰。合肥46中利用双休日时间召开下学期工作务虚会，全体行政干部和年级组长参加了会议。</P>\r\n<P>早上8点会议就开始了。校党支部书记、校长黄先银首先解读学校2010—2011学年第二学期工作思路。他表示，学校将以邓小平理论和三个代表重要思想为指导，切实贯彻科学发展观，认真学习领会《国家中长期教育改革和发展规划纲要（2010-2020年）》和全国、全省教育工作会议精神。牢固树立以提高质量为核心的教育发展观，建立以提高教育质量为导向的管理制度和工作机制，坚持规模和质量的统一，注重学校教育内涵发展，努力办出特色、办出水平、多出名师、培育英才。牢固树立“五年再铸辉煌，进而打造全省一流全国知名的名牌特色初中”发展目标，在“传承创新、特色发展”的工作实践中，促进学校“规范化、特色化、现代化”进程，促进学校各项工作优质有特色和上品味、有内涵。认真谋划学校新一轮发展目标规划，积极构建促进学校内涵发展的组织机构和工作机制，做好“四新文章”——制定新的发展策略，打造新的教师团队，再造新的校园文化，确定新的目标任务。</P>\r\n<P>各处室及分管校长分别对本学期工作进行了系统、全面的总结，并展望下学期工作。大家激情满怀，纷纷表示，在这辞旧迎新的时刻展望未来，令人振奋，信心倍增，一定要按照学校总体发展目标和工作思路，再接再厉，再创辉煌。</P>\r\n<P></P></DIV>',6,1,13,0,0,20,0,0),(14,'我校支教皖北再启阜南县之行','#000000','','','本站',1,1,0,'2011-03-05 00:00:00','<P>元月6日，在合肥市教育局、包河区教体局的相关领导和46中施建施建副书记等人的率领下，我校支教皖北再度开赴阜南县传经送宝，看望并慰问已在阜南县支教的老师。</P>\r\n<P>早晨7时许，一行8人驱车前往阜南县，经过近4个小时的车程顺利抵达阜南第一初级中学。随即，召开简短的两地双方的对接会，首先阜南县教育局张局长，阜南第一初级中学李校长、高校长等相关领导纷纷表达热忱欢迎之意。王斌代表合肥市教育局表示要继续加强两地双方的交流和学习。张萍代表包河区教体局给在阜南县支教的许家保等2位老师送上慰问金。最后46中副书记施建转达学校对支教教师的亲切问候，并送上慰问品。</P>\r\n<P>同时46中的英语学科倪环老师随车前来，特意准备了现场教学大餐。</P>\r\n<P align=center><IMG border=0 src=\"http://www.hf46.net:8000/news_file/201117111757393.jpg\"></P>\r\n<P align=center><IMG border=0 src=\"http://www.hf46.net:8000/news_file/201117111817551.jpg\"></P>\r\n<P align=center><IMG border=0 src=\"http://www.hf46.net:8000/news_file/201117111825309.jpg\"></P>\r\n<P align=center><IMG border=0 src=\"http://www.hf46.net:8000/news_file/201117111833674.jpg\"></P>\r\n<P align=center><IMG border=0 src=\"http://www.hf46.net:8000/news_file/201117111842998.jpg\"></P>\r\n<P align=center><IMG border=0 src=\"http://www.hf46.net:8000/news_file/201117111858717.jpg\"></P>\r\n<P align=center><IMG border=0 src=\"http://www.hf46.net:8000/news_file/20111711195961.jpg\"></P>',1,1,13,0,0,20,0,0),(15,'合肥46中课堂教学比赛成绩斐然','#000000','','','本站',2,1,0,'2011-03-05 00:00:00','<DIV class=content>\r\n<P align=left>在过去的2010年里，合肥46中在区教体育局领导下，在校党支部重视和教务处精心组织安排下，学校教学教研工作又上了新台阶。在省市区各级各类课堂教学大赛中，多位老师取得显著成绩，值得称赞！</P>\r\n<P align=left>多年来46中一直以课堂教学研究为抓手，深化课堂教学研究，力求45分钟的课堂有效与高效。既实时实地的让老师们外出参观学习先进教育教学理念，又不断地请校内外专家来校讲学、听课给予现场指导，有效地提高了教师专业素质，营造了浓厚的校本教研氛围。一年来，学校积极组织中青年教师参加各教育部门组织的各项教研活动。比如：在包河区第二届青年教师课堂教学评比活动中，校级领导重视，学校教务处、教研组和备课组积极协助，参赛老师积极认真备课和展示.，最终有八位老师获得了八个学科的一等奖，其中四位教师还获得了学科第一名的好成绩。</P>\r\n<P align=left>另在今年安徽省省级初中各类课堂教学大赛中，我校有8位老师被合肥市推荐参加省一级的比赛，其中刘亮荣等四位老师荣获了省一等奖，可喜可贺！</P>\r\n<P></P></DIV>',2,1,13,0,0,20,0,0),(16,'安徽省农村中小学思品骨干教师到46中学习指导','#000000','','','本站',1,1,0,'2011-03-05 00:00:00','<P>为进一步加强我省农村义务教育阶段学校教师队伍建设，发挥骨干教师示范作用，促进教育公平和义务教育均衡发展，2010年12月15日，受合肥师范学院委托，我校迎接了教育部、财政部“国培计划”近百名全省各地骨干教师到校参观学习。尽管天气寒冷，天降瑞雪，但是没有阻挡老师们听课的热情，我校政治教研组许祖祥老师和朱兵老师，引领学生进行了精彩的课堂展示。</P>\r\n<P>两位老师在新课程理念的指引下，采用“对对联”、“心灵对话”等灵活多样的课堂活动，或是引经据典，或是即兴演说，语言幽默生动，语调抑扬顿挫。课堂上，学生们能积极思考、主动参与，课堂气氛融洽和谐。两节课得到了听课老师们的高度肯定，大家都普遍认为：四十六中的老师教学理念新颖，学生综合素质高，不愧是名校！</P>',3,1,13,0,0,20,0,0),(17,'我校团校结业典礼暨优秀学员表彰大会成功召开','#000000','','','本站',2,1,0,'2011-03-05 00:00:00','<FONT size=4>\r\n<P>12月<FONT size=5>31</FONT>日，我校<FONT size=5>350</FONT>余名优秀学子在学校学术报告厅（一）参加了团校毕业典礼。团校是广大中学生学习团的基本知识和先进思想理论的重要阵地，是帮助引导我们广大青少年正确分析形势，了解时事，明确工作重点，提高理论水平的大舞台。本期团校在<FONT size=5>2010</FONT>年<FONT size=5>12</FONT>月<FONT size=5>9</FONT>日隆重开班，共有<FONT size=5>350</FONT>余名入团积极分子参加团校学习，他们都是思想上要求积极进步的好学生。整期团校分为四个学时，围绕“爱校、做合格新时代先进青年”为主题，带领同学们观看美丽校园的图片，培养他们爱校如家的情感；带他们认识什么是共青团，教他们学唱团歌，让他们感悟怎样才能成为一名优秀的共青团员。为了使理论落到实处，真正指导学生实践，团委特开展了“日做一事”的主题活动，让团校学员每天做一件力所能及的事，并将其记录下来，写下感受。最后通过结业考核，根据结业考试成绩并结合本人参加团队组织开展的各项活动的情况，评出了优秀学员。</P>\r\n<P>结业典礼由团委书记蔡薇老师主持，首先对团校结业学员表示祝贺，然后进行了宣誓入团，最后对陶思宇等优秀学员进行了表彰。希望受表彰的优秀学员戒骄戒躁，勤奋学习，努力工作，不断进取，多参加社会实践活动，在活动中锻炼自己，提升自己的素质，团结和带领广大团员青年共同进步。</P>\r\n<P>通过团校的学习，同学们真切感受到追求入团的过程，不仅是一个加深对团的认识、端正思想的过程，更是提高思想道德水平，不断要求自我进步的过程。通过丰富的团课内容全面提高了团组织的凝聚力和战斗力，有力促进了文明校园的构建。随着新一期团校学员的顺利结业，校园里的文明之花正在朵朵绽放。</P>\r\n<P></FONT>&nbsp;</P>\r\n<P><IMG border=0 src=\"http://218.22.29.126:8000/news_file/20101231133933593.jpg\"></P>\r\n<P align=center>优秀学员接收表彰</P>\r\n<P>&nbsp;</P>\r\n<P><IMG border=0 src=\"http://218.22.29.126:8000/news_file/20101231133842998.jpg\"></P>\r\n<P align=center>我们庄严宣誓</P>',4,1,13,0,0,20,0,0),(18,'合肥46中2010年校园科技文化体育艺术节——经典诵读比赛成功举行','#000000','','','本站',14,1,0,'2011-03-05 00:00:00','<P align=left>为更好地传承中华民族五千年古诗文经典文化，汲取传统文化的精髓，我校团委与语文教研组在校园体育科技文化艺术节开展之际，特举办“经典古诗文”朗诵比赛。</P>\r\n<P align=left>各班语文老师积极参与本次活动，精心选择诵读内容，组织学生认真排练，比赛如火如荼，取得了非常好的效果。有的学生背诵古诗词名句；有的学生朗诵的爱国诗歌《满江红》铿锵有力；有的学生朗诵的以“四季”为主题的诗歌，诗情画意，优美舒缓；更有的班级搬来了古筝等乐器，在婉转的伴奏声中，诵读《水调歌头》令人陶醉其中<FONT size=3>……</FONT></P>\r\n<P align=left>本次比赛，是<FONT size=3>46中语文经典诵读活动的一次展示，既繁荣了校园文化，又丰富了学生的语文学习生活，我校将继续开展经典诵读的系列活动。</FONT></P>',5,1,13,0,0,20,0,0),(19,'在全校学习实践科学发展观活动学习调研阶段总暨分析检查阶段动员大会上讲话','#000000','','','本站',1,1,0,'2011-03-05 00:00:00','<DIV class=content>\r\n<P>尊敬的孙部长、小吕同志，敬爱的老师们：</P>\r\n<P>下午好！受学校学习实践活动领导小组的委托，在本次大会上我主要汇报两部分内容：</P>\r\n<P>一、<B>学习调研阶段工作总结</B></P>\r\n<P align=left>根据包河区委关于深入开展学习实践科学发展观活动工作的统一部署，我校作为第三批学习实践活动的试点单位，参加第二批深入学习实践科学发展观活动，在区委试点单位指导检查组的指导下，我校紧紧围绕“推进科学发展，建设省内一流，全国知名的滨湖新校”这个主题，结合学校工作实际，坚持解放思想，突出实践特色，贯彻群众路线，立足破解难题，系统全面深入地开展了第一阶段的学习实践活动。为学习实践活动的进一步开展奠定了坚实的思想基础和工作基础。现将学习调研阶段具体开展的工作总结如下：</P>\r\n<P><B>（一）第一阶段进展情况</B></P>\r\n<P>1、组建领导机构和工作机构。成立以书记、校长黄先银同志为组长，副书记、副校长赵国泉为常务副组长，其他副校长为副组长，各部门负责人为成员的“深入学习实践科学发展观活动领导小组”，领导小组下设办公室，分为文秘宣传、机制调研、督查指导等小组，具体负责学习实践活动的组织、宣传、协调、调研、指导、督查、考核等工作。</P>\r\n<P>2、精心制定学习实践活动实施方案。根据区委《实施意见》和《实施方案》安排，结合学校实际，制定了《学校学习实践活动实施方案》、《学校领导班子学习实践活动实施方案》。在制定《实施方案》中，根据区委确定的“推进科学发展，建设滨湖新区”这一实践主题，结合学校实际情况，确定我校实践主题为“推进科学发展、建设省内一流、全国知名的滨湖新校”。两个《实施方案》经区委指导检查组审定同意后组织实施，并报区委学习实践活动领导小组办公室备案。学校目前分三个校区办学，在职党员86名，离退休党员20人，总计106人，根据《合肥市第四十六中学开展深入学习实践科学发展观活动实施方案》，经学校学习实践活动领导小组研究决定，按校区划分为五个党小组参加学习实践活动。</P>\r\n<P>3、积极筹备召开动员大会。全区学习实践活动动员大会之后，我校于3月26日下午召开动员大会，书记、校长黄先银同志亲自作动员，向全体党员干部讲清楚学习实践活动的重大意义、中央、省市委和区委的安排部署、学校活动安排和对党员干部的具体要求。动员大会还邀请了试点单位指导检查组组长、组织部孙烨副部长和区教育局领导参加指导。动员会之后，以党小组为单位，深入细致地做好党员干部的思想发动工作，调动全体党员参加学习实践活动的积极性。</P>\r\n<P>　&nbsp; 4、周密组织学习培训。学校制定学习培训计划，按照“有学习篇目、有学习形式、有时间安排、有培训辅导、有读书笔记、有心得体会、有思想共识、有达标要求”等“八有”要求，组织教职工进行学习培训。一是明确学习内容。组织党员和党员干部认真学习党的十七大和十七届三中全会精神，全国“两会”精神，学习纪念党的十一届三中全会召开30周年大会精神，十七届中央纪委第三次全体会议精神、中央经济工作会议精神，学习中央政治局常委参加深入学习实践科学发展观活动专题民主生活会情况的报告，学习中央应对当前经济形势的一系列决策部署，学习胡锦涛总书记两次视察安徽重要讲话和中央领导同志在听取安徽工作汇报时的重要讲话精神，学习《毛泽东邓小平江泽民论科学发展》和《科学发展观重要论述摘编》，学习全省经济工作会议、省“两会”、全省领导干部学习研讨班精神和王金山同志在第一批学习实践活动总结暨第二批学习实践活动动员会上的讲话精神，学习市委九届六次全会精神、省委常委、市委书记孙金龙同志在今年初市委理论学习中心组会议上的重要讲话精神，学习区委二届七次全委会精神。领导班子成员还要认真学习《深入学习实践科学发展观活动领导干部学习文件选编》，区委学习实践活动领导小组编印下发的辅助教材。全体党员要在通读有关学习材料的基础上，对重点篇目进行精读。党支部中心组学习不少于3次，党员集中学习不少于20学时。</P>\r\n<P>5、搞好深入调研。学校确立“合肥四十六中滨湖新校寄宿与走读兼有的格局下，给学校管理、教育教学工作带来的问题及对策”调研课题，校领导班子根据各自分管工作，确定若干个关于推进学校发展的课题，由校级领导干部领题，分别带领分管处室负责人开展调研，深化对科学发展观的认识和实践。通过各层次的座谈会，广泛听取各方面在学校发展、教育教学、行政管理、学生管理、后勤服务等方面的意见和建议。</P>\r\n<P>6、深入开展解放思想大讨论。学校紧紧围绕“实践科学发展观，建设省内一流、全国知名的滨湖新校”的主题开展解放思想大讨论，坚持实事求是，从实际出发，使之成为更新发展观念、转变发展思路、形成科学发展共识的有力推动。</P>\r\n<P><B>（二）工作特色</B></P>\r\n<P>1、以区委“推进科学发展、建设滨湖新区”主题为指导，确立“推进科学发展、建设省内一流、全国知名的滨湖新校”这个主题，<STRONG>以“严管理、轻负担、高质量、重特色”为理念，进一步解放思想，深化改革，凸显办学特色，争创省级特色初中，雕琢四十六中教育精品，</STRONG>在新的起点上，抓住学校新一轮发展机遇，成功实现二次创业<STRONG>。学习实践活动主题鲜明，目标明确，既符合区委要求，又顺应滨湖大城市建设发展潮流，更是全校师生、家长和社会热切关注的问题。</STRONG><STRONG></STRONG></P>\r\n<P>2、学习实践活动解决学校的突出问题。在认真查找问题、集中梳理的基础上，领导班子带头按照科学发展的新理念、新模式、新途径、新体制，转变思维方式、发展方式、创新方式和领导方式，着力破解制约学校科学发展的矛盾和问题。一是解决教职工团队建设问题，近两年由于办学规模急剧扩大，教职员工队伍迅速膨胀，<STRONG>教师的</STRONG>师德修养、业务水平等方面的<STRONG>综合素质有待进一步提高，要传承46中数代人</STRONG>爱岗敬业、艰苦奋斗精神，进一步激发广大教职员工的历史责任感和使命感，加快融合，组建一个优秀的团队；二是我校是合肥市第一所全日制寄宿制公办初中，寄宿制管理既是学校特色，也是新的课题，如何发挥寄宿制优势，要加大研究力度，不断探索、创新管理模式。三是学生<STRONG>两元结构非常突出，学区内学生基础薄弱，综合素质亟待提高。四是</STRONG>学校场地开阔，各项设施设备的先进程度超出我们的想象，为不辜负市委市政府期望，继续凸显四十六中的办学特色，仍需要加强学习研究和规划，充分发挥一流设施设备的作用。<STRONG></STRONG></P>\r\n<P>3、严格规定动作，创新自选动作。采取个人自学、专题辅导、讨论交流、党课教育，利用网上平台学习辅导、互动交流，宣传专栏等，做好“四个结合”，即坚持自学与集中学相结合；通读原文与重点辅导相结合；理论与实践相结合；讨论交流与深入调研相结合。抓好“一个关键”，即突出抓好领导班子和党员领导干部的学习，增强学习效果。优化学习方法。发扬理论联系实际的学风，围绕破除旧的思想观念学习，围绕提高科学发展能力学习，围绕破解发展难题学习，做到学以致用、以学促教。具体做法是继续办好周三政治学习 “我为学校献一策——教师金点子论坛”活动，受到教职工普遍认同；召开支委会、校长办公会、行政例会、党员学习开展专题学习；学校上交深入学习科学发展观征文受到区学习实践活动办公室肯定；邀请省委学习实践科学发展观宣讲团成员、省委党校研究生部副主任邵明博士做专题报告；邀请清华大学博士生宋立斌为寄宿生做了“感恩成长、立志成才”专题讲座；学校党支部书记、校长黄先银同志率先为党员领导干部上了一堂精彩的党课。严格学习纪律，建立学习考勤、补课等制度，切实做到“两保证、一带头”：保证学习时间，保证学习质量，作好学习笔记、撰写好心得体会。</P>\r\n<P>4、搞好深入调研。校领导班子在学校大课题前提下，根据各自分管工作，确定若干个关于推进学校发展的课题，由校级领导干部领题，分别带领分管处室负责人开展调研，深化对科学发展观的认识和实践。主管领导督促各职能处室开好座谈会。办公室、工会负责召开教职工代表座谈会，召开退休教职工座谈会；教务处、总务处、德育处、寄管处、团委负责召开学生、家长代表座谈会。开展家长开放周活动，把家长请进校园，深入课堂和生活区，实地感受孩子的学习生活状况，提出意见和建议；开展家长、学生评教活动；开展教学质量和学生学情分析；调整课外活动课程；向全校教职工汇报调研情况；在家长会上汇报调研情况；充分体现以人为本的教学制度和评价制度。通过各层面的座谈、考察、调查，广泛听取各方面在学校发展、教育教学、行政管理、学生管理、后勤服务等方面的意见和建议。校级领导干部根据调查情况撰写调查报告，将于本周五交流调研成果。同时还积极参加合肥市“共建新滨湖&nbsp; 齐心谋发展——我为合肥科学发展建言献策”活动。</P>\r\n<P>5、深入开展解放思想大讨论。学校紧紧围绕讨论主题，各党小组在学习调研基础上，就如何解决影响科学发展的认识问题开展解放思想讨论，例如如何提升寄宿制学校的教育和管理水平？干部教师思想观念的更新，校内管理体制机制的创新工作上，如何适应新的形势、新的环境、新的要求？如何凸显名校的地位和作用？如何实现《合肥市第四十六中学自主发展规划（2008年8月—2011年8月）》等。</P>\r\n<P>6、学校在学习调研的基础上对获取资料认真分析讨论，真正突出实践特色，做到边学边改。如电教中心拿出具体方案完善校园局域网建设，并付诸实施；强化学生规范教育管理，制定《学生违纪处理办法》；开展滨湖新校公物专项治理工作；加强促进教师专业化发展课题的研究；建设并开放学校阅览室，早晨播出《新闻和报纸摘要》节目；在中博会期间，4月27日合肥晚报教育视线整版以《精细化管理，让滨湖寄宿制四十六中魅力彰显》为题，报道我校兴办两周年纪实等。</P>\r\n<P><B>二、抓好两个环节，把握五条要求，加强组织领导，确保分析检查阶段各项活动扎实有效地开展</B></P>\r\n<P><B>（一）抓好两个环节，突出工作重点，务求活动实效</B></P>\r\n<P>按照区委的统一部署，今年5月27日上午包河区深入学习实践科学发展观学习调研阶段工作总结暨分析检查阶段动员大会召开之后，全区第二批学习实践活动的第二阶段活动即已开始。按照中央和省、市、区委部署要求，分析检查阶段从5月中旬开始，到7月中旬基本结束，时间两个月左右。分析检查阶段的主要任务是征求意见、找准问题、分析原因、理清思路、明确方向。重点抓好召开领导班子专题民主生活会、形成领导班子分析检查报告两个环节，统筹开展召开领导班子专题民主生活会和党员专题组织生活会，撰写领导班子贯彻落实科学发展观情况的分析检查报告、组织对分析检查报告的群众评议的工作。</P>\r\n<P>分析检查阶段是学习实践活动从思想层面进入实践层面的一个承前启后的阶段，既是对学习调研阶段工作效果的检查，又是搞好整改落实阶段工作的前提和基础，对确保学习实践活动取得实效至关重要。我们要认真学习、深刻领会、切实贯彻中央、省、市、区有关会议和文件精神，按照时间服从质量的要求，进一步落实好区委关于分析检查阶段的各项任务，扎扎实实推进，务求取得实效。</P>\r\n<P>1、征求意见建议务必广泛诚恳。只有广泛、诚恳地征求意见和建议，才能找准问题和原因所在。因此，应在学习调研阶段广泛征求意见建议的基础上，继续采取多种途径和形式，广泛诚恳地听取广大教职工和学生及学生家长对学校领导班子及成员的意见。同时，要注重征求意见建议的针对性，着重从思想观念上、发展理念上、发展方式上、学校管理上、教育教学上、服务质量上、党性党风党纪上广泛听取广大师生和家长的意见建议。进一步查找影响制约学校科学发展和群众反映强烈的突出问题，努力寻找推动学校科学发展的思路和对策。要增强征求意见和建议的开放性，采取发放征求意见表、召开征求意见会、个别走访、设立意见箱、电子信箱等多种形式，广泛听取广大师生员工和家长的意见。要增强征求意见和建议的诚意，诚恳地对征求到的意见建议，进行认真汇总、梳理，分别整理和如实反映对党员个人、学校党组织和学校领导班子的意见。领导班子和成员及党员个人要正确对待群众意见，认真进行对照检查，进一步明确努力方向。</P>\r\n<P>2、开展谈心活动务必真诚坦诚。在专题民主生活会召开之前，党员领导干部要相互谈心，交换看法。每一位党员领导干部（指校级党员干部）都要在谈心活动开展之前认真撰写发言材料，做好充分准备。谈心活动既要讲真话、说实话，又要推心置腹、与人为善，同时还要坦诚相见、沟通思想、增进团结、找准问题、统一认识、形成共识。</P>\r\n<P>3、专题民主生活会务必剖析根源。在广泛征求意见、开展谈心活动的基础上，要紧紧围绕“推进科学发展、建设省内一流全国知名的滨湖新校”这一主题要求，紧密联系学校实践和领导班子工作实际，召开专题民主生活会，开展批评和自我批评，从思想政治、思想理念、工作思路、落实措施、推进机制、工作策略、工作成效、作风建设等方面，深入查找个人和班子在深入贯彻落实科学发展观方面存在的突出问题；面对迁址办学面临的新的形势，在应对实际困难上反映出来的突出问题；党性修养和作风建设方面存在的突出问题等；深刻分析原因、找出差距和不足，开展批评和自我批评。专题民主生活会，要邀请上级纪委、党委组织部门等有关部门和学习实践活动指导检查组领导前来指导，确保质量。</P>\r\n<P>4、专题组织生活会务必切实有效。根据本支部党员人数多、分在三个校区工作的特点，本着切实有效地组织召开党员专题组织生活会的原则，分党小组、组织党员认真召开专题组织生活会，按照科学发展观的要求联系自身实际分析查找自身在思想观念、党性作风、师德水平、敬业精神、知识水平、专业能力、工作实效等方面存在的差距和不足，提高思想认识、明确努力方向，坚定为实现新的46中的腾飞而奋斗的信心和决心。</P>\r\n<P>5、分析检查报告务必客观深刻。在广泛征求意见和专题民主生活会的基础上，学校领导班子要全面总结学校迁址办学以来在贯彻落实科学发展观的实际情况，客观看待和深入反思工作现状、存在问题；在深刻分析检查的基础上，找准原因、找准切入点和突破口；明确推动学校科学发展的主要方向、总体思路、工作目标、要求措施；明确学校领导班子建设的具体要求和措施。形成领导班子分析检查报告。着重在撰写初稿、审阅把关、修改完善上把关，在充分讨论、听取各方意见和集中集体智慧的基础上反复修改完善，使之成为推动学校科学发展和实现二次创业目标的指导性文件。</P>\r\n<P>6、组织群众评议务必真听真改。领导班子分析检查报告形成后，要认真评议，广泛征求党员、群众意见。要科学周密地安排好评议人员参加评议活动。参加评议的人员要着重从领导班子对科学发展观的认识深不深、问题查找准不准、原因分析透不透、发展思路清不清、改进措施行不行等方面进行评议。要采取灵活多样的评议方式，如座谈会、评议大会、书面评议等。要尊重群众的评议意见，评议中提出的正确意见要吸收到整改后的分析检查报告中。要合理确定公开范围和方式。通过群众评议，使领导班子在真听真改的要求下分析检查报告更好地反映实际情况，更好地反映广大教职工的意愿，更好地凝结集体的智慧，更好地形成校内领导班子和广大教职员工在谋求学校科学发展、促进包河区和合肥市科学发展上的共识。</P>\r\n<P><B>（二）把握五条要求，加强组织领导，深入推进学习实践活动</B></P>\r\n<P>1、把握五条要求，全面落实分析检查阶段各项工作。</P>\r\n<P>第一，要继续深化学习。不断提高思想政治素质和理论素养，不断提高认识水平和判断能力。</P>\r\n<P>第二，找准突出问题。重点查找个人和班子在贯彻落实科学发展观方面存在的突出问题。</P>\r\n<P>第三，正面教育为主。坚持“三重两不”，即重在分析问题、重在总结经验、重在明确方向；不纠缠历史旧账、不纠缠个人责任。</P>\r\n<P>第四，严格分析检查。分析检查报告要突出检查和分析两个环节，避免写成工作总结和工作报告。</P>\r\n<P>第五，坚持边查边改。更加突出实践特色，着力在解决突出问题上下功夫，在推进当前工作上下功夫。</P>\r\n<P>2、加强组织领导，为切实开展分析检查阶段工作提供坚强的保证。</P>\r\n<P>一要落实领导责任制。校党支部全面负责本校学习实践活动，主要负责同志要认真履行第一责任人的职责，分管党建工作的领导是学习实践活动直接责任人。做到认识到位、组织到位、措施到位、工作到位。</P>\r\n<P>二要加强分类教育。区分领导班子和普通党员的不同职责，有针对性地提出具体要求。</P>\r\n<P>三要继续营造氛围。加强活动的宣传，吸引和激发群众的关注和参与，凝聚群众智慧。</P>\r\n<P>四要坚持统筹兼顾。找准学习实践活动与当前各项工作地结合点。根据区委要求，我校要切实加强校园管理，提高教学水平，帮助学生解决实际问题。通过统筹安排协调推进学习和工作，实现学习活动与推动当前工作的良性互动。</P>\r\n<P>&nbsp;</P>\r\n<P>同志们，我校抓好深入学习实践科学发展观活动第二阶段的各项工作，不仅对于深入推进学习实践科学发展观活动具有重要意义，同时对于促进我校乃至全区、全市科学发展上水平有着十分重要的意义。我们要坚决按照市委、区委的统一部署，以更加饱满的政治热情，以更加积极的工作态度，以更加务实的工作作风，认真抓好分析检查阶段的工作，为推进科学发展，建设滨湖新区，做出自己应有的贡献！</P>\r\n<P>谢谢！</P>\r\n<P>&nbsp;</P>\r\n<P align=right>黄先银</P>\r\n<P align=right>2009.6.3</P>\r\n<P></P></DIV>',1,1,15,0,0,17,0,0),(20,'合肥四十六中关于做好学习实践活动分析检查阶段工作意见','#000000','','','本站',1,1,0,'2011-03-05 00:00:00','<P>一、切实抓好两个环节，把学习实践活动引向深入</P>\r\n<P>按照区委部署要求，分析检查阶段从5月中旬开始，到7月中旬基本结束，时间两个月左右。分析检查阶段的主要任务是征求意见、找准问题、分析原因、理清思路、明确方向。要重点抓好召开领导班子专题民主生活会、形成领导班子分析检查报告2个环节，统筹开展召开领导班子专题民主生活会和党员专题组织生活会、撰写领导班子贯彻落实科学发展观情况的分析检查报告、组织对分析检查报告的群众评议等工作。</P>\r\n<P><B>（一）认真召开领导班子专题民主生活会和党员专题组织生活会。</B></P>\r\n<P>1、广泛征求意见建议。在前一阶段征求意见的基础上，采取发放征求意见表、召开征求意见会、个别走访、设立意见箱、电子信箱等多种方式，广泛听取广大教职工对领导班子及成员的意见。对征求到的意见建议，要认真汇总、梳理，分别整理出对党员个人、党组织和学校领导班子的意见。</P>\r\n<P>&nbsp;2、开展谈心活动。在专题民主生活会前，党员领导干部要相互谈心，交换看法，认真撰写发言材料，做好充分准备。谈心活动要做到与人为善，坦诚相见，以利于沟通思想，增进团结，找准问题，形成共识。</P>\r\n<P>3、召开专题民主生活会。在广泛征求意见、开展谈心活动的基础上，紧紧围绕“推进科学发展、建设省内一流全国知名的滨湖新校”这一主题，按照加强领导班子思想政治建设的要求，紧扣我校的发展实际，清醒地认识面临的挑战和困难，不为过去的成绩而自满；清醒地认识存在的差距和不足，不为既有的经验所束缚；清醒地认识发展阶段的变化和特征，不为传统的模式所局限。查找突出问题主要是在迁址滨湖办学新的起点上总结过去，谋划未来，实现科学发展。紧密联系领导班子作风建设的实际，深入查找个人和班子在深入贯彻落实科学发展观方面存在的突出问题，党性修养和作风建设方面存在的突出问题，深刻分析原因，开展批评与自我批评。</P>\r\n<P>4、召开专题组织生活会。要以党小组为单位，组织党员认真召开专题组织生活会，按照科学发展观要求分析查找自身差距和不足，提高思想认识，明确努力方向。党员领导干部既要参加所在党小组的专题组织生活会，又要参加领导班子专题民主生活会。</P>\r\n<P>5、及时通报民主生活会召开情况。民主生活会结束后，要及是时在一定范围内通报会议召开情况，统一思想，鼓足干劲，实现学校2008-2011年自主发展规划，在滨湖成功实现二次腾飞。</P>',2,1,15,0,0,17,0,0),(21,'合肥46中开展党员领导干部联系点上党课活动','#000000','','','本站',1,1,0,'2011-03-05 00:00:00','&nbsp;&nbsp;&nbsp; 为积极贯彻中共包河区委深入学习实践科学发展观活动领导小组文件精神，我校认真做好第二批学习实践活动联系点的相关工作。<BR>&nbsp;&nbsp;&nbsp; 4月21日下午，在深入学习实践科学发展观活动中，我校党支部书记、校长黄先银为学校的党员领导干部率先上了一节精彩的党课。黄校长的党课密切联系学校的实际，全面把握校情，围绕推进科学发展，总结学校搬迁以来的诸多谋略和战略，为建设省内一流全国知名的学校树立信心和决心。本次党课讲座近2两个小时，与会的全体中层以上党员领导干部倍受鼓舞和启发。 ',3,1,15,0,0,17,0,0),(22,'46中举行深入学习实践科学发展观报告会','#000000','','','本站',1,1,0,'2011-03-05 00:00:00','<P style=\"LINE-HEIGHT: 2\" align=left><FONT size=3>&nbsp;&nbsp;&nbsp; 4月16日下午，安徽省委党校学习实践科学发展观宣讲团成员、研究生部副主任邵明博士应邀来到46中做专题报告会。</FONT></P>\r\n<P style=\"LINE-HEIGHT: 2\" align=left><FONT size=3>&nbsp;&nbsp;&nbsp; 在长达2个小时的讲座中，邵明博士主要从全面把握科学发展观的丰富内涵、建设小康社会和安徽崛起等三个方面进行了讲解。在讲座过程中，邵博士精妙的言语、详实的例证不时迎来与会全体教师的热烈掌声。</FONT></P>',4,1,15,0,0,17,0,0),(23,'我校召开期中质量分析会','#000000','','','本站',1,1,0,'2011-03-05 00:00:00','<P>12月3日下午两节课后，合肥46中2009-2010学年第一学期七、八、九3个年级分别在阶梯教室2、阶梯教室4、阶梯教室6同时召开期中教学质量分析会。</P>\r\n<P>七年级在学校阶梯教室（2）举行。会议由年级组长束从陆主持，教务处李中节副主任对七年级前期工作作了总结，并根据期中统考成绩分析了期中教学情况，既肯定了成绩，也指出了不足，提出了一些进一步改进措施；何圣、曹芳两位老师做了精彩的经验介绍；最后，高俊副校长作了总结，并给大家提出了希望。</P>\r\n<P>八年级期中考试质量分析会在学校阶梯教室（2）举行。会上教务主任薛良翠对本次期中考试做了全面、系统的分析，并对后期的工作提出了要求；接着程宏老师就本班的教育教学及管理、陈武老师就本学科的教学进行了经验交流。通过此次分析，老师们认真的查找了教育教学中的成绩和不足，在以后的教学中努力缩小差距，全面提升教育教学水平。</P>\r\n<P>全体九年级老师在校阶梯教室6参加了期中考试质量分析会。会上, 教务李娟副主任对本次考试进行了横向与纵向的全面的分析,指出取得的成绩,也明确了存在的不足,表扬先进,激励后进;黄先银校长和阮学高副校长对本次期中考试取得的成绩予以充分肯定,并鼓舞士气,调动全体老师的积极性,反响积极强烈;教师代表也作了发言,特别是桑芝老师的脱口秀发言,受到与会老师的一致好评。短短的一节课时间,大家都觉得意犹未尽,会后,老师们仍在探讨着教育教学工作。</P>\r\n<P>&nbsp;校领导黄先银、高俊、阮学高、施建等亲自参会。</P>\r\n<P>&nbsp;校领导黄先银、高俊、阮学高、施建等亲自参会。</P>\r\n<P>七年级</P>',5,1,15,0,0,17,0,0),(24,'成长的阶梯 腾飞的平台','#000000','','','本站',4,1,0,'2011-03-05 00:00:00','<P>在学校领导的精心组织和周密安排下，我校自10月12日到11月6日开展了教学月活动。在以黄先银校长为组长的活动领导小组的领导下，圆满地完成了本次教学月的既定目标，既展示了名师教学风采，又检验了新教师的教学情况，更发现了一批年轻教师的潜质，为名校打造名师蓄势，同时对全校教师的课堂教学起到了积极的促进作用。</P>\r\n<P>本次活动由黄先银校长为组长，以高俊、赵国泉、阮学高、施建、陆桂云等副校长为副组长，各处室中层为成员。活动分为语文、数学、英语、政治、历史、物理、化学、体育、生物、信息、地理、艺术、十二个学科组进行，并成立了宣传组，专门负责宣传和服务工作。活动分为三个层次：示范课、研究课、考评课。示范课分别由获得课堂评比市级以上的教师承担，他们的课起着示范引领作用，为年轻教师的成长提供典范；研究课由具有一定经验和潜力的中青年教师承担，对课堂教学进行大胆尝试和创新，将新课程理念运用于教学实践中；考评课是针对今年刚考入、分到我校的新教师（包括绿色通道引进的名师）而设的。参加上课的教师多达69人，为历年教学月活动之最，各学科组由教研组长为评委组组长，本学科有经验的中老年教师为评委，对本组内每一节课进行认真评讲，并邀请14位省、市、区教研所（室）教研员莅临指导。</P>\r\n<P>每次课后都组织本组教师及时认真地评议，充分肯定他们的闪光之处，同时指出需要改进的地方。</P>\r\n<P>年轻教师非常珍惜学校提供的机会和平台，深入钻研教材。各组教师分备课组参与指导备课，提出自己的意见和建议，上课教师也多次将自己原有的设计和构思推翻，认真分析学情，在不同层次的学生中试上，将研究课落到实处，充分体现了名校教师的高水准，连前来指导的市教研员专家也连连称赞，评课中他们用了“很振奋、很满意”对年轻教师给予了充分的肯定，称他（她）们不仅外在的条件好，内在的素质也很高，在教材研读上颇有见地，将自己融入教材并和学生结合的自然完美，较好地体现了新课程改革的理念。</P>',6,1,15,0,0,17,0,0),(25,'中小学教师继续教育英语基础能力提高之我见','#000000','','','本站',1,1,0,'2011-03-05 00:00:00','<P align=left>三点认识</P>\r\n<P align=left>&nbsp;&nbsp; 一、要摆正心态，思想重视，不把它看成是走过场，而是要就此机会提高充实自己,为校争光.在工作名校的老师都被社会尊称为名师，而名师的心态应该是年轻的，思想应该是开放的，态度上应该是进取的。希望老师们都能证明自己行，证明46中的教师行，证明46中行。我们不仅要确保全通过，而且要力争多捧些高级证书回来。</P>\r\n<P align=left>&nbsp; 二、要放下脸面，不耻下问，像小学生那样捧起久违的课本，静下心来去认真听、读、背、写，找回已经逝去的幸福。唯有如此才能确保通过考试。考试以本为本，听说为主，交际领先，统筹兼顾，多方面有涉及。</P>\r\n<P align=left>三、制定具体计划, 从今做起, 从我做起，全书共有12个单元，前易后难，要通过制定计划来自我加压，不能前松后紧，学员应互通进度，比学赶帮超。</P>\r\n<P align=left>六点建议</P>\r\n<P align=left>1． &nbsp; &nbsp; 首先多听录音带，把单词读音基本搞准。时间久了，可能中英文对不上号，也需要多听才能缩短二者之间挂钩的反应时间。</P>\r\n<P align=left>2． &nbsp; &nbsp; 借助学生的电子字典和学习机查单词发音，了解意思，认识为主，没有词汇量一切无从谈起。</P>\r\n<P align=left>3． &nbsp; &nbsp; 背单词，可盖左边，根据中文默写英文单词，然后检查，背单词最好口、手并用。</P>\r\n<P align=left>4． &nbsp; &nbsp; 课文和对话应先会翻译，然后尽可能背诵，并找机会运用，也可一个人自言自语。</P>\r\n<P align=left>5． &nbsp; &nbsp; 口语部分可找partner练习，可以是办公室同事或跨办公室、跨学科，尤其多向英语老师请教，还可以向我们的学生请教。</P>\r\n<P align=left>6． &nbsp; &nbsp; 多少年没有参加考试了，大家也不了解自己了。培训之前我们准备先来个摸底检测，从听力，词汇，语法，交际英语，文化等方面来个检测，让大家互相有个了解和竞争意识。</P>\r\n<P align=left>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; 未来的培训课时有限，老师们要不等不靠，更多的要靠借助书后录音光盘，词汇表，课文注释等自学，考试具体题型未定，但用机器考是一定的，有了各位扎实的复习迎考准备，我们就可以“不管风吹浪打，胜似闲庭漫步”。</P>\r\n<P align=left>&nbsp; &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; 最后祝我校老师们都能掌握双语技能，备好舟楫，借开放的合肥、开放的滨湖之东风, 早日实现黄先银校长提出的“ 跨越巢湖，通江达海、走向世界”的宏伟办学目标。</P>',1,1,15,0,0,16,0,0),(26,'谈谈出卷前的“备课”','#000000','','','本站',1,1,0,'2011-03-05 00:00:00','<P align=left>&nbsp;老师们隔三差五的会接到命制试卷任务, 手中拥有了生杀予夺大权, 我们既要对得起“被信任”, 也要慎用手中的权力，要考虑“为何考，考什么，怎样考出效果”三个方面。制作一份试卷并不是生而知之的事，也是需要认真“备课”的，通常我们须认真考虑以下因素。</P>\r\n<P align=left><B>目的</B></P>\r\n<P align=left>&nbsp;&nbsp;&nbsp; &nbsp; 首先要了解出卷的目的，是选拔性考试，还是学业水平考试，还是二考合一；是想鼓励还是要泼冷水？是正常的检测了解学情，还是要体现某一或某些具体目的的导向卷？鼓励，有时候也是需要的。尤其是七年级，我们不能在刚起步时就在不经意中用过难的试卷把学生的学习热情扼杀了。有的学生初中三年就没有体会过“及格”的快乐，连及格这样简单的事都变成了学生梦寐以求的“理想”之一；泼冷水，也是一种教育手段。当学生变得浮躁，静不下来时；再比如，我们想引导学生养成背诵部分片段的好习惯，我们就可在试卷上打破常规，把完形填空两篇中的一篇语料硬性规定为必须取材于所学对话或课文，改编设计成完形填空这种形式，这样学生就不得不背书了。考试的指挥棒作用非常灵，不令而行。另外，经调查、问询我们了解到八年级上学生的分化就是从不背单词开始的，所以我们也置中考单词拼写只有5道题，共5分的现状不顾，把单词拼写增加到10道题，共10分，从而给学生早早敲响警钟。</P>\r\n<P align=left><B>类型</B></P>\r\n<P align=left>&nbsp;&nbsp;&nbsp; &nbsp; 其次，卷子是期中卷还是期末卷，是段考卷（月考），还是一章（节、单元、模块）一考卷，还是总复习卷？这就要考虑综合度问题了。单元或模块卷就要更多考查本单元或模块所学内容了，应主要是单项的而不宜是综合性过大的语法项目的考查。同时要切记语法考查不能犯“露头就打”的错误，因为我们所教的知识是螺旋上升的、以后还要反复出现的。先见见面，只是留个印象，以后还要进一步学习巩固，加深了解的，新知是需要时间来消化的，届时再考查为宜。如果是期中或期末之类综合卷，就要考虑把考查点分散开，考虑到所学的覆盖面，不能过于集中于某一或几个章节的知识点。</P>\r\n<P align=left><B>阶段</B></P>\r\n<P align=left>&nbsp;&nbsp;&nbsp; &nbsp; 做卷子的学生是刚起始的七年级，还是承上启下的八年级，还是快毕业的九年级？是上学期还是下学期？不同学期学生所学的词汇量和语法项目数目已经有较大区别了。尤其是七年级，由于我们的不慎没有给学生正确的导向和养成教育的助推，带来的往往只是挫伤和两级分化的提前。比如，七年级上学期试卷上常见的考查阅读理解，完形填空，书面表达等题型，严格意义上说都是急功近利、盲目追风的表现。七年级学生应重在养成好习惯。为了让学生有正确的发音，督促他们多听外教纯正的课文录音带，就应考查听。为了让其多朗读, 养成好的语感和促其从一开始就敢于运用所学，就可适量增加生词少，较容易掌握的口语能力考查，目前可采用准交际的补全对话这一题型暂时替代。单词拼写题量应该增加，只是叽里呱啦的会说不行，还要会写。考试目前还是以书面形式进行的，要写出来，不然会说和会识字都白搭了、功亏一篑。学习一门语言仅靠教材的语言输入量还是远远不够的，指导学生课外泛读在起始年级又受所学词汇量有限的制约而难以开展，所以考查学生对所学教材上的有限的对话、课文的默背就显得太重要了，否则学生不都成了“山中竹笋嘴尖皮厚腹中空”了吗？那种通常形式的阅读考查就不应当是考查的主要形式了。书面表达考查更是强人所难，一位语言学家说“无所读就无所写”，没有输入哪来输出，总共没有读过几篇对话或小课文的学生除了满纸中国式英语又能写出什么，他们还没有形成英语思维呢！要考也只能是早已被我们抛弃的所谓的“过时的”完成句子之类的题型，即重在考查一个句型或词组，或某一语法点。即使学生有了英语思维，词汇、语法跟不上，也只能是逐句翻译提示要点而不是真正意义上的写作。</P>',2,1,15,0,0,16,0,0),(27,'寻梦、追梦','#000000','','','本站',1,1,0,'2011-03-05 00:00:00','<P>尊敬的领导、老师：</P>\r\n<P>大家下午好！今天我发言的题目是《寻梦、追梦》。</P>\r\n<P>几十载风风雨雨，几十载筚路蓝缕，几十载沧桑岁月，不变的是精神，不变的是坚持，不变的是意志。人们常说人做一件好事容易，难得的是做一辈子的好事。同样能够淡泊名利，六十年如一日的坚持在自己的教师岗位上，没有让一个学生掉队，没有体罚过一个学生，没有向一个学生动过气……勤勤恳恳、踏踏实实、默默无闻、无私奉献。这就是霍懋征老师，一个平凡老师的一生不平凡经历的真实写照。</P>\r\n<P>在观看了霍懋征老师的相关视频以后，我的内心久久无法平静，因为她的事迹带给我的是无限的思索……</P>\r\n<P>当老师值得吗？</P>\r\n<P>小时候，老师问我：“孩子你的理想是什么？”“我的理想是当一名飞行员。”“为什么呢？”“因为那很帅。”稍大时，妈妈问我：“孩子，你长大了，有没有想过将来做什么啊？”“妈妈，我不想长大，因为长大太累了。”中学时，似乎理想的观念淡化了，只知道要好好学习，争取考上一个好一点的大学。然而，进入象牙塔的时候，我才真正发现自己一直这么努力不知道为的是什么？为了找一份满意的工作？拿一份令人羡慕的薪水？抑或是报答父母的养育之恩？或许都是，但是我还不那么确定。通过学习师德之魂，使我坚定了自己的选择。霍懋征老前辈说：“我没有做过什么惊天动地的大事，我所做的一切都是一个人民教师应该做的工作。”霍老师所付出的一切，是常人做不到的。同她老人家相比，我又做了些什么呢？我觉得自己很关心学生，很爱学生。可同霍老师相比，这究竟算不算爱学生呢？霍老师才是真正“把爱献给教育的人”，我决心向她学习。</P>\r\n<P>时间可以改变一切，环境可以改变一个人。渐渐地，我也变了。变得不再老是埋怨，变得更加积极了。我怀着满腔热情在三尺讲台上，面对台下一张张渴求知识的脸，暗下决心，我要做一名出色的人民教师！尽管背后总有人说我傻，笑我一天到晚忙，一个月能拿几个钱？老是找问题学生谈话，有用吗？今天我明白了，教育是不能用这些来衡量的。每个人的精力是有限的，但对于事业的爱和责任是无限的。记得，黄校长在一次全体老师会议时说过：“人需要一点境界。”是的，人需要一点境界。我找了当老师最大乐趣是什么了？当我看到我的学生，淘气的变乖了，不会的学会了，看着他们一天天长大了，我最幸福。的确，没有哪种快乐比得上桃李满天下的幸福与荣耀了！我终于找到了自己的梦。</P>',3,1,15,0,0,16,0,0),(28,'以真爱书写人生，用真情铸就师魂','#000000','','','本站',1,1,0,'2011-03-05 00:00:00','<P>近日，各校都在贯彻教育局文件精神，开展“学习霍懋征同志，争做优秀人民教师”主题教育活动，我们集体学习了霍懋征同志的感人事迹，通过对他光辉事迹的认真学习和领会，我认为她的崇高精神值得我们终身学习。霍老师在从教60对年来，始终涌动着对学生的一片“爱心”，她说：“没有爱就没有教育”。在霍老师看来，热爱学生，尊重学生，关心学生，才是教育思想的精髓，是她追求的目标和境界，是她教育的动力和源泉。因为爱，霍老师放弃了毕业后留北京师范大学任教的机会，毅然到北师大二附小任教，终身从事小学教育事业；因为爱，霍老师多次婉言谢绝上级部门和单位的调动要求，从未离开过她的学生和教师；因为爱，霍老师不顾年迈，退休后仍心系教育，先后到新疆、甘肃等多个省份讲学，上示范课，把多年积累的教育经验毫无保留的奉献出来。</P>\r\n<P>在学习霍老师的事迹后，我深受感动。她的光辉形象时刻浮现在我眼前，她在这平凡的岗位上做出了不平凡的事迹，是我学习的楷模。感觉自己和这位优秀的教师相比还差很远，我将在他先进事迹的启迪和鼓励下，树立正确的荣辱观，像霍老师那样“树师德，铸师魂，正师风”，做一个心系学生，务求实效的教师，为学生健康成长而爱岗敬业，积极奉献，做一个学生欢迎，家长满意的老师。</P>\r\n<P>2009年8月份，我考上了合肥四十六中的生活老师，光荣地成为四十六中大家庭的一员，在各位领导的支持下，在各位同事的帮助下，使我对生活老师这一职业有了更深刻的了解与热爱。叶圣陶先生曾经说过“教育就是养成良好的习惯”，作为生活老师，培养学生的良好的生活习惯和独立的生活能力，是我们的工作之重。生活来世虽不能手执教鞭在三尺讲台上，但是不能说生活老师不是教学者，因为生活本身就是一门博大精深的课程。为了培养学生良好的生活习惯和独立的生活能力，第一是言教、身教要结合，作为一位生活老师，我每天与学生朝夕相处，我的一言一行都会影响孩子的行为准则，言语不如行动，身教最为可贵，知行不可少，如自己的着装、房间、床铺、衣柜整理、个人卫生和饮食等，如果老师的生活能力的差，那学生的生活能力也好不到哪里去，每天我都和孩子们一起整理内务，把被子叠的方方正正，把房间打扫的一尘不染，注重个人卫生，勤换洗衣物，不吃零食，我想我做的这一切学生也会看在眼里，并潜移默化的受到影响。</P>',4,1,15,0,0,16,0,0),(29,'学习模范精神 争做优秀教师','#000000','','','本站',1,1,0,'2011-03-05 00:00:00','<P>各位领导、各位老师：</P>\r\n<P>大家下午好！今天我讲话的题目是《学习模范精神、争做优秀教师》。近日，国家教育部下发了《教育部关于教育系统向霍懋征同志学习的通知》，对霍懋征同志做了高度评价，号召全国教育工作者学习霍懋征同志终身从教的坚定信念、“爱的教育的理念”和勇于创新的精神。为大力学习霍懋征同志的崇高精神，发扬她的教育思想，宣传她的先进事迹，市教育局决定，在全市教育系统开展“学习霍懋征，争做优秀的人民教师”学校的学习、讨论、整改日程安排得满满当当，“师德”这一教师之间永恒的话题又给寒冬的校园增加了几分温暖。</P>\r\n<P>连日来，我观看了“全国优秀教师师德报告会”的视频。霍懋征、邹有云、黄静华……一个个熟悉的名字再度映入眼眶，一幕幕感人的场景再度在脑海中盘旋，心灵再次被高尚的师德荡涤，再次被伟大的人格震撼。</P>\r\n<P>认识霍懋征老师，是从她平实、生动的语文课堂上开始的。一篇篇人物报道，一首首爱的赞歌；一堂堂动人的语文课，一缕缕温暖的阳光。霍懋征老师，这位年过八旬的老人，用一个老人特有的从容淡定、智慧豁达感染了一代又一代共和国的教育人。而今天，再次聆听她的报告，我竟然还是热泪盈眶。霍老师用“光荣、艰巨、幸福”这六个字诠释自己对教育事业的理解。我敬佩她文道统一的观念，教语文就是教学生做人。她放弃了深爱的数学学科，从事语文教学，就是她对育人比教书更重要的理念的重要体现。最有趣的是她谈自己教低年级学生识字，在教“聪明”一词时，她告诉学生们，每人身上有四件宝：上边毛，下边毛，中间一颗黑葡萄（眼睛）；东一片，西一片，隔座山头不见面（耳朵）；红门楼，白门坎，里边坐着个嘻嘻孩儿（嘴巴）；小白孩住高楼，看不见，摸不着，他要一出来可不得了（脑子）。她给孩子们板书：一个耳朵竖起来，两只眼睛瞪起来，一个小嘴张起来，再加一颗心，组合起来就是“聪”字。一次用不行，得要日日用、月月用，日月为明，人就“聪明”了。</P>\r\n<P>反思自己，虽然是教数学的，但自己从来没有如此费心地设计引导，更不用说将这样的做法常规化。与专家名师相比，真的很惭愧。名师是怎样炼成的？我想，就是像霍老师这样，去掉浮躁和作秀，把日常的每一节课都当成新的课题去钻研，去探索如何能够高效地完成教学任务，而学生又学得兴高采烈。不为了当名师而当名师，只为了诗意的交流，只为了智慧的传播，这真的是一种只有大师才有的境界！ </P>\r\n<P>“没有爱就没有教育，没有兴趣也没有教育。”霍老师的话掷地有声。只要我们教师做到爱心、耐心、细心，从学生的兴趣点出发，认真设计好教育教学中的每个环节，不急功近利，只求润物无声。日久天长，教育的目的一定会水到渠成。</P>\r\n<P>一直以来，很敬仰霍懋征老师。没有华丽的词藻，没有抑扬顿挫的语调，没有泣不成声的情感共鸣，甚至没有甜美的笑靥，她像一位邻家大妈平易近人。但，却字字珠玑，每一句话都宛如重锤，锤在我们后继者的心上。在她的平和面前，我们满腹的牢骚，我们无谓的敷衍，我们无聊的躁动都显得那样幼稚而可笑！ </P>\r\n<P>“老师希望你们这每一张大手都永远干干净净！”没有高亢的号召，却使整个礼堂掌声雷动，久久不能平息。这是几十年后的同学聚会上，同学们让霍老师像小时候那样检查他们小手卫生时，老师给大家的要求。在我的心里，我认为，霍老师的这句话的分量甚至超过了一些高官云集的政界会议上的讲话，甚至超过了洋洋洒洒的上万字的文件。时过境迁，面对儿时的恩师，如今的慈母，哪一位重任在肩的学生能不被震撼？</P>\r\n<P>听优秀教师的师德报告，看名师们的先进事迹，想到去年教师节前夕温总理的学校之行，作为一名普通的中学教师，我想了很多。面对浮躁奢华的现实社会，面对应试教育和素质教育的激烈碰撞，面对家长和社会对学校的高要求，面对成长中的可爱的孩子们，我们的责任太重了！国家发展需要高素质的人才，家长需要有前途的子女，学校需要过硬的教学质量，学生需要阳光快乐的童年。而我们广大普通教师则是他们通往希望的桥梁，我们只有这样——像霍懋征老师一样。把满腔的爱撒给学生，把每一节课上得有声有色，把每个孩子的成长作为自己成功的标尺。“捧着一颗心来，不带半根草去”，全心全意，无私奉献——这才应该是一个师者的最高境界吧！</P>',5,1,15,0,0,16,0,0),(30,'2010年合肥四十六中寒假校本培训方案','#000000','','','本站',1,1,0,'2011-03-05 00:00:00','<DIV class=date_info>信息发布： 发布时间：2010-2-27 浏览次数：</DIV>\r\n<DIV class=content>\r\n<P align=left><B>随着合肥四十六中扩容，为造就师德修养高、业务素质精良、教学技能全面、教学基本功过硬、具有一定教科研能力、适应新时期新课程改革要求，适应学校新形势发展需要的教师队伍，结合我校教师队伍的实际情况，特制订我校2010年教师寒假校本研修方案。</B></P>\r\n<P align=left><B>1、</B><B>寒假期间每位教师结合自身工作实际认真学习苏霍姆林斯</B><B></B></P>\r\n<P align=left><B>基《给教师的建议》，并于</B><B>3</B><B>月</B><B>1</B><B>日交读后感一篇；</B><B></B></P>\r\n<P align=left><B>2、</B><B>认真钻研下学期教材，提前备</B><B>1-2</B><B>周的课时量，</B><B>2</B><B>月</B><B>28</B><B>日上午检查备课记录；</B><B></B></P>\r\n<P align=left><B>3、</B><B>2</B><B>月</B><B>26</B><B>日下午</B><B>2</B><B>：</B><B>30</B><B>召开年级组长、教研组长及备课组长会，布置与落实寒假集中培训的各项工作；</B><B></B></P>\r\n<P align=left><B>4、</B><B>2</B><B>月</B><B>26</B><B>日下午</B><B>4</B><B>：</B><B>00</B><B>由教研组长引领备课组长等学科骨干</B><B></B></P>\r\n<P><B>教师制定本学期本学科教研计划，讨论《合肥四十六中教研课题管理制度》（讨论稿）；</B><B></B></P>\r\n<P><B>5、</B><B>2</B><B>月</B><B>27</B><B>日上午</B><B>8</B><B>：</B><B>30</B><B>黄先银校长师德培训讲座及新学期工作各项布置与要求；</B><B></B></P>\r\n<P><B>6、</B><B>2</B><B>月</B><B>27</B><B>日下午</B><B>2</B><B>：</B><B>30</B><B>—</B><B>4</B><B>：</B><B>30</B><B>全体教师听关于创新思维专题讲座；</B><B></B></P>\r\n<P><B>7、</B><B>2</B><B>月</B><B>28</B><B>日上午</B><B>9</B><B>：</B><B>30</B><B>—</B><B>11</B><B>：</B><B>00</B><B>召开班主任和生活教师培训会；</B><B></B></P>\r\n<P><B>8、</B><B>2</B><B>月</B><B>28</B><B>日由备课组长引领本备课组教师制定本学期本备课组教学进度，分析上学期期末考试成绩（时间自定）。</B><B></B></P></DIV>',6,1,15,0,0,16,0,0),(31,'关于“讯飞”杯合肥市第二十六届青少年信息学（计算机）竞赛获奖情况的通知','#000000','','','本站',5,1,0,'2011-03-05 00:00:00','<DIV class=content>\r\n<P>各县区教育局、开发区教育主管部门，各市属学校：<BR>&nbsp;&nbsp;&nbsp; 由市教育局、市科协联合主办的“讯飞”杯合肥市第二十六届青少年信息学（计算机）竞赛，在大家的关心支持和共同努力下，经过多轮紧张角逐，已圆满结束。现将获奖情况通知如下：<BR>一、优秀组织奖<BR>&nbsp;&nbsp;&nbsp; 蜀山区教育局、庐阳区教育局<BR>二、&nbsp;团体一等奖<BR>&nbsp;&nbsp;&nbsp; 高中组：合肥一中&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; 初中组：合肥四十五中<BR>&nbsp;&nbsp;&nbsp; 小学组：合肥市蜀山小学<BR>三、&nbsp;团体二等奖<BR>&nbsp;&nbsp;&nbsp; 高中组：合肥六中<BR>&nbsp;&nbsp;&nbsp; 初中组：合肥四十六中、合肥五十中<BR>&nbsp;&nbsp;&nbsp; 小学组：合肥市西园新村小学、合肥市长江路第二小学<BR>四、&nbsp;团体三等奖<BR>&nbsp;&nbsp;&nbsp;&nbsp; 高中组：合肥八中、合肥一六八中学<BR>&nbsp; &nbsp;&nbsp; 初中组：合肥三十八中、合肥四十二中、合肥庐阳中学<BR>&nbsp;&nbsp;&nbsp; 小学组：合肥市南门小学、合师附小、合肥市亳州路小学。</P>\r\n<P></P>\r\n<TABLE style=\"WIDTH: 353pt; BORDER-COLLAPSE: collapse\" border=0 cellSpacing=0 cellPadding=0 width=469 x:str>\r\n<COLGROUP>\r\n<COL style=\"WIDTH: 49pt; mso-width-source: userset; mso-width-alt: 2080\" width=65>\r\n<COL style=\"WIDTH: 106pt; mso-width-source: userset; mso-width-alt: 4512\" width=141>\r\n<COL style=\"WIDTH: 31pt; mso-width-source: userset; mso-width-alt: 1312\" width=41>\r\n<COL style=\"WIDTH: 113pt; mso-width-source: userset; mso-width-alt: 4800\" width=150>\r\n<COL style=\"WIDTH: 54pt\" width=72>\r\n<TBODY>\r\n<TR style=\"HEIGHT: 14.25pt\" height=19>\r\n<TD style=\"BORDER-BOTTOM: windowtext 0.5pt solid; BORDER-LEFT: windowtext 0.5pt solid; BACKGROUND-COLOR: transparent; WIDTH: 49pt; HEIGHT: 14.25pt; BORDER-TOP: windowtext 0.5pt solid; BORDER-RIGHT: windowtext 0.5pt solid\" class=xl24 height=19 width=65><FONT color=#ff0000 size=2>唐之瀚</FONT></TD>\r\n<TD style=\"BORDER-BOTTOM: windowtext 0.5pt solid; BORDER-LEFT: windowtext; BACKGROUND-COLOR: transparent; WIDTH: 106pt; BORDER-TOP: windowtext 0.5pt solid; BORDER-RIGHT: windowtext 0.5pt solid\" class=xl25 width=141><FONT color=#ff0000 size=2>合肥市四十六中</FONT></TD>\r\n<TD style=\"BORDER-BOTTOM: windowtext 0.5pt solid; BORDER-LEFT: windowtext; BACKGROUND-COLOR: transparent; WIDTH: 31pt; BORDER-TOP: windowtext 0.5pt solid; BORDER-RIGHT: windowtext 0.5pt solid\" class=xl26 width=41><FONT color=#ff0000 size=2>男</FONT></TD>\r\n<TD style=\"BORDER-BOTTOM: windowtext 0.5pt solid; BORDER-LEFT: windowtext; BACKGROUND-COLOR: transparent; WIDTH: 113pt; BORDER-TOP: windowtext 0.5pt solid; BORDER-RIGHT: windowtext 0.5pt solid\" class=xl25 width=150><FONT color=#ff0000 size=2>张志刚</FONT></TD>\r\n<TD style=\"BORDER-BOTTOM: windowtext 0.5pt solid; BORDER-LEFT: windowtext; BACKGROUND-COLOR: transparent; WIDTH: 54pt; BORDER-TOP: windowtext 0.5pt solid; BORDER-RIGHT: windowtext 0.5pt solid\" class=xl26 width=72><FONT color=#ff0000 size=2>一</FONT></TD></TR>\r\n<TR style=\"HEIGHT: 14.25pt\" height=19>\r\n<TD style=\"BORDER-BOTTOM: windowtext 0.5pt solid; BORDER-LEFT: windowtext 0.5pt solid; BACKGROUND-COLOR: transparent; HEIGHT: 14.25pt; BORDER-TOP: windowtext; BORDER-RIGHT: windowtext 0.5pt solid\" class=xl24 height=19><FONT color=#ff0000 size=2>方<SPAN style=\"mso-spacerun: yes\">&nbsp; </SPAN>晨</FONT></TD>\r\n<TD style=\"BORDER-BOTTOM: windowtext 0.5pt solid; BORDER-LEFT: windowtext; BACKGROUND-COLOR: transparent; BORDER-TOP: windowtext; BORDER-RIGHT: windowtext 0.5pt solid\" class=xl25><FONT color=#ff0000 size=2>合肥市四十六中</FONT></TD>\r\n<TD style=\"BORDER-BOTTOM: windowtext 0.5pt solid; BORDER-LEFT: windowtext; BACKGROUND-COLOR: transparent; BORDER-TOP: windowtext; BORDER-RIGHT: windowtext 0.5pt solid\" class=xl26><FONT color=#ff0000 size=2>男</FONT></TD>\r\n<TD style=\"BORDER-BOTTOM: windowtext 0.5pt solid; BORDER-LEFT: windowtext; BACKGROUND-COLOR: transparent; BORDER-TOP: windowtext; BORDER-RIGHT: windowtext 0.5pt solid\" class=xl25><FONT color=#ff0000 size=2>蔡<SPAN style=\"mso-spacerun: yes\">&nbsp; </SPAN>薇</FONT></TD>\r\n<TD style=\"BORDER-BOTTOM: windowtext 0.5pt solid; BORDER-LEFT: windowtext; BACKGROUND-COLOR: transparent; BORDER-TOP: windowtext; BORDER-RIGHT: windowtext 0.5pt solid\" class=xl26><FONT color=#ff0000 size=2>一</FONT></TD></TR>\r\n<TR style=\"HEIGHT: 14.25pt\" height=19>\r\n<TD style=\"BORDER-BOTTOM: windowtext 0.5pt solid; BORDER-LEFT: windowtext 0.5pt solid; BACKGROUND-COLOR: transparent; HEIGHT: 14.25pt; BORDER-TOP: windowtext; BORDER-RIGHT: windowtext 0.5pt solid\" class=xl24 height=19><FONT color=#ff0000 size=2>刘知非</FONT></TD>\r\n<TD style=\"BORDER-BOTTOM: windowtext 0.5pt solid; BORDER-LEFT: windowtext; BACKGROUND-COLOR: transparent; BORDER-TOP: windowtext; BORDER-RIGHT: windowtext 0.5pt solid\" class=xl25><FONT color=#ff0000 size=2>合肥市四十六中</FONT></TD>\r\n<TD style=\"BORDER-BOTTOM: windowtext 0.5pt solid; BORDER-LEFT: windowtext; BACKGROUND-COLOR: transparent; BORDER-TOP: windowtext; BORDER-RIGHT: windowtext 0.5pt solid\" class=xl26><FONT color=#ff0000 size=2>男</FONT></TD>\r\n<TD style=\"BORDER-BOTTOM: windowtext 0.5pt solid; BORDER-LEFT: windowtext; BACKGROUND-COLOR: transparent; BORDER-TOP: windowtext; BORDER-RIGHT: windowtext 0.5pt solid\" class=xl25><FONT color=#ff0000 size=2>王晓荔</FONT></TD>\r\n<TD style=\"BORDER-BOTTOM: windowtext 0.5pt solid; BORDER-LEFT: windowtext; BACKGROUND-COLOR: transparent; BORDER-TOP: windowtext; BORDER-RIGHT: windowtext 0.5pt solid\" class=xl26><FONT color=#ff0000 size=2>一</FONT></TD></TR>\r\n<TR style=\"HEIGHT: 14.25pt\" height=19>\r\n<TD style=\"BORDER-BOTTOM: windowtext 0.5pt solid; BORDER-LEFT: windowtext 0.5pt solid; BACKGROUND-COLOR: transparent; HEIGHT: 14.25pt; BORDER-TOP: windowtext; BORDER-RIGHT: windowtext 0.5pt solid\" class=xl24 height=19><FONT color=#ff0000 size=2>奚宇轩</FONT></TD>\r\n<TD style=\"BORDER-BOTTOM: windowtext 0.5pt solid; BORDER-LEFT: windowtext; BACKGROUND-COLOR: transparent; BORDER-TOP: windowtext; BORDER-RIGHT: windowtext 0.5pt solid\" class=xl25><FONT color=#ff0000 size=2>合肥市四十六中</FONT></TD>\r\n<TD style=\"BORDER-BOTTOM: windowtext 0.5pt solid; BORDER-LEFT: windowtext; BACKGROUND-COLOR: transparent; BORDER-TOP: windowtext; BORDER-RIGHT: windowtext 0.5pt solid\" class=xl26><FONT color=#ff0000 size=2>男</FONT></TD>\r\n<TD style=\"BORDER-BOTTOM: windowtext 0.5pt solid; BORDER-LEFT: windowtext; BACKGROUND-COLOR: transparent; BORDER-TOP: windowtext; BORDER-RIGHT: windowtext 0.5pt solid\" class=xl25><FONT color=#ff0000 size=2>蔡<SPAN style=\"mso-spacerun: yes\">&nbsp; </SPAN>薇</FONT></TD>\r\n<TD style=\"BORDER-BOTTOM: windowtext 0.5pt solid; BORDER-LEFT: windowtext; BACKGROUND-COLOR: transparent; BORDER-TOP: windowtext; BORDER-RIGHT: windowtext 0.5pt solid\" class=xl26><FONT color=#ff0000 size=2>二</FONT></TD></TR>\r\n<TR style=\"HEIGHT: 14.25pt\" height=19>\r\n<TD style=\"BORDER-BOTTOM: windowtext 0.5pt solid; BORDER-LEFT: windowtext 0.5pt solid; BACKGROUND-COLOR: transparent; HEIGHT: 14.25pt; BORDER-TOP: windowtext; BORDER-RIGHT: windowtext 0.5pt solid\" class=xl24 height=19><FONT color=#ff0000 size=2>丁岳鹏</FONT></TD>\r\n<TD style=\"BORDER-BOTTOM: windowtext 0.5pt solid; BORDER-LEFT: windowtext; BACKGROUND-COLOR: transparent; BORDER-TOP: windowtext; BORDER-RIGHT: windowtext 0.5pt solid\" class=xl25><FONT color=#ff0000 size=2>合肥市四十六中</FONT></TD>\r\n<TD style=\"BORDER-BOTTOM: windowtext 0.5pt solid; BORDER-LEFT: windowtext; BACKGROUND-COLOR: transparent; BORDER-TOP: windowtext; BORDER-RIGHT: windowtext 0.5pt solid\" class=xl26><FONT color=#ff0000 size=2>男</FONT></TD>\r\n<TD style=\"BORDER-BOTTOM: windowtext 0.5pt solid; BORDER-LEFT: windowtext; BACKGROUND-COLOR: transparent; BORDER-TOP: windowtext; BORDER-RIGHT: windowtext 0.5pt solid\" class=xl25><FONT color=#ff0000 size=2>张志刚</FONT></TD>\r\n<TD style=\"BORDER-BOTTOM: windowtext 0.5pt solid; BORDER-LEFT: windowtext; BACKGROUND-COLOR: transparent; BORDER-TOP: windowtext; BORDER-RIGHT: windowtext 0.5pt solid\" class=xl26><FONT color=#ff0000 size=2>二</FONT></TD></TR>\r\n<TR style=\"HEIGHT: 14.25pt\" height=19>\r\n<TD style=\"BORDER-BOTTOM: windowtext 0.5pt solid; BORDER-LEFT: windowtext 0.5pt solid; BACKGROUND-COLOR: transparent; HEIGHT: 14.25pt; BORDER-TOP: windowtext; BORDER-RIGHT: windowtext 0.5pt solid\" class=xl24 height=19><FONT color=#ff0000 size=2>张立松</FONT></TD>\r\n<TD style=\"BORDER-BOTTOM: windowtext 0.5pt solid; BORDER-LEFT: windowtext; BACKGROUND-COLOR: transparent; BORDER-TOP: windowtext; BORDER-RIGHT: windowtext 0.5pt solid\" class=xl25><FONT color=#ff0000 size=2>合肥市四十六中</FONT></TD>\r\n<TD style=\"BORDER-BOTTOM: windowtext 0.5pt solid; BORDER-LEFT: windowtext; BACKGROUND-COLOR: transparent; BORDER-TOP: windowtext; BORDER-RIGHT: windowtext 0.5pt solid\" class=xl26><FONT color=#ff0000 size=2>男</FONT></TD>\r\n<TD style=\"BORDER-BOTTOM: windowtext 0.5pt solid; BORDER-LEFT: windowtext; BACKGROUND-COLOR: transparent; BORDER-TOP: windowtext; BORDER-RIGHT: windowtext 0.5pt solid\" class=xl25><FONT color=#ff0000 size=2>王晓荔</FONT></TD>\r\n<TD style=\"BORDER-BOTTOM: windowtext 0.5pt solid; BORDER-LEFT: windowtext; BACKGROUND-COLOR: transparent; BORDER-TOP: windowtext; BORDER-RIGHT: windowtext 0.5pt solid\" class=xl26><FONT color=#ff0000 size=2>二</FONT></TD></TR>\r\n<TR style=\"HEIGHT: 14.25pt\" height=19>\r\n<TD style=\"BORDER-BOTTOM: windowtext 0.5pt solid; BORDER-LEFT: windowtext 0.5pt solid; BACKGROUND-COLOR: transparent; HEIGHT: 14.25pt; BORDER-TOP: windowtext; BORDER-RIGHT: windowtext 0.5pt solid\" class=xl24 height=19><FONT color=#ff0000 size=2>黄颁钊</FONT></TD>\r\n<TD style=\"BORDER-BOTTOM: windowtext 0.5pt solid; BORDER-LEFT: windowtext; BACKGROUND-COLOR: transparent; BORDER-TOP: windowtext; BORDER-RIGHT: windowtext 0.5pt solid\" class=xl25><FONT color=#ff0000 size=2>合肥市四十六中</FONT></TD>\r\n<TD style=\"BORDER-BOTTOM: windowtext 0.5pt solid; BORDER-LEFT: windowtext; BACKGROUND-COLOR: transparent; BORDER-TOP: windowtext; BORDER-RIGHT: windowtext 0.5pt solid\" class=xl26><FONT color=#ff0000 size=2>男</FONT></TD>\r\n<TD style=\"BORDER-BOTTOM: windowtext 0.5pt solid; BORDER-LEFT: windowtext; BACKGROUND-COLOR: transparent; BORDER-TOP: windowtext; BORDER-RIGHT: windowtext 0.5pt solid\" class=xl25><FONT color=#ff0000 size=2>张志刚</FONT></TD>\r\n<TD style=\"BORDER-BOTTOM: windowtext 0.5pt solid; BORDER-LEFT: windowtext; BACKGROUND-COLOR: transparent; BORDER-TOP: windowtext; BORDER-RIGHT: windowtext 0.5pt solid\" class=xl26><FONT color=#ff0000 size=2>二</FONT></TD></TR>\r\n<TR style=\"HEIGHT: 14.25pt\" height=19>\r\n<TD style=\"BORDER-BOTTOM: windowtext 0.5pt solid; BORDER-LEFT: windowtext 0.5pt solid; BACKGROUND-COLOR: transparent; HEIGHT: 14.25pt; BORDER-TOP: windowtext; BORDER-RIGHT: windowtext 0.5pt solid\" class=xl24 height=19><FONT color=#ff0000 size=2>洪雨沛</FONT></TD>\r\n<TD style=\"BORDER-BOTTOM: windowtext 0.5pt solid; BORDER-LEFT: windowtext; BACKGROUND-COLOR: transparent; BORDER-TOP: windowtext; BORDER-RIGHT: windowtext 0.5pt solid\" class=xl25><FONT color=#ff0000 size=2>合肥市四十六中</FONT></TD>\r\n<TD style=\"BORDER-BOTTOM: windowtext 0.5pt solid; BORDER-LEFT: windowtext; BACKGROUND-COLOR: transparent; BORDER-TOP: windowtext; BORDER-RIGHT: windowtext 0.5pt solid\" class=xl26><FONT color=#ff0000 size=2>男</FONT></TD>\r\n<TD style=\"BORDER-BOTTOM: windowtext 0.5pt solid; BORDER-LEFT: windowtext; BACKGROUND-COLOR: transparent; BORDER-TOP: windowtext; BORDER-RIGHT: windowtext 0.5pt solid\" class=xl25><FONT color=#ff0000 size=2>史国辉、张志刚</FONT></TD>\r\n<TD style=\"BORDER-BOTTOM: windowtext 0.5pt solid; BORDER-LEFT: windowtext; BACKGROUND-COLOR: transparent; BORDER-TOP: windowtext; BORDER-RIGHT: windowtext 0.5pt solid\" class=xl26><FONT color=#ff0000 size=2>二</FONT></TD></TR>\r\n<TR style=\"HEIGHT: 14.25pt\" height=19>\r\n<TD style=\"BORDER-BOTTOM: windowtext 0.5pt solid; BORDER-LEFT: windowtext 0.5pt solid; BACKGROUND-COLOR: transparent; HEIGHT: 14.25pt; BORDER-TOP: windowtext; BORDER-RIGHT: windowtext 0.5pt solid\" class=xl24 height=19><FONT color=#ff0000 size=2>高一帆</FONT></TD>\r\n<TD style=\"BORDER-BOTTOM: windowtext 0.5pt solid; BORDER-LEFT: windowtext; BACKGROUND-COLOR: transparent; BORDER-TOP: windowtext; BORDER-RIGHT: windowtext 0.5pt solid\" class=xl25><FONT color=#ff0000 size=2>合肥市四十六中</FONT></TD>\r\n<TD style=\"BORDER-BOTTOM: windowtext 0.5pt solid; BORDER-LEFT: windowtext; BACKGROUND-COLOR: transparent; BORDER-TOP: windowtext; BORDER-RIGHT: windowtext 0.5pt solid\" class=xl26><FONT color=#ff0000 size=2>男</FONT></TD>\r\n<TD style=\"BORDER-BOTTOM: windowtext 0.5pt solid; BORDER-LEFT: windowtext; BACKGROUND-COLOR: transparent; BORDER-TOP: windowtext; BORDER-RIGHT: windowtext 0.5pt solid\" class=xl25><FONT color=#ff0000 size=2>史国辉、张志刚</FONT></TD>\r\n<TD style=\"BORDER-BOTTOM: windowtext 0.5pt solid; BORDER-LEFT: windowtext; BACKGROUND-COLOR: transparent; BORDER-TOP: windowtext; BORDER-RIGHT: windowtext 0.5pt solid\" class=xl26><FONT color=#ff0000 size=2>三</FONT></TD></TR>\r\n<TR style=\"HEIGHT: 14.25pt\" height=19>\r\n<TD style=\"BORDER-BOTTOM: windowtext 0.5pt solid; BORDER-LEFT: windowtext 0.5pt solid; BACKGROUND-COLOR: transparent; HEIGHT: 14.25pt; BORDER-TOP: windowtext; BORDER-RIGHT: windowtext 0.5pt solid\" class=xl24 height=19><FONT color=#ff0000 size=2>黄乔木</FONT></TD>\r\n<TD style=\"BORDER-BOTTOM: windowtext 0.5pt solid; BORDER-LEFT: windowtext; BACKGROUND-COLOR: transparent; BORDER-TOP: windowtext; BORDER-RIGHT: windowtext 0.5pt solid\" class=xl25><FONT color=#ff0000 size=2>合肥市四十六中</FONT></TD>\r\n<TD style=\"BORDER-BOTTOM: windowtext 0.5pt solid; BORDER-LEFT: windowtext; BACKGROUND-COLOR: transparent; BORDER-TOP: windowtext; BORDER-RIGHT: windowtext 0.5pt solid\" class=xl26><FONT color=#ff0000 size=2>男</FONT></TD>\r\n<TD style=\"BORDER-BOTTOM: windowtext 0.5pt solid; BORDER-LEFT: windowtext; BACKGROUND-COLOR: transparent; BORDER-TOP: windowtext; BORDER-RIGHT: windowtext 0.5pt solid\" class=xl25><FONT color=#ff0000 size=2>王晓荔</FONT></TD>\r\n<TD style=\"BORDER-BOTTOM: windowtext 0.5pt solid; BORDER-LEFT: windowtext; BACKGROUND-COLOR: transparent; BORDER-TOP: windowtext; BORDER-RIGHT: windowtext 0.5pt solid\" class=xl26><FONT color=#ff0000 size=2>三</FONT></TD></TR>\r\n<TR style=\"HEIGHT: 14.25pt\" height=19>\r\n<TD style=\"BORDER-BOTTOM: windowtext 0.5pt solid; BORDER-LEFT: windowtext 0.5pt solid; BACKGROUND-COLOR: transparent; HEIGHT: 14.25pt; BORDER-TOP: windowtext; BORDER-RIGHT: windowtext 0.5pt solid\" class=xl24 height=19><FONT color=#ff0000 size=2>许天雄</FONT></TD>\r\n<TD style=\"BORDER-BOTTOM: windowtext 0.5pt solid; BORDER-LEFT: windowtext; BACKGROUND-COLOR: transparent; BORDER-TOP: windowtext; BORDER-RIGHT: windowtext 0.5pt solid\" class=xl25><FONT color=#ff0000 size=2>合肥市四十六中</FONT></TD>\r\n<TD style=\"BORDER-BOTTOM: windowtext 0.5pt solid; BORDER-LEFT: windowtext; BACKGROUND-COLOR: transparent; BORDER-TOP: windowtext; BORDER-RIGHT: windowtext 0.5pt solid\" class=xl26><FONT color=#ff0000 size=2>男</FONT></TD>\r\n<TD style=\"BORDER-BOTTOM: windowtext 0.5pt solid; BORDER-LEFT: windowtext; BACKGROUND-COLOR: transparent; BORDER-TOP: windowtext; BORDER-RIGHT: windowtext 0.5pt solid\" class=xl25><FONT color=#ff0000 size=2>王晓荔</FONT></TD>\r\n<TD style=\"BORDER-BOTTOM: windowtext 0.5pt solid; BORDER-LEFT: windowtext; BACKGROUND-COLOR: transparent; BORDER-TOP: windowtext; BORDER-RIGHT: windowtext 0.5pt solid\" class=xl26><FONT color=#ff0000 size=2>三</FONT></TD></TR>\r\n<TR style=\"HEIGHT: 14.25pt\" height=19>\r\n<TD style=\"BORDER-BOTTOM: windowtext 0.5pt solid; BORDER-LEFT: windowtext 0.5pt solid; BACKGROUND-COLOR: transparent; HEIGHT: 14.25pt; BORDER-TOP: windowtext; BORDER-RIGHT: windowtext 0.5pt solid\" class=xl24 height=19><FONT color=#ff0000 size=2>张枢堂</FONT></TD>\r\n<TD style=\"BORDER-BOTTOM: windowtext 0.5pt solid; BORDER-LEFT: windowtext; BACKGROUND-COLOR: transparent; BORDER-TOP: windowtext; BORDER-RIGHT: windowtext 0.5pt solid\" class=xl25><FONT color=#ff0000 size=2>合肥市四十六中</FONT></TD>\r\n<TD style=\"BORDER-BOTTOM: windowtext 0.5pt solid; BORDER-LEFT: windowtext; BACKGROUND-COLOR: transparent; BORDER-TOP: windowtext; BORDER-RIGHT: windowtext 0.5pt solid\" class=xl26><FONT color=#ff0000 size=2>男</FONT></TD>\r\n<TD style=\"BORDER-BOTTOM: windowtext 0.5pt solid; BORDER-LEFT: windowtext; BACKGROUND-COLOR: transparent; BORDER-TOP: windowtext; BORDER-RIGHT: windowtext 0.5pt solid\" class=xl25><FONT color=#ff0000 size=2>蔡<SPAN style=\"mso-spacerun: yes\">&nbsp; </SPAN>薇</FONT></TD>\r\n<TD style=\"BORDER-BOTTOM: windowtext 0.5pt solid; BORDER-LEFT: windowtext; BACKGROUND-COLOR: transparent; BORDER-TOP: windowtext; BORDER-RIGHT: windowtext 0.5pt solid\" class=xl26><FONT color=#ff0000 size=2>三</FONT></TD></TR></TBODY></TABLE>\r\n<P></P>\r\n<P>&nbsp; 我校共计26人参加报名，12人获奖，一等奖3人，二等奖5人，三等奖4人。获得团体第二名，再次证明此次培训成功，提升了我校选手的整体实力。在此向各位辅导教师表示衷心的感谢！<BR></P>\r\n<P></P></DIV>',7,1,15,0,0,16,0,0),(32,'我校团校结业典礼暨优秀学员表彰大会成功召开','#000000','','','本站',1,1,0,'2011-03-05 00:00:00','<FONT size=4>\r\n<P>12月<FONT size=5>31</FONT>日，我校<FONT size=5>350</FONT>余名优秀学子在学校学术报告厅（一）参加了团校毕业典礼。团校是广大中学生学习团的基本知识和先进思想理论的重要阵地，是帮助引导我们广大青少年正确分析形势，了解时事，明确工作重点，提高理论水平的大舞台。本期团校在<FONT size=5>2010</FONT>年<FONT size=5>12</FONT>月<FONT size=5>9</FONT>日隆重开班，共有<FONT size=5>350</FONT>余名入团积极分子参加团校学习，他们都是思想上要求积极进步的好学生。整期团校分为四个学时，围绕“爱校、做合格新时代先进青年”为主题，带领同学们观看美丽校园的图片，培养他们爱校如家的情感；带他们认识什么是共青团，教他们学唱团歌，让他们感悟怎样才能成为一名优秀的共青团员。为了使理论落到实处，真正指导学生实践，团委特开展了“日做一事”的主题活动，让团校学员每天做一件力所能及的事，并将其记录下来，写下感受。最后通过结业考核，根据结业考试成绩并结合本人参加团队组织开展的各项活动的情况，评出了优秀学员。</P>\r\n<P>结业典礼由团委书记蔡薇老师主持，首先对团校结业学员表示祝贺，然后进行了宣誓入团，最后对陶思宇等优秀学员进行了表彰。希望受表彰的优秀学员戒骄戒躁，勤奋学习，努力工作，不断进取，多参加社会实践活动，在活动中锻炼自己，提升自己的素质，团结和带领广大团员青年共同进步。</P>\r\n<P>通过团校的学习，同学们真切感受到追求入团的过程，不仅是一个加深对团的认识、端正思想的过程，更是提高思想道德水平，不断要求自我进步的过程。通过丰富的团课内容全面提高了团组织的凝聚力和战斗力，有力促进了文明校园的构建。随着新一期团校学员的顺利结业，校园里的文明之花正在朵朵绽放。</P>\r\n<P></FONT>&nbsp;</P>',1,1,22,0,0,23,0,0),(33,'合肥46中2010年校园科技文化体育艺术节学生优秀美术作品获奖名单','#000000','','','本站',1,1,0,'2011-03-05 00:00:00','<P><B>艺术节学生优秀美术作品获奖名单</B></P>\r\n<P>&nbsp;</P>\r\n<P>一等奖&nbsp;&nbsp; 八（18）班 高&nbsp; 展&nbsp; &nbsp;八（10）班 杨邦龙&nbsp; &nbsp;七（14）班 陈林玉 </P>\r\n<P>&nbsp;八（24）班 王&nbsp; 琛&nbsp;&nbsp; 八（14）班 汪征一清</P>\r\n<P>&nbsp;</P>\r\n<P>二等奖&nbsp;&nbsp; 八（23）班 杨西西&nbsp;&nbsp; 八（12）班 朱&nbsp; 犇&nbsp;&nbsp; 八（14）班 刘雪澄&nbsp;&nbsp; </P>\r\n<P>八（14）班 骆程涵&nbsp;&nbsp; &nbsp;八（9）班 李子鹏&nbsp; &nbsp;七（9） 班 万雨林</P>\r\n<P>八（8） 班 张健欣&nbsp; &nbsp;&nbsp;七（8）班 陈&nbsp; 溪&nbsp; &nbsp;七（16）班 方文婕&nbsp; </P>\r\n<P>八（1） 班 范金蓉</P>\r\n<P>&nbsp;</P>\r\n<P>三等奖&nbsp; 七（2） 班 宛&nbsp; 玥&nbsp; </P>\r\n<P>七（8） 班 雷红蕾 &nbsp;徐明睿&nbsp; 程&nbsp; 殊&nbsp; 徐&nbsp; 勤</P>\r\n<P>七（12）班 凌煜阳 &nbsp;王子玉 &nbsp;许&nbsp; 可&nbsp; 七（16）班 刘&nbsp; 鎏&nbsp; </P>\r\n<P>七（19）班 李&nbsp; 月&nbsp; 七（13）班 徐菲彤&nbsp; 八（1）班 宋凯伦&nbsp; </P>\r\n<P>八（9） 班 孔&nbsp; 涵&nbsp; 八（11）班 扬名豪 八（14）班 刘晨煜</P>\r\n<P>八（22）班 周雅玲 &nbsp;八（21）班 李云飞&nbsp; </P>\r\n<P>八（10）班 王家明珠 童婉涓 刁翰林 武昊然 张凌子 唐佳园</P>\r\n<P>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; </P>\r\n<P>累计：一等奖5名 二等奖10名 三等奖23名</P>',2,1,22,0,0,23,0,0),(34,'合肥46中2010年校园科技文化体育艺术节班容班貌和仪容仪表评比结果','#000000','','','本站',1,1,0,'2011-03-05 00:00:00','<P><B>七年级：</B><B></B></P>\r\n<P><B>一等奖：七（</B><B>23</B><B>）班、七（</B><B>24</B><B>）班、七（</B><B>14</B><B>）班</B><B></B></P>\r\n<P><B>二等奖：七（</B><B>16</B><B>）班、七（</B><B>18</B><B>）班、七（</B><B>12</B><B>）班、七（</B><B>22</B><B>）班</B><B></B></P>\r\n<P><B>三等奖：七（</B><B>17</B><B>）班、七（</B><B>20</B><B>）班、七（</B><B>8</B><B>）班、七（</B><B>4</B><B>）班、七（</B><B>15</B><B>）班、七（</B><B>9</B><B>）班</B><B></B></P>\r\n<P><B></B>&nbsp;</P>\r\n<P><B>八年级：</B><B></B></P>\r\n<P><B>一等奖：八（</B><B>10</B><B>）班、八（</B><B>12</B><B>）班、八（</B><B>8</B><B>）班</B><B></B></P>\r\n<P><B>二等奖：八（</B><B>2</B><B>）班、八（</B><B>7</B><B>）班、八（</B><B>11</B><B>）班、八（</B><B>23</B><B>）班</B><B></B></P>\r\n<P><B>三等奖：八（</B><B>21</B><B>）班、八（</B><B>9</B><B>）班、八（</B><B>18</B><B>）班、八（</B><B>3</B><B>）班、八（</B><B>14</B><B>）班</B><B></B></P>\r\n<P><B></B>&nbsp;</P>\r\n<P><B>九年级：</B><B></B></P>\r\n<P><B>一等奖：九（</B><B>13</B><B>）班、九（</B><B>14</B><B>）班、九（</B><B>21</B><B>）班</B><B></B></P>\r\n<P><B>二等奖：九（</B><B>9</B><B>）班、九（</B><B>18</B><B>）班、九（</B><B>20</B><B>）班、九（</B><B>10</B><B>）班</B><B></B></P>\r\n<P><B>三等奖：九（</B><B>12</B><B>）班、九（</B><B>17</B><B>）班、九（</B><B>8</B><B>）班、九（</B><B>11</B><B>）班、九（</B><B>5</B><B>）班</B><B></B></P>',3,1,22,0,0,23,0,0),(35,'合肥46中2010年校园科技文化体育艺术节科普类获奖名单','#000000','','','本站',1,1,0,'2011-03-05 00:00:00','<P><B>信息学比赛获奖名单</B></P>\r\n<P><B>一等奖（</B><B>6</B><B>人）</B><B></B></P>\r\n<P><B>李英灏</B><B> </B><B>奚宇轩</B><B>&nbsp; </B><B>方</B><B>&nbsp; </B><B>晨</B><B>&nbsp; </B><B>蔡耀辉</B><B>&nbsp; </B><B>丁岳鹏</B><B>&nbsp; </B><B>黄乔木</B><B></B></P>\r\n<P><B>二等奖（</B><B>6</B><B>人）</B><B></B></P>\r\n<P><B>蒋泽浩</B><B> </B><B>丁书虫</B><B>&nbsp; </B><B>刘知非</B><B>&nbsp; </B><B>徐雅婷</B><B>&nbsp;&nbsp; </B><B>王</B><B>&nbsp; </B><B>颖</B><B>&nbsp; </B><B>张立松</B><B></B></P>\r\n<P><B>三等奖（</B><B>8</B><B>人）</B><B></B></P>\r\n<P><B>胡晓雨</B><B> </B><B>宋奕明</B><B> </B><B>赵莞歆</B><B> </B><B>王宇健</B><B>&nbsp; </B><B>凌文杰</B><B>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; </B><B>李子嘉</B><B> </B><B>王志伟</B><B> </B><B>许天雄</B></P>\r\n<P>&nbsp;</P>\r\n<P><B>电脑作品比赛获奖名单</B></P>\r\n<P><B>一等奖（</B><B>6</B><B>人）</B><B></B></P>\r\n<P><B>徐静雅</B><B> </B><B>胡凌云</B><B>&nbsp; </B><B>孙思婷</B><B>&nbsp; </B><B>郑迪惠</B><B>&nbsp;&nbsp; </B><B>刘孔燕</B><B> </B><B>王</B><B>&nbsp; </B><B>颖</B><B>&nbsp; </B></P>\r\n<P><B>二等奖（</B><B>9</B><B>人）</B><B></B></P>\r\n<P><B>张如薇</B><B> </B><B>王可楠</B><B> </B><B>唐慕虎</B><B>&nbsp; </B><B>薛</B><B>&nbsp; </B><B>松</B><B>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; </B><B>李</B><B>&nbsp; </B><B>旭</B><B>&nbsp; </B><B>王婧卓</B><B>&nbsp; </B><B>王</B><B>&nbsp; </B><B>丹</B><B>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; </B><B>郭志成</B><B>&nbsp; </B><B>金</B><B>&nbsp; </B><B>磊</B><B>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; </B></P>\r\n<P><B>三等奖（</B><B>13</B><B>人）</B><B></B></P>\r\n<P><B>陈皖军</B><B>&nbsp; </B><B>蒋璟斌</B><B>&nbsp; </B><B>项</B><B>&nbsp; </B><B>坡</B><B>&nbsp; </B><B>孙</B><B>&nbsp; </B><B>伟</B><B>&nbsp; </B><B>王志成</B><B>&nbsp;&nbsp;&nbsp;&nbsp; </B><B>冯庭勇</B><B>&nbsp; </B><B>牛子傲</B><B>&nbsp; </B><B>胡</B><B>&nbsp; </B><B>吉</B><B></B></P>\r\n<P><B>梁天赐</B><B>&nbsp; </B><B>闫</B><B>&nbsp; </B><B>政</B><B>&nbsp; </B><B>韩旭东</B><B>&nbsp; </B><B>王金东</B><B>&nbsp; </B><B>王瑞欣</B><B>&nbsp; </B><B>胡凌云</B><B>&nbsp; </B><B>刘向华</B><B>&nbsp; </B><B>汪啸弘</B><B>&nbsp; </B><B>王</B><B>&nbsp; </B><B>京</B></P><B>\r\n<P><B>王俊负责的电脑机器人获奖（一）</B><B></B></P></B>',4,1,22,0,0,23,0,0),(36,'合肥46中加强学生干部队伍建设','#000000','','','本站',1,1,0,'2011-03-05 00:00:00','<P align=center>&nbsp; 合肥46中一直重视加强学生干部的管理，培养学生自我管理能力，促进学生的自我教育。自学校成立学生会以来，为了提高学生干部能力和素质，充分发挥学生干部模范带动作用、增强全体学生会成员的创造力、凝聚力和战斗力，坚持每周召开学生会干部例会，总结工作，提出要求。2011年2月28日，政教处召开了2010-2011学年第二学期学生会工作暨上学期学生会干部表彰大会。</P>\r\n<P>&nbsp; 在学校政教处的指导下，在广大师生大力支持下，校学生会组织紧紧围绕学校的中心工作，以服务学校发展、服务同学、促进全体学生全面发展为工作宗旨，以一日常规检查为抓手，积极创造良好的校风和学风，引导全体同学不断提高思想觉悟，维护学校良好的教学秩序和生活环境。为了表彰先进，树立典型，对在我校学生会各项工作中，积极主动、认真负责，并在协助学校和班主任管理中取得突出成绩的学生会同学，经校学生会推荐，由政教处研究决定，评选出八名“优秀学生会干部”。他们是七（1）班薛子恒、七（6）班杨自立、七（7）班房丽、八（1）班洪世明、八（2）班吴艳、八（12）班刘那忆、八（4）班徐雪雁、八（16）班项学芃等同学。</P>\r\n<P>&nbsp; 会上，政教处李娟主任从思想政治教育、学生干部队伍建设、学生日常行为管理等方面总结上学期相关学生会工作，并对取得的成绩给予充分肯定，同时也对学生会成员提出了新的希望和要求。希望受表彰的同学戒骄戒躁、再接再厉，全体同学向他们学习，支持他们的工作，不断完善自我，争做品德高尚、志趣高雅、全面发展的学生，增强学生会的活力。 </P>',5,1,22,0,0,23,0,0),(37,'合肥46中召开德育工作大会','#000000','','','网络',3,1,0,'2011-03-05 00:00:00','<P>&nbsp;&nbsp; 人无德不立，国无德不兴。加强师德建设，提升学生思想品德，是学校德育育人的关键环节和重要目标。我校为更好地发挥学校德育育人主阵地的作用，常态化、规范化开展各种师德师风建设和学生思想品德教育活动，新学期将德育工作确定为本学期的重点工作。</P>\r\n<P>&nbsp; 为更好地研究探讨德育工作的有效性和针对性，在学校树立全面育人、人人育人、全体教职工都是德育工作者的良好德育氛围，2011年3月2日下午，我校在学术报告厅隆重召开全校德育工作会议。</P>\r\n<P>&nbsp; 会议由陆桂云副校长主持。陆桂云副校长首先全面布置了新学期的德育工作目标和具体实施计划。杨立新、贺咏琴、方庆浪三位老师分别作为文科、理科及班主任代表作了题为《语文教学的文与道》、《浅谈如何在物理教学中渗透德育教育》、《破窗理论与班级德育管理》的发言。老师们结合个人教育教学经验和生活中的点滴积累，从自身的实践出发，分别从不同角度诠释了教育教学管理中德育的作用、意义和具体做法，给全体老师带来了很多启发。</P>\r\n<P>&nbsp; 最后，黄先银校长作了总结并对新学期德育工作提出要求，他强调广大教师要率先垂范，竭诚奉献，争做专家型、复合型、智慧型教师。学生要学会做人，端正品行，争做文明学生，全面而有个性地成长。我校将以此次德育工作会议为契机，加强学习和研究，整体提升德育水平，培养新时代优秀人才。</P>',6,1,22,0,0,23,0,0),(38,'政教处向全校发出倡议：我们美丽整洁的校园拒绝口香糖','#000000','','','本站',1,1,0,'2011-03-05 00:00:00','<P><B><FONT face=\"Times New Roman\">2010</FONT></B><B>年</B><B><FONT face=\"Times New Roman\">10</FONT></B><B>月</B><B><FONT face=\"Times New Roman\">22</FONT></B><B>日下午，政教处带领学生会干部和各班劳动委员集中清理教学楼的口香糖印迹，这次总务处配备了劳动工具，在各位学生干部的细心清理下，教学区的口香糖残渣基本上得到清理。</B><B></B></P>\r\n<P><FONT size=3><B><FONT face=\"Times New Roman\">&nbsp; </FONT></B><B>很多同学都有嚼口香糖的习惯，这对于未成年人来说这是非常不好的习惯，</B></FONT><B>由于口香糖的原料为化学合成，经常使用对人体有害，据媒体报道，医院里因嚼口香糖过多造成下颌骨关节酸痛的病人也很多，总是嚼着口香糖与人交往、甚至上课时也嚼，也很不严肃，很不礼貌。更主要的是这些化学成分是不可分解的，一些同学缺乏公德意识，嚼过口香糖后随处乱吐，给学校环境带来了巨大的负担！学校的走廊、楼梯、教室、操场等地到处是一块块乌黑的残渣，无法扫除，也无法用拖把拖干净。可以说，吃口香糖本身就不是好习惯，而乱吐口香糖更是非常不文明的行为，造成</B><B>校园、教学区、寝室的走廊上、教室地面，原本光洁的地面留下了一块块的黑色污迹、斑点</B><B>。</B><B></B></P>\r\n<P><FONT size=3><B><FONT face=\"Times New Roman\">&nbsp;&nbsp; </FONT></B><B>政教处向全体同学发出号召，为了同学们的身体健康，也为了环境卫生，让美丽的合肥</B></FONT><B><FONT face=\"Times New Roman\">46</FONT></B><B>中校园拒绝口香糖。</B><B></B></P>\r\n<P><B>请同学们不要把口香糖带入校园，也请同学们互相监督、班主任在班上进一步要求，让我们爱护校园、保护环境、拒绝口香糖。</B></P>',1,1,22,0,0,24,0,0),(39,'团中央学校部领导来我校开展中学团建工作调研','#000000','','','本站',1,1,0,'2011-03-05 00:00:00','<P style=\"TEXT-INDENT: 28pt; mso-char-indent-count: 2.0\"><?xml:namespace prefix = st1 ns = \"urn:schemas-microsoft-com:office:smarttags\" /><st1:chsdate w:st=\"on\" Year=\"2010\" Month=\"12\" Day=\"2\" IsLunarDate=\"False\" IsROCDate=\"False\"><SPAN style=\"COLOR: black; FONT-SIZE: 14pt\" lang=EN-US>2010</SPAN><SPAN style=\"COLOR: black; FONT-SIZE: 14pt\">年<SPAN lang=EN-US><FONT size=5>12</FONT></SPAN>月<SPAN lang=EN-US><FONT size=5>2</FONT></SPAN>日</SPAN></st1:chsdate><SPAN style=\"COLOR: black; FONT-SIZE: 14pt\">下午，团中央学校部梁春早处长、全国学联范煜主席、团省委学校部李国阳、史学田部长等在团市委副书记王旻及团市委学校部袁长一部长陪同下来我校指导调研中学共青团工作。<SPAN lang=EN-US><?xml:namespace prefix = o ns = \"urn:schemas-microsoft-com:office:office\" /><o:p></o:p></SPAN></SPAN></P>\r\n<P><SPAN style=\"FONT-FAMILY: 宋体; COLOR: black; FONT-SIZE: 14pt; mso-font-kerning: 1.0pt; mso-bidi-font-family: \'Times New Roman\'; mso-ascii-font-family: \'Times New Roman\'; mso-hansi-font-family: \'Times New Roman\'; mso-ansi-language: EN-US; mso-fareast-language: ZH-CN; mso-bidi-language: AR-SA\">&nbsp;&nbsp;&nbsp; 座谈会上，团中央、团省委、团市委领导认真听取了来自合肥市各中学团委分管领导、团委书记关于共青团工作开展情况的汇报，我校党支部施建副书记及团委书记蔡薇也就我校团员发展工作作了详实的汇报，梁春早处长表示，这次调研工作卓有成效，合肥市的共青团工作扎实。接着，调研组一行在我校还参观了艺术楼及心理咨询室，对我校关注中学生心理健康工作给予了充分肯定。希望我校继续做好团员青年的各项工作，不断探索，不断创新、不断进步。</SPAN></P>',2,1,22,0,0,24,0,0),(40,'合肥市46中学2010年七年级广播操比赛名次公布','#000000','','','本站',1,1,0,'2011-03-05 00:00:00','<DIV class=content>\r\n<P align=center><B>合肥市46中学七年级广播操比赛</B></P>\r\n<P align=center><B>成绩公布</B></P>\r\n<P align=center><B></B>&nbsp;</P>\r\n<P><B>一等奖：</B></P>\r\n<P><B>七（</B><B>21</B><B>）班、七（</B><B>24</B><B>）班、七（</B><B>18</B><B>）班、七（</B><B>16</B><B>）班七（</B><B>12</B><B>）班、七（</B><B>8</B><B>）班、七（</B><B>14</B><B>）班、七（</B><B>23</B><B>）班</B><B></B></P>\r\n<P><B></B>&nbsp;</P>\r\n<P><B>二等奖</B><B>：</B><B></B></P>\r\n<P><B>七（</B><B>22</B><B>）班、七（</B><B>15</B><B>）班、七（</B><B>20</B><B>）班、七（</B><B>10</B><B>）班七（</B><B>17</B><B>）班、七（</B><B>9</B><B>）班</B><B></B></P>\r\n<P><B></B>&nbsp;</P>\r\n<P><B>三等奖</B><B>：</B><B></B></P>\r\n<P><B>七（</B><B>11</B><B>）班、七（</B><B>6</B><B>）班、七（</B><B>7</B><B>）班、七（</B><B>19</B><B>）班</B><B></B></P>\r\n<P><B>七（</B><B>2</B><B>）班、七（</B><B>5</B><B>）班、七（</B><B>4</B><B>）班、七（</B><B>13</B><B>）班</B><B></B></P>\r\n<P><B>七（</B><B>3</B><B>）班、七（</B><B>1</B><B>）班</B><B></B></P>\r\n<P><B></B>&nbsp;</P>\r\n<P><B></B>&nbsp;</P>\r\n<P><B></B>&nbsp;</P>\r\n<P align=right><B>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; </B><B>政教处</B><B>&nbsp; </B><B>体育组</B><B></B></P>\r\n<P align=right><B>2010-12-6</B><B></B></P>\r\n<P></P></DIV>',3,1,22,0,0,24,0,0),(41,'合肥46中2010年校园科技文化体育艺术节——经典诵读比赛成功举行','#000000','','','本站',1,1,0,'2011-03-05 00:00:00','<P align=left>为更好地传承中华民族五千年古诗文经典文化，汲取传统文化的精髓，我校团委与语文教研组在校园体育科技文化艺术节开展之际，特举办“经典古诗文”朗诵比赛。</P>\r\n<P align=left>各班语文老师积极参与本次活动，精心选择诵读内容，组织学生认真排练，比赛如火如荼，取得了非常好的效果。有的学生背诵古诗词名句；有的学生朗诵的爱国诗歌《满江红》铿锵有力；有的学生朗诵的以“四季”为主题的诗歌，诗情画意，优美舒缓；更有的班级搬来了古筝等乐器，在婉转的伴奏声中，诵读《水调歌头》令人陶醉其中<FONT size=3>……</FONT></P>\r\n<P align=left>本次比赛，是<FONT size=3>46中语文经典诵读活动的一次展示，既繁荣了校园文化，又丰富了学生的语文学习生活，我校将继续开展经典诵读的系列活动。</FONT></P>\r\n<P align=left><IMG border=0 src=\"http://218.22.29.126:8000/news_file/20101223194123935.jpg\"></P>\r\n<P align=left><FONT size=3></FONT></P>\r\n<P><FONT size=3 face=\"Times New Roman\">&nbsp;<IMG border=0 src=\"http://218.22.29.126:8000/news_file/2010122319418939.jpg\"></FONT></P>',4,1,22,0,0,24,0,0),(42,'合肥46中“尊师爱校”学生征文获奖名单','#000000','','','本站',1,1,0,'2011-03-05 00:00:00','合肥46中“尊师爱校”学生征文获奖名单',5,1,22,0,0,24,0,0),(43,'家庭教育之我见','#000000','','','本站',1,1,0,'2011-03-05 00:00:00','<P>——孩子的教育问题，是不允许犯错的，即便有1%的可能，我们也应付出100%的努力。</P>\r\n<P>作为一名家长，我在慎重考虑给孩子择校的同时，更看重的是家庭教育。下面是我的一些可操作性的教子方法，仅供大家参考。</P>\r\n<P>1、培养孩子良好的学习习惯</P>\r\n<P>好习惯=好成绩，坏习惯=坏成绩。一个孩子习惯的好坏与他的成绩成正比，可见好习惯的重要性。</P>\r\n<P>2、全面了解你的孩子</P>\r\n<P>知己知彼，方能百战不殆。只有全面了解你的孩子（包括性格、兴趣等），才能做到在孩子处理孩子的具体问题上，达到有的放矢。</P>\r\n<P>3、做百分百的好家长</P>\r\n<P>拿出百分百的细心去观察孩子、理解孩子、走近孩子，发现孩子的劣势，发展孩子的优势，从而培养孩子的自信心。</P>\r\n<P>4、在家中做点辅导孩子学习的工作</P>\r\n<P>比如，我是一名英语老师，在英语方面，我不仅教孩子一些语法，同时还教他一些做题的技巧和方法等。</P>\r\n<P>再比如，对于语文的课外阅读这一项，我几乎是和孩子同时进行的，我和孩子通过思考、讨论，共同写出答案。这样既可以培养母子的感情，同时又给孩子创造一个良好的学习氛围。</P>\r\n<P>5、做孩子最好的心理医生</P>\r\n<P>作为家长，我会及时洞察孩子的情况（包括喜、怒、哀、乐），并给孩子以积极的暗示和鼓励，力争让孩子有一个健康的心理，只有这样，他才能乐观地面对学习生活。</P>\r\n<P>&nbsp;&nbsp;&nbsp; 以上是我对家庭教育的点滴感悟。望天下的父母都能重视家庭教育，让我们的孩子能成为一个自觉、自强、自立的人！</P>',6,1,22,0,0,24,0,0);
/*!40000 ALTER TABLE `web_news` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `web_order`
--

DROP TABLE IF EXISTS `web_order`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `web_order` (
  `id` int(6) NOT NULL AUTO_INCREMENT,
  `name` varchar(200) COLLATE utf8_unicode_ci NOT NULL,
  `song` varchar(50) COLLATE utf8_unicode_ci NOT NULL,
  `pro` varchar(200) COLLATE utf8_unicode_ci NOT NULL,
  `city` varchar(200) COLLATE utf8_unicode_ci NOT NULL,
  `tel` varchar(200) COLLATE utf8_unicode_ci NOT NULL,
  `zip` varchar(200) COLLATE utf8_unicode_ci DEFAULT NULL,
  `company` varchar(200) COLLATE utf8_unicode_ci DEFAULT NULL,
  `address` varchar(200) COLLATE utf8_unicode_ci NOT NULL,
  `email` varchar(200) COLLATE utf8_unicode_ci DEFAULT NULL,
  `content` text COLLATE utf8_unicode_ci,
  `addtime` datetime NOT NULL,
  `proname` varchar(200) COLLATE utf8_unicode_ci DEFAULT NULL,
  `proprice` varchar(50) COLLATE utf8_unicode_ci DEFAULT NULL,
  `procount` varchar(50) COLLATE utf8_unicode_ci DEFAULT NULL,
  `getid` varchar(50) COLLATE utf8_unicode_ci DEFAULT NULL,
  `bid` int(4) NOT NULL DEFAULT '0',
  `sid` int(4) NOT NULL DEFAULT '0',
  `tid` int(4) NOT NULL DEFAULT '0',
  `fid` int(4) NOT NULL DEFAULT '0',
  `xian` varchar(200) COLLATE utf8_unicode_ci NOT NULL,
  `checks` int(4) NOT NULL DEFAULT '0',
  PRIMARY KEY (`id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `web_order`
--

LOCK TABLES `web_order` WRITE;
/*!40000 ALTER TABLE `web_order` DISABLE KEYS */;
/*!40000 ALTER TABLE `web_order` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `web_picture`
--

DROP TABLE IF EXISTS `web_picture`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `web_picture` (
  `id` int(6) NOT NULL AUTO_INCREMENT,
  `title` varchar(200) COLLATE utf8_unicode_ci NOT NULL,
  `pic` varchar(200) COLLATE utf8_unicode_ci DEFAULT NULL,
  `url` varchar(300) COLLATE utf8_unicode_ci DEFAULT NULL,
  `colors` varchar(7) COLLATE utf8_unicode_ci NOT NULL DEFAULT '#000000',
  `viewcount` int(4) NOT NULL DEFAULT '1',
  `state` int(4) NOT NULL DEFAULT '1',
  `open` int(4) NOT NULL DEFAULT '0',
  `addtime` datetime NOT NULL,
  `content` text COLLATE utf8_unicode_ci NOT NULL,
  `sort` int(4) DEFAULT NULL,
  `comment` int(4) NOT NULL DEFAULT '1',
  `recommend` int(4) NOT NULL DEFAULT '0',
  `bid` int(6) NOT NULL DEFAULT '0',
  `sid` int(6) NOT NULL DEFAULT '0',
  `tid` int(6) NOT NULL DEFAULT '0',
  `fid` int(6) NOT NULL DEFAULT '0',
  `recyle` int(4) NOT NULL DEFAULT '0',
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=5 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `web_picture`
--

LOCK TABLES `web_picture` WRITE;
/*!40000 ALTER TABLE `web_picture` DISABLE KEYS */;
INSERT INTO `web_picture` VALUES (1,'(滨湖校区)写给妈妈的一封','/uploadfile/images/picture/20110305113600.jpg','http://www.baidu.com','#000000',3,1,0,'2011-03-05 00:00:00','<DIV style=\"TEXT-INDENT: 21pt\">尊敬的各位领导，亲爱的老师同学们，大家上午好！我是来自七（13）班的李丽丽，今天，我为大家演讲的题目是：那把倾斜的雨伞——写给妈妈的一封信&nbsp;</DIV>\r\n<DIV>亲爱的妈妈：</DIV>\r\n<DIV><SPAN>&nbsp;&nbsp; &nbsp;&nbsp;&nbsp; </SPAN>还记得小的时候，我便喜欢下雨，每逢熟悉的“淅沥”声从窗外响起，您便走到门口，打开那把天蓝色的大伞，并向我招招手，我便一蹦一蹦地跑向您，钻进伞下，顺手挽住您的胳膊，于是，我们便走进一片雨的世界里。宁静、祥和……</DIV>\r\n<DIV style=\"TEXT-INDENT: 21pt\">抬起头，我惊讶地发现头顶的天空，不知何时起，已变成一片天蓝色，蓝得仿佛要沉淀下来了，那样的扣人心弦，我望着你，却更为惊讶！您头上原本是天蓝色的，却已经消失了，一半是天蓝色，另一半，却是灰蒙蒙。“妈妈，伞歪啦！”您抬头望了望天，笑咪咪地说：“没歪呀！我困惑极了，“怎么回事嘛！明明是歪向我这边了呀！”您笑而不语，待回到家，我才发现您的胳膊都有淋湿了。“妈妈”……“没事的，孩子。”</DIV>\r\n<DIV style=\"TEXT-INDENT: 21pt\">那时，我太小，不明白那是您对我的关爱，我天真地认为，您喜欢淋雨，可我现在终于明白了，一直在这把倾斜着的大伞下，在您那无微不至的庇护下，在无数次风风雨雨中茁壮成长着……</DIV>\r\n<DIV style=\"TEXT-INDENT: 21pt\">又是一场雨，我伫立在那儿，一动也不动，脑海里浮现出平日您呵护我，疼爱我的画面，顿时，鼻子酸酸的，泪珠盈盈欲落，突然，我告诉自己，有一件对我来说比生命更重要的事等我去做……</DIV>\r\n<DIV style=\"TEXT-INDENT: 21pt\">不知何时起，撑伞的人已不再是您，而是我，是我为您撑伞，仍是雨的世界，仍是您，仍是那把天蓝色的大伞，尽管无情的岁月在它身上留下了道道“伤痕”，“丽丽，伞歪了”。您笑着对我说。我抬起头，这才发现我头顶上一半是天蓝色，一半是灰蒙蒙的。我的心，突然沸腾起来，不知不觉中，我正做着与您所做的相同的事，这仍是那把倾斜着的雨伞。</DIV>\r\n<DIV style=\"TEXT-INDENT: 21pt\">在撑伞时，我蓦然惊觉已高出您几厘米，再也不是那个整天围在您身后的小不点了，而您却日渐削瘦，您那双迷人的大眼睛积满了尘世的沧桑和坎坷，那瘦弱的肩膀担着家中的柴米油盐……我的心被什么东西狠狠地扎了一下，很痛很痛，我真粗心，竟没发现您已不再年轻了，可您才<SPAN>36岁呀！我知道，是我令您成了这般模样，从小到大，我淋浴过多少您的爱呢？数不清！</SPAN></DIV>\r\n<DIV style=\"TEXT-INDENT: 21pt\">回到家中，接过你递来的毛巾，看见您欣慰地笑了，双眼闪着点点泪光，我再也控制不住心中那早已泪雨缤纷的世界……我知道，有一种爱不须启口，那便是您的笑容；有一种心情不须描述，那就是您为我撑起伞的那瞬间！</DIV>\r\n<DIV style=\"TEXT-INDENT: 21pt\">您知道吗？每当您听我说在学校想家时，说我没出息，可我知道您心里头和我一样，不是吗？您在家里一天不知要叫多少次“丽丽”，可当您发现我并不在您身边时，您便常常发呆，您会想我在那儿吃得好不好，睡觉冷不冷……这些是妹妹悄悄告诉我的。我也知道，当我说：“妈妈，我走了”您先是一怔，才缓过神来，说：“嗯，再见！”当我打理好行李，出了家门，上了爸爸的车时，又是您在车后默默注视着我。您还是和从前一样，对我总是不放心，您总是牵挂着我最多，操劳着我也最多，我不停地回头，看看您身体单薄得如秋风中光秃秃的树干一样直发抖，我的心里便不是滋味。当您消失在我的视线里，我才缓缓地转过头来，眼中有异样的东西在滚动，到了学校，我整理行李，发现多了几张纸，打开一看，是您写给我的：“丽丽，在学校要注意身体，晚上盖好被子，吃饭一定要吃饱，不要舍不得，在学习上尽力而为，无论结果怎样，只要你努力了，就行了……”望着这几张留言，我感到有一股暖流直涌心头，我多想对您说声，妈妈，您真好！我爱您！但我却站在阳台，朝着家的方向，望眼欲穿，泪珠挂在了腮边，我知道：永远有个家，有盏灯，有个点灯的人，在为我守候……</DIV>\r\n<DIV style=\"TEXT-INDENT: 21pt\">总盼望着下雨，总盼望着您在我身旁，有您，我才真正感到温暖！</DIV>\r\n<DIV style=\"TEXT-INDENT: 21pt\">我永远爱您和爸爸，妹妹！我一定会力以赴，这三年的时光，我一定要要比别人闪耀出更多的光茫！因为，是您激励着我：向前、向前！</DIV>\r\n<DIV style=\"TEXT-INDENT: 21pt\">&nbsp;</DIV>\r\n<DIV style=\"TEXT-INDENT: 21pt\">&nbsp;</DIV>\r\n<DIV style=\"TEXT-INDENT: 21pt\"><SPAN>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; </SPAN>\r\n<DIV style=\"TEXT-ALIGN: right; TEXT-INDENT: 21pt\">您的女儿：丽丽</DIV>\r\n<DIV style=\"TEXT-ALIGN: right; TEXT-INDENT: 21pt\"><SPAN>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; 2010-10-18</SPAN></DIV></DIV>\r\n<P>&nbsp;</P>',1,0,1,13,0,0,21,0),(2,'八年级学生科技馆之行','/uploadfile/images/picture/20110305113704.jpg','','#000000',4,1,0,'2011-03-05 00:00:00','11月18日-19日，我校组织八年级全体学生到省科技馆进行参观、体验活动。<BR>　　在科技馆中，同学们通过各种交互式的操作主动地探索科学的奥秘，进一步接触物理、化学等方面的科普知识，不仅拓展了课外知识，而且更有利于对书本知识进行理解和消化。<BR>　　这是一次寓教于乐的参观活动，它不但丰富了共建的内涵，同时拓宽了学生的视野，提高了学生的动手能力，培养了学生爱科学、学科学的兴趣，更使学生体验到了科学的神奇与奥妙。&nbsp;',2,1,1,13,0,0,21,0),(3,'滨湖寿春中学第一次家长会成功举行','/uploadfile/images/picture/20110305113747.jpg','','#000000',12,1,0,'2011-03-05 00:00:00','<FONT face=\"Times New Roman\">2010</FONT>年<FONT face=\"Times New Roman\">11</FONT>月<FONT face=\"Times New Roman\">19</FONT>日周五下午三点，合肥滨湖寿春中学召开了开学以来的第一次家长会。家长会共分为两个阶段：第一阶段由叶校长通过广播代表学校向家长介绍了学校发展的历史、学生在生活学习上取得的进步、学校开展的丰富多彩的活动、学校针对学生健康发展采取的措施以及反馈家长在评教表上所提出的意见和建议；第二阶段由各班班主任在班级内自行安排本班家长会。所有家长在孩子所在班级就坐，全体学生在食堂餐厅自习。 \r\n<P>所有班级精心布置了教室，书写了温馨的主题语，有的班级安排学生进行主持，有的班级调整班级座位方便家长就坐，有的班级请家长交流教育经验，有的班级安排每一个学生给家长写了一封信，有的班级请家长书写下建议和祝福，等等，形式多样，一改传统家长会“一言堂”的问题。</P>\r\n<P>在家长会上，更多的是老师们充分肯定了学生们两个半月的进步，向家长提出了许多中肯的建议，深受家长欢迎。很多家长在会上流下了激动的泪水，为了孩子巨大的进步，为了老师诚恳的教育，为了孩子未来的希望。</P>\r\n<P>滨湖寿春为了开好第一次家长会，顺利搭建家校沟通的平台，促进学生们的健康全面发展，全员动员，所有老师各司其责，在很多细节处下功夫，充分体现了“寿春品牌”的内在精髓，也充分体现了吕校长一直倡导的“服务”理念。在<FONT face=\"Times New Roman\">11</FONT>月<FONT face=\"Times New Roman\">17</FONT>日下午，学校还针对“如何开好家长会”主题对全体班主任进行培训，请胡金陵老师介绍自己以往召开家长会的经验，请洪校长布置了家长会的具体事宜和注意事项。</P>',3,1,1,13,0,0,21,0),(4,'我校举行新学期开学典礼','/uploadfile/images/picture/20110305113826.jpg','','#000000',12,1,0,'2011-03-05 00:00:00','&nbsp;&nbsp; 2011年2月18日上午8时30分，我校新学期开学典礼在北操场隆重举行，全校四千余师生共同开启了新学期的希望之旅。<BR>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; 开学典礼在庄严肃穆的国歌声中开始，在国旗班护旗手的护送下，五星红旗又一次在校园上空冉冉升起。接着，八（18）班的朱彧然同学代表全体同学发言，她号召同学们在春天里播下希望，追逐梦想。九年级英语组李振烨老师作为教师代表发言，他希望同学们继续发扬寿春学习刻苦、勤奋、执着、拼搏精神，用智慧和汗水浇灌精彩的人生。<BR>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; 在典礼的最后，吕校长发表了热情洋溢的讲话。他肯定了各个年级的同学在上个学期中所取得的成绩，也对全体同学提出了新的要求，并给予全体师生新学期以良好的祝愿。<BR>',4,1,1,13,0,0,21,0);
/*!40000 ALTER TABLE `web_picture` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `web_product`
--

DROP TABLE IF EXISTS `web_product`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `web_product` (
  `id` int(6) NOT NULL AUTO_INCREMENT,
  `title` varchar(200) COLLATE utf8_unicode_ci NOT NULL,
  `model` varchar(200) COLLATE utf8_unicode_ci DEFAULT NULL,
  `pic` text COLLATE utf8_unicode_ci,
  `price` varchar(50) COLLATE utf8_unicode_ci DEFAULT NULL,
  `member` varchar(50) COLLATE utf8_unicode_ci DEFAULT NULL,
  `viewcount` int(4) NOT NULL DEFAULT '1',
  `state` int(4) NOT NULL DEFAULT '0',
  `open` int(4) NOT NULL DEFAULT '0',
  `addtime` datetime NOT NULL,
  `content` text COLLATE utf8_unicode_ci NOT NULL,
  `sort` int(4) NOT NULL,
  `comment` int(4) NOT NULL DEFAULT '0',
  `recommend` int(4) NOT NULL DEFAULT '0',
  `colors` varchar(7) COLLATE utf8_unicode_ci NOT NULL DEFAULT '#000000',
  `bid` int(6) NOT NULL DEFAULT '0',
  `sid` int(6) NOT NULL DEFAULT '0',
  `tid` int(6) NOT NULL DEFAULT '0',
  `fid` int(6) NOT NULL DEFAULT '0',
  `picotherpar` int(4) NOT NULL,
  `recyle` int(4) NOT NULL DEFAULT '0',
  PRIMARY KEY (`id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `web_product`
--

LOCK TABLES `web_product` WRITE;
/*!40000 ALTER TABLE `web_product` DISABLE KEYS */;
/*!40000 ALTER TABLE `web_product` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `web_super`
--

DROP TABLE IF EXISTS `web_super`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `web_super` (
  `id` int(6) NOT NULL AUTO_INCREMENT,
  `open` int(4) NOT NULL DEFAULT '0',
  `pic` varchar(200) COLLATE utf8_unicode_ci DEFAULT NULL,
  `url` varchar(200) COLLATE utf8_unicode_ci DEFAULT NULL,
  `content` text COLLATE utf8_unicode_ci,
  `type` int(4) NOT NULL DEFAULT '0',
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=4 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `web_super`
--

LOCK TABLES `web_super` WRITE;
/*!40000 ALTER TABLE `web_super` DISABLE KEYS */;
INSERT INTO `web_super` VALUES (1,0,NULL,NULL,NULL,0),(2,0,'','','哈哈哈',0),(3,0,NULL,NULL,NULL,0);
/*!40000 ALTER TABLE `web_super` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `web_video`
--

DROP TABLE IF EXISTS `web_video`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `web_video` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `title` varchar(200) COLLATE utf8_unicode_ci NOT NULL,
  `colors` varchar(7) COLLATE utf8_unicode_ci NOT NULL DEFAULT '#000000',
  `pic` varchar(300) COLLATE utf8_unicode_ci DEFAULT NULL,
  `video` varchar(300) COLLATE utf8_unicode_ci DEFAULT NULL,
  `viewcount` int(4) NOT NULL DEFAULT '1',
  `state` int(4) NOT NULL DEFAULT '1',
  `open` int(4) NOT NULL DEFAULT '0',
  `addtime` datetime NOT NULL,
  `content` text COLLATE utf8_unicode_ci,
  `sort` int(6) DEFAULT NULL,
  `comment` int(4) NOT NULL DEFAULT '1',
  `recommend` int(4) NOT NULL DEFAULT '0',
  `bid` int(6) NOT NULL DEFAULT '0',
  `sid` int(6) NOT NULL DEFAULT '0',
  `tid` int(6) NOT NULL DEFAULT '0',
  `fid` int(6) NOT NULL DEFAULT '0',
  `recyle` int(4) NOT NULL DEFAULT '0',
  PRIMARY KEY (`id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `web_video`
--

LOCK TABLES `web_video` WRITE;
/*!40000 ALTER TABLE `web_video` DISABLE KEYS */;
/*!40000 ALTER TABLE `web_video` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `web_vote`
--

DROP TABLE IF EXISTS `web_vote`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `web_vote` (
  `id` int(6) NOT NULL AUTO_INCREMENT,
  `title` varchar(200) COLLATE utf8_unicode_ci NOT NULL,
  `colors` varchar(7) COLLATE utf8_unicode_ci NOT NULL DEFAULT '#000000',
  `item1` varchar(200) COLLATE utf8_unicode_ci DEFAULT NULL,
  `item2` varchar(200) COLLATE utf8_unicode_ci DEFAULT NULL,
  `item3` varchar(200) COLLATE utf8_unicode_ci DEFAULT NULL,
  `item4` varchar(200) COLLATE utf8_unicode_ci DEFAULT NULL,
  `item5` varchar(200) COLLATE utf8_unicode_ci DEFAULT NULL,
  `item6` varchar(200) COLLATE utf8_unicode_ci DEFAULT NULL,
  `item7` varchar(200) COLLATE utf8_unicode_ci DEFAULT NULL,
  `item8` varchar(200) COLLATE utf8_unicode_ci DEFAULT NULL,
  `item9` varchar(200) COLLATE utf8_unicode_ci DEFAULT NULL,
  `item10` varchar(200) COLLATE utf8_unicode_ci DEFAULT NULL,
  `state` int(4) NOT NULL DEFAULT '1',
  `addtime` datetime NOT NULL,
  `content` text COLLATE utf8_unicode_ci,
  `sort` int(4) DEFAULT NULL,
  `bid` int(6) NOT NULL DEFAULT '0',
  `sid` int(6) NOT NULL DEFAULT '0',
  `tid` int(6) NOT NULL DEFAULT '0',
  `fid` int(6) NOT NULL DEFAULT '0',
  `ps1` varchar(6) COLLATE utf8_unicode_ci DEFAULT NULL,
  `ps2` varchar(6) COLLATE utf8_unicode_ci DEFAULT NULL,
  `ps3` varchar(6) COLLATE utf8_unicode_ci DEFAULT NULL,
  `ps4` varchar(6) COLLATE utf8_unicode_ci DEFAULT NULL,
  `ps5` varchar(6) CHARACTER SET utf8 COLLATE utf8_turkish_ci DEFAULT NULL,
  `ps6` varchar(6) COLLATE utf8_unicode_ci DEFAULT NULL,
  `ps7` varchar(6) COLLATE utf8_unicode_ci DEFAULT NULL,
  `ps8` varchar(6) COLLATE utf8_unicode_ci DEFAULT NULL,
  `ps9` varchar(6) COLLATE utf8_unicode_ci DEFAULT NULL,
  `ps10` varchar(6) COLLATE utf8_unicode_ci DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `web_vote`
--

LOCK TABLES `web_vote` WRITE;
/*!40000 ALTER TABLE `web_vote` DISABLE KEYS */;
/*!40000 ALTER TABLE `web_vote` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2011-03-07 14:42:32
