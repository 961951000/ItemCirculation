/*
 Navicat Premium Data Transfer

 Source Server         : 127.0.0.1
 Source Server Type    : MySQL
 Source Server Version : 50721
 Source Host           : localhost:3306
 Source Schema         : item_circulation

 Target Server Type    : MySQL
 Target Server Version : 50721
 File Encoding         : 65001

 Date: 17/02/2018 14:55:12
*/

SET NAMES utf8mb4;
SET FOREIGN_KEY_CHECKS = 0;

-- ----------------------------
-- Table structure for action
-- ----------------------------
DROP TABLE IF EXISTS `action`;
CREATE TABLE `action`  (
  `id` int(11) NOT NULL AUTO_INCREMENT COMMENT '自动编号',
  `action_code` int(11) NULL DEFAULT NULL COMMENT '操作代码',
  `action_name` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '操作名称',
  `action_type_id` int(11) NULL DEFAULT NULL COMMENT '操作类型编号',
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 12 CHARACTER SET = utf8 COLLATE = utf8_general_ci COMMENT = '操作信息表' ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of action
-- ----------------------------
INSERT INTO `action` VALUES (1, 1001, '正常借出', NULL);
INSERT INTO `action` VALUES (2, 1002, '正常归还', NULL);
INSERT INTO `action` VALUES (3, 1003, '异常借出', 1);
INSERT INTO `action` VALUES (4, 1004, '异常归还', 2);
INSERT INTO `action` VALUES (5, 1004, '异常归还', 3);
INSERT INTO `action` VALUES (6, 1003, '异常借出', 4);
INSERT INTO `action` VALUES (7, 1004, '异常归还', 4);
INSERT INTO `action` VALUES (8, 1003, '异常借出', 5);
INSERT INTO `action` VALUES (9, 1004, '异常归还', 5);
INSERT INTO `action` VALUES (10, 1003, '异常借出', 6);
INSERT INTO `action` VALUES (11, 1004, '异常归还', 6);

-- ----------------------------
-- Table structure for action_type
-- ----------------------------
DROP TABLE IF EXISTS `action_type`;
CREATE TABLE `action_type`  (
  `id` int(11) NOT NULL AUTO_INCREMENT COMMENT '自动编号',
  `action_type_code` int(11) NULL DEFAULT NULL COMMENT '操作类型代码',
  `action_type_name` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '操作类型名称',
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 7 CHARACTER SET = utf8 COLLATE = utf8_general_ci COMMENT = '操作类型表' ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of action_type
-- ----------------------------
INSERT INTO `action_type` VALUES (1, 1001, '重复借出');
INSERT INTO `action_type` VALUES (2, 1002, '重复归还');
INSERT INTO `action_type` VALUES (3, 1003, '第三人归还');
INSERT INTO `action_type` VALUES (4, 1004, '未知设备');
INSERT INTO `action_type` VALUES (5, 1005, '未知学生');
INSERT INTO `action_type` VALUES (6, 1006, '未知错误');

-- ----------------------------
-- Table structure for circulation
-- ----------------------------
DROP TABLE IF EXISTS `circulation`;
CREATE TABLE `circulation`  (
  `id` int(11) NOT NULL AUTO_INCREMENT COMMENT '自动编号',
  `item_id` int(11) NULL DEFAULT NULL COMMENT '物品编号',
  `loan_student_id` int(11) NULL DEFAULT NULL COMMENT '借出人编号',
  `return_student_id` int(11) NULL DEFAULT NULL COMMENT '归还人编号',
  `loan_time` datetime(0) NULL DEFAULT NULL COMMENT '借出时间',
  `return_time` datetime(0) NULL DEFAULT NULL COMMENT '归还时间',
  `is_return` tinyint(1) NULL DEFAULT 0,
  `remark` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '备注',
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 1 CHARACTER SET = utf8 COLLATE = utf8_general_ci COMMENT = '流通信息表' ROW_FORMAT = Dynamic;

-- ----------------------------
-- Table structure for circulation_record
-- ----------------------------
DROP TABLE IF EXISTS `circulation_record`;
CREATE TABLE `circulation_record`  (
  `id` int(11) NOT NULL AUTO_INCREMENT COMMENT '自动编号',
  `item_uid` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '物品RFID标识识别号',
  `student_card_mac_code` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '学生证物理卡号',
  `action_id` int(11) NULL DEFAULT NULL COMMENT '操作编号',
  `action_time` datetime(0) NULL DEFAULT NULL COMMENT '操作时间',
  `comment` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '备注',
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 1 CHARACTER SET = utf8 COLLATE = utf8_general_ci COMMENT = '流通记录表' ROW_FORMAT = Dynamic;

-- ----------------------------
-- Table structure for item
-- ----------------------------
DROP TABLE IF EXISTS `item`;
CREATE TABLE `item`  (
  `id` int(11) NOT NULL AUTO_INCREMENT COMMENT '自动编号',
  `uid` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT 'RFID标识识别号',
  `item_number` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '物品编号',
  `item_name` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '物品名称',
  `item_type` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '物品型号',
  `item_location` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '物品存放地址',
  `item_state_code` int(11) NULL DEFAULT NULL COMMENT '物品状态代码',
  `create_time` datetime(0) NULL DEFAULT NULL COMMENT '创建时间',
  `update_time` datetime(0) NULL DEFAULT NULL COMMENT '修改时间',
  PRIMARY KEY (`id`) USING BTREE,
  UNIQUE INDEX `uid`(`uid`) USING BTREE,
  UNIQUE INDEX `uid_2`(`uid`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 1 CHARACTER SET = utf8 COLLATE = utf8_general_ci COMMENT = '物品信息表' ROW_FORMAT = Dynamic;

-- ----------------------------
-- Table structure for item_state
-- ----------------------------
DROP TABLE IF EXISTS `item_state`;
CREATE TABLE `item_state`  (
  `id` int(11) NOT NULL AUTO_INCREMENT COMMENT '自动编号',
  `code` int(11) NULL DEFAULT NULL COMMENT '物品状态码',
  `state` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '物品状态',
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 3 CHARACTER SET = utf8 COLLATE = utf8_general_ci COMMENT = '物品状态表' ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of item_state
-- ----------------------------
INSERT INTO `item_state` VALUES (1, 1001, '在馆');
INSERT INTO `item_state` VALUES (2, 1002, '借出');

-- ----------------------------
-- Table structure for student
-- ----------------------------
DROP TABLE IF EXISTS `student`;
CREATE TABLE `student`  (
  `id` int(11) NOT NULL AUTO_INCREMENT COMMENT '自动编号',
  `card_mac_code` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '物理卡号',
  `student_code` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '学籍号',
  `student_name` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '学生姓名',
  `grade_name` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '年级名称',
  `class_name` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '班级名称',
  `create_time` datetime(0) NULL DEFAULT NULL COMMENT '创建时间',
  `update_time` datetime(0) NULL DEFAULT NULL COMMENT '修改时间',
  PRIMARY KEY (`id`) USING BTREE,
  UNIQUE INDEX `student_code`(`student_code`) USING BTREE,
  UNIQUE INDEX `card_mac_code`(`card_mac_code`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 1 CHARACTER SET = utf8 COLLATE = utf8_general_ci COMMENT = '学生信息表' ROW_FORMAT = Dynamic;

SET FOREIGN_KEY_CHECKS = 1;
