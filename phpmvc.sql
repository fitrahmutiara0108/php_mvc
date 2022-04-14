/*
 Navicat Premium Data Transfer
 Source Server         : 127.0.0.1
 Source Server Type    : MySQL
 Source Server Version : 50733
 Source Host           : localhost:3306
 Source Schema         : phpmvc
 Target Server Type    : MySQL
 Target Server Version : 50733
 File Encoding         : 65001
 Date: 14/04/2022 00:19:01
*/

SET NAMES utf8mb4;
SET FOREIGN_KEY_CHECKS = 0;

-- ----------------------------
-- Table structure for mahasiswa
-- ----------------------------
DROP TABLE IF EXISTS `mahasiswa`;
DROP TABLE IF EXISTS `matkul`; 

CREATE TABLE matkul(
    id_matkul varchar(255) PRIMARY KEY NOT NULL,
    nama_matkul varchar(255)
    );
INSERT INTO matkul (id_matkul, nama_matkul) VALUES ('11000', 'Pemrograman Web Dasar');
INSERT INTO matkul (id_matkul, nama_matkul) VALUES ('12000', 'Pemrograman Mobile');
INSERT INTO matkul (id_matkul, nama_matkul) VALUES ('13000', 'Machine Learning');
INSERT INTO matkul (id_matkul, nama_matkul) VALUES ('14000', 'Data Analytics');

CREATE TABLE `mahasiswa`  (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `nama` varchar(255) CHARACTER SET latin1 COLLATE latin1_swedish_ci NULL DEFAULT NULL,
  `nrp` varchar(255) CHARACTER SET latin1 COLLATE latin1_swedish_ci NULL DEFAULT NULL,
  `email` varchar(255) CHARACTER SET latin1 COLLATE latin1_swedish_ci NULL DEFAULT NULL,
  `jurusan` varchar(255) CHARACTER SET latin1 COLLATE latin1_swedish_ci NULL DEFAULT NULL,
  `nama_matkul` varchar(255) CHARACTER SET latin1 COLLATE latin1_swedish_ci NULL DEFAULT NULL,
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 3 CHARACTER SET = latin1 COLLATE = latin1_swedish_ci ROW_FORMAT = Dynamic;

SET FOREIGN_KEY_CHECKS=1;

INSERT INTO `mahasiswa`(`id`, `nama`, `nrp`, `email`, `jurusan`, `nama_matkul`) VALUES ('1001','Selena Gomez','19001','selgom@gmail.com','informatika', 'Pemrograman Web Dasar');
INSERT INTO `mahasiswa`(`id`, `nama`, `nrp`, `email`, `jurusan`, `nama_matkul`) VALUES ('1002','Tiara Aja','19002','tirtir@gmail.com','informatika', 'Data Analytics');