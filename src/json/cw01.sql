/*
 Navicat Premium Data Transfer

 Source Server         : cw01
 Source Server Type    : MySQL
 Source Server Version : 50717
 Source Host           : localhost:3306
 Source Schema         : cw01

 Target Server Type    : MySQL
 Target Server Version : 50717
 File Encoding         : 65001

 Date: 24/07/2023 09:15:27
*/

SET NAMES utf8mb4;
SET FOREIGN_KEY_CHECKS = 0;

-- ----------------------------
-- Table structure for it1
-- ----------------------------
DROP TABLE IF EXISTS `it1`;
CREATE TABLE `it1`  (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `src` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `alt` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 4 CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of it1
-- ----------------------------
INSERT INTO `it1` VALUES (1, 'src/img/logo/zh-logo.png', 'image1');
INSERT INTO `it1` VALUES (2, 'src/img/linshi/5.jpg', 'image2');
INSERT INTO `it1` VALUES (3, 'src/img/linshi/6.jpg', 'image3');

-- ----------------------------
-- Table structure for it2
-- ----------------------------
DROP TABLE IF EXISTS `it2`;
CREATE TABLE `it2`  (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `src` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `h5` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `pf` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 4 CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of it2
-- ----------------------------
INSERT INTO `it2` VALUES (1, 'src/img/linshi/7.jpg', '公司团队', '[\"人工智能\",\"智能制造\",\"工业机器人\"]');
INSERT INTO `it2` VALUES (2, 'src/img/linshi/7.jpg', '公司团队', '[\"人工智能\",\"智能制造\",\"工业机器人\"]');
INSERT INTO `it2` VALUES (3, 'src/img/linshi/7.jpg', '公司团队', '[\"人工智能\",\"智能制造\",\"工业机器人\"]');

-- ----------------------------
-- Table structure for it3
-- ----------------------------
DROP TABLE IF EXISTS `it3`;
CREATE TABLE `it3`  (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `src` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `h5` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `pf` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 4 CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of it3
-- ----------------------------
INSERT INTO `it3` VALUES (1, 'src/img/logo/logo.png', '公司团队', '[\"人工智能\",\"智能制造、工业机器人\",\"工业机器人\"]');
INSERT INTO `it3` VALUES (2, 'src/img/logo/logo.png', '公司团队', '[\"人工智能\",\"智能制造、工业机器人\",\"工业机器人\"]');
INSERT INTO `it3` VALUES (3, 'src/img/logo/logo.png', '公司团队', '[\"人工智能\",\"智能制造、工业机器人\",\"工业机器人\"]');

-- ----------------------------
-- Table structure for it4
-- ----------------------------
DROP TABLE IF EXISTS `it4`;
CREATE TABLE `it4`  (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `src` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `h5` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `zf` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 4 CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of it4
-- ----------------------------
INSERT INTO `it4` VALUES (1, 'src/img/logo/logo.png', '工业机器人', '提供数字孪生相关的内容建设，配合硬件实现场景的虚实交互、远程运维等应用。提供数字孪生相关的内容建设，配合硬件实现场景的虚实交互、远程运维等应用。');
INSERT INTO `it4` VALUES (2, 'src/img/logo/logo.png', '工业机器人', '提供数字孪生相关的内容建设，配合硬件实现场景的虚实交互、远程运维等应用。提供数字孪生相关的内容建设，配合硬件实现场景的虚实交互、远程运维等应用。');
INSERT INTO `it4` VALUES (3, 'src/img/logo/logo.png', '工业机器人', '提供数字孪生相关的内容建设，配合硬件实现场景的虚实交互、远程运维等应用。提供数字孪生相关的内容建设，配合硬件实现场景的虚实交互、远程运维等应用。');

-- ----------------------------
-- Table structure for it6
-- ----------------------------
DROP TABLE IF EXISTS `it6`;
CREATE TABLE `it6`  (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `src` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `alt` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 7 CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of it6
-- ----------------------------
INSERT INTO `it6` VALUES (1, 'src/img/linshi/1.jpg', 'i1');
INSERT INTO `it6` VALUES (2, 'src/img/linshi/2.jpg', 'i2');
INSERT INTO `it6` VALUES (3, 'src/img/linshi/1.jpg', 'i3');
INSERT INTO `it6` VALUES (4, 'src/img/linshi/2.jpg', 'i4');
INSERT INTO `it6` VALUES (5, 'src/img/linshi/1.jpg', 'i5');
INSERT INTO `it6` VALUES (6, 'src/img/linshi/2.jpg', 'i6');

-- ----------------------------
-- Table structure for kh
-- ----------------------------
DROP TABLE IF EXISTS `kh`;
CREATE TABLE `kh`  (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `src` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `alt` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 19 CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of kh
-- ----------------------------
INSERT INTO `kh` VALUES (1, 'src/img/linshi/1.jpg', 'i1');
INSERT INTO `kh` VALUES (2, 'src/img/linshi/2.jpg', 'i2');
INSERT INTO `kh` VALUES (3, 'src/img/linshi/1.jpg', 'i3');
INSERT INTO `kh` VALUES (4, 'src/img/linshi/2.jpg', 'i4');
INSERT INTO `kh` VALUES (5, 'src/img/linshi/1.jpg', 'i5');
INSERT INTO `kh` VALUES (6, 'src/img/linshi/2.jpg', 'i6');
INSERT INTO `kh` VALUES (7, 'src/img/linshi/1.jpg', 'i7');
INSERT INTO `kh` VALUES (8, 'src/img/linshi/2.jpg', 'i8');
INSERT INTO `kh` VALUES (9, 'src/img/linshi/1.jpg', 'i9');
INSERT INTO `kh` VALUES (10, 'src/img/linshi/1.jpg', 'i1');
INSERT INTO `kh` VALUES (11, 'src/img/linshi/2.jpg', 'i2');
INSERT INTO `kh` VALUES (12, 'src/img/linshi/1.jpg', 'i3');
INSERT INTO `kh` VALUES (13, 'src/img/linshi/2.jpg', 'i4');
INSERT INTO `kh` VALUES (14, 'src/img/linshi/1.jpg', 'i5');
INSERT INTO `kh` VALUES (15, 'src/img/linshi/2.jpg', 'i6');
INSERT INTO `kh` VALUES (16, 'src/img/linshi/1.jpg', 'i7');
INSERT INTO `kh` VALUES (17, 'src/img/linshi/2.jpg', 'i8');
INSERT INTO `kh` VALUES (18, 'src/img/linshi/1.jpg', 'i9');

SET FOREIGN_KEY_CHECKS = 1;
