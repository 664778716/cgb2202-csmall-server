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

 Date: 09/06/2022 10:06:55
*/

SET NAMES utf8mb4;
SET FOREIGN_KEY_CHECKS = 0;

-- ----------------------------
-- Table structure for pms_album
-- ----------------------------
DROP TABLE IF EXISTS `pms_album`;
CREATE TABLE `pms_album`  (
  `id` bigint(0) UNSIGNED NOT NULL AUTO_INCREMENT COMMENT '记录id',
  `name` varchar(50) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT NULL COMMENT '相册名称',
  `description` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT NULL COMMENT '相册简介',
  `sort` tinyint(0) UNSIGNED NULL DEFAULT 0 COMMENT '自定义排序序号',
  `gmt_create` datetime(0) NULL DEFAULT NULL COMMENT '数据创建时间',
  `gmt_modified` datetime(0) NULL DEFAULT NULL COMMENT '数据最后修改时间',
  PRIMARY KEY (`id`) USING BTREE,
  INDEX `idx_album_name`(`name`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 3 CHARACTER SET = utf8mb4 COLLATE = utf8mb4_0900_ai_ci COMMENT = '相册' ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of pms_album
-- ----------------------------
INSERT INTO `pms_album` VALUES (1, 'iPhone 13', NULL, 0, NULL, NULL);
INSERT INTO `pms_album` VALUES (2, 'Mi 11 Ultra', NULL, 0, NULL, NULL);

SET FOREIGN_KEY_CHECKS = 1;
