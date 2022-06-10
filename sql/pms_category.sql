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

 Date: 09/06/2022 10:08:54
*/

SET NAMES utf8mb4;
SET FOREIGN_KEY_CHECKS = 0;

-- ----------------------------
-- Table structure for pms_category
-- ----------------------------
DROP TABLE IF EXISTS `pms_category`;
CREATE TABLE `pms_category`  (
  `id` bigint(0) UNSIGNED NOT NULL AUTO_INCREMENT COMMENT '记录id',
  `name` varchar(50) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT NULL COMMENT '类别名称',
  `parent_id` bigint(0) UNSIGNED NULL DEFAULT 0 COMMENT '父级类别id，如果无父级，则为0',
  `depth` tinyint(0) UNSIGNED NULL DEFAULT 1 COMMENT '深度，最顶级类别的深度为1，次级为2，以此类推',
  `keywords` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT NULL COMMENT '关键词列表，各关键词使用英文的逗号分隔',
  `sort` tinyint(0) UNSIGNED NULL DEFAULT 0 COMMENT '自定义排序序号',
  `icon` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT NULL COMMENT '图标图片的URL',
  `enable` tinyint(0) UNSIGNED NULL DEFAULT 0 COMMENT '是否启用，1=启用，0=未启用',
  `is_parent` tinyint(0) UNSIGNED NULL DEFAULT 0 COMMENT '是否为父级（是否包含子级），1=是父级，0=不是父级',
  `is_display` tinyint(0) UNSIGNED NULL DEFAULT 0 COMMENT '是否显示在导航栏中，1=启用，0=未启用',
  `gmt_create` datetime(0) NULL DEFAULT NULL COMMENT '数据创建时间',
  `gmt_modified` datetime(0) NULL DEFAULT NULL COMMENT '数据最后修改时间',
  PRIMARY KEY (`id`) USING BTREE,
  INDEX `idx_category_name`(`name`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 10 CHARACTER SET = utf8mb4 COLLATE = utf8mb4_0900_ai_ci COMMENT = '类别' ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of pms_category
-- ----------------------------
INSERT INTO `pms_category` VALUES (1, '手机 / 运营商 / 数码', 0, 1, NULL, 0, NULL, 1, 1, 1, NULL, NULL);
INSERT INTO `pms_category` VALUES (2, '手机通讯', 1, 2, '手机,电话', 0, NULL, 1, 1, 1, NULL, NULL);
INSERT INTO `pms_category` VALUES (3, '智能手机', 2, 3, NULL, 0, NULL, 1, 0, 1, NULL, NULL);
INSERT INTO `pms_category` VALUES (4, '非智能手机', 2, 3, NULL, 0, NULL, 1, 0, 1, NULL, NULL);
INSERT INTO `pms_category` VALUES (5, '电脑 / 办公', 0, 1, NULL, 0, NULL, 1, 1, 1, NULL, NULL);
INSERT INTO `pms_category` VALUES (6, '电脑整机', 5, 2, '电脑,计算机,微机,服务器,工作站', 0, NULL, 1, 1, 1, NULL, NULL);
INSERT INTO `pms_category` VALUES (7, '电脑配件', 5, 2, '配件,组装,CPU,内存,硬盘', 0, NULL, 1, 1, 1, NULL, NULL);
INSERT INTO `pms_category` VALUES (8, '笔记本', 6, 3, '电脑,笔记本,微机,便携', 0, NULL, 1, 0, 1, NULL, NULL);
INSERT INTO `pms_category` VALUES (9, '台式机 / 一体机', 6, 3, '台式机,一体机', 0, NULL, 1, 0, 1, NULL, NULL);

SET FOREIGN_KEY_CHECKS = 1;
