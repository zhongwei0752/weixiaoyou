/*
Navicat MySQL Data Transfer

Source Server         : localhost_3306
Source Server Version : 50051
Source Host           : localhost:3306
Source Database       : weixiaoyou

Target Server Type    : MYSQL
Target Server Version : 50051
File Encoding         : 65001

Date: 2014-02-10 19:59:44
*/

SET FOREIGN_KEY_CHECKS=0;

-- ----------------------------
-- Table structure for `uchome_activity`
-- ----------------------------
DROP TABLE IF EXISTS `uchome_activity`;
CREATE TABLE `uchome_activity` (
  `id` tinyint(8) unsigned NOT NULL auto_increment,
  `subject` char(255) NOT NULL,
  `uid` mediumint(9) NOT NULL,
  `dateline` char(255) NOT NULL,
  `time` char(255) NOT NULL,
  `message` tinytext NOT NULL,
  `place` tinytext NOT NULL,
  `callplace` tinytext NOT NULL,
  `picid` smallint(6) NOT NULL,
  `hide` smallint(6) default '1' COMMENT '1 --显示，0--隐藏',
  PRIMARY KEY  (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=38 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of uchome_activity
-- ----------------------------
INSERT INTO `uchome_activity` VALUES ('35', '1', '1', '1391952796', '1392211200', '1', '1', '1 ', '0', '0');
INSERT INTO `uchome_activity` VALUES ('36', '2', '1', '1391948125', '1393073400', '2', '2', '2 ', '0', '0');
INSERT INTO `uchome_activity` VALUES ('37', '3', '1', '1391948143', '1393581300', '33', '3', '3 ', '0', '0');
INSERT INTO `uchome_activity` VALUES ('18', '657567', '1', '1390732274', '1390761060', '75675', '567567', '575 ', '0', '1');
INSERT INTO `uchome_activity` VALUES ('19', '567567', '1', '1390732327', '1390761060', '5675675', '6576575', '567567 ', '0', '1');
INSERT INTO `uchome_activity` VALUES ('20', '567657', '1', '1390732394', '1390761180', '567567', '567657', '567657 ', '0', '1');
INSERT INTO `uchome_activity` VALUES ('21', '765756', '1', '1390732487', '1390761240', '567', '567567', '567 ', '26', '1');
INSERT INTO `uchome_activity` VALUES ('22', '周末活动', '1', '1390819013', '1390847760', '快点哦，亲，我们要走好远的，具体活动详情看图片', '广州塔', '大岭山 ', '27', '1');
INSERT INTO `uchome_activity` VALUES ('23', '不错哦', '1', '1390821277', '1390850040', '3', '1231', '12312 ', '0', '1');
INSERT INTO `uchome_activity` VALUES ('24', '啦啦', '1', '1390877526', '1390906260', '啊', '啊', '啊 ', '28', '1');
INSERT INTO `uchome_activity` VALUES ('25', '6765', '1', '1390877618', '1390906380', '45645', '45654', '4645 ', '0', '1');
INSERT INTO `uchome_activity` VALUES ('26', '453', '1', '1390877657', '1390906440', '45345', '3453', '453 ', '0', '1');
INSERT INTO `uchome_activity` VALUES ('27', '14年的王道全书怎么回事了？', '1', '1391755866', '1391784600', 'ggg', 'gg', 'gg ', '29', '1');
INSERT INTO `uchome_activity` VALUES ('28', '哈哈哈打发打发打发', '8888', '1391864832', '1393611900', '佛挡杀佛斯蒂芬斯蒂芬', '佛挡杀佛', '发生的 ', '0', '1');
INSERT INTO `uchome_activity` VALUES ('29', '9999', '1', '1391945175', '1392255900', '9999999', '活动地点9999', '集合地点99999            ', '0', '1');
INSERT INTO `uchome_activity` VALUES ('30', '6666666666666', '1', '1391945198', '1392284700', '66666', '活动地点6666666666666', '集合地点 666666                  ', '0', '1');
INSERT INTO `uchome_activity` VALUES ('31', '0000', '1', '1391945230', '1392204900', '999999966666', '活动地点0000', '集合地点00000      ', '0', '1');
INSERT INTO `uchome_activity` VALUES ('32', '333333', '1', '1391952856', '1392039000', '33333', '3333', '3333 ', '0', '1');
INSERT INTO `uchome_activity` VALUES ('33', '1111', '1', '1391949357', '1392120000', '1111', '111', '111 ', '0', '0');
