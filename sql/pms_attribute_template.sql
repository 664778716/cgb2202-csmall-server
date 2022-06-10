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

 Date: 09/06/2022 10:08:36
*/

SET NAMES utf8mb4;
SET FOREIGN_KEY_CHECKS = 0;

-- ----------------------------
-- Table structure for pms_attribute_template
-- ----------------------------
DROP TABLE IF EXISTS `pms_attribute_template`;
CREATE TABLE `pms_attribute_template`  (
  `id` bigint(0) UNSIGNED NOT NULL AUTO_INCREMENT COMMENT '记录id',
  `name` varchar(50) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT NULL COMMENT '属性模版名称',
  `pinyin` varchar(50) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT NULL COMMENT '属性模版名称的拼音',
  `keywords` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT NULL COMMENT '关键词列表，各关键词使用英文的逗号分隔',
  `sort` tinyint(0) UNSIGNED NULL DEFAULT 0 COMMENT '自定义排序序号',
  `gmt_create` datetime(0) NULL DEFAULT NULL COMMENT '数据创建时间',
  `gmt_modified` datetime(0) NULL DEFAULT NULL COMMENT '数据最后修改时间',
  PRIMARY KEY (`id`) USING BTREE,
  INDEX `idx_attribute_template_name`(`name`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 6 CHARACTER SET = utf8mb4 COLLATE = utf8mb4_0900_ai_ci COMMENT = '属性模版' ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of pms_attribute_template
-- ----------------------------
INSERT INTO `pms_attribute_template` VALUES (1, '智能手机', 'zhinengshouji', '手机', 0, NULL, NULL);
INSERT INTO `pms_attribute_template` VALUES (2, '服装-上身', 'fuzhuang', '服装,上衣', 0, NULL, NULL);
INSERT INTO `pms_attribute_template` VALUES (3, '服装-裤子', 'fuzhuang', '服装,裤', 0, NULL, NULL);
INSERT INTO `pms_attribute_template` VALUES (4, '笔记本电脑', 'bijibendiannao', '电脑,笔记本', 0, NULL, NULL);
INSERT INTO `pms_attribute_template` VALUES (5, '台式电脑', 'taishidiannao', '电脑,台式电脑,台式机', 0, NULL, NULL);

SET FOREIGN_KEY_CHECKS = 1;
