/*
Navicat MySQL Data Transfer

Source Server         : mysql_123456
Source Server Version : 50716
Source Host           : localhost:3306
Source Database       : openauth.net

Target Server Type    : MYSQL
Target Server Version : 50716
File Encoding         : 65001

Date: 2016-11-28 19:36:35
*/

SET FOREIGN_KEY_CHECKS=0;

-- ----------------------------
-- Table structure for donate
-- ----------------------------
DROP TABLE IF EXISTS `donate`;
CREATE TABLE `donate` (
  `id` varchar(50) NOT NULL,
  `time` datetime NOT NULL,
  `money` float NOT NULL,
  `type` varchar(10) NOT NULL,
  `name` varchar(20) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of donate
-- ----------------------------
INSERT INTO `donate` VALUES ('998dc1b1-a870-4c5d-8853-434c9ec1a94c', '2016-11-01 13:57:12', '180', '微信', '佚名（做好事要留名，联系我，谢谢！！）');

-- ----------------------------
-- Table structure for sysconf
-- ----------------------------
DROP TABLE IF EXISTS `sysconf`;
CREATE TABLE `sysconf` (
  `id` varchar(50) NOT NULL,
  `value` varchar(200) NOT NULL,
  `key` varchar(50) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of sysconf
-- ----------------------------
INSERT INTO `sysconf` VALUES ('8223baeb-a7e9-4932-a64b-d709300473e2', '2.0', 'version');

-- ----------------------------
-- Table structure for updatelog
-- ----------------------------
DROP TABLE IF EXISTS `updatelog`;
CREATE TABLE `updatelog` (
  `id` varchar(50) NOT NULL,
  `description` varchar(1000) NOT NULL,
  `version` varchar(20) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of updatelog
-- ----------------------------
