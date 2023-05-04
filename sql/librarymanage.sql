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

 Date: 05/05/2023 00:08:37
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
  `lenderid` varchar(12) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NOT NULL COMMENT '在馆时，借阅者为空字符串',
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 16 CHARACTER SET = utf8mb4 COLLATE = utf8mb4_0900_ai_ci ROW_FORMAT = DYNAMIC;

-- ----------------------------
-- Records of book
-- ----------------------------
INSERT INTO `book` VALUES (1, 'default', 'testonly', 'vanitas', 'vanitas vanitatum et omnia vanitas', 'sadmin', '/static/images/bookNotFound.png', 0, 'student');
INSERT INTO `book` VALUES (2, 'default', 'testonly', 'vanitas', 'vanitas vanitatum et omnia vanitas', 'sadmin', '/static/images/bookNotFound.png', 0, 'student');
INSERT INTO `book` VALUES (3, 'default', 'testonly', 'vanitas', 'vanitas vanitatum et omnia vanitas', 'sadmin', '/static/images/bookNotFound.png', 0, 'student');
INSERT INTO `book` VALUES (4, 'default', 'testonly', 'vanitas', 'vanitas vanitatum et omnia vanitas', 'sadmin', '/static/images/bookNotFound.png', 1, ' ');
INSERT INTO `book` VALUES (5, 'default', 'testonly', 'vanitas', 'vanitas vanitatum et omnia vanitas', 'sadmin', '/static/images/bookNotFound.png', 1, ' ');
INSERT INTO `book` VALUES (6, '马克思主义基本原理概述', '7040599008', '哲学、政治、马克思', '马克思主义基本原理', 'sadmin', '/static/images/bookNotFound.png', 1, ' ');
INSERT INTO `book` VALUES (7, 'software engineering', '9787040599008', '计算机，软件工程', '软件工程', 'sadmin', '/static/images/bookNotFound.png', 1, ' ');
INSERT INTO `book` VALUES (8, 'test book', '1234567890123', '计算机，软件', '无', 'sadmin', '/static/images/bookNotFound.png', 1, ' ');
INSERT INTO `book` VALUES (9, 'test book', '1234567890123', '计算机，软件', '无', 'sadmin', '/static/images/bookNotFound.png', 1, ' ');
INSERT INTO `book` VALUES (10, 'test book', '1234567890123', '计算机，软件', '无', 'sadmin', '/static/images/bookNotFound.png', 1, ' ');
INSERT INTO `book` VALUES (15, '软工', '1112223334445', '软件', '介绍', 'student', '/static/images/b.txt', 1, '');

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
  `bookname` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NOT NULL COMMENT '书名',
  `date` datetime NOT NULL COMMENT '借书日期',
  `return_deadline` datetime NOT NULL COMMENT '最晚归还时间',
  `status` int NOT NULL COMMENT '0：已借出；1：已归还；2：已延期',
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 6 CHARACTER SET = utf8mb4 COLLATE = utf8mb4_0900_ai_ci ROW_FORMAT = DYNAMIC;

-- ----------------------------
-- Records of borrow_list
-- ----------------------------
INSERT INTO `borrow_list` VALUES (1, '1', '1', 'vanitas', 1, 'default', '2023-05-01 11:34:22', '2023-05-12 17:26:19', 0);
INSERT INTO `borrow_list` VALUES (2, '2', '', '计算机，软件', 8, 'test book', '2023-05-03 11:34:39', '2023-05-27 17:26:23', 1);
INSERT INTO `borrow_list` VALUES (3, 'sadmin', 'student', 'vanitas', 1, 'default', '2023-05-04 21:21:55', '2023-06-01 21:21:55', 0);
INSERT INTO `borrow_list` VALUES (4, 'sadmin', 'student', 'vanitas', 2, 'default', '2023-05-04 21:25:42', '2023-05-07 21:25:42', 0);
INSERT INTO `borrow_list` VALUES (5, 'sadmin', 'student', 'vanitas', 3, 'default', '2023-05-04 21:27:09', '2023-07-03 21:27:09', 2);

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
  `status` int NOT NULL COMMENT '0：已发送：1：借书成功：-1：借书失败（拒绝或者已被借走）',
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 2 CHARACTER SET = utf8mb4 COLLATE = utf8mb4_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of borrow_require
-- ----------------------------
INSERT INTO `borrow_require` VALUES (1, 'pr', 'student', 15, '软工', 1);

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
) ENGINE = InnoDB AUTO_INCREMENT = 3 CHARACTER SET = utf8mb4 COLLATE = utf8mb4_0900_ai_ci ROW_FORMAT = DYNAMIC;

-- ----------------------------
-- Records of message
-- ----------------------------
INSERT INTO `message` VALUES (1, 'pr', 'student', '你好', '2023-05-04 23:11:28');
INSERT INTO `message` VALUES (2, 'student', 'pr', 'hello', '2023-05-04 23:18:16');

-- ----------------------------
-- Table structure for notice
-- ----------------------------
DROP TABLE IF EXISTS `notice`;
CREATE TABLE `notice`  (
  `id` int NOT NULL AUTO_INCREMENT,
  `announcer` varchar(12) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NOT NULL COMMENT '发布者',
  `content` text CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NOT NULL,
  `last_modified` datetime NOT NULL COMMENT '最后修改时间',
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 3 CHARACTER SET = utf8mb4 COLLATE = utf8mb4_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of notice
-- ----------------------------
INSERT INTO `notice` VALUES (1, 'admin', '这是一条公告', '2023-05-04 19:50:11');

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
INSERT INTO `user` VALUES ('admin', '123', 'admin', 1);
INSERT INTO `user` VALUES ('pr', '123456', '', 2);
INSERT INTO `user` VALUES ('sadmin', '123', 'sadmin', 0);
INSERT INTO `user` VALUES ('student', 'abcd', '新的个人简介', 2);
INSERT INTO `user` VALUES ('teacher', '123', 'teacher', 3);

SET FOREIGN_KEY_CHECKS = 1;
