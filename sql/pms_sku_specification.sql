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

 Date: 09/06/2022 10:09:13
*/

SET NAMES utf8mb4;
SET FOREIGN_KEY_CHECKS = 0;

-- ----------------------------
-- Table structure for pms_sku_specification
-- ----------------------------
DROP TABLE IF EXISTS `pms_sku_specification`;
CREATE TABLE `pms_sku_specification`  (
  `id` bigint(0) UNSIGNED NOT NULL AUTO_INCREMENT COMMENT '记录id',
  `sku_id` bigint(0) UNSIGNED NULL DEFAULT NULL COMMENT 'SKU id',
  `attribute_id` bigint(0) UNSIGNED NULL DEFAULT NULL COMMENT '属性id',
  `attribute_name` varchar(50) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT NULL COMMENT '属性名称',
  `attribute_value` varchar(50) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT NULL COMMENT '属性值',
  `unit` varchar(10) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT NULL COMMENT '自动补充的计量单位',
  `sort` tinyint(0) UNSIGNED NULL DEFAULT 0 COMMENT '自定义排序序号',
  `gmt_create` datetime(0) NULL DEFAULT NULL COMMENT '数据创建时间',
  `gmt_modified` datetime(0) NULL DEFAULT NULL COMMENT '数据最后修改时间',
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 7 CHARACTER SET = utf8mb4 COLLATE = utf8mb4_0900_ai_ci COMMENT = 'SKU数据' ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of pms_sku_specification
-- ----------------------------
INSERT INTO `pms_sku_specification` VALUES (1, 1, 1, '屏幕尺寸', '6.1', '寸', 0, NULL, NULL);
INSERT INTO `pms_sku_specification` VALUES (2, 1, 3, '颜色', '黑色', NULL, 0, NULL, NULL);
INSERT INTO `pms_sku_specification` VALUES (3, 1, 5, '运行内存', '16', 'GB', 0, NULL, NULL);
INSERT INTO `pms_sku_specification` VALUES (4, 2, 1, '屏幕尺寸', '6.1', '寸', 0, NULL, NULL);
INSERT INTO `pms_sku_specification` VALUES (5, 2, 3, '颜色', '白色', NULL, 0, NULL, NULL);
INSERT INTO `pms_sku_specification` VALUES (6, 2, 5, '运行内存', '8', 'GB', 0, NULL, NULL);

SET FOREIGN_KEY_CHECKS = 1;
