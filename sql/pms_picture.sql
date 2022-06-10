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

 Date: 09/06/2022 10:09:04
*/

SET NAMES utf8mb4;
SET FOREIGN_KEY_CHECKS = 0;

-- ----------------------------
-- Table structure for pms_picture
-- ----------------------------
DROP TABLE IF EXISTS `pms_picture`;
CREATE TABLE `pms_picture`  (
  `id` bigint(0) UNSIGNED NOT NULL AUTO_INCREMENT COMMENT '记录id',
  `album_id` bigint(0) UNSIGNED NULL DEFAULT NULL COMMENT '相册id',
  `url` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT NULL COMMENT '图片url',
  `description` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT NULL COMMENT '图片简介',
  `width` smallint(0) UNSIGNED NULL DEFAULT NULL COMMENT '图片宽度，单位：px',
  `height` smallint(0) UNSIGNED NULL DEFAULT NULL COMMENT '图片高度，单位：px',
  `is_cover` tinyint(0) UNSIGNED NULL DEFAULT 0 COMMENT '是否为封面图片，1=是，0=否',
  `sort` tinyint(0) UNSIGNED NULL DEFAULT 0 COMMENT '自定义排序序号',
  `gmt_create` datetime(0) NULL DEFAULT NULL COMMENT '数据创建时间',
  `gmt_modified` datetime(0) NULL DEFAULT NULL COMMENT '数据最后修改时间',
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 11 CHARACTER SET = utf8mb4 COLLATE = utf8mb4_0900_ai_ci COMMENT = '图片' ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of pms_picture
-- ----------------------------
INSERT INTO `pms_picture` VALUES (1, 1, '模拟数据：iPhone 13图片URL-1', NULL, 1024, 768, 0, 0, NULL, NULL);
INSERT INTO `pms_picture` VALUES (2, 1, '模拟数据：iPhone 13图片URL-2', NULL, 1024, 768, 0, 0, NULL, NULL);
INSERT INTO `pms_picture` VALUES (3, 1, '模拟数据：iPhone 13图片URL-3', NULL, 1024, 768, 0, 0, NULL, NULL);
INSERT INTO `pms_picture` VALUES (4, 1, '模拟数据：iPhone 13图片URL-4', NULL, 1024, 768, 0, 0, NULL, NULL);
INSERT INTO `pms_picture` VALUES (5, 1, '模拟数据：iPhone 13图片URL-5', NULL, 1024, 768, 0, 0, NULL, NULL);
INSERT INTO `pms_picture` VALUES (6, 2, '模拟数据：Mi 11 Ultra图片URL-1', NULL, 1024, 768, 0, 0, NULL, NULL);
INSERT INTO `pms_picture` VALUES (7, 2, '模拟数据：Mi 11 Ultra图片URL-2', NULL, 1024, 768, 0, 0, NULL, NULL);
INSERT INTO `pms_picture` VALUES (8, 2, '模拟数据：Mi 11 Ultra图片URL-3', NULL, 1024, 768, 0, 0, NULL, NULL);
INSERT INTO `pms_picture` VALUES (9, 2, '模拟数据：Mi 11 Ultra图片URL-4', NULL, 1024, 768, 0, 0, NULL, NULL);
INSERT INTO `pms_picture` VALUES (10, 2, '模拟数据：Mi 11 Ultra图片URL-5', NULL, 1024, 768, 0, 0, NULL, NULL);

SET FOREIGN_KEY_CHECKS = 1;
