/*
Navicat MySQL Data Transfer

Source Server         : localhost_3306
Source Server Version : 50721
Source Host           : localhost:3306
Source Database       : brothernovel_db

Target Server Type    : MYSQL
Target Server Version : 50721
File Encoding         : 65001

Date: 2019-01-10 08:35:16
*/

SET FOREIGN_KEY_CHECKS=0;

-- ----------------------------
-- Table structure for authornovel
-- ----------------------------
DROP TABLE IF EXISTS `authornovel`;
CREATE TABLE `authornovel` (
  `aid` int(11) NOT NULL AUTO_INCREMENT,
  `uid` varchar(255) DEFAULT NULL,
  `username` varchar(255) DEFAULT NULL,
  `nid` varchar(255) DEFAULT NULL,
  `nname` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`aid`)
) ENGINE=InnoDB AUTO_INCREMENT=28 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of authornovel
-- ----------------------------
INSERT INTO `authornovel` VALUES ('24', '30280934-3803-4ef2-b8f7-ca035ca8dd59', 'xifu', '0138f87b-d173-4955-998c-216073fe627d', '原生之罪');
INSERT INTO `authornovel` VALUES ('25', '30280934-3803-4ef2-b8f7-ca035ca8dd59', 'xifu', '7a6e9786-6e1c-4f0a-8fa2-9a8f1609e7ac', '镇魂');
INSERT INTO `authornovel` VALUES ('26', '30280934-3803-4ef2-b8f7-ca035ca8dd59', 'xifu', '3a2e2a8b-546d-4cb8-81cc-5e9dfccc1878', '西芙酱');
INSERT INTO `authornovel` VALUES ('27', 'd87261e5-e1a7-42b0-b5d0-766856c62bd7', '凌晨九点钟', 'ba20a296-aa47-44fa-8be7-f1f4b8daa658', '名字还没想好');

-- ----------------------------
-- Table structure for chapter
-- ----------------------------
DROP TABLE IF EXISTS `chapter`;
CREATE TABLE `chapter` (
  `cid` int(11) NOT NULL AUTO_INCREMENT,
  `nid` varchar(255) DEFAULT NULL,
  `chapterid` int(11) DEFAULT NULL,
  `chaptername` varchar(255) DEFAULT NULL,
  `clocation` varchar(255) DEFAULT NULL,
  `createtime` datetime DEFAULT NULL,
  PRIMARY KEY (`cid`)
) ENGINE=InnoDB AUTO_INCREMENT=53 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of chapter
-- ----------------------------
INSERT INTO `chapter` VALUES ('19', '0138f87b-d173-4955-998c-216073fe627d', '1', '第一章', '0138f87b/1.txt', '2019-01-06 11:22:30');
INSERT INTO `chapter` VALUES ('26', 'ba20a296-aa47-44fa-8be7-f1f4b8daa658', '1', 'chapter1', 'ba20a296/1.txt', '2019-01-09 10:27:58');
INSERT INTO `chapter` VALUES ('27', 'ba20a296-aa47-44fa-8be7-f1f4b8daa658', '2', 'chapter2', 'ba20a296/2.txt', '2019-01-09 10:28:16');
INSERT INTO `chapter` VALUES ('30', 'ba20a296-aa47-44fa-8be7-f1f4b8daa658', '3', 'chapter3', 'ba20a296/3.txt', '2019-01-09 11:00:27');
INSERT INTO `chapter` VALUES ('31', 'ba20a296-aa47-44fa-8be7-f1f4b8daa658', '4', 'chapter4', 'ba20a296/4.txt', '2019-01-09 11:01:09');
INSERT INTO `chapter` VALUES ('32', 'ba20a296-aa47-44fa-8be7-f1f4b8daa658', '5', 'chapter5', 'ba20a296/5.txt', '2019-01-09 11:03:19');
INSERT INTO `chapter` VALUES ('33', 'ba20a296-aa47-44fa-8be7-f1f4b8daa658', '6', 'chapter6', 'ba20a296/6.txt', '2019-01-09 11:05:42');
INSERT INTO `chapter` VALUES ('34', 'ba20a296-aa47-44fa-8be7-f1f4b8daa658', '7', 'chapter7', 'ba20a296/7.txt', '2019-01-09 11:08:04');
INSERT INTO `chapter` VALUES ('35', 'ba20a296-aa47-44fa-8be7-f1f4b8daa658', '8', 'chapter8', 'ba20a296/8.txt', '2019-01-09 11:11:50');
INSERT INTO `chapter` VALUES ('36', 'ba20a296-aa47-44fa-8be7-f1f4b8daa658', '9', 'chapter9', 'ba20a296/9.txt', '2019-01-09 11:13:25');
INSERT INTO `chapter` VALUES ('37', 'ba20a296-aa47-44fa-8be7-f1f4b8daa658', '10', 'chapter10', 'ba20a296/10.txt', '2019-01-09 11:17:41');
INSERT INTO `chapter` VALUES ('38', 'ba20a296-aa47-44fa-8be7-f1f4b8daa658', '11', 'chapter11', 'ba20a296/11.txt', '2019-01-09 11:18:40');
INSERT INTO `chapter` VALUES ('39', 'ba20a296-aa47-44fa-8be7-f1f4b8daa658', '12', 'chapter12', 'ba20a296/12.txt', '2019-01-09 11:27:27');
INSERT INTO `chapter` VALUES ('40', '3a2e2a8b-546d-4cb8-81cc-5e9dfccc1878', '1', '第一章', '3a2e2a8b/1.txt', '2019-01-09 12:30:30');
INSERT INTO `chapter` VALUES ('41', '3a2e2a8b-546d-4cb8-81cc-5e9dfccc1878', '2', '第二章', '3a2e2a8b/2.txt', '2019-01-09 12:32:57');
INSERT INTO `chapter` VALUES ('43', '3a2e2a8b-546d-4cb8-81cc-5e9dfccc1878', '3', '第三章', '3a2e2a8b/3.txt', '2019-01-09 13:25:51');
INSERT INTO `chapter` VALUES ('44', '3a2e2a8b-546d-4cb8-81cc-5e9dfccc1878', '4', '第四章', '3a2e2a8b/4.txt', '2019-01-09 13:27:47');
INSERT INTO `chapter` VALUES ('45', '3a2e2a8b-546d-4cb8-81cc-5e9dfccc1878', '5', '第五章', '3a2e2a8b/5.txt', '2019-01-09 13:30:18');
INSERT INTO `chapter` VALUES ('46', '3a2e2a8b-546d-4cb8-81cc-5e9dfccc1878', '6', '第六章', '3a2e2a8b/6.txt', '2019-01-09 13:31:58');
INSERT INTO `chapter` VALUES ('49', '3a2e2a8b-546d-4cb8-81cc-5e9dfccc1878', '7', '第七章', '3a2e2a8b/7.txt', '2019-01-09 13:37:47');
INSERT INTO `chapter` VALUES ('51', '3a2e2a8b-546d-4cb8-81cc-5e9dfccc1878', '8', '第八章', '3a2e2a8b/8.txt', '2019-01-09 13:53:28');
INSERT INTO `chapter` VALUES ('52', '3a2e2a8b-546d-4cb8-81cc-5e9dfccc1878', '9', '第九章', '3a2e2a8b/9.txt', '2019-01-09 13:53:41');

-- ----------------------------
-- Table structure for novel
-- ----------------------------
DROP TABLE IF EXISTS `novel`;
CREATE TABLE `novel` (
  `nid` varchar(255) NOT NULL,
  `nname` varchar(255) DEFAULT NULL,
  `nauthor` varchar(255) DEFAULT NULL,
  `nstatic` int(1) DEFAULT '0',
  `nclass` int(11) DEFAULT NULL,
  `nlabel` varchar(255) DEFAULT NULL,
  `nlogo` varchar(255) DEFAULT NULL,
  `nhot` int(11) DEFAULT '0',
  `nintro` varchar(255) DEFAULT NULL,
  `ncreatetime` datetime NOT NULL,
  `lastchapter` int(11) DEFAULT '0',
  PRIMARY KEY (`nid`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of novel
-- ----------------------------
INSERT INTO `novel` VALUES ('0138f87b-d173-4955-998c-216073fe627d', '原生之罪', 'xifu', '0', '0', null, '416b94c667c640e4ade244ca040f87ac.jpg', '0', '该小说述了被吊销执照的律师池震与刑侦队长陆离，从彼此对立，到冰释前嫌，而后互为手足，携手探案，最终生死同往的故事', '2019-01-06 11:20:28', '2');
INSERT INTO `novel` VALUES ('3a2e2a8b-546d-4cb8-81cc-5e9dfccc1878', '西芙酱', 'xifu', '1', '4', null, '247ad89eb90a45d6be59091e21142734.jpg', '0', '', '2019-01-07 14:21:56', '9');
INSERT INTO `novel` VALUES ('ba20a296-aa47-44fa-8be7-f1f4b8daa658', '名字还没想好', '凌晨九点钟', '0', '4', null, '7aad1ec39a9e491e830624255574913e.jpg', '0', '正月初三，天地六界还沉浸在冬日的寒冷中，我背着我喝醉酒的老爹，干了一件大事。\r\n\r\n那天我降生在六界扬名立万的法度神，天界三殿下浔珧的府中。\r\n\r\n我本非神仙，我乃魔界最小最小的公主，只因垂涎三殿下的容颜，跟我大哥哥千央百求，才得此机缘，神不知鬼不觉地上了天，化作一枚仙胎。', '2019-01-09 09:56:09', '12');

-- ----------------------------
-- Table structure for statics
-- ----------------------------
DROP TABLE IF EXISTS `statics`;
CREATE TABLE `statics` (
  `sid` int(11) NOT NULL,
  `stype` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`sid`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of statics
-- ----------------------------
INSERT INTO `statics` VALUES ('0', '连载');
INSERT INTO `statics` VALUES ('1', '完结');

-- ----------------------------
-- Table structure for type
-- ----------------------------
DROP TABLE IF EXISTS `type`;
CREATE TABLE `type` (
  `tid` int(11) NOT NULL,
  `tname` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`tid`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of type
-- ----------------------------
INSERT INTO `type` VALUES ('0', '近代现代');
INSERT INTO `type` VALUES ('1', '古代架空');
INSERT INTO `type` VALUES ('2', '快意江湖');
INSERT INTO `type` VALUES ('3', '青春校园');
INSERT INTO `type` VALUES ('4', '玄幻奇幻');

-- ----------------------------
-- Table structure for user
-- ----------------------------
DROP TABLE IF EXISTS `user`;
CREATE TABLE `user` (
  `uid` varchar(255) NOT NULL,
  `username` varchar(255) DEFAULT NULL,
  `upassword` varchar(255) DEFAULT NULL,
  `umail` varchar(255) DEFAULT NULL,
  `ustate` int(1) DEFAULT '0',
  `ucode` varchar(255) DEFAULT NULL,
  `uisauthor` int(1) DEFAULT '0',
  PRIMARY KEY (`uid`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of user
-- ----------------------------
INSERT INTO `user` VALUES ('30280934-3803-4ef2-b8f7-ca035ca8dd59', 'xifu', '123456', '229694302@qq.com', '1', '3028093438034ef2b8f7ca035ca8dd59', '1');
INSERT INTO `user` VALUES ('a7767430-ad9c-41a4-89f8-2369bfe36da2', '夕立', '123456', '452419829@qq.com', '1', 'a7767430ad9c41a489f82369bfe36da2', '0');
INSERT INTO `user` VALUES ('d87261e5-e1a7-42b0-b5d0-766856c62bd7', '凌晨九点钟', '123456', '1071861736@qq.com', '1', 'a7767430ad9c41a489f82369bfe36da2', '1');
