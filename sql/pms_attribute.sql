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

 Date: 09/06/2022 10:07:13
*/

SET NAMES utf8mb4;
SET FOREIGN_KEY_CHECKS = 0;

-- ----------------------------
-- Table structure for pms_attribute
-- ----------------------------
DROP TABLE IF EXISTS `pms_attribute`;
CREATE TABLE `pms_attribute`  (
  `id` bigint(0) UNSIGNED NOT NULL AUTO_INCREMENT COMMENT '记录id',
  `template_id` bigint(0) UNSIGNED NULL DEFAULT NULL COMMENT '所属属性模版id',
  `name` varchar(50) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT NULL COMMENT '属性名称',
  `description` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT NULL COMMENT '简介（某些属性名称可能相同，通过简介补充描述）',
  `type` tinyint(0) UNSIGNED NULL DEFAULT 0 COMMENT '属性类型，1=销售属性，0=非销售属性',
  `input_type` tinyint(0) UNSIGNED NULL DEFAULT 0 COMMENT '输入类型，0=手动录入，1=单选，2=多选，3=单选（下拉列表），4=多选（下拉列表）',
  `value_list` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT NULL COMMENT '备选值列表',
  `unit` varchar(50) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT NULL COMMENT '计量单位',
  `sort` tinyint(0) UNSIGNED NULL DEFAULT 0 COMMENT '自定义排序序号',
  `is_allow_customize` tinyint(0) UNSIGNED NULL DEFAULT 0 COMMENT '是否允许自定义，1=允许，0=禁止',
  `gmt_create` datetime(0) NULL DEFAULT NULL COMMENT '数据创建时间',
  `gmt_modified` datetime(0) NULL DEFAULT NULL COMMENT '数据最后修改时间',
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 11 CHARACTER SET = utf8mb4 COLLATE = utf8mb4_0900_ai_ci COMMENT = '属性' ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of pms_attribute
-- ----------------------------
INSERT INTO `pms_attribute` VALUES (1, NULL, '屏幕尺寸', '智能手机屏幕尺寸', 0, 1, '6.1,6.3', '英寸', 0, 1, NULL, NULL);
INSERT INTO `pms_attribute` VALUES (2, NULL, '屏幕尺寸', '笔记本电脑屏幕尺寸', 0, 1, '14,15', '英寸', 0, 1, NULL, NULL);
INSERT INTO `pms_attribute` VALUES (3, NULL, '颜色', '智能手机颜色', 0, 1, '黑色,金色,白色', NULL, 0, 1, NULL, NULL);
INSERT INTO `pms_attribute` VALUES (4, NULL, '颜色', '衬衣颜色', 0, 1, '白色,蓝色,灰色,黑色', NULL, 0, 1, NULL, NULL);
INSERT INTO `pms_attribute` VALUES (5, NULL, '运行内存', '智能手机运行内存', 0, 1, '4,8,16', 'GB', 0, 1, NULL, NULL);
INSERT INTO `pms_attribute` VALUES (6, NULL, 'CPU型号', '智能手机CPU型号', 0, 1, '骁龙870,骁龙880', NULL, 0, 1, NULL, NULL);
INSERT INTO `pms_attribute` VALUES (7, NULL, '机身毛重', '智能手机机身毛重', 0, 0, NULL, 'g', 0, 0, NULL, NULL);
INSERT INTO `pms_attribute` VALUES (8, NULL, '机身存储', '智能手机机身存储', 0, 1, '64,128,256,512', 'GB', 0, 0, NULL, NULL);
INSERT INTO `pms_attribute` VALUES (9, NULL, '操作系统', '智能手机操作系统', 0, 1, 'Android,iOS', NULL, 0, 0, NULL, NULL);
INSERT INTO `pms_attribute` VALUES (10, NULL, '操作系统', '电脑操作系统', 0, 1, '无,Windows 7,Windows 10,Ubuntu,Mac OS', NULL, 0, 0, NULL, NULL);
