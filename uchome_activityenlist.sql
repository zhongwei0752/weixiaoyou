/*
Navicat MySQL Data Transfer

Source Server         : localhost_3306
Source Server Version : 50051
Source Host           : localhost:3306
Source Database       : weixiaoyou

Target Server Type    : MYSQL
Target Server Version : 50051
File Encoding         : 65001

Date: 2014-02-11 20:20:45
*/

SET FOREIGN_KEY_CHECKS=0;

-- ----------------------------
-- Table structure for `uchome_activityenlist`
-- ----------------------------
DROP TABLE IF EXISTS `uchome_activityenlist`;
CREATE TABLE `uchome_activityenlist` (
  `id` tinyint(8) unsigned NOT NULL auto_increment,
  `activityid` smallint(8) NOT NULL,
  `uid` mediumint(9) NOT NULL,
  PRIMARY KEY  (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=26 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of uchome_activityenlist
-- ----------------------------
INSERT INTO `uchome_activityenlist` VALUES ('20', '31', '1');
INSERT INTO `uchome_activityenlist` VALUES ('23', '30', '1');
INSERT INTO `uchome_activityenlist` VALUES ('24', '29', '1');
INSERT INTO `uchome_activityenlist` VALUES ('25', '40', '1');
