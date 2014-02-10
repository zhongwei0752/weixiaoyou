/*
Navicat MySQL Data Transfer

Source Server         : localhost_3306
Source Server Version : 50051
Source Host           : localhost:3306
Source Database       : weixiaoyou

Target Server Type    : MYSQL
Target Server Version : 50051
File Encoding         : 65001

Date: 2014-02-10 19:26:17
*/

SET FOREIGN_KEY_CHECKS=0;

-- ----------------------------
-- Table structure for `uchome_second`
-- ----------------------------
DROP TABLE IF EXISTS `uchome_second`;
CREATE TABLE `uchome_second` (
  `id` mediumint(8) unsigned NOT NULL auto_increment,
  `uid` mediumint(8) unsigned NOT NULL,
  `sed_subject` varchar(80) NOT NULL default '',
  `sed_time` int(10) unsigned NOT NULL,
  `sed_price` char(255) NOT NULL,
  `sed_dateline` int(10) unsigned NOT NULL,
  `sed_membernum` mediumint(8) unsigned NOT NULL,
  `sed_message` tinytext NOT NULL,
  `sed_follownum` mediumint(8) unsigned NOT NULL,
  `sed_viewnum` mediumint(8) unsigned NOT NULL,
  `sed_hot` mediumint(8) unsigned NOT NULL,
  `sed_replynum` int(11) unsigned NOT NULL,
  `sed_picid` mediumint(8) unsigned NOT NULL,
  `sed_hide` tinyint(8) NOT NULL default '1' COMMENT '0为隐藏，1为显示',
  `sed_classification` char(255) NOT NULL,
  PRIMARY KEY  (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=17 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of uchome_second
-- ----------------------------
INSERT INTO `uchome_second` VALUES ('11', '1', '任溶溶', '1393611900', '13333', '1391864832', '0', '6666666666666666', '0', '0', '0', '0', '40', '0', '');
INSERT INTO `uchome_second` VALUES ('12', '1', '单车11111', '1393611900', '11111333', '1392030289', '0', '发生大幅度是否11111', '0', '0', '0', '0', '0', '0', '');
INSERT INTO `uchome_second` VALUES ('13', '1', '汽车', '1393611900', '3333', '1391864832', '0', '就斤斤计较', '0', '0', '0', '0', '42', '1', '');
INSERT INTO `uchome_second` VALUES ('10', '1', '我问佛', '1393611900', '4333', '1391864832', '0', '方芳芳', '0', '0', '0', '0', '40', '1', '');
INSERT INTO `uchome_second` VALUES ('1', '1', '错错错', '1393611900', '5333', '1391864832', '0', '广泛大概', '0', '0', '0', '0', '42', '1', '');
INSERT INTO `uchome_second` VALUES ('14', '1', '嗖嗖嗖', '1392967800', '63333', '1392019385', '0', '防盗防复发', '0', '0', '0', '0', '0', '0', '');
INSERT INTO `uchome_second` VALUES ('15', '1', '凤飞飞', '1392105600', '3333', '1392019478', '0', '33333', '0', '0', '0', '0', '0', '0', '');
INSERT INTO `uchome_second` VALUES ('16', '1', 'QQ', '1392202800', '6666', '1392030232', '0', '6666', '0', '0', '0', '0', '0', '0', '');
