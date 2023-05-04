/*
 Navicat Premium Data Transfer

 Source Server         : localhost_3306
 Source Server Type    : MySQL
 Source Server Version : 80032 (8.0.32)
 Source Host           : localhost:3306
 Source Schema         : librarymanage

 Target Server Type    : MySQL
 Target Server Version : 80032 (8.0.32)
 File Encoding         : 65001

 Date: 04/05/2023 17:11:57
*/

SET NAMES utf8mb4;
SET FOREIGN_KEY_CHECKS = 0;

-- ----------------------------
-- Table structure for book
-- ----------------------------
DROP TABLE IF EXISTS `book`;
CREATE TABLE `book`  (
  `id` int NOT NULL AUTO_INCREMENT COMMENT '书籍的唯一id',
  `name` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NOT NULL COMMENT '书籍的名称',
  `isbncode` varchar(13) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NOT NULL COMMENT '书籍的isbn码',
  `type` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NOT NULL COMMENT '书籍的类型',
  `introduce` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NOT NULL COMMENT '书籍的简介',
  `ownerid` varchar(12) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NOT NULL COMMENT '书籍拥有者的id',
  `image` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NOT NULL COMMENT '书籍图片的url',
  `status` int NOT NULL COMMENT '0：已借出；1：在馆',
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 11 CHARACTER SET = utf8mb4 COLLATE = utf8mb4_0900_ai_ci ROW_FORMAT = DYNAMIC;

-- ----------------------------
-- Records of book
-- ----------------------------
INSERT INTO `book` VALUES (1, 'default', 'testonly', 'vanitas', 'vanitas vanitatum et omnia vanitas', 'sadmin', '/static/images/bookNotFound.png', 1);
INSERT INTO `book` VALUES (2, 'default', 'testonly', 'vanitas', 'vanitas vanitatum et omnia vanitas', 'sadmin', '/static/images/bookNotFound.png', 1);
INSERT INTO `book` VALUES (3, 'default', 'testonly', 'vanitas', 'vanitas vanitatum et omnia vanitas', 'sadmin', '/static/images/bookNotFound.png', 1);
INSERT INTO `book` VALUES (4, 'default', 'testonly', 'vanitas', 'vanitas vanitatum et omnia vanitas', 'sadmin', '/static/images/bookNotFound.png', 1);
INSERT INTO `book` VALUES (5, 'default', 'testonly', 'vanitas', 'vanitas vanitatum et omnia vanitas', 'sadmin', '/static/images/bookNotFound.png', 1);
INSERT INTO `book` VALUES (6, '马克思主义基本原理概述', '7040599008', '哲学、政治、马克思', '马克思主义基本原理', 'sadmin', '/static/images/bookNotFound.png', 1);
INSERT INTO `book` VALUES (7, 'software engineering', '9787040599008', '计算机，软件工程', '软件工程', 'sadmin', '/static/images/bookNotFound.png', 1);
INSERT INTO `book` VALUES (8, 'test book', '1234567890123', '计算机，软件', '无', 'sadmin', '/static/images/bookNotFound.png', 1);
INSERT INTO `book` VALUES (9, 'test book', '1234567890123', '计算机，软件', '无', 'sadmin', '/static/images/bookNotFound.png', 1);
INSERT INTO `book` VALUES (10, 'test book', '1234567890123', '计算机，软件', '无', 'sadmin', '/static/images/bookNotFound.png', 1);

-- ----------------------------
-- Table structure for borrow_list
-- ----------------------------
DROP TABLE IF EXISTS `borrow_list`;
CREATE TABLE `borrow_list`  (
  `id` int NOT NULL AUTO_INCREMENT COMMENT '书单唯一指定id',
  `ownerid` varchar(12) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NOT NULL COMMENT '书籍拥有者的id',
  `lenderid` varchar(12) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NOT NULL COMMENT '借书人员id',
  `type` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NOT NULL COMMENT '书籍的类型',
  `bookid` int NOT NULL COMMENT '书籍id',
  `date` datetime NOT NULL COMMENT '借书日期',
  `return_deadline` datetime NOT NULL COMMENT '最晚归还时间',
  `status` int NOT NULL COMMENT '0：已借出；1：在馆；2：已延期',
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 3 CHARACTER SET = utf8mb4 COLLATE = utf8mb4_0900_ai_ci ROW_FORMAT = DYNAMIC;

-- ----------------------------
-- Records of borrow_list
-- ----------------------------
INSERT INTO `borrow_list` VALUES (1, '1', '1', 'vanitas', 1, '2023-05-01 11:34:22', '2023-05-12 17:26:19', 0);
INSERT INTO `borrow_list` VALUES (2, '2', '1', '计算机，软件', 8, '2023-05-03 11:34:39', '2023-05-27 17:26:23', 0);

-- ----------------------------
-- Table structure for borrow_require
-- ----------------------------
DROP TABLE IF EXISTS `borrow_require`;
CREATE TABLE `borrow_require`  (
  `id` int NOT NULL AUTO_INCREMENT,
  `lenderid` varchar(12) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NOT NULL COMMENT '谁想借',
  `ownerid` varchar(12) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NOT NULL COMMENT '谁的',
  `bookid` int NOT NULL COMMENT '什么书id',
  `bookname` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NOT NULL COMMENT '书名',
  `status` int NOT NULL COMMENT '0：已发送：1：借书成功：2：借书失败（拒绝或者已被借走）',
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB CHARACTER SET = utf8mb4 COLLATE = utf8mb4_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of borrow_require
-- ----------------------------

-- ----------------------------
-- Table structure for message
-- ----------------------------
DROP TABLE IF EXISTS `message`;
CREATE TABLE `message`  (
  `id` int NOT NULL AUTO_INCREMENT,
  `speakerid` varchar(12) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NOT NULL COMMENT '说话者的id',
  `receiverid` varchar(12) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NOT NULL COMMENT '接收者的id',
  `msg` text CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NOT NULL COMMENT '信息内容',
  `date` datetime NOT NULL COMMENT '信息发送时间',
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 1 CHARACTER SET = utf8mb4 COLLATE = utf8mb4_0900_ai_ci ROW_FORMAT = DYNAMIC;

-- ----------------------------
-- Records of message
-- ----------------------------

-- ----------------------------
-- Table structure for user
-- ----------------------------
DROP TABLE IF EXISTS `user`;
CREATE TABLE `user`  (
  `id` varchar(12) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NOT NULL COMMENT '用户唯一账号兼id，不超过16位',
  `password` varchar(16) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NOT NULL COMMENT '用户密码，不超过16位',
  `introduce` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NOT NULL COMMENT '用户自定义的简介',
  `type` int NOT NULL COMMENT '用户类型，0：超管；1：管理员；2：学生；3：老师',
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB CHARACTER SET = utf8mb4 COLLATE = utf8mb4_0900_ai_ci ROW_FORMAT = DYNAMIC;

-- ----------------------------
-- Records of user
-- ----------------------------
INSERT INTO `user` VALUES ('admin', 'admin', 'admin', 1);
INSERT INTO `user` VALUES ('sadmin', 'sadmin', 'sadmin', 0);
INSERT INTO `user` VALUES ('student', 'student', 'student', 2);
INSERT INTO `user` VALUES ('teacher', 'teacher', 'teacher', 3);

SET FOREIGN_KEY_CHECKS = 1;
