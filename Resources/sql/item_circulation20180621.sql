/*
Navicat MySQL Data Transfer

Source Server         : localhost
Source Server Version : 50525
Source Host           : localhost:3306
Source Database       : item_circulation

Target Server Type    : MYSQL
Target Server Version : 50525
File Encoding         : 65001

Date: 2018-06-21 21:57:44
*/

SET FOREIGN_KEY_CHECKS=0;

ALTER TABLE `item`
ADD COLUMN `machine_id`  int(11) NULL COMMENT '设备编号' AFTER `item_state_code`;

CREATE TABLE `machine_type` (
`id`  int NOT NULL AUTO_INCREMENT COMMENT '自动编号' ,
`type_name`  varchar(255) NULL COMMENT '类型名称' ,
PRIMARY KEY (`id`)
)
COMMENT='设备类型表';

-- ----------------------------
-- Records of student
-- ----------------------------
SET FOREIGN_KEY_CHECKS=1;
