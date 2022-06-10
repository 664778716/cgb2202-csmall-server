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

 Date: 09/06/2022 10:08:43
*/

SET NAMES utf8mb4;
SET FOREIGN_KEY_CHECKS = 0;

-- ----------------------------
-- Table structure for pms_brand
-- ----------------------------
DROP TABLE IF EXISTS `pms_brand`;
CREATE TABLE `pms_brand`  (
  `id` bigint(0) UNSIGNED NOT NULL AUTO_INCREMENT COMMENT '记录id',
  `name` varchar(50) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT NULL COMMENT '品牌名称',
  `pinyin` varchar(50) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT NULL COMMENT '品牌名称的拼音',
  `logo` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT NULL COMMENT '品牌logo的URL',
  `description` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT NULL COMMENT '品牌简介',
  `keywords` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT NULL COMMENT '关键词列表，各关键词使用英文的逗号分隔',
  `sort` tinyint(0) UNSIGNED NULL DEFAULT 0 COMMENT '自定义排序序号',
  `sales` int(0) UNSIGNED NULL DEFAULT 0 COMMENT '销量（冗余）',
  `product_count` int(0) UNSIGNED NULL DEFAULT 0 COMMENT '商品种类数量总和（冗余）',
  `comment_count` int(0) UNSIGNED NULL DEFAULT 0 COMMENT '买家评论数量总和（冗余）',
  `positive_comment_count` int(0) UNSIGNED NULL DEFAULT 0 COMMENT '买家好评数量总和（冗余）',
  `enable` tinyint(0) UNSIGNED NULL DEFAULT 0 COMMENT '是否启用，1=启用，0=未启用',
  `gmt_create` datetime(0) NULL DEFAULT NULL COMMENT '数据创建时间',
  `gmt_modified` datetime(0) NULL DEFAULT NULL COMMENT '数据最后修改时间',
  PRIMARY KEY (`id`) USING BTREE,
  INDEX `idx_brand_name`(`name`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 4 CHARACTER SET = utf8mb4 COLLATE = utf8mb4_0900_ai_ci COMMENT = '品牌' ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of pms_brand
-- ----------------------------
INSERT INTO `pms_brand` VALUES (1, '华为', 'huawei', NULL, '华为专注网络设备三十年', '华为,huawei,mate,magicbook', 0, 0, 0, 0, 0, 1, NULL, NULL);
INSERT INTO `pms_brand` VALUES (2, '小米', 'xiaomi', NULL, '小米，为发烧而生', '小米,xiaomi,发烧', 0, 0, 0, 0, 0, 1, NULL, NULL);
INSERT INTO `pms_brand` VALUES (3, '苹果', 'pingguo', NULL, '苹果，全球知名品牌', '苹果,apple,pingguo,iphone,mac', 0, 0, 0, 0, 0, 1, NULL, NULL);

SET FOREIGN_KEY_CHECKS = 1;
