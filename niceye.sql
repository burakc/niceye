/*
 Navicat Premium Data Transfer

 Source Server         : localhost
 Source Server Type    : MySQL
 Source Server Version : 80026
 Source Host           : localhost:3306
 Source Schema         : niceye

 Target Server Type    : MySQL
 Target Server Version : 80026
 File Encoding         : 65001

 Date: 04/08/2021 18:58:05
*/

SET NAMES utf8mb4;
SET FOREIGN_KEY_CHECKS = 0;

-- ----------------------------
-- Table structure for customer
-- ----------------------------
DROP TABLE IF EXISTS `customer`;
CREATE TABLE `customer` (
  `id` int NOT NULL AUTO_INCREMENT,
  `full_name` varchar(255) DEFAULT NULL,
  `email` varchar(255) DEFAULT NULL,
  `password` varchar(255) DEFAULT NULL,
  `birth_date` date DEFAULT NULL,
  `is_deleted` tinyint DEFAULT '0',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

-- ----------------------------
-- Records of customer
-- ----------------------------
BEGIN;
INSERT INTO `customer` VALUES (1, 'Burak Çanga', 'burak.canga@gmail.com', 'b8b41c35259f3482a433eb5b5dcaafb0', '1988-01-03', 0);
INSERT INTO `customer` VALUES (2, 'John Doe', 'john.doe@gmail.com', 'e99a18c428cb38d5f260853678922e03', '1990-08-04', 1);
COMMIT;

SET FOREIGN_KEY_CHECKS = 1;
