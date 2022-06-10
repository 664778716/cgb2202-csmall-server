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

 Date: 09/06/2022 10:09:18
*/

SET NAMES utf8mb4;
SET FOREIGN_KEY_CHECKS = 0;

-- ----------------------------
-- Table structure for pms_spu
-- ----------------------------
DROP TABLE IF EXISTS `pms_spu`;
CREATE TABLE `pms_spu`  (
  `id` bigint(0) UNSIGNED NOT NULL COMMENT '记录id',
  `name` varchar(50) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT NULL COMMENT 'SPU名称',
  `type_number` varchar(50) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT NULL COMMENT 'SPU编号',
  `title` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT NULL COMMENT '标题',
  `description` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT NULL COMMENT '简介',
  `list_price` decimal(10, 2) NULL DEFAULT NULL COMMENT '价格（显示在列表中）',
  `stock` int(0) UNSIGNED NULL DEFAULT 0 COMMENT '当前库存（冗余）',
  `stock_threshold` int(0) UNSIGNED NULL DEFAULT 0 COMMENT '库存预警阈值（冗余）',
  `unit` varchar(50) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT NULL COMMENT '计件单位',
  `brand_id` bigint(0) UNSIGNED NULL DEFAULT NULL COMMENT '品牌id',
  `brand_name` varchar(50) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT NULL COMMENT '品牌名称（冗余）',
  `category_id` bigint(0) UNSIGNED NULL DEFAULT NULL COMMENT '类别id',
  `category_name` varchar(50) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT NULL COMMENT '类别名称（冗余）',
  `attribute_template_id` bigint(0) UNSIGNED NULL DEFAULT NULL COMMENT '属性模版id',
  `album_id` bigint(0) UNSIGNED NULL DEFAULT NULL COMMENT '相册id',
  `pictures` varchar(500) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT NULL COMMENT '组图URLs，使用JSON数组表示',
  `keywords` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT NULL COMMENT '关键词列表，各关键词使用英文的逗号分隔',
  `tags` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT NULL COMMENT '标签列表，各标签使用英文的逗号分隔，原则上最多3个',
  `sales` int(0) UNSIGNED NULL DEFAULT 0 COMMENT '销量（冗余）',
  `comment_count` int(0) UNSIGNED NULL DEFAULT 0 COMMENT '买家评论数量总和（冗余）',
  `positive_comment_count` int(0) UNSIGNED NULL DEFAULT 0 COMMENT '买家好评数量总和（冗余）',
  `sort` tinyint(0) UNSIGNED NULL DEFAULT 0 COMMENT '自定义排序序号',
  `is_deleted` tinyint(0) UNSIGNED NULL DEFAULT 0 COMMENT '是否标记为删除，1=已删除，0=未删除',
  `is_published` tinyint(0) UNSIGNED NULL DEFAULT 0 COMMENT '是否上架（发布），1=已上架，0=未上架（下架）',
  `is_new_arrival` tinyint(0) UNSIGNED NULL DEFAULT 0 COMMENT '是否新品，1=新品，0=非新品',
  `is_recommend` tinyint(0) UNSIGNED NULL DEFAULT 0 COMMENT '是否推荐，1=推荐，0=不推荐',
  `is_checked` tinyint(0) UNSIGNED NULL DEFAULT 0 COMMENT '是否已审核，1=已审核，0=未审核',
  `check_user` varchar(50) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT NULL COMMENT '审核人（冗余）',
  `gmt_check` datetime(0) NULL DEFAULT NULL COMMENT '审核通过时间（冗余）',
  `gmt_create` datetime(0) NULL DEFAULT NULL COMMENT '数据创建时间',
  `gmt_modified` datetime(0) NULL DEFAULT NULL COMMENT '数据最后修改时间',
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB CHARACTER SET = utf8mb4 COLLATE = utf8mb4_0900_ai_ci COMMENT = 'SPU（Standard Product Unit）' ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of pms_spu
-- ----------------------------
INSERT INTO `pms_spu` VALUES (202112010000001, 'iPhone 13', 'A2404', '苹果手机iPhone 13（A2404）', '2021年新款，全网首发', 5199.99, 5000, 20, '部', 3, '苹果', 3, '智能手机', NULL, NULL, NULL, 'ip13,iPhone13,苹果13', '20w快充,NFC,无线充电', 0, 0, 0, 0, 0, 0, 0, 0, 0, NULL, NULL, NULL, NULL);
INSERT INTO `pms_spu` VALUES (202112010000002, '小米11 Ultra', 'M112021', '小米11 Ultra（M112021）', '2021年最新旗舰机', 5899.99, 8000, 20, '部', 2, '小米', 3, '智能手机', NULL, NULL, NULL, 'mi11,xiaomi11,ultra', '67w快充,1亿像素,5000毫安电池', 0, 0, 0, 0, 0, 0, 0, 0, 0, NULL, NULL, NULL, NULL);

SET FOREIGN_KEY_CHECKS = 1;
