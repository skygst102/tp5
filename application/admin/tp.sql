# Host: localhost  (Version: 5.5.47)
# Date: 2017-03-18 22:45:41
# Generator: MySQL-Front 5.3  (Build 4.234)

/*!40101 SET NAMES utf8 */;

#
# Structure for table "db_ad"
#

DROP TABLE IF EXISTS `db_ad`;
CREATE TABLE `db_ad` (
  `Id` int(11) NOT NULL AUTO_INCREMENT,
  `ad_title` varchar(20) DEFAULT NULL COMMENT '名称',
  `ad_type` varchar(10) DEFAULT NULL COMMENT '类型',
  `ad_motion` varchar(10) DEFAULT NULL COMMENT '动作',
  `add_time` date DEFAULT NULL,
  `edit_time` date DEFAULT NULL,
  `ad_link` varchar(150) DEFAULT NULL COMMENT '链接',
  `ad_code` text COMMENT '广告代码',
  `ad_text` text COMMENT '文字',
  `ad_pic1` varchar(150) DEFAULT NULL COMMENT '图片',
  `ad_pic2` varchar(150) DEFAULT NULL,
  `ad_pic3` varchar(255) DEFAULT NULL,
  `ad_pic4` varchar(255) DEFAULT NULL,
  `ad_pic5` varchar(255) DEFAULT NULL,
  `ad_pic6` varchar(255) DEFAULT NULL,
  `ad_pic7` varchar(255) DEFAULT NULL,
  `ad_pic8` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`Id`)
) ENGINE=MyISAM AUTO_INCREMENT=65 DEFAULT CHARSET=utf8;

#
# Data for table "db_ad"
#

/*!40000 ALTER TABLE `db_ad` DISABLE KEYS */;
INSERT INTO `db_ad` VALUES (47,'广告','图片','1','2016-02-19','2016-02-19',NULL,NULL,NULL,'imgs/not_img.png','imgs/not_img.png','imgs/not_img.png','imgs/not_img.png','imgs/not_img.png','imgs/not_img.png','imgs/not_img.png','imgs/not_img.png'),(48,'广告','图片','1','2016-02-19','2016-02-19',NULL,NULL,NULL,'imgs/not_img.png','imgs/not_img.png','imgs/not_img.png','imgs/not_img.png','imgs/not_img.png','imgs/not_img.png','imgs/not_img.png','imgs/not_img.png'),(49,'广告','图片','1','2016-02-19','2016-02-19',NULL,NULL,NULL,'imgs/not_img.png','imgs/not_img.png','imgs/not_img.png','imgs/not_img.png','imgs/not_img.png','imgs/not_img.png','imgs/not_img.png','imgs/not_img.png'),(50,'广告','图片','1','2016-02-19','2016-02-19',NULL,NULL,NULL,'imgs/not_img.png','imgs/not_img.png','imgs/not_img.png','imgs/not_img.png','imgs/not_img.png','imgs/not_img.png','imgs/not_img.png','imgs/not_img.png'),(51,'广告','图片','1','2016-02-19','2016-02-19',NULL,NULL,NULL,'imgs/not_img.png','imgs/not_img.png','imgs/not_img.png','imgs/not_img.png','imgs/not_img.png','imgs/not_img.png','imgs/not_img.png','imgs/not_img.png'),(52,'广告','图片','1','2016-02-19','2016-02-19',NULL,NULL,NULL,'imgs/not_img.png','imgs/not_img.png','imgs/not_img.png','imgs/not_img.png','imgs/not_img.png','imgs/not_img.png','imgs/not_img.png','imgs/not_img.png'),(53,'广告','图片','1','2016-02-19','2016-03-04',NULL,NULL,NULL,'../upload/ad_img/20160304182657.jpg','imgs/not_img.png','imgs/not_img.png','imgs/not_img.png','imgs/not_img.png','imgs/not_img.png','imgs/not_img.png','imgs/not_img.png'),(58,'广告','图片','1','2016-03-04','2016-03-04',NULL,NULL,NULL,'imgs/not_img.png','imgs/not_img.png','imgs/not_img.png','imgs/not_img.png','imgs/not_img.png','imgs/not_img.png','imgs/not_img.png','imgs/not_img.png'),(59,'广告','图片','1','2016-03-04','2016-03-04',NULL,NULL,NULL,'imgs/not_img.png','imgs/not_img.png','imgs/not_img.png','imgs/not_img.png','imgs/not_img.png','imgs/not_img.png','imgs/not_img.png','imgs/not_img.png'),(60,'广告','图片','1','2016-03-12','2016-03-12',NULL,NULL,NULL,'','','','','','','',''),(61,'广告','图片','1','2016-03-12','2016-03-12',NULL,NULL,NULL,'','','','','','','',''),(62,'广告','图片','1','2016-03-12','2016-03-12',NULL,NULL,NULL,'','','','','','','',''),(63,'广告1','图片','1','2016-03-24','2016-05-19',NULL,NULL,NULL,'../upload/ad_img/20160519225502.jpg','','','','','','',''),(64,'广告','图片','1','2016-03-24','2016-03-24',NULL,NULL,NULL,'','','','','','','','');
/*!40000 ALTER TABLE `db_ad` ENABLE KEYS */;

#
# Structure for table "db_admin_list"
#

DROP TABLE IF EXISTS `db_admin_list`;
CREATE TABLE `db_admin_list` (
  `Id` int(11) NOT NULL AUTO_INCREMENT,
  `uid` varchar(20) DEFAULT NULL,
  `username` varchar(50) DEFAULT NULL,
  `password` varchar(50) DEFAULT NULL,
  `limit` varchar(20) DEFAULT NULL COMMENT '权限',
  `tel` varchar(50) DEFAULT NULL,
  `phone` varchar(20) DEFAULT NULL,
  `qq` varchar(20) DEFAULT NULL,
  `wenxin` varchar(20) DEFAULT NULL,
  `fax` varchar(20) DEFAULT NULL,
  `ip` varchar(20) DEFAULT NULL,
  `email` varchar(20) DEFAULT NULL,
  `add_time` date DEFAULT NULL,
  `dl_time` date DEFAULT NULL,
  PRIMARY KEY (`Id`)
) ENGINE=MyISAM AUTO_INCREMENT=37 DEFAULT CHARSET=utf8;

#
# Data for table "db_admin_list"
#

/*!40000 ALTER TABLE `db_admin_list` DISABLE KEYS */;
/*!40000 ALTER TABLE `db_admin_list` ENABLE KEYS */;

#
# Structure for table "db_class_list"
#

DROP TABLE IF EXISTS `db_class_list`;
CREATE TABLE `db_class_list` (
  `Id` int(11) NOT NULL AUTO_INCREMENT,
  `f_id` varchar(20) DEFAULT NULL,
  `name` varchar(50) DEFAULT NULL,
  `f_class` varchar(50) DEFAULT NULL,
  `rank` varchar(10) DEFAULT NULL COMMENT '级别',
  `item` varchar(20) DEFAULT NULL COMMENT '栏目',
  `attr` varchar(10) DEFAULT NULL COMMENT '属性',
  `hot_class` varchar(10) DEFAULT NULL COMMENT '产品或内容',
  `sort` varchar(5) DEFAULT '1' COMMENT '排序',
  `con_title` varchar(255) DEFAULT NULL COMMENT '单页标题',
  `con_note` text COMMENT '单页摘要',
  `con_con` text COMMENT '单页内容',
  `add_time` date DEFAULT NULL,
  `edit_time` date DEFAULT NULL,
  PRIMARY KEY (`Id`)
) ENGINE=MyISAM AUTO_INCREMENT=128 DEFAULT CHARSET=utf8 COMMENT='分类管理';

#
# Data for table "db_class_list"
#

/*!40000 ALTER TABLE `db_class_list` DISABLE KEYS */;
INSERT INTO `db_class_list` VALUES (16,NULL,'关于我们','无','1','1','1','','1','123','','<div class=\"col-md-4 about-left\" style=\"width:65%;\"><img src=\"images/58.jpg\" alt=\" \" height=\"260px\"/><h5>Suffered alteration in some form, by injected humour, or randomised</h5><p>Lorem Ipsum available, but the &nbsp;have suffered alteration in some form, by injected humour, or randomised words \n\nwhich don&#39;t look.</p></div><div class=\"col-md-4 about-left\">\n\t\t\t<!--<h3>Staff</h3>--><ul><li><img src=\"images/54.jpg\" alt=\" \" class=\"img-responsive\"/></li><li><img src=\"images/55.jpg\" alt=\" \" class=\"img-responsive\"/></li><li><img src=\"images/56.jpg\" alt=\" \" class=\"img-responsive\"/></li><li><img src=\"images/57.jpg\" alt=\" \" class=\"img-responsive\"/></li><li><img src=\"images/55.jpg\" alt=\" \" class=\"img-responsive\"/></li><li><img src=\"images/54.jpg\" alt=\" \" class=\"img-responsive\"/></li></ul></div><div class=\"clearfix\"></div><div class=\"testimonials\"><h3>&nbsp;</h3><div class=\"clearfix\"></div></div>','2016-02-17','2016-02-17'),(17,NULL,'产品介绍','无','1','2','3','','3',NULL,NULL,NULL,'2016-02-17','2016-02-17'),(20,NULL,'工程案例','无','1','2','3','','4',NULL,NULL,NULL,'2016-02-18','2016-02-18'),(21,NULL,'新闻中心','无','1','1','2','','2',NULL,NULL,NULL,'2016-02-25','2016-02-25'),(23,'21','行业新闻','新闻中心','2',NULL,'3',NULL,'2',NULL,NULL,NULL,'2016-02-28','2016-02-28'),(28,NULL,'联系我们','无','1','1','1','','5','联系我们','','<p><iframe class=\"ueditor_baidumap\" src=\"http://localhost/utf8-ueditor_php/dialogs/map/show.html#center=111.427531,40.752714&zoom=6&width=530&height=340&title=棋&text=枯&markers=114.849428,43.384122&markerStyles=l,A\" frameborder=\"0\" width=\"534\" height=\"344\"></iframe></p>','2016-03-02','2016-03-02'),(31,'21','公司新闻','新闻中心','2',NULL,'2','2','1',NULL,NULL,NULL,'2016-03-03','2016-03-03'),(36,NULL,'推荐','无','1','3','','1','6',NULL,NULL,NULL,'2016-03-04','2016-03-04'),(38,NULL,'产品推荐','无','1','3','','2','7',NULL,NULL,NULL,'2016-03-06','2016-03-06'),(108,'17','asdasd','产品介绍','2',NULL,'2','2','1',NULL,NULL,NULL,'2016-04-24','2016-04-24'),(118,'16','fgg','关于我们','2',NULL,'1','2','1',NULL,NULL,NULL,'2016-04-25','2016-04-25'),(119,'16','fggdfg','关于我们','2',NULL,'1','2','2',NULL,NULL,NULL,'2016-04-25','2016-04-25'),(120,'118','555222','fggdfg','3',NULL,'1','','1',NULL,NULL,NULL,'2016-04-25','2016-04-25'),(123,'108','特征','asdasd','3',NULL,'','','1',NULL,NULL,NULL,'2016-04-25','2016-04-25'),(124,'38','要在堙','产品推荐','2',NULL,'2','2','1',NULL,NULL,NULL,'2016-04-25','2016-04-25'),(125,'36','笑脸','推荐','2',NULL,'1','2','1',NULL,NULL,NULL,'2016-04-25','2016-04-25'),(126,'119','栽植','fggdfg','3',NULL,'1','','1',NULL,NULL,NULL,'2016-04-26','2016-04-26');
/*!40000 ALTER TABLE `db_class_list` ENABLE KEYS */;

#
# Structure for table "db_con_list"
#

DROP TABLE IF EXISTS `db_con_list`;
CREATE TABLE `db_con_list` (
  `Id` int(11) NOT NULL AUTO_INCREMENT,
  `f_id` varchar(11) DEFAULT NULL,
  `con_title` varchar(50) DEFAULT NULL,
  `con_f_title` varchar(50) DEFAULT NULL COMMENT '副标题',
  `con_in_top` varchar(10) DEFAULT NULL COMMENT '顶置',
  `con_hot` varchar(10) DEFAULT NULL COMMENT '推荐',
  `hot_class` varchar(10) DEFAULT NULL COMMENT '推荐分类',
  `con_title_color` varchar(50) DEFAULT NULL COMMENT '标题颜色',
  `con_pic` varchar(150) DEFAULT NULL COMMENT '内容图片',
  `con_note` text COMMENT '摘要_说明',
  `con_con` text COMMENT '内容',
  `con_keyword` varchar(255) DEFAULT NULL COMMENT '关键字',
  `con_author` varchar(20) DEFAULT NULL COMMENT '作者_来源',
  `con_define` varchar(50) DEFAULT NULL COMMENT '自定义',
  `con_click_num` varchar(10) DEFAULT NULL COMMENT '点击次数',
  `add_time` date DEFAULT NULL,
  `edit_time` date DEFAULT NULL,
  PRIMARY KEY (`Id`)
) ENGINE=MyISAM AUTO_INCREMENT=7 DEFAULT CHARSET=utf8;

#
# Data for table "db_con_list"
#

/*!40000 ALTER TABLE `db_con_list` DISABLE KEYS */;
INSERT INTO `db_con_list` VALUES (2,'23','2撒大苏打','','0','0',NULL,'','','<p>阿斯顿</p>','<p>阿三d</p>','','','','0','2016-04-08','2016-04-08'),(3,'23','3阿斯顿撒旦','','0','0',NULL,'','','','<p>阿斯顿a&#39;s</p>','','','','0','2016-04-08','2016-04-08'),(4,'23','4行业新闻','','0','0',NULL,'','','','<p>是否</p>','','','','0','2016-04-08','2016-04-08'),(5,'23','5士大夫s','','0','0',NULL,'','','','<p>似的飞</p>','','','','0','2016-04-08','2016-04-08');
/*!40000 ALTER TABLE `db_con_list` ENABLE KEYS */;

#
# Structure for table "db_def_page"
#

DROP TABLE IF EXISTS `db_def_page`;
CREATE TABLE `db_def_page` (
  `Id` int(11) NOT NULL AUTO_INCREMENT,
  `def_title` varchar(200) DEFAULT NULL,
  `def_con` text COMMENT '自定义页面',
  `add_time` date DEFAULT NULL,
  `edit_time` date DEFAULT NULL,
  PRIMARY KEY (`Id`)
) ENGINE=MyISAM AUTO_INCREMENT=22 DEFAULT CHARSET=utf8;

#
# Data for table "db_def_page"
#

/*!40000 ALTER TABLE `db_def_page` DISABLE KEYS */;
INSERT INTO `db_def_page` VALUES (16,'333','<p>33</p>','2016-03-07','2016-03-07'),(19,'555','<p>55</p>','2016-03-07','2016-03-07');
/*!40000 ALTER TABLE `db_def_page` ENABLE KEYS */;

#
# Structure for table "db_messages"
#

DROP TABLE IF EXISTS `db_messages`;
CREATE TABLE `db_messages` (
  `Id` int(11) NOT NULL AUTO_INCREMENT,
  PRIMARY KEY (`Id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

#
# Data for table "db_messages"
#

/*!40000 ALTER TABLE `db_messages` DISABLE KEYS */;
/*!40000 ALTER TABLE `db_messages` ENABLE KEYS */;

#
# Structure for table "db_pro_list"
#

DROP TABLE IF EXISTS `db_pro_list`;
CREATE TABLE `db_pro_list` (
  `Id` int(11) NOT NULL AUTO_INCREMENT,
  `f_id` varchar(11) DEFAULT NULL,
  `pro_title` varchar(50) DEFAULT NULL COMMENT '标题',
  `pro_pic` varchar(50) DEFAULT NULL COMMENT '图片',
  `pro_in_top` varchar(10) DEFAULT NULL COMMENT '顶置',
  `pro_note` text COMMENT '摘要',
  `pro_con` text COMMENT '内容_说明',
  `pro_hot` varchar(10) DEFAULT NULL COMMENT '推荐',
  `pro_click_num` varchar(11) DEFAULT NULL COMMENT '点击次数',
  `add_time` date DEFAULT NULL,
  `edit_time` date DEFAULT NULL,
  `pro_num` varchar(50) DEFAULT NULL COMMENT '编号',
  `pro_define` varchar(50) DEFAULT NULL COMMENT '自定义',
  PRIMARY KEY (`Id`)
) ENGINE=MyISAM AUTO_INCREMENT=36 DEFAULT CHARSET=utf8;

#
# Data for table "db_pro_list"
#

/*!40000 ALTER TABLE `db_pro_list` DISABLE KEYS */;
INSERT INTO `db_pro_list` VALUES (34,'17','sdsd','../upload/list_pro_img/20160408162833.jpg','0','<p>dsd<br/></p>','<p><span style=\"color: rgb(128, 128, 128); font-family: OpenSans-Regular, 宋体，微软黑体，, &#39;Helvetica Neue&#39;, Helvetica, Arial, sans-serif; font-size: 14px; line-height: 25.2px; background-color: rgb(255, 255, 255);\">Pellentesque augue quam, ornare quis ipsum molestie velit id mauris ultrices accumsan in sed erat. In mollis tortor orci; nec ornare eros elementum molestie, justo sapien tincidunt purus, at adipiscing.</span></p>','0','0','2016-04-07','2016-04-07','','');
/*!40000 ALTER TABLE `db_pro_list` ENABLE KEYS */;

#
# Structure for table "db_user_list"
#

DROP TABLE IF EXISTS `db_user_list`;
CREATE TABLE `db_user_list` (
  `Id` int(11) NOT NULL AUTO_INCREMENT,
  `uid` varchar(20) DEFAULT NULL,
  `username` varchar(50) DEFAULT NULL,
  `password` varchar(50) DEFAULT NULL,
  `limit` varchar(20) DEFAULT NULL COMMENT '权限',
  `tel` varchar(50) DEFAULT NULL,
  `phone` varchar(20) DEFAULT NULL,
  `qq` varchar(20) DEFAULT NULL,
  `wenxin` varchar(20) DEFAULT NULL,
  `fax` varchar(20) DEFAULT NULL,
  `ip` varchar(20) DEFAULT NULL,
  `email` varchar(20) DEFAULT NULL,
  `add_time` date DEFAULT NULL,
  `dl_time` date DEFAULT NULL,
  PRIMARY KEY (`Id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8 ROW_FORMAT=DYNAMIC;

#
# Data for table "db_user_list"
#

/*!40000 ALTER TABLE `db_user_list` DISABLE KEYS */;
/*!40000 ALTER TABLE `db_user_list` ENABLE KEYS */;

#
# Structure for table "db_web_info"
#

DROP TABLE IF EXISTS `db_web_info`;
CREATE TABLE `db_web_info` (
  `Id` int(11) NOT NULL AUTO_INCREMENT,
  `web_name` varchar(50) DEFAULT NULL COMMENT '网站名称',
  `web_url` varchar(50) DEFAULT NULL COMMENT '网站地址',
  `web_linkman` varchar(20) DEFAULT NULL COMMENT '联系人',
  `web_tel` varchar(20) DEFAULT NULL COMMENT '电话',
  `web_fax` varchar(20) DEFAULT NULL COMMENT '传真',
  `web_qq` varchar(20) DEFAULT '请输入',
  `web_weixin` varchar(20) DEFAULT '请输入',
  `web_email` varchar(50) DEFAULT NULL COMMENT '邮箱',
  `web_phone` varchar(20) DEFAULT NULL COMMENT '手机',
  `web_other` varchar(20) DEFAULT '请输入',
  `web_address` varchar(255) DEFAULT NULL COMMENT '地址',
  `web_copyright` varchar(50) DEFAULT NULL COMMENT '版权',
  `web_icp` varchar(50) DEFAULT NULL COMMENT '备案信息',
  `web_description` varchar(255) DEFAULT NULL COMMENT '网站描述',
  `web_keyword` varchar(255) DEFAULT NULL COMMENT '网站关键词',
  `web_third_code` text COMMENT '第三方统计代码',
  `add_time` datetime DEFAULT NULL,
  `edit_time` datetime DEFAULT NULL,
  PRIMARY KEY (`Id`)
) ENGINE=MyISAM AUTO_INCREMENT=5 DEFAULT CHARSET=utf8;

#
# Data for table "db_web_info"
#

/*!40000 ALTER TABLE `db_web_info` DISABLE KEYS */;
INSERT INTO `db_web_info` VALUES (1,'锦舟钢构','2','11','446546465465465','qq1545465465','无','22','795 Folsom Ave, Suite 600 \t\t\t\t\t\t  San Francisco,','1122111231','33','795 Folsom Ave, Suite 600 \t\t\t\t\t\t  San Francisco,','版权所有©锦舟钢构 2016. All rights reserved','111-11111','1','1','1','2016-03-07 22:04:19','2016-04-24 21:23:23');
/*!40000 ALTER TABLE `db_web_info` ENABLE KEYS */;
