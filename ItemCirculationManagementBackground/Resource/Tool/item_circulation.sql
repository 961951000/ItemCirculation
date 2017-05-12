/*
Navicat MySQL Data Transfer

Source Server         : 127.0.0.1
Source Server Version : 50718
Source Host           : localhost:3306
Source Database       : item_circulation

Target Server Type    : MYSQL
Target Server Version : 50718
File Encoding         : 65001

Date: 2017-05-12 21:21:25
*/

SET FOREIGN_KEY_CHECKS=0;

-- ----------------------------
-- Table structure for circulation
-- ----------------------------
DROP TABLE IF EXISTS `circulation`;
CREATE TABLE `circulation` (
  `id` int(11) NOT NULL AUTO_INCREMENT COMMENT '自动编号',
  `item_id` int(11) DEFAULT NULL COMMENT '物品编号',
  `loan_student_id` int(11) DEFAULT NULL COMMENT '借出人编号',
  `return_student_id` int(11) DEFAULT NULL COMMENT '归还人编号',
  `loan_time` datetime DEFAULT NULL COMMENT '借出时间',
  `return_time` datetime DEFAULT NULL COMMENT '归还时间',
  `is_return` tinyint(1) DEFAULT '0',
  `remark` varchar(255) DEFAULT NULL COMMENT '备注',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='流通信息表';

-- ----------------------------
-- Records of circulation
-- ----------------------------

-- ----------------------------
-- Table structure for item
-- ----------------------------
DROP TABLE IF EXISTS `item`;
CREATE TABLE `item` (
  `id` int(11) NOT NULL AUTO_INCREMENT COMMENT '自动编号',
  `uid` varchar(255) DEFAULT NULL COMMENT 'RFID标识识别号',
  `item_number` varchar(255) DEFAULT NULL COMMENT '物品编号',
  `item_name` varchar(255) DEFAULT NULL COMMENT '物品名称',
  `item_type` varchar(255) DEFAULT NULL COMMENT '物品型号',
  `item_state_code` int(11) DEFAULT NULL COMMENT '物品状态码',
  `create_time` datetime DEFAULT CURRENT_TIMESTAMP COMMENT '创建时间',
  `update_time` datetime DEFAULT CURRENT_TIMESTAMP COMMENT '修改时间',
  PRIMARY KEY (`id`),
  UNIQUE KEY `uid` (`uid`) USING BTREE,
  UNIQUE KEY `uid_2` (`uid`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='物品信息表';

-- ----------------------------
-- Records of item
-- ----------------------------

-- ----------------------------
-- Table structure for item_state
-- ----------------------------
DROP TABLE IF EXISTS `item_state`;
CREATE TABLE `item_state` (
  `id` int(11) NOT NULL AUTO_INCREMENT COMMENT '自动编号',
  `code` int(11) DEFAULT NULL COMMENT '物品状态码',
  `state` varchar(255) DEFAULT NULL COMMENT '物品状态',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='物品状态表';

-- ----------------------------
-- Records of item_state
-- ----------------------------

-- ----------------------------
-- Table structure for student
-- ----------------------------
DROP TABLE IF EXISTS `student`;
CREATE TABLE `student` (
  `id` int(11) NOT NULL AUTO_INCREMENT COMMENT '自动编号',
  `card_mac_code` varchar(255) DEFAULT NULL COMMENT '物理卡号',
  `student_code` varchar(255) DEFAULT NULL COMMENT '学籍号',
  `student_name` varchar(255) DEFAULT NULL COMMENT '学生姓名',
  `grade_name` varchar(255) DEFAULT NULL COMMENT '年级名称',
  `class_name` varchar(255) DEFAULT NULL COMMENT '班级名称',
  `create_time` datetime DEFAULT CURRENT_TIMESTAMP COMMENT '创建时间',
  `update_time` datetime DEFAULT CURRENT_TIMESTAMP COMMENT '修改时间',
  PRIMARY KEY (`id`),
  UNIQUE KEY `student_code` (`student_code`),
  UNIQUE KEY `card_mac_code` (`card_mac_code`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='学生信息表';

-- ----------------------------
-- Records of student
-- ----------------------------
SET FOREIGN_KEY_CHECKS=1;
