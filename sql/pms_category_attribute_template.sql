/*
 Navicat Premium Data Transfer

 Source Server         : root
 Source Server Type    : MySQL
 Source Server Version : 80027
 Source Host           : localhost:3306
 Source Schema         : mall_pms

 Target Server Type    : MySQL
 Target Server Version : 80027
 File Encoding         : 65001

 Date: 09/06/2022 10:09:00
*/

SET NAMES utf8mb4;
SET FOREIGN_KEY_CHECKS = 0;

-- ----------------------------
-- Table structure for pms_category_attribute_template
-- ----------------------------
DROP TABLE IF EXISTS `pms_category_attribute_template`;
CREATE TABLE `pms_category_attribute_template`  (
  `id` bigint(0) UNSIGNED NOT NULL AUTO_INCREMENT COMMENT '记录id',
  `category_id` bigint(0) UNSIGNED NULL DEFAULT NULL COMMENT '类别id',
  `attribute_template_id` bigint(0) UNSIGNED NULL DEFAULT NULL COMMENT '属性模版id',
  `gmt_create` datetime(0) NULL DEFAULT NULL COMMENT '数据创建时间',
  `gmt_modified` datetime(0) NULL DEFAULT NULL COMMENT '数据最后修改时间',
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB CHARACTER SET = utf8mb4 COLLATE = utf8mb4_0900_ai_ci COMMENT = '类别与属性模版关联' ROW_FORMAT = Dynamic;

SET FOREIGN_KEY_CHECKS = 1;
