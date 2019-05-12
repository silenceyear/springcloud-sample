/*
Navicat MySQL Data Transfer

Source Server         : localhost
Source Server Version : 50718
Source Host           : localhost:3306
Source Database       : dev

Target Server Type    : MYSQL
Target Server Version : 50718
File Encoding         : 65001

Date: 2019-05-12 20:16:30
*/

SET FOREIGN_KEY_CHECKS=0;

-- ----------------------------
-- Table structure for t_user
-- ----------------------------
DROP TABLE IF EXISTS `t_user`;
CREATE TABLE `t_user` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '主键标识',
  `uid` varchar(32) NOT NULL COMMENT 'UUID',
  `username` varchar(50) NOT NULL COMMENT '用户名',
  `password` varchar(32) NOT NULL COMMENT '密码',
  `money` decimal(20,2) DEFAULT '0.00' COMMENT '金额',
  `level` int(11) NOT NULL DEFAULT '0' COMMENT '等级',
  `headimage` blob COMMENT '头像',
  `sex` tinyint(2) NOT NULL DEFAULT '2' COMMENT '性别',
  `status` tinyint(1) NOT NULL DEFAULT '1' COMMENT '状态',
  `birthday` date NOT NULL COMMENT '生日',
  `remark` text COMMENT '备注',
  `create_time` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `modify_time` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP,
  PRIMARY KEY (`id`),
  UNIQUE KEY `t_user_username_uindex` (`username`)
) ENGINE=InnoDB AUTO_INCREMENT=22 DEFAULT CHARSET=utf8mb4 COMMENT='用户表';

-- ----------------------------
-- Records of t_user
-- ----------------------------
INSERT INTO `t_user` VALUES ('2', '726b8359024248c3a6a1e7712a082345', '18:37:11.467', 'e10adc3949ba59abbe56e057f20f883e', '167341.51', '0', null, '0', '1', '1992-07-16', null, '2019-05-12 18:37:11', '2019-05-12 18:37:11');
INSERT INTO `t_user` VALUES ('3', 'c373001535b942fdaab72a285d60cf24', '18:37:18.225', 'e10adc3949ba59abbe56e057f20f883e', '268441.15', '0', null, '1', '1', '1992-07-16', null, '2019-05-12 18:37:18', '2019-05-12 18:37:18');
INSERT INTO `t_user` VALUES ('4', 'da69c34090ce4c63ac88ee30c7fa83b3', '18:38:06.667', 'e10adc3949ba59abbe56e057f20f883e', '767341.91', '0', null, '1', '0', '1992-07-16', null, '2019-05-12 18:38:06', '2019-05-12 18:38:06');
INSERT INTO `t_user` VALUES ('5', '881f56fa0efc4cc19d06ffa17e65cdcd', '18:39:16.235', 'e10adc3949ba59abbe56e057f20f883e', '618104.55', '0', null, '0', '1', '1992-07-16', null, '2019-05-12 18:39:16', '2019-05-12 18:39:16');
INSERT INTO `t_user` VALUES ('6', '4341fcbd5a63441ab8373cfb52a0ee4b', '18:51:30.500', 'e10adc3949ba59abbe56e057f20f883e', '430487.63', '0', null, '1', '1', '1992-07-16', null, '2019-05-12 18:51:30', '2019-05-12 18:51:30');
INSERT INTO `t_user` VALUES ('7', '567a61f23095495288f9149a00408723', '19:23:45.953', 'e10adc3949ba59abbe56e057f20f883e', '395464.67', '0', null, '1', '1', '1992-07-16', null, '2019-05-12 19:23:45', '2019-05-12 19:23:45');
INSERT INTO `t_user` VALUES ('8', '8b5b7553d9254c58947d994d24387591', '19:23:46.941', 'e10adc3949ba59abbe56e057f20f883e', '752971.60', '0', null, '1', '1', '1992-07-16', null, '2019-05-12 19:23:46', '2019-05-12 19:23:46');
INSERT INTO `t_user` VALUES ('9', '353ea542400547009b8e26c13256ac0d', '19:23:47.508', 'e10adc3949ba59abbe56e057f20f883e', '623423.29', '0', null, '0', '0', '1992-07-16', null, '2019-05-12 19:23:47', '2019-05-12 19:23:47');
INSERT INTO `t_user` VALUES ('10', 'bb4a221df5ec4d2e88f3d4ab9c4285ef', '19:23:47.935', 'e10adc3949ba59abbe56e057f20f883e', '259406.17', '0', null, '0', '1', '1992-07-16', null, '2019-05-12 19:23:47', '2019-05-12 19:23:47');
INSERT INTO `t_user` VALUES ('11', 'aa9eb5071e2d4e389934edb3847e5db6', '19:23:48.284', 'e10adc3949ba59abbe56e057f20f883e', '158830.25', '0', null, '1', '1', '1992-07-16', null, '2019-05-12 19:23:48', '2019-05-12 19:23:48');
INSERT INTO `t_user` VALUES ('12', '7543990031374e89870b7815c5ebf54b', '19:23:48.539', 'e10adc3949ba59abbe56e057f20f883e', '577824.54', '0', null, '0', '1', '1992-07-16', null, '2019-05-12 19:23:48', '2019-05-12 19:23:48');
INSERT INTO `t_user` VALUES ('13', '689f32574c384408b4f5d7ba2ac56ab0', '19:23:48.709', 'e10adc3949ba59abbe56e057f20f883e', '678062.43', '0', null, '2', '1', '1992-07-16', null, '2019-05-12 19:23:48', '2019-05-12 19:23:48');
INSERT INTO `t_user` VALUES ('14', '814ae880542343c9b864e26112de7219', '19:23:48.900', 'e10adc3949ba59abbe56e057f20f883e', '168668.32', '0', null, '0', '1', '1992-07-16', null, '2019-05-12 19:23:48', '2019-05-12 19:23:48');
INSERT INTO `t_user` VALUES ('15', 'e82dabed00d5498d92f7735c182a13d1', '19:23:49.087', 'e10adc3949ba59abbe56e057f20f883e', '337705.18', '0', null, '1', '0', '1992-07-16', null, '2019-05-12 19:23:49', '2019-05-12 19:23:49');
INSERT INTO `t_user` VALUES ('16', 'ea71a12c625c4cdfbc1d4db5c507dde3', '19:23:49.261', 'e10adc3949ba59abbe56e057f20f883e', '685625.29', '0', null, '2', '1', '1992-07-16', null, '2019-05-12 19:23:49', '2019-05-12 19:23:49');
INSERT INTO `t_user` VALUES ('17', '3f44958246274c65a074045f5715e2fb', '19:23:49.446', 'e10adc3949ba59abbe56e057f20f883e', '120697.28', '0', null, '1', '1', '1992-07-16', null, '2019-05-12 19:23:49', '2019-05-12 19:23:49');
INSERT INTO `t_user` VALUES ('18', '9fe03bf116834e259efdff4cb4310ae6', '19:23:49.629', 'e10adc3949ba59abbe56e057f20f883e', '307902.55', '0', null, '0', '1', '1992-07-16', null, '2019-05-12 19:23:49', '2019-05-12 19:23:49');
INSERT INTO `t_user` VALUES ('19', 'ae527b5faf114d9c8727fc0b76802b85', '19:23:49.874', 'e10adc3949ba59abbe56e057f20f883e', '230325.42', '0', null, '2', '1', '1992-07-16', null, '2019-05-12 19:23:49', '2019-05-12 19:23:49');
INSERT INTO `t_user` VALUES ('20', 'da1cc25718d942f9a100c19a3c7072b1', '19:23:50.047', 'e10adc3949ba59abbe56e057f20f883e', '838725.70', '0', null, '0', '1', '1992-07-16', null, '2019-05-12 19:23:50', '2019-05-12 19:23:50');
INSERT INTO `t_user` VALUES ('21', '51618b4c2822409fa7ace213e9dccb93', '19:24:59.118', 'e10adc3949ba59abbe56e057f20f883e', '797942.04', '0', null, '2', '1', '1992-07-16', null, '2019-05-12 19:24:59', '2019-05-12 19:24:59');
