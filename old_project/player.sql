﻿# Host: 222.35.101.188  (Version: 5.1.50-log)
# Date: 2013-02-26 16:30:49
# Generator: MySQL-Front 5.3  (Build 1.27)

/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8 */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE */;
/*!40101 SET SQL_MODE='' */;
/*!40111 SET @OLD_SQL_NOTES=@@SQL_NOTES */;
/*!40103 SET SQL_NOTES='ON' */;
/*!40014 SET @OLD_UNIQUE_CHECKS=@@UNIQUE_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=0 */;
/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS */;
/*!40014 SET FOREIGN_KEY_CHECKS=0 */;

#
# Source for table "player"
#

DROP TABLE IF EXISTS `player`;
CREATE TABLE `player` (
  `unique_id` int(11) NOT NULL AUTO_INCREMENT,
  `player_id` smallint(6) DEFAULT NULL COMMENT '选手3位编号（已经播出的选手）',
  `player_name` varchar(15) COLLATE utf8_unicode_ci DEFAULT NULL,
  `player_tel` varchar(20) COLLATE utf8_unicode_ci DEFAULT NULL COMMENT '选手电话',
  `state` tinyint(1) DEFAULT '0' COMMENT '状态0为禁用1为启用',
  `descr` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL COMMENT '选手描述',
  `message_state` tinyint(1) DEFAULT NULL COMMENT '留言开启状态',
  `vote_id` smallint(4) DEFAULT NULL COMMENT '4位投票号码',
  PRIMARY KEY (`unique_id`),
  UNIQUE KEY `tel` (`player_tel`),
  KEY `id` (`player_id`)
) ENGINE=MyISAM AUTO_INCREMENT=61 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

#
# Data for table "player"
#

/*!40000 ALTER TABLE `player` DISABLE KEYS */;
INSERT INTO `player` VALUES (1,999,NULL,'52550005',1,'接通客服',0,2001),(35,111,NULL,'013849407167',1,NULL,1,NULL),(39,131,'林海','015858172884',1,'酷乐宅',1,1003),(40,132,NULL,'018621842602',1,'',1,1004),(41,133,'姚建','15010807609',1,'试衣机器人',0,1001),(42,134,NULL,'018635093993',1,'',1,1002),(43,141,'申磊','15201436188',1,'师兄帮帮忙',1,1007),(44,142,NULL,'13911631975',1,'',1,1005),(45,143,NULL,'015968039101',1,'',0,1006),(46,151,'苏菲','018980957957',1,'慧智女学馆',1,1008),(47,152,NULL,'018665199909',1,'',1,1009),(48,153,NULL,'13801282125',1,'',1,1013),(49,161,'陈文君','015951883350',1,'南京谷子地 ',1,1010),(50,162,'','13522789900',1,'',1,1011),(51,163,'高丽竹','013007015757',1,'惠佳创意厨吧',1,1012),(58,171,'冯紫娟','013517220868',1,'求职包装',1,0),(59,172,'黄青','18952832229',1,'甲壳网',1,0),(60,173,'孔立军','13906602635',1,'高空缓降器',1,0);
/*!40000 ALTER TABLE `player` ENABLE KEYS */;

/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;
/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;