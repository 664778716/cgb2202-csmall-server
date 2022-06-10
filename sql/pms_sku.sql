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

 Date: 09/06/2022 10:09:08
*/

SET NAMES utf8mb4;
SET FOREIGN_KEY_CHECKS = 0;

-- ----------------------------
-- Table structure for pms_sku
-- ----------------------------
DROP TABLE IF EXISTS `pms_sku`;
CREATE TABLE `pms_sku`  (
  `id` bigint(0) UNSIGNED NOT NULL COMMENT '记录id',
  `spu_id` bigint(0) UNSIGNED NULL DEFAULT NULL COMMENT 'SPU id',
  `title` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT NULL COMMENT '标题',
  `bar_code` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT NULL COMMENT '条型码',
  `attribute_template_id` bigint(0) UNSIGNED NULL DEFAULT NULL COMMENT '属性模版id',
  `specifications` varchar(2500) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT NULL COMMENT '全部属性，使用JSON格式表示（冗余）',
  `album_id` bigint(0) UNSIGNED NULL DEFAULT NULL COMMENT '相册id',
  `pictures` varchar(500) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT NULL COMMENT '组图URLs，使用JSON格式表示',
  `price` decimal(10, 2) NULL DEFAULT NULL COMMENT '单价',
  `stock` int(0) UNSIGNED NULL DEFAULT 0 COMMENT '当前库存',
  `stock_threshold` int(0) UNSIGNED NULL DEFAULT 0 COMMENT '库存预警阈值',
  `sales` int(0) UNSIGNED NULL DEFAULT 0 COMMENT '销量（冗余）',
  `comment_count` int(0) UNSIGNED NULL DEFAULT 0 COMMENT '买家评论数量总和（冗余）',
  `positive_comment_count` int(0) UNSIGNED NULL DEFAULT 0 COMMENT '买家好评数量总和（冗余）',
  `sort` tinyint(0) UNSIGNED NULL DEFAULT 0 COMMENT '自定义排序序号',
  `gmt_create` datetime(0) NULL DEFAULT NULL COMMENT '数据创建时间',
  `gmt_modified` datetime(0) NULL DEFAULT NULL COMMENT '数据最后修改时间',
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB CHARACTER SET = utf8mb4 COLLATE = utf8mb4_0900_ai_ci COMMENT = 'SKU（Stock Keeping Unit）' ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of pms_sku
-- ----------------------------
INSERT INTO `pms_sku` VALUES (202112010000001, 2, '2021年新款，小米11 Ultra黑色512G，16G超大内存120Hz高刷67w快充', NULL, 1, '{\"attributes\":[{\"id\":1,\"name\":\"屏幕尺寸\",\"value\":\"6.1寸\"},{\"id\":3,\"name\":\"颜色\",\"value\":\"黑色\"},{\"id\":5,\"name\":\"运行内存\",\"value\":\"16GB\"}]}', NULL, NULL, 6999.99, 3000, 50, 0, 0, 0, 0, NULL, NULL);
INSERT INTO `pms_sku` VALUES (202112010000002, 2, '2021年新款，小米11 Ultra白色512G，8G超大内存120Hz高刷67w快充', NULL, 1, '{\"attributes\":[{\"id\":1,\"name\":\"屏幕尺寸\",\"value\":\"6.1寸\"},{\"id\":3,\"name\":\"颜色\",\"value\":\"白色\"},{\"id\":5,\"name\":\"运行内存\",\"value\":\"8GB\"}]}', NULL, NULL, 6499.99, 3000, 50, 0, 0, 0, 0, NULL, NULL);

SET FOREIGN_KEY_CHECKS = 1;
