/*
Navicat MySQL Data Transfer

Source Server         : mysql_123456
Source Server Version : 50716
Source Host           : localhost:3306
Source Database       : openauth.net

Target Server Type    : MYSQL
Target Server Version : 50716
File Encoding         : 65001

Date: 2016-12-09 18:23:18
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
  `time` datetime DEFAULT NULL,
  `UserId` varchar(50) DEFAULT NULL,
  `accept` int(11) NOT NULL DEFAULT '0' COMMENT '是否采纳',
  `praise` int(11) NOT NULL DEFAULT '0',
  PRIMARY KEY (`Id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of answer
-- ----------------------------
INSERT INTO `answer` VALUES ('cb19e855-ec72-4be2-a6e4-60b9c59189d6', 'dsdsdsdsdsdsdsds', '0', '0', 'cb19e855-ec72-4be2-a6e4-60b9c59189d6', '2016-12-19 19:36:32', 'd8c8a352-452f-45ea-b699-4dc566885694', '0', '0');
INSERT INTO `answer` VALUES ('dd19e855-cc72-4be2-a6e4-60b9c59189d6', 'dsdsdsdsdsdsdsds', '0', '0', 'cb19e855-ec72-4be2-a6e4-60b9c59189d6', '2016-12-05 19:36:26', 'f77e649d-7159-48b3-bbc1-750f83403cae', '0', '0');

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
-- Table structure for question
-- ----------------------------
DROP TABLE IF EXISTS `question`;
CREATE TABLE `question` (
  `title` varchar(200) DEFAULT NULL,
  `Id` varchar(50) NOT NULL,
  `Content` varchar(10000) DEFAULT NULL,
  `SupportCnt` int(11) DEFAULT '0',
  `OpposeCnt` int(11) DEFAULT '0',
  `CommentTo` varchar(50) DEFAULT NULL,
  `time` datetime DEFAULT NULL COMMENT '创建时间',
  `UserId` varchar(50) DEFAULT NULL,
  `hits` int(11) NOT NULL DEFAULT '0' COMMENT '浏览量',
  `stick` int(11) NOT NULL DEFAULT '0' COMMENT '置顶',
  `comment` int(11) NOT NULL DEFAULT '0' COMMENT '回答数',
  `status` int(11) NOT NULL DEFAULT '0' COMMENT '加精',
  `experience` int(11) NOT NULL DEFAULT '0' COMMENT '悬赏',
  `accept` varchar(50) DEFAULT NULL COMMENT '采纳',
  PRIMARY KEY (`Id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of question
-- ----------------------------
INSERT INTO `question` VALUES ('dfdfd', 'cb19e855-ec72-4be2-a6e4-60b9c59189d6', 'fdfdfdfdfdd', '0', '0', null, '2016-12-05 15:34:40', 'd8c8a352-452f-45ea-b699-4dc566885694', '0', '0', '0', '0', '0', 'dd19e855-cc72-4be2-a6e4-60b9c59189d6');
INSERT INTO `question` VALUES ('sdsvcccc', 'f1213640-9c92-4aa8-8cfb-641f4855b63c', 'face[太开心] dsdsdsdsdsd', '0', '0', null, '2016-12-05 14:11:01', 'yubaolee', '0', '0', '0', '0', '0', null);

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
  `rmb` int(11) NOT NULL DEFAULT '0' COMMENT 'VIP等级',
  `createtime` datetime NOT NULL,
  `logintime` datetime DEFAULT NULL,
  `wxopenid` varchar(100) DEFAULT NULL,
  `qqopenid` varchar(100) DEFAULT NULL,
  `questioncnt` int(11) NOT NULL DEFAULT '0',
  `answercnt` int(11) NOT NULL DEFAULT '0',
  `pic` varchar(100) DEFAULT NULL,
  `auth` int(11) NOT NULL DEFAULT '0' COMMENT '用户权限',
  `experience` int(11) NOT NULL DEFAULT '0' COMMENT '经验值',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of user
-- ----------------------------
INSERT INTO `user` VALUES ('d8c8a352-452f-45ea-b699-4dc566885694', 'yubaolee', '盖世玉宝', 'lueSGJZetyySpUndWjMBEg==', '2', '2016-12-01 10:44:52', null, null, null, '0', '0', '0.jpg', '0', '0');
INSERT INTO `user` VALUES ('f77e649d-7159-48b3-bbc1-750f83403cae', '123', '无敌&王子', 'lueSGJZetyySpUndWjMBEg==', '0', '2016-12-01 16:50:06', null, null, null, '0', '0', '3.jpg', '0', '0');
