/*
Navicat MySQL Data Transfer

Source Server         : mysql_123456
Source Server Version : 50716
Source Host           : localhost:3306
Source Database       : openauth.net

Target Server Type    : MYSQL
Target Server Version : 50716
File Encoding         : 65001

Date: 2016-12-01 21:10:59
*/

SET FOREIGN_KEY_CHECKS=0;

-- ----------------------------
-- Table structure for answer
-- ----------------------------
DROP TABLE IF EXISTS `answer`;
CREATE TABLE `answer` (
  `Id` varchar(50) NOT NULL,
  `Content` varchar(1000) DEFAULT NULL,
  `SupportCnt` int(11) DEFAULT '0',
  `OpposeCnt` int(11) DEFAULT '0',
  `AnswerTo` varchar(50) DEFAULT NULL,
  `CreatedTime` datetime DEFAULT NULL,
  `UserId` varchar(50) DEFAULT NULL,
  `State` int(11) DEFAULT NULL,
  PRIMARY KEY (`Id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of answer
-- ----------------------------

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
-- Table structure for post
-- ----------------------------
DROP TABLE IF EXISTS `post`;
CREATE TABLE `post` (
  `Id` varchar(50) NOT NULL,
  `Content` varchar(1000) DEFAULT NULL,
  `SupportCnt` int(11) DEFAULT '0',
  `OpposeCnt` int(11) DEFAULT '0',
  `CommentTo` varchar(50) DEFAULT NULL,
  `CreatedTime` datetime DEFAULT NULL,
  `UserId` varchar(50) DEFAULT NULL,
  PRIMARY KEY (`Id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of post
-- ----------------------------

-- ----------------------------
-- Table structure for question
-- ----------------------------
DROP TABLE IF EXISTS `question`;
CREATE TABLE `question` (
  `Id` varchar(50) NOT NULL,
  `Title` varchar(50) DEFAULT NULL,
  `Content` varchar(1000) DEFAULT NULL,
  `SupportCnt` int(11) DEFAULT '0',
  `OpposeCnt` int(11) DEFAULT '0',
  `Reward` int(11) DEFAULT '0',
  `CreatedTime` datetime DEFAULT NULL,
  `State` int(11) DEFAULT NULL,
  `UserId` varchar(50) DEFAULT NULL,
  PRIMARY KEY (`Id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of question
-- ----------------------------
INSERT INTO `question` VALUES ('55b6d6662133a015d04432b5', 'dddddddddddddd', 'dddddddddddddddddddddddddddddddd', '0', '0', '0', '2015-07-28 09:10:00', '0', 'admin');

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
INSERT INTO `sysconf` VALUES ('c0b07303-6e23-4f89-9570-d6aef0d7b92f', '4305', 'download');

-- ----------------------------
-- Table structure for tag
-- ----------------------------
DROP TABLE IF EXISTS `tag`;
CREATE TABLE `tag` (
  `Id` varchar(50) NOT NULL,
  `TagTo` varchar(50) DEFAULT NULL,
  `Name` varchar(50) DEFAULT NULL,
  PRIMARY KEY (`Id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of tag
-- ----------------------------

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

-- ----------------------------
-- Table structure for user
-- ----------------------------
DROP TABLE IF EXISTS `user`;
CREATE TABLE `user` (
  `id` varchar(50) NOT NULL,
  `account` varchar(50) NOT NULL,
  `name` varchar(50) DEFAULT NULL,
  `pwd` varchar(50) NOT NULL,
  `viplevel` int(11) NOT NULL DEFAULT '0',
  `createtime` datetime NOT NULL,
  `logintime` datetime DEFAULT NULL,
  `wxopenid` varchar(100) DEFAULT NULL,
  `qqopenid` varchar(100) DEFAULT NULL,
  `questioncnt` int(11) NOT NULL DEFAULT '0',
  `answercnt` int(11) NOT NULL DEFAULT '0',
  `pic` varchar(100) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of user
-- ----------------------------
INSERT INTO `user` VALUES ('d8c8a352-452f-45ea-b699-4dc566885694', 'yubaolee', '盖世玉宝', 'lueSGJZetyySpUndWjMBEg==', '2', '2016-12-01 10:44:52', null, null, null, '0', '0', '0.jpg');
INSERT INTO `user` VALUES ('f77e649d-7159-48b3-bbc1-750f83403cae', '123', '无敌&王子', 'lueSGJZetyySpUndWjMBEg==', '0', '2016-12-01 16:50:06', null, null, null, '0', '0', '3.jpg');
