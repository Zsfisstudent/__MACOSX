/*
 Navicat Premium Data Transfer

 Source Server         : localhost_3306
 Source Server Type    : MySQL
 Source Server Version : 80028
 Source Host           : localhost:3306
 Source Schema         : veg_big_data

 Target Server Type    : MySQL
 Target Server Version : 80028
 File Encoding         : 65001

 Date: 30/09/2022 14:25:01
*/

SET NAMES utf8mb4;
SET FOREIGN_KEY_CHECKS = 0;

-- ----------------------------
-- Table structure for user
-- ----------------------------
DROP TABLE IF EXISTS `user`;
CREATE TABLE `user`  (
  `user_id` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NOT NULL COMMENT '用户账号',
  `user_name` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NOT NULL COMMENT '用户昵称',
  `user_password` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NOT NULL COMMENT '用户密码',
  PRIMARY KEY (`user_id`) USING BTREE
) ENGINE = InnoDB CHARACTER SET = utf8mb4 COLLATE = utf8mb4_0900_ai_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of user
-- ----------------------------

-- ----------------------------
-- Table structure for veg_infomation
-- ----------------------------
DROP TABLE IF EXISTS `veg_infomation`;
CREATE TABLE `veg_infomation`  (
  `veg_name` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NOT NULL,
  `veg_refrence` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NOT NULL,
  `veg_price` decimal(10, 2) NOT NULL,
  `veg_date` date NOT NULL
) ENGINE = InnoDB CHARACTER SET = utf8mb4 COLLATE = utf8mb4_0900_ai_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of veg_infomation
-- ----------------------------
INSERT INTO `veg_infomation` VALUES ('条形辣椒干', '贵州省遵义虾子辣椒批发市场', 13.00, '2022-09-30');
INSERT INTO `veg_infomation` VALUES ('条形辣椒干', '贵州省遵义虾子辣椒批发市场', 15.50, '2022-09-30');
INSERT INTO `veg_infomation` VALUES ('圆形辣椒干', '贵州省遵义虾子辣椒批发市场', 15.50, '2022-09-30');
INSERT INTO `veg_infomation` VALUES ('低辣小椒', '贵州省遵义虾子辣椒批发市场', 14.00, '2022-09-30');
INSERT INTO `veg_infomation` VALUES ('高辣小椒', '贵州省遵义虾子辣椒批发市场', 13.00, '2022-09-30');
INSERT INTO `veg_infomation` VALUES ('高辣小椒', '贵州省遵义虾子辣椒批发市场', 13.50, '2022-09-30');
INSERT INTO `veg_infomation` VALUES ('高辣小椒', '贵州省遵义虾子辣椒批发市场', 13.00, '2022-09-30');
INSERT INTO `veg_infomation` VALUES ('高辣小椒', '贵州省遵义虾子辣椒批发市场', 14.00, '2022-09-30');
INSERT INTO `veg_infomation` VALUES ('低辣小椒', '贵州省遵义虾子辣椒批发市场', 19.00, '2022-09-30');
INSERT INTO `veg_infomation` VALUES ('大白菜', '青岛莱西市东庄头蔬菜批发市场服务有限公司', 0.60, '2022-09-30');
INSERT INTO `veg_infomation` VALUES ('土豆', '青岛莱西市东庄头蔬菜批发市场服务有限公司', 0.90, '2022-09-30');
INSERT INTO `veg_infomation` VALUES ('西红柿', '青岛莱西市东庄头蔬菜批发市场服务有限公司', 1.80, '2022-09-30');
INSERT INTO `veg_infomation` VALUES ('芹菜', '青岛莱西市东庄头蔬菜批发市场服务有限公司', 1.00, '2022-09-30');
INSERT INTO `veg_infomation` VALUES ('黄瓜', '青岛莱西市东庄头蔬菜批发市场服务有限公司', 1.80, '2022-09-30');
INSERT INTO `veg_infomation` VALUES ('青椒', '青岛莱西市东庄头蔬菜批发市场服务有限公司', 2.00, '2022-09-30');
INSERT INTO `veg_infomation` VALUES ('白萝卜', '青岛莱西市东庄头蔬菜批发市场服务有限公司', 0.70, '2022-09-30');
INSERT INTO `veg_infomation` VALUES ('葱头', '青岛莱西市东庄头蔬菜批发市场服务有限公司', 0.75, '2022-09-30');
INSERT INTO `veg_infomation` VALUES ('茄子', '青岛莱西市东庄头蔬菜批发市场服务有限公司', 1.00, '2022-09-30');
INSERT INTO `veg_infomation` VALUES ('冬瓜', '青岛莱西市东庄头蔬菜批发市场服务有限公司', 0.65, '2022-09-30');
INSERT INTO `veg_infomation` VALUES ('胡萝卜', '青岛莱西市东庄头蔬菜批发市场服务有限公司', 0.70, '2022-09-30');
INSERT INTO `veg_infomation` VALUES ('菜花', '青岛莱西市东庄头蔬菜批发市场服务有限公司', 2.20, '2022-09-30');
INSERT INTO `veg_infomation` VALUES ('大蒜', '青岛莱西市东庄头蔬菜批发市场服务有限公司', 2.40, '2022-09-30');
INSERT INTO `veg_infomation` VALUES ('豆角', '青岛莱西市东庄头蔬菜批发市场服务有限公司', 2.50, '2022-09-30');
INSERT INTO `veg_infomation` VALUES ('洋白菜', '青岛莱西市东庄头蔬菜批发市场服务有限公司', 0.80, '2022-09-30');
INSERT INTO `veg_infomation` VALUES ('生姜', '青岛莱西市东庄头蔬菜批发市场服务有限公司', 2.80, '2022-09-30');
INSERT INTO `veg_infomation` VALUES ('条形辣椒干', '贵州省遵义虾子辣椒批发市场', 13.00, '2022-09-30');
INSERT INTO `veg_infomation` VALUES ('条形辣椒干', '贵州省遵义虾子辣椒批发市场', 15.50, '2022-09-30');
INSERT INTO `veg_infomation` VALUES ('圆形辣椒干', '贵州省遵义虾子辣椒批发市场', 15.50, '2022-09-30');
INSERT INTO `veg_infomation` VALUES ('低辣小椒', '贵州省遵义虾子辣椒批发市场', 14.00, '2022-09-30');
INSERT INTO `veg_infomation` VALUES ('高辣小椒', '贵州省遵义虾子辣椒批发市场', 13.00, '2022-09-30');
INSERT INTO `veg_infomation` VALUES ('高辣小椒', '贵州省遵义虾子辣椒批发市场', 13.50, '2022-09-30');
INSERT INTO `veg_infomation` VALUES ('高辣小椒', '贵州省遵义虾子辣椒批发市场', 13.00, '2022-09-30');
INSERT INTO `veg_infomation` VALUES ('高辣小椒', '贵州省遵义虾子辣椒批发市场', 14.00, '2022-09-30');
INSERT INTO `veg_infomation` VALUES ('低辣小椒', '贵州省遵义虾子辣椒批发市场', 19.00, '2022-09-30');
INSERT INTO `veg_infomation` VALUES ('大白菜', '青岛莱西市东庄头蔬菜批发市场服务有限公司', 0.60, '2022-09-30');
INSERT INTO `veg_infomation` VALUES ('土豆', '青岛莱西市东庄头蔬菜批发市场服务有限公司', 0.90, '2022-09-30');
INSERT INTO `veg_infomation` VALUES ('西红柿', '青岛莱西市东庄头蔬菜批发市场服务有限公司', 1.80, '2022-09-30');
INSERT INTO `veg_infomation` VALUES ('芹菜', '青岛莱西市东庄头蔬菜批发市场服务有限公司', 1.00, '2022-09-30');
INSERT INTO `veg_infomation` VALUES ('黄瓜', '青岛莱西市东庄头蔬菜批发市场服务有限公司', 1.80, '2022-09-30');
INSERT INTO `veg_infomation` VALUES ('青椒', '青岛莱西市东庄头蔬菜批发市场服务有限公司', 2.00, '2022-09-30');
INSERT INTO `veg_infomation` VALUES ('白萝卜', '青岛莱西市东庄头蔬菜批发市场服务有限公司', 0.70, '2022-09-30');
INSERT INTO `veg_infomation` VALUES ('葱头', '青岛莱西市东庄头蔬菜批发市场服务有限公司', 0.75, '2022-09-30');
INSERT INTO `veg_infomation` VALUES ('茄子', '青岛莱西市东庄头蔬菜批发市场服务有限公司', 1.00, '2022-09-30');
INSERT INTO `veg_infomation` VALUES ('冬瓜', '青岛莱西市东庄头蔬菜批发市场服务有限公司', 0.65, '2022-09-30');
INSERT INTO `veg_infomation` VALUES ('胡萝卜', '青岛莱西市东庄头蔬菜批发市场服务有限公司', 0.70, '2022-09-30');
INSERT INTO `veg_infomation` VALUES ('菜花', '青岛莱西市东庄头蔬菜批发市场服务有限公司', 2.20, '2022-09-30');
INSERT INTO `veg_infomation` VALUES ('大蒜', '青岛莱西市东庄头蔬菜批发市场服务有限公司', 2.40, '2022-09-30');
INSERT INTO `veg_infomation` VALUES ('豆角', '青岛莱西市东庄头蔬菜批发市场服务有限公司', 2.50, '2022-09-30');
INSERT INTO `veg_infomation` VALUES ('洋白菜', '青岛莱西市东庄头蔬菜批发市场服务有限公司', 0.80, '2022-09-30');
INSERT INTO `veg_infomation` VALUES ('生姜', '青岛莱西市东庄头蔬菜批发市场服务有限公司', 2.80, '2022-09-30');
INSERT INTO `veg_infomation` VALUES ('油菜', '青岛莱西市东庄头蔬菜批发市场服务有限公司', 0.60, '2022-09-30');
INSERT INTO `veg_infomation` VALUES ('西葫芦', '青岛莱西市东庄头蔬菜批发市场服务有限公司', 1.50, '2022-09-30');
INSERT INTO `veg_infomation` VALUES ('香菜', '青岛莱西市东庄头蔬菜批发市场服务有限公司', 3.20, '2022-09-30');
INSERT INTO `veg_infomation` VALUES ('南瓜', '青岛莱西市东庄头蔬菜批发市场服务有限公司', 2.00, '2022-09-30');
INSERT INTO `veg_infomation` VALUES ('香菇', '青岛莱西市东庄头蔬菜批发市场服务有限公司', 4.50, '2022-09-30');
INSERT INTO `veg_infomation` VALUES ('山药', '青岛莱西市东庄头蔬菜批发市场服务有限公司', 4.00, '2022-09-30');
INSERT INTO `veg_infomation` VALUES ('尖椒', '青岛莱西市东庄头蔬菜批发市场服务有限公司', 2.70, '2022-09-30');
INSERT INTO `veg_infomation` VALUES ('西兰花', '青岛莱西市东庄头蔬菜批发市场服务有限公司', 2.60, '2022-09-30');
INSERT INTO `veg_infomation` VALUES ('丝瓜', '青岛莱西市东庄头蔬菜批发市场服务有限公司', 1.70, '2022-09-30');
INSERT INTO `veg_infomation` VALUES ('芋头', '青岛莱西市东庄头蔬菜批发市场服务有限公司', 2.30, '2022-09-30');
INSERT INTO `veg_infomation` VALUES ('萝卜', '青岛莱西市东庄头蔬菜批发市场服务有限公司', 1.00, '2022-09-30');
INSERT INTO `veg_infomation` VALUES ('葱', '青岛莱西市东庄头蔬菜批发市场服务有限公司', 1.80, '2022-09-30');
INSERT INTO `veg_infomation` VALUES ('良薯', '青岛莱西市东庄头蔬菜批发市场服务有限公司', 1.50, '2022-09-30');
INSERT INTO `veg_infomation` VALUES ('心里美萝卜', '青岛莱西市东庄头蔬菜批发市场服务有限公司', 1.00, '2022-09-30');
INSERT INTO `veg_infomation` VALUES ('芸豆鲜食', '青岛莱西市东庄头蔬菜批发市场服务有限公司', 3.00, '2022-09-30');
INSERT INTO `veg_infomation` VALUES ('土豆', '甘肃邦农农产品批发市场', 1.20, '2022-09-30');
INSERT INTO `veg_infomation` VALUES ('西红柿', '甘肃邦农农产品批发市场', 1.10, '2022-09-30');
INSERT INTO `veg_infomation` VALUES ('芹菜', '甘肃邦农农产品批发市场', 0.90, '2022-09-30');
INSERT INTO `veg_infomation` VALUES ('黄瓜', '甘肃邦农农产品批发市场', 0.90, '2022-09-30');
INSERT INTO `veg_infomation` VALUES ('青椒', '甘肃邦农农产品批发市场', 2.10, '2022-09-30');
INSERT INTO `veg_infomation` VALUES ('冬瓜', '甘肃邦农农产品批发市场', 1.35, '2022-09-30');
INSERT INTO `veg_infomation` VALUES ('胡萝卜', '甘肃邦农农产品批发市场', 1.40, '2022-09-30');
INSERT INTO `veg_infomation` VALUES ('菜花', '甘肃邦农农产品批发市场', 2.40, '2022-09-30');
INSERT INTO `veg_infomation` VALUES ('豆角', '甘肃邦农农产品批发市场', 3.90, '2022-09-30');
INSERT INTO `veg_infomation` VALUES ('生姜', '甘肃邦农农产品批发市场', 2.85, '2022-09-30');
INSERT INTO `veg_infomation` VALUES ('西葫芦', '甘肃邦农农产品批发市场', 0.90, '2022-09-30');
INSERT INTO `veg_infomation` VALUES ('莴笋', '甘肃邦农农产品批发市场', 1.40, '2022-09-30');
INSERT INTO `veg_infomation` VALUES ('南瓜', '甘肃邦农农产品批发市场', 1.40, '2022-09-30');
INSERT INTO `veg_infomation` VALUES ('香菇', '甘肃邦农农产品批发市场', 6.85, '2022-09-30');
INSERT INTO `veg_infomation` VALUES ('苦瓜', '甘肃邦农农产品批发市场', 4.40, '2022-09-30');
INSERT INTO `veg_infomation` VALUES ('平菇', '甘肃邦农农产品批发市场', 3.85, '2022-09-30');
INSERT INTO `veg_infomation` VALUES ('尖椒', '甘肃邦农农产品批发市场', 2.40, '2022-09-30');
INSERT INTO `veg_infomation` VALUES ('西兰花', '甘肃邦农农产品批发市场', 2.35, '2022-09-30');
INSERT INTO `veg_infomation` VALUES ('豇豆', '甘肃邦农农产品批发市场', 2.40, '2022-09-30');
INSERT INTO `veg_infomation` VALUES ('金针菇', '甘肃邦农农产品批发市场', 4.40, '2022-09-30');
INSERT INTO `veg_infomation` VALUES ('长茄子', '甘肃邦农农产品批发市场', 1.90, '2022-09-30');
INSERT INTO `veg_infomation` VALUES ('杏鲍菇', '甘肃邦农农产品批发市场', 3.85, '2022-09-30');
INSERT INTO `veg_infomation` VALUES ('大白菜', '甘肃邦农农产品批发市场', 1.30, '2022-09-30');
INSERT INTO `veg_infomation` VALUES ('韭菜', '甘肃邦农农产品批发市场', 2.40, '2022-09-30');
INSERT INTO `veg_infomation` VALUES ('白萝卜', '甘肃邦农农产品批发市场', 1.40, '2022-09-30');
INSERT INTO `veg_infomation` VALUES ('生菜', '甘肃邦农农产品批发市场', 2.90, '2022-09-30');
INSERT INTO `veg_infomation` VALUES ('菠菜', '甘肃邦农农产品批发市场', 1.90, '2022-09-30');
INSERT INTO `veg_infomation` VALUES ('油菜', '甘肃邦农农产品批发市场', 3.35, '2022-09-30');
INSERT INTO `veg_infomation` VALUES ('香菜', '甘肃邦农农产品批发市场', 2.35, '2022-09-30');
INSERT INTO `veg_infomation` VALUES ('蒜薹', '甘肃邦农农产品批发市场', 3.65, '2022-09-30');
INSERT INTO `veg_infomation` VALUES ('小白菜', '甘肃邦农农产品批发市场', 2.40, '2022-09-30');
INSERT INTO `veg_infomation` VALUES ('茼蒿', '甘肃邦农农产品批发市场', 2.25, '2022-09-30');
INSERT INTO `veg_infomation` VALUES ('蒜苗', '甘肃邦农农产品批发市场', 2.90, '2022-09-30');
INSERT INTO `veg_infomation` VALUES ('油麦菜', '甘肃邦农农产品批发市场', 2.40, '2022-09-30');
INSERT INTO `veg_infomation` VALUES ('红萝卜', '甘肃邦农农产品批发市场', 1.10, '2022-09-30');
INSERT INTO `veg_infomation` VALUES ('大蒜', '宁夏四季鲜农产品综合批发市场', 2.50, '2022-09-30');
INSERT INTO `veg_infomation` VALUES ('豆角', '宁夏四季鲜农产品综合批发市场', 2.15, '2022-09-30');
INSERT INTO `veg_infomation` VALUES ('生菜', '宁夏四季鲜农产品综合批发市场', 1.15, '2022-09-30');
INSERT INTO `veg_infomation` VALUES ('菠菜', '宁夏四季鲜农产品综合批发市场', 1.75, '2022-09-30');
INSERT INTO `veg_infomation` VALUES ('生姜', '宁夏四季鲜农产品综合批发市场', 2.00, '2022-09-30');
INSERT INTO `veg_infomation` VALUES ('油菜', '宁夏四季鲜农产品综合批发市场', 0.85, '2022-09-30');
INSERT INTO `veg_infomation` VALUES ('西葫芦', '宁夏四季鲜农产品综合批发市场', 0.45, '2022-09-30');
INSERT INTO `veg_infomation` VALUES ('香菜', '宁夏四季鲜农产品综合批发市场', 1.75, '2022-09-30');
INSERT INTO `veg_infomation` VALUES ('蒜薹', '宁夏四季鲜农产品综合批发市场', 3.10, '2022-09-30');
INSERT INTO `veg_infomation` VALUES ('莲藕', '宁夏四季鲜农产品综合批发市场', 2.90, '2022-09-30');
INSERT INTO `veg_infomation` VALUES ('南瓜', '宁夏四季鲜农产品综合批发市场', 0.90, '2022-09-30');
INSERT INTO `veg_infomation` VALUES ('苦瓜', '宁夏四季鲜农产品综合批发市场', 2.45, '2022-09-30');
INSERT INTO `veg_infomation` VALUES ('山药', '宁夏四季鲜农产品综合批发市场', 6.00, '2022-09-30');
INSERT INTO `veg_infomation` VALUES ('小白菜', '宁夏四季鲜农产品综合批发市场', 0.97, '2022-09-30');
INSERT INTO `veg_infomation` VALUES ('西兰花', '宁夏四季鲜农产品综合批发市场', 1.65, '2022-09-30');
INSERT INTO `veg_infomation` VALUES ('茼蒿', '宁夏四季鲜农产品综合批发市场', 1.00, '2022-09-30');
INSERT INTO `veg_infomation` VALUES ('油麦菜', '宁夏四季鲜农产品综合批发市场', 1.20, '2022-09-30');
INSERT INTO `veg_infomation` VALUES ('长茄子', '宁夏四季鲜农产品综合批发市场', 1.15, '2022-09-30');
INSERT INTO `veg_infomation` VALUES ('圆茄子', '宁夏四季鲜农产品综合批发市场', 0.70, '2022-09-30');
INSERT INTO `veg_infomation` VALUES ('甘蓝', '宁夏四季鲜农产品综合批发市场', 0.90, '2022-09-30');
INSERT INTO `veg_infomation` VALUES ('西红柿', '兰州国际高原夏菜副食品采购中心', 1.39, '2022-09-30');
INSERT INTO `veg_infomation` VALUES ('芹菜', '兰州国际高原夏菜副食品采购中心', 1.20, '2022-09-30');
INSERT INTO `veg_infomation` VALUES ('黄瓜', '兰州国际高原夏菜副食品采购中心', 1.16, '2022-09-30');
INSERT INTO `veg_infomation` VALUES ('青椒', '兰州国际高原夏菜副食品采购中心', 3.24, '2022-09-30');
INSERT INTO `veg_infomation` VALUES ('白萝卜', '兰州国际高原夏菜副食品采购中心', 0.74, '2022-09-30');
INSERT INTO `veg_infomation` VALUES ('冬瓜', '兰州国际高原夏菜副食品采购中心', 1.11, '2022-09-30');
INSERT INTO `veg_infomation` VALUES ('菜花', '兰州国际高原夏菜副食品采购中心', 2.04, '2022-09-30');
INSERT INTO `veg_infomation` VALUES ('大蒜', '兰州国际高原夏菜副食品采购中心', 3.06, '2022-09-30');
INSERT INTO `veg_infomation` VALUES ('豆角', '兰州国际高原夏菜副食品采购中心', 3.70, '2022-09-30');
INSERT INTO `veg_infomation` VALUES ('西葫芦', '兰州国际高原夏菜副食品采购中心', 1.39, '2022-09-30');
INSERT INTO `veg_infomation` VALUES ('蒜薹', '兰州国际高原夏菜副食品采购中心', 5.56, '2022-09-30');
INSERT INTO `veg_infomation` VALUES ('莲藕', '兰州国际高原夏菜副食品采购中心', 2.78, '2022-09-30');
INSERT INTO `veg_infomation` VALUES ('莴笋', '兰州国际高原夏菜副食品采购中心', 1.39, '2022-09-30');
INSERT INTO `veg_infomation` VALUES ('南瓜', '兰州国际高原夏菜副食品采购中心', 1.48, '2022-09-30');
INSERT INTO `veg_infomation` VALUES ('香菇', '兰州国际高原夏菜副食品采购中心', 5.56, '2022-09-30');
INSERT INTO `veg_infomation` VALUES ('苦瓜', '兰州国际高原夏菜副食品采购中心', 2.22, '2022-09-30');
INSERT INTO `veg_infomation` VALUES ('平菇', '兰州国际高原夏菜副食品采购中心', 5.56, '2022-09-30');
INSERT INTO `veg_infomation` VALUES ('西兰花', '兰州国际高原夏菜副食品采购中心', 2.04, '2022-09-30');
INSERT INTO `veg_infomation` VALUES ('小葱', '兰州国际高原夏菜副食品采购中心', 3.24, '2022-09-30');
INSERT INTO `veg_infomation` VALUES ('豇豆', '兰州国际高原夏菜副食品采购中心', 4.17, '2022-09-30');
INSERT INTO `veg_infomation` VALUES ('西洋芹', '兰州国际高原夏菜副食品采购中心', 1.20, '2022-09-30');
INSERT INTO `veg_infomation` VALUES ('金针菇', '兰州国际高原夏菜副食品采购中心', 3.24, '2022-09-30');
INSERT INTO `veg_infomation` VALUES ('绿豆芽', '兰州国际高原夏菜副食品采购中心', 1.76, '2022-09-30');
INSERT INTO `veg_infomation` VALUES ('黄豆芽', '兰州国际高原夏菜副食品采购中心', 1.67, '2022-09-30');
INSERT INTO `veg_infomation` VALUES ('红椒', '兰州国际高原夏菜副食品采购中心', 2.78, '2022-09-30');
INSERT INTO `veg_infomation` VALUES ('长茄子', '兰州国际高原夏菜副食品采购中心', 2.31, '2022-09-30');
INSERT INTO `veg_infomation` VALUES ('荷兰豆', '兰州国际高原夏菜副食品采购中心', 8.34, '2022-09-30');
INSERT INTO `veg_infomation` VALUES ('圆茄子', '兰州国际高原夏菜副食品采购中心', 1.39, '2022-09-30');
INSERT INTO `veg_infomation` VALUES ('青笋', '兰州国际高原夏菜副食品采购中心', 1.39, '2022-09-30');
INSERT INTO `veg_infomation` VALUES ('青冬瓜', '兰州国际高原夏菜副食品采购中心', 1.11, '2022-09-30');
INSERT INTO `veg_infomation` VALUES ('鸡腿菇', '兰州国际高原夏菜副食品采购中心', 3.80, '2022-09-30');
INSERT INTO `veg_infomation` VALUES ('玉米棒', '兰州国际高原夏菜副食品采购中心', 1.85, '2022-09-30');
INSERT INTO `veg_infomation` VALUES ('佛手瓜', '兰州国际高原夏菜副食品采购中心', 2.31, '2022-09-30');
INSERT INTO `veg_infomation` VALUES ('杏鲍菇', '兰州国际高原夏菜副食品采购中心', 3.24, '2022-09-30');
INSERT INTO `veg_infomation` VALUES ('心里美萝卜', '兰州国际高原夏菜副食品采购中心', 1.20, '2022-09-30');
INSERT INTO `veg_infomation` VALUES ('鲜食玉米', '兰州国际高原夏菜副食品采购中心', 1.85, '2022-09-30');
INSERT INTO `veg_infomation` VALUES ('条形辣椒干', '兰州国际高原夏菜副食品采购中心', 5.93, '2022-09-30');
INSERT INTO `veg_infomation` VALUES ('红蒜', '兰州国际高原夏菜副食品采购中心', 3.06, '2022-09-30');
INSERT INTO `veg_infomation` VALUES ('白蒜', '兰州国际高原夏菜副食品采购中心', 2.78, '2022-09-30');
INSERT INTO `veg_infomation` VALUES ('大辣椒甜', '兰州国际高原夏菜副食品采购中心', 3.47, '2022-09-30');
INSERT INTO `veg_infomation` VALUES ('条形辣椒干', '兰州国际高原夏菜副食品采购中心', 6.21, '2022-09-30');
INSERT INTO `veg_infomation` VALUES ('大白菜', '兰州国际高原夏菜副食品采购中心', 0.74, '2022-09-30');
INSERT INTO `veg_infomation` VALUES ('土豆', '兰州国际高原夏菜副食品采购中心', 1.02, '2022-09-30');
INSERT INTO `veg_infomation` VALUES ('韭菜', '兰州国际高原夏菜副食品采购中心', 2.31, '2022-09-30');
INSERT INTO `veg_infomation` VALUES ('大葱', '兰州国际高原夏菜副食品采购中心', 1.39, '2022-09-30');
INSERT INTO `veg_infomation` VALUES ('葱头', '兰州国际高原夏菜副食品采购中心', 0.74, '2022-09-30');
INSERT INTO `veg_infomation` VALUES ('胡萝卜', '兰州国际高原夏菜副食品采购中心', 1.39, '2022-09-30');
INSERT INTO `veg_infomation` VALUES ('生菜', '兰州国际高原夏菜副食品采购中心', 2.78, '2022-09-30');
INSERT INTO `veg_infomation` VALUES ('菠菜', '兰州国际高原夏菜副食品采购中心', 1.39, '2022-09-30');
INSERT INTO `veg_infomation` VALUES ('生姜', '兰州国际高原夏菜副食品采购中心', 3.24, '2022-09-30');
INSERT INTO `veg_infomation` VALUES ('油菜', '兰州国际高原夏菜副食品采购中心', 2.22, '2022-09-30');
INSERT INTO `veg_infomation` VALUES ('香菜', '兰州国际高原夏菜副食品采购中心', 2.78, '2022-09-30');
INSERT INTO `veg_infomation` VALUES ('山药', '兰州国际高原夏菜副食品采购中心', 3.52, '2022-09-30');
INSERT INTO `veg_infomation` VALUES ('小白菜', '兰州国际高原夏菜副食品采购中心', 1.39, '2022-09-30');
INSERT INTO `veg_infomation` VALUES ('茼蒿', '兰州国际高原夏菜副食品采购中心', 1.85, '2022-09-30');
INSERT INTO `veg_infomation` VALUES ('蒜苗', '兰州国际高原夏菜副食品采购中心', 2.31, '2022-09-30');
INSERT INTO `veg_infomation` VALUES ('油麦菜', '兰州国际高原夏菜副食品采购中心', 1.48, '2022-09-30');
INSERT INTO `veg_infomation` VALUES ('芋头', '兰州国际高原夏菜副食品采购中心', 3.24, '2022-09-30');
INSERT INTO `veg_infomation` VALUES ('茴香', '兰州国际高原夏菜副食品采购中心', 2.59, '2022-09-30');
INSERT INTO `veg_infomation` VALUES ('大白菜', '吴忠市鑫鲜农副产品市场有限公司', 1.00, '2022-09-30');
INSERT INTO `veg_infomation` VALUES ('土豆', '吴忠市鑫鲜农副产品市场有限公司', 1.30, '2022-09-30');
INSERT INTO `veg_infomation` VALUES ('西红柿', '吴忠市鑫鲜农副产品市场有限公司', 1.50, '2022-09-30');
INSERT INTO `veg_infomation` VALUES ('芹菜', '吴忠市鑫鲜农副产品市场有限公司', 1.20, '2022-09-30');
INSERT INTO `veg_infomation` VALUES ('黄瓜', '吴忠市鑫鲜农副产品市场有限公司', 1.30, '2022-09-30');
INSERT INTO `veg_infomation` VALUES ('青椒', '吴忠市鑫鲜农副产品市场有限公司', 3.50, '2022-09-30');
INSERT INTO `veg_infomation` VALUES ('韭菜', '吴忠市鑫鲜农副产品市场有限公司', 3.00, '2022-09-30');
INSERT INTO `veg_infomation` VALUES ('大葱', '吴忠市鑫鲜农副产品市场有限公司', 2.00, '2022-09-30');
INSERT INTO `veg_infomation` VALUES ('白萝卜', '吴忠市鑫鲜农副产品市场有限公司', 1.20, '2022-09-30');
INSERT INTO `veg_infomation` VALUES ('葱头', '吴忠市鑫鲜农副产品市场有限公司', 1.00, '2022-09-30');
INSERT INTO `veg_infomation` VALUES ('冬瓜', '吴忠市鑫鲜农副产品市场有限公司', 1.00, '2022-09-30');
INSERT INTO `veg_infomation` VALUES ('胡萝卜', '吴忠市鑫鲜农副产品市场有限公司', 1.20, '2022-09-30');
INSERT INTO `veg_infomation` VALUES ('菜花', '吴忠市鑫鲜农副产品市场有限公司', 2.00, '2022-09-30');
INSERT INTO `veg_infomation` VALUES ('大蒜', '吴忠市鑫鲜农副产品市场有限公司', 4.00, '2022-09-30');
INSERT INTO `veg_infomation` VALUES ('豆角', '吴忠市鑫鲜农副产品市场有限公司', 3.00, '2022-09-30');
INSERT INTO `veg_infomation` VALUES ('生菜', '吴忠市鑫鲜农副产品市场有限公司', 2.50, '2022-09-30');
INSERT INTO `veg_infomation` VALUES ('菠菜', '吴忠市鑫鲜农副产品市场有限公司', 1.40, '2022-09-30');
INSERT INTO `veg_infomation` VALUES ('生姜', '吴忠市鑫鲜农副产品市场有限公司', 3.00, '2022-09-30');
INSERT INTO `veg_infomation` VALUES ('油菜', '吴忠市鑫鲜农副产品市场有限公司', 1.50, '2022-09-30');
INSERT INTO `veg_infomation` VALUES ('西葫芦', '吴忠市鑫鲜农副产品市场有限公司', 1.00, '2022-09-30');
INSERT INTO `veg_infomation` VALUES ('香菜', '吴忠市鑫鲜农副产品市场有限公司', 2.00, '2022-09-30');

SET FOREIGN_KEY_CHECKS = 1;
