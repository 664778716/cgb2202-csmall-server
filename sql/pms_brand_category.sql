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

 Date: 09/06/2022 10:08:48
*/

SET NAMES utf8mb4;
SET FOREIGN_KEY_CHECKS = 0;

-- ----------------------------
-- Table structure for pms_brand_category
-- ----------------------------
DROP TABLE IF EXISTS `pms_brand_category`;
CREATE TABLE `pms_brand_category`  (
  `id` bigint(0) UNSIGNED NOT NULL AUTO_INCREMENT COMMENT '记录id',
  `brand_id` bigint(0) UNSIGNED NULL DEFAULT NULL COMMENT '品牌id',
  `category_id` bigint(0) UNSIGNED NULL DEFAULT NULL COMMENT '类别id',
  `gmt_create` datetime(0) NULL DEFAULT NULL COMMENT '数据创建时间',
  `gmt_modified` datetime(0) NULL DEFAULT NULL COMMENT '数据最后修改时间',
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 9 CHARACTER SET = utf8mb4 COLLATE = utf8mb4_0900_ai_ci COMMENT = '品牌与类别关联' ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of pms_brand_category
-- ----------------------------
INSERT INTO `pms_brand_category` VALUES (1, 1, 3, NULL, NULL);
INSERT INTO `pms_brand_category` VALUES (2, 2, 3, NULL, NULL);
INSERT INTO `pms_brand_category` VALUES (3, 3, 3, NULL, NULL);
INSERT INTO `pms_brand_category` VALUES (4, 1, 8, NULL, NULL);
INSERT INTO `pms_brand_category` VALUES (5, 2, 8, NULL, NULL);
INSERT INTO `pms_brand_category` VALUES (6, 3, 8, NULL, NULL);
INSERT INTO `pms_brand_category` VALUES (7, 1, 9, NULL, NULL);
INSERT INTO `pms_brand_category` VALUES (8, 3, 9, NULL, NULL);

SET FOREIGN_KEY_CHECKS = 1;
