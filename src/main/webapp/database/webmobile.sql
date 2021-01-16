/*
 Navicat Premium Data Transfer

 Source Server         : localhost_3306
 Source Server Type    : MySQL
 Source Server Version : 100413
 Source Host           : localhost:3306
 Source Schema         : webmobile

 Target Server Type    : MySQL
 Target Server Version : 100413
 File Encoding         : 65001

 Date: 10/01/2021 18:22:58
*/

SET NAMES utf8mb4;
SET FOREIGN_KEY_CHECKS = 0;

-- ----------------------------
-- Table structure for cart
-- ----------------------------
DROP TABLE IF EXISTS `cart`;
CREATE TABLE `cart`  (
  `id` bigint(20) NOT NULL,
  `amount` int(11) NOT NULL,
  `ID_PRODUCT` varchar(255) CHARACTER SET utf8 COLLATE utf8_unicode_ci NOT NULL,
  `USER_NAME` varchar(50) CHARACTER SET utf8 COLLATE utf8_unicode_ci NOT NULL,
  PRIMARY KEY (`id`) USING BTREE,
  INDEX `FKgx8yqhu6x91pcxttm3x37iuj6`(`ID_PRODUCT`) USING BTREE,
  INDEX `FK222pcsw4egwxpwcyhl5sfa7c9`(`USER_NAME`) USING BTREE,
  CONSTRAINT `FK222pcsw4egwxpwcyhl5sfa7c9` FOREIGN KEY (`USER_NAME`) REFERENCES `user` (`USER_NAME`) ON DELETE RESTRICT ON UPDATE RESTRICT,
  CONSTRAINT `FKgx8yqhu6x91pcxttm3x37iuj6` FOREIGN KEY (`ID_PRODUCT`) REFERENCES `product` (`ID_PRODUCT`) ON DELETE RESTRICT ON UPDATE RESTRICT
) ENGINE = InnoDB CHARACTER SET = utf8 COLLATE = utf8_unicode_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Table structure for configuration
-- ----------------------------
DROP TABLE IF EXISTS `configuration`;
CREATE TABLE `configuration`  (
  `ID_PRODUCT` varchar(255) CHARACTER SET utf8 COLLATE utf8_unicode_ci NOT NULL,
  `DISPLAY` varchar(255) CHARACTER SET utf8 COLLATE utf8_unicode_ci NULL DEFAULT NULL,
  `CAMERA_FRONT` varchar(255) CHARACTER SET utf8 COLLATE utf8_unicode_ci NULL DEFAULT NULL,
  `CAMERA_BACK` varchar(255) CHARACTER SET utf8 COLLATE utf8_unicode_ci NULL DEFAULT NULL,
  `RAM` varchar(255) CHARACTER SET utf8 COLLATE utf8_unicode_ci NULL DEFAULT NULL,
  `ROM` varchar(255) CHARACTER SET utf8 COLLATE utf8_unicode_ci NULL DEFAULT NULL,
  `CPU` varchar(255) CHARACTER SET utf8 COLLATE utf8_unicode_ci NULL DEFAULT NULL,
  `GPU` varchar(255) CHARACTER SET utf8 COLLATE utf8_unicode_ci NULL DEFAULT NULL,
  `BATTERY` varchar(255) CHARACTER SET utf8 COLLATE utf8_unicode_ci NULL DEFAULT NULL,
  `OS` varchar(255) CHARACTER SET utf8 COLLATE utf8_unicode_ci NULL DEFAULT NULL,
  `SIM` varchar(255) CHARACTER SET utf8 COLLATE utf8_unicode_ci NULL DEFAULT NULL,
  PRIMARY KEY (`ID_PRODUCT`) USING BTREE,
  CONSTRAINT `FKnlqfqqveqm6pe6jn5lks6xtu9` FOREIGN KEY (`ID_PRODUCT`) REFERENCES `product` (`ID_PRODUCT`) ON DELETE RESTRICT ON UPDATE RESTRICT
) ENGINE = InnoDB CHARACTER SET = utf8 COLLATE = utf8_unicode_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of configuration
-- ----------------------------
INSERT INTO `configuration` VALUES ('No.00269739', 'HD, 1334 x 750 pixels', '12.0 MP', '12.0 MP', '2GB', '8GB', 'Apple A10, 4 nhơn, 2.3 GHz', 'Apple GPU 3 nhơn', '7.45 Wh (1960 mAh)', 'iOS11', 'Nano Sim, 1 Sim, hỗ trợ 4G');
INSERT INTO `configuration` VALUES ('No.00269765', 'Full HD, 1920 x 1080 pixels', '7.0 MP', 'Dual 12.0 MP', '3 GB', '32 GB', 'A10, 4 nhơn, 2.3 GHz', 'Apple GPU 3 nhơn', '11.1 Wh (2900 mAh)', 'iOS11', 'Nano Sim, 1 Sim, hỗ trợ 4G');
INSERT INTO `configuration` VALUES ('No.00271554', 'Full HD, 1080 x 1920 pixels', '5.0 MP', '12.0 MP', '2 GB', '32 GB', 'Apple A9, 2 nhơn, 1.8 GHz', 'PowerVR GT7600', '2750mAh', 'iOS11', 'Nano Sim, 1 Sim');
INSERT INTO `configuration` VALUES ('No.00336613', '2k; 2960 x 1440 pixels', '8.0 MP', 'Dual 12.0 MP', '4 GB', '64 GB', 'Exynos 8895; 8 nhân; 4 nhân 2.3 GHz;  4 nhân 1.7 GHz', 'Mali G71', '3500 mAh', 'Android 9.0 (Pie)', 'Nano Sim; 2 Khe; Hỗ trợ 4G');
INSERT INTO `configuration` VALUES ('No.00395565', '4.7 inches, Retina HD display, 1334 x 750 pixels', '7 MP', '12 MP', '2GB', '64GB', 'Apple A11 Bionic 6 nhơn, 2 nhơn Monsoon và  4 nhơn Mistral, 2.1 GHz', 'Apple GPU 3 nhơn', '1821 mAh', 'iOS11', 'Nano Sim, 1 Sim');
INSERT INTO `configuration` VALUES ('No.00395579', 'Retina HD, 1920 x 1080 pixels', '7.0 MP', 'Dual 12.0 MP', '3 GB', '64 GB', 'Apple A11 Bionic', 'Apple GPU (three-core graphics)', '2691 mAh', 'iOS 11', 'Nano Sim, 1 Sim');
INSERT INTO `configuration` VALUES ('No.00395596', 'Super Retina HD, 2436 x 1125 pixel', '7.0 MP', 'Dual 12.0 MP', '3 GB', '64 GB', 'Apple A11 Bionic', 'Apple GPU (three-core graphics)', '2716 mAh', 'iOS 11', 'Nano Sim, 1 Sim, hỗ trợ 4G');
INSERT INTO `configuration` VALUES ('No.00398983', 'Full HD; 1920 x 1080 pixels', '16.0 MP', 'Dual 12.0 MP ;  5.0 MP', '4 GB', '32 GB', '8 nhân 4 nhân 2.39 GHz & 4 nhân 1.69 GHz', 'Mali-T880MP2', '3000 mAh', 'Android 9.0 (Pie)', 'Nano Sim; 2 Sim');
INSERT INTO `configuration` VALUES ('No.00459260', '6\"; Full HD+; Full HD+ (1080 x 2220 Pixels)', '24 MP', '16 MP;  5 MP (2 camera)', '4 GB', '32 GB', 'Qualcomm Snapdragon 450; 8 nhân; 1.8 GHz', 'Adreno 506', '3500 mAh', 'Android 8 (Star UX)', 'Nano Sim; 2 Sim; Hỗ trợ 4G');
INSERT INTO `configuration` VALUES ('No.00459261', '6.0 inchs; Full HD +; 1080 x 2220 Pixels', '24MP', '24 MP+8 MP+5 MP (3 camera)', '4 GB', '64 GB', 'Exynos 7885 8 nhân 64-bit; 8; 2.2 GHz Cortex-A73 & 1.6 GHz Cortex-A53', 'Mali G71', '3300 mAh', 'Android 8', 'Nano SIM; 2 Sim');
INSERT INTO `configuration` VALUES ('No.00484676', '6.4\"; Full HD+; 2K+ (1440 x 2960 Pixels)', '8 MP', '2 camera 12 MP', '6 GB', '128 GB', 'Exynos 9810 8 nhân 64 bit; 8 nhân; 2.7 GHz + 1.7 GHz', 'Mali-G72 MP18', '4000 mAh', 'Android 8.1 (Oreo)', 'Nano Sim; 2 Sim; Hỗ trợ 4G');
INSERT INTO `configuration` VALUES ('No.00487580', '5.84\"; Full HD+; 1080 x 2280 pixels', '5 MP', '12 MP + 5 MP', '4 GB', '64 GB', 'Qualcomm Snapdragon 625; 8 nhÃ¢n; 2 GHz', 'Adreno 506', '4000 mAh', 'Android 8.1 Oreo', 'Nano; 2 Sim');
INSERT INTO `configuration` VALUES ('No.00495360', '5.8 inchs, Super Retina HD, 1125 x 2436 Pixels', '7.0 MP', 'Dual Camera 12.0 MP', '4 GB', '64 GB', 'Apple A12 Bionic ', 'Apple GPU 4 nhơn', 'Lâu hơn iPhơne X 30\'', 'iOS 12', 'eSIM và  NanoSIM, 1 Sim');
INSERT INTO `configuration` VALUES ('No.00495366', '6.5 inchs, Super Retina HD, 1242 x 2688 Pixels', '7.0 MP', 'Dual Camera 12.0 MP', '4 GB', '64 GB', 'Apple A12 Bionic ', 'Apple GPU 4 nhơn', 'Lâu hơn iPhơne X 1,5h', 'iOS 17', 'eSIM và  NanoSIM, 1 Sim');
INSERT INTO `configuration` VALUES ('No.00495369', '6.5 inchs, Super Retina HD, 1242 x 2688 Pixels', '7.0 MP', 'Dual Camera 12.0 MP', '4 GB', '256 GB', 'Apple A12 Bionic ', 'Apple GPU 4 nhơn', 'Lâu hơn iPhơne X 1,5h', 'iOS 18', 'eSIM và  NanoSIM, 1 Sim');
INSERT INTO `configuration` VALUES ('No.00495370', '6.1 inchs, Liquid Retina HD, 828 x 1792 Pixels', '7.0 MP', '12.0 MP', '3 GB', '64 GB', 'Apple A12 Bionic ', 'Apple GPU 4 nhơn', 'Lâu hơn iPhơne 8 Plus 1,5h', 'iOS 12', 'eSIM và  NanoSIM, 1 Sim');
INSERT INTO `configuration` VALUES ('No.00500236', '6.1 inchs, Liquid Retina HD, 828 x 1792 Pixels', '7.0 MP', '12.0 MP', '3 GB', '128 GB', 'Apple A12 Bionic ', 'Apple GPU 4 nhơn', 'Lâu hơn iPhơne 8 Plus 1,5h', 'iOS 12', 'eSIM và  NanoSIM, 1 Sim');
INSERT INTO `configuration` VALUES ('No.00516749', '6.26 inches; FHD+; 1080 x 2040 Pixel', '24.0 MP', '12.0 MP + 5.0 MP', '6 GB', '128 GB', 'SnapDragon 660; Octa-Core; 4x2.2 GHz Kryo 260 & 4x1.8 GHz Kryo 260', 'Adreno 512', '3350mAh', 'Android 8.1 Oreo', 'Nano SIM; 2 Sim');
INSERT INTO `configuration` VALUES ('No.00543131', '6.3 inches; Full HD +; 1080 x 2340 Pixels', '8.0 MP', '13.0 MP + 5.0 MP', '3 GB', '32 GB', 'Exynos 7904 8 nhân 64-bit; 8; 1.8 GHz', 'Mali-G71 MP2', '5000 mAh', 'Android 8 (Oreo)', 'Nano SIM; 2 Sim');
INSERT INTO `configuration` VALUES ('No.00543133', '6.4 inches; Full HD +; 1080 x 2340 Pixels', '16.0 MP', '16.0 MP + 5.0 MP', '3 GB', '32 GB', 'Exynos 7904 8 nhân 64-bit; 8; 1.8 GHz', 'Mali G71', '4000 mAh', 'Android 9.0 (Pie)', 'Nano SIM; 2 Sim');
INSERT INTO `configuration` VALUES ('No.00543135', '6.4 inches; Full HD +; 1080 x 2340 Pixels', '16.0 MP', '16.0 MP + 5.0 MP', '4 GB', '64 GB', 'Exynos 7904 8 nhân 64-bit; 8; 1.8 GHz', 'Mali-G71 MP2', '4000 mAh', 'Android 9.0 (Pie)', 'Nano SIM; 2 Sim');
INSERT INTO `configuration` VALUES ('No.00543137', '6.4 inches; Full HD +; 1080 x 2340 Pixels', '25.0 MP', '25 MP; 8 MP;  5 MP (3 camera)', '4 GB', '64 GB', 'Exynos 9610 8 nhân 64-bit; 8; 2.3 GHz', 'Mali-G72 MP3', '4000 mAh', 'Android 9.0 (Pie)', 'Nano SIM; 2 Sim');
INSERT INTO `configuration` VALUES ('No.00543138', '6.4 inches; Full HD+; 1080 x 2340 Pixels', '25.0 MP', '25 MP; 8 MP;  5 MP (3 camera)', '6 GB', '128 GB', 'Exynos 9610 8 nhân 64-bit; 8; 2.3 GHz', 'Mali-G72 MP3', '4000 mAh', 'Android 9.0 (Pie)', 'Nano SIM; 2 Sim');
INSERT INTO `configuration` VALUES ('No.00543143', '6.1 inches; Quad HD+; 1440 x 3040 pixels', '10MP', '12 MP ; 12 MP; 16 MP', '8 GB', '128 GB', 'Exynos 9820 8 nhân 64-bit; 8; 2 nhân 2.7 GHz; 2 nhân 2.3 GHz;  4 nhân 1.9 GHz', 'Mali-G76 MP12', '3400 mAh', 'Android 9.0 (Pie)', 'Nano SIM; 2 Sim');
INSERT INTO `configuration` VALUES ('No.00555882', '6.4 inches; HD+; 720 x 1560 Pixels', '8.0 MP', '13.0 MP + 5.0 MP', '3 GB', '32 GB', 'Exynos 7884 8 nhân 8; 2 nhân 1.6 Ghz & 6 nhân 1.35 Ghz', 'Mali G71', '4000 mAh', 'Android 9.0 (Pie)', 'Nano SIM; 2 Sim');
INSERT INTO `configuration` VALUES ('No.00555884', '6.7 inchs; Full HD+; 1080 x 2400 Pixels', '32.0Mp', '32 MP ; 8 MP; 5 MP', '6 GB', '128 GB', 'Snapdragon 675 8 nhân 64-bit; 8; 2 nhân 2.0 Ghz & 6 nhân 1.7 Ghz', 'Adreno 612', '4;500mAh', 'Android 9.0 (Pie)', 'Nano SIM; 2 Sim');
INSERT INTO `configuration` VALUES ('No.00558932', '6.3 inches; Full HD +; 1080 x 2340 Pixels', '13.0 MP', '48 MP+ 5 MP', '4 GB', '64 GB', 'Snap Dragon 660; 8; 2.2 GHz', 'Adreno 512', '4000 mAh', 'Android 9', 'Nano SIM; 2 Sim');
INSERT INTO `configuration` VALUES ('No.00560169', '6.26 inches; HD+; 720 x 1520 Pixels', '8.0 MP', '12.0 MP + 2.0 MP', '3 GB', '32 GB', 'Qualcomm Snapdragon 632; 8; 1.8 GHz', 'Adreno 506', '4000 mAh', 'Android 9', 'Nano SIM; 2 Sim');
INSERT INTO `configuration` VALUES ('No.00560172', '6.26 inches; HD+; 720 x 1520 Pixels', '8.0 MP', '12.0 MP + 2.0 MP', '2 GB', '16 GB', 'Qualcomm Snapdragon 632; 8; 1.8 GHz', 'Adreno 506', '4000 mAh', 'Android 9', 'Nano SIM; 2 Sim');
INSERT INTO `configuration` VALUES ('No.00566164', '6.7 inchs; Full HD+; 1080 x 2400 Pixels', '48 MP : 8 MP;  ToF (3D Depth)', '48 MP ; 8 MP; Cáº£m biáº¿n ToF (3D Depth)', '8 GB', '128 GB', 'Snapdragon 730 8 nhân; 8; 2.2GHz Dual + 1.7GHz Hexa', 'Adreno 618', '3700 mAh', 'Android 9.0 (Pie)', 'Nano SIM; 2 Sim');
INSERT INTO `configuration` VALUES ('No.00566165', '6.4 inches; Quad HD+; 1440 x 3040 pixels', '10 MP; 8 MP', '12 MP ; 12 MP; 16 MP', '8 GB', '512 GB', 'Exynos 9820 8 nhân 64-bit; 8; 2 nhân 2.7 GHz; 2 nhân 2.3 GHz;  4 nhân 1.9 GHz', 'Mali-G76 MP12', '4100 mAh', 'Android 9.0 (Pie)', 'Nano SIM; 2 Sim');
INSERT INTO `configuration` VALUES ('No.00566166', '6.4 inches; Quad HD+; 1440 x 3040 pixels', '10 MP ; 8 MP', '12 MP ; 12 MP; 16 MP', '8 GB', '128 GB', 'Exynos 9820 8 nhân 64-bit; 8; 2 nhân 2.7 GHz; 2 nhân 2.3 GHz;  4 nhân 1.9 GHz', 'Mali-G76 MP12', '4100 mAh', 'Android 9.0 (Pie)', 'Nano SIM; 2 Sim');
INSERT INTO `configuration` VALUES ('No.00574553', '6.39 inchs; Full HD+; 1080 x 2340 Pixels', '20.0 MP', '48 MP;16 MP +12 MP ( 3 camera)', '6 GB', '64 GB', 'Snap dragon 855; 8; 1x2.84Ghz+3x2.42Ghz+4x1.8Ghz', 'Adreno 640', '3300mAh', 'Android 9', 'Nano SIM; 2 Sim');
INSERT INTO `configuration` VALUES ('No.00576711', '6.2 inches; HD+; 720 x 1520 Pixels', '5.0 MP', '13.0 MP', '2 GB', '32 GB', 'Exynos 7884; 8; 1.6 GHz', 'Mali-G71 MP2', '3400 mAh', 'Android 9.0 (Pie)', 'Nano SIM; 2 Sim');
INSERT INTO `configuration` VALUES ('No.00593504', '6.39 inchs; Full HD +; 2340 x 1080 Pixel', '20.0 MP', '48 MP;13 MP +8 MP ( 3 camera )', '6 GB', '128 GB', 'Snap dragon 730; 8; 2.2Ghz', 'Adreno 618', '4000 mAh', 'Android 9', 'Nano SIM; 2 Sim');
INSERT INTO `configuration` VALUES ('No.00593506', '5.45 inches; HD +; 1440 x 720 Pixel', '5.0 MP', '12.0 MP', '2 GB', '32 GB', 'Snap dragon 439; 8; 2.0Ghz', 'Adreno 505', '4000 mAh', 'Android 9', 'Nano SIM; 2 Sim');
INSERT INTO `configuration` VALUES ('No.00593510', '6.39 inchs; Full HD +; 2340 x 1080 Pixel', '20.0 MP', '48 MP;13 MP +8 MP ( 3 camera )', '6 GB', '64 GB', 'Snap dragon 730; 8; 2.2Ghz', 'Adreno 618', '4000 mAh', 'Android 9', 'Nano SIM; 2 Sim');
INSERT INTO `configuration` VALUES ('No.00594152', '6.088 inchs; HD +; 720 x 1560 Pixels', '32.0Mp', '48 MP;8 MP +2 MP ( 3 camera )', '4 GB', '64 GB', 'Snap dragon 665; 8; 2.0Ghz', 'Adreno 610', '4030 mAh', 'Android One', 'Nano SIM; 2 Sim');
INSERT INTO `configuration` VALUES ('No.00594679', '6.3 inches; Full HD+; 1080 x 2280 Pixels', '10MP', '12 MP ; 12 MP; 16 MP', '8 GB', '256 GB', 'Exynos 9825 (7 nm); 8; 2.7 Ghz + 2.4 GHz + 1.9 GHX', 'Mali-G76 MP12', '3;500 mAh', 'Android 9.0 (Pie)', 'Nano SIM; 2 Sim');
INSERT INTO `configuration` VALUES ('No.00594681', '6.8 inches; QHD+; 1440 x 3040 pixels', '10MP', '12 MP ; 12 MP; 16 MP', '12 GB', '256 GB', 'Exynos 9825 (7 nm); 8; 2.7 Ghz + 2.4 GHz + 1.9 GHX', 'Mali-G76 MP12', '4;300 mAh', 'Android 9.0 (Pie)', 'Nano SIM; 2 Sim');
INSERT INTO `configuration` VALUES ('No.00594684', '6.4 inches; HD+; 720 x 1560 Pixels', '16.0 MP', '25 MP; 8 MP;  5 MP (3 camera)', '4 GB', '64 GB', 'Exynos 7904; 8; 1.8 GHz', 'Mali G71', '4000 mAh', 'Android 9.0 (Pie)', 'Nano SIM; 2 Sim');
INSERT INTO `configuration` VALUES ('No.00594687', '6.4 inches; Full HD+; 1080 x 2340 Pixels', '32.0Mp', '48 MP ; 8 MP; 5 MP', '4 GB', '64 GB', 'Exynos 9610 8 nhân 64-bit; 8; 4 nhân 2.3 GHz;  4 nhân 1.7 GHz', 'Mali-G72 MP3', '4000 mAh', 'Android 9.0 (Pie)', 'Nano SIM; 2 Sim');
INSERT INTO `configuration` VALUES ('No.00594690', '6.2 inches; HD+; 720 x 1520 Pixels', '8.0 MP', '13 MP ;  2 MP (2 camera)', '2 GB', '32 GB', 'MediaTek MT6762 8 nhân 64-bit (Helio P22); 8; 2.0 GHz Cortex-A53 & 1.5 GHz Cortex-A53', 'PowerVR GE8320', '4000 mAh', 'Android 9.0 (Pie)', 'Nano SIM; 2 Sim');
INSERT INTO `configuration` VALUES ('No.00595085', '5.8 inches; Full HD +; 1080 x 2280 Pixels', '10MP', '16 MP;  12 MP (2 camera)', '6 GB', '128 GB', 'Exynos 9820 8 nhân 64-bit; 8; 2 nhân 2.7 GHz; 2 nhân 2.3 GHz;  4 nhân 1.9 GHz', 'Mali-G76 MP12', '3100 mAh', 'Android 9.0 (Pie)', '2 SIM Nano; 2 Sim');
INSERT INTO `configuration` VALUES ('No.00606098', '5.8 inchs, Super Retina XDR, 1125 x 2436 Pixels', '12.0 MP', 'Triple 12MP Ultra Wide, Wide and Telephoto cameras', '4 GB', '64 GB', 'Apple A13 Bionic ', 'Apple GPU 4 nhơn', 'Lâu hơn iPhơne Xs 4h', 'iOS 13', 'eSIM và  NanoSIM, 1 Sim');
INSERT INTO `configuration` VALUES ('No.00606102', '5.8 inchs, Super Retina XDR, 1125 x 2436 Pixels', '12.0 MP', 'Triple 12MP Ultra Wide, Wide and Telephoto cameras', '4 GB', '256 GB', 'Apple A13 Bionic ', 'Apple GPU 4 nhơn', 'Lâu hơn iPhơne Xs 4h', 'iOS 13', 'eSIM và  NanoSIM, 1 Sim');
INSERT INTO `configuration` VALUES ('No.00606106', '5.8 inchs, Super Retina XDR, 1125 x 2436 Pixels', '12.0 MP', 'Triple 12MP Ultra Wide, Wide and Telephoto cameras', '4 GB', '512 GB', 'Apple A13 Bionic ', 'Apple GPU 4 nhơn', 'Lâu hơn iPhơne Xs 4h', 'iOS 13', 'eSIM và  NanoSIM, 1 Sim');
INSERT INTO `configuration` VALUES ('No.00606110', '6.5 inchs, Super Retina XDR, 1242 x 2688 Pixels', '12.0 MP', 'Triple 12MP Ultra Wide, Wide and Telephoto cameras', '4 GB', '64 GB', 'Apple A13 Bionic ', 'Apple GPU 4 nhơn', 'Lâu hơn iPhơne Xs Max 5h', 'iOS 13', 'eSIM và  NanoSIM, 1 Sim');
INSERT INTO `configuration` VALUES ('No.00606111', '6.5 inchs, Super Retina XDR, 1242 x 2688 Pixels', '12.0 MP', 'Triple 12MP Ultra Wide, Wide and Telephoto cameras', '4 GB', '256 GB', 'Apple A13 Bionic ', 'Apple GPU 4 nhơn', 'Lâu hơn iPhơne Xs Max 5h', 'iOS 13', 'eSIM và  NanoSIM, 1 Sim');
INSERT INTO `configuration` VALUES ('No.00606118', '6.5 inchs, Super Retina XDR, 1242 x 2688 Pixels', '12.0 MP', 'Triple 12MP Ultra Wide, Wide and Telephoto cameras', '4 GB', '512 GB', 'Apple A13 Bionic ', 'Apple GPU 4 nhơn', 'Lâu hơn iPhơne Xs Max 5h', 'iOS 13', 'eSIM và  NanoSIM, 1 Sim');
INSERT INTO `configuration` VALUES ('No.00606119', '6.1 inchs, Liquid Retina HD, 828 x 1792 Pixels', '12.0 MP', 'Dual 12MP Ultra Wide and Wide cameras', '4 GB', '64 GB', 'Apple A13 Bionic ', 'Apple GPU 4 nhơn', 'Lâu hơn iPhơne XR 1h', 'iOS 14', 'eSIM và  NanoSIM, 1 Sim');
INSERT INTO `configuration` VALUES ('No.00606125', '6.1 inchs, Liquid Retina HD, 828 x 1792 Pixels', '12.0 MP', 'Dual 12MP Ultra Wide and Wide cameras', '4 GB', '128 GB', 'Apple A13 Bionic ', 'Apple GPU 4 nhơn', 'Lâu hơn iPhơne XR 1h', 'iOS 15', 'eSIM và  NanoSIM, 1 Sim');
INSERT INTO `configuration` VALUES ('No.00606131', '6.1 inchs, Liquid Retina HD, 828 x 1792 Pixels', '12.0 MP', 'Dual 12MP Ultra Wide and Wide cameras', '4 GB', '256 GB', 'Apple A13 Bionic ', 'Apple GPU 4 nhơn', 'Lâu hơn iPhơne XR 1h', 'iOS 16', 'eSIM và  NanoSIM, 1 Sim');
INSERT INTO `configuration` VALUES ('No.00608808', '6.53 Inchs; Full HD+; 1080 x 2340 Pixels', '20.0 MP', '64 MP+ 8 MP+ 2 MP+ 2 MP', '6 GB', '64 GB', 'MTK G90T; Octa-Core; 2.0 Ghz', 'Mali-G76MC4', '4500 mAh', 'Android 9.0 (Pie)', '2 Sim; Nano SIM');
INSERT INTO `configuration` VALUES ('No.00608809', '6.3 inches; Full HD+; 1080 x 2340 Pixels', '13.0 MP', '48 MP+ 8 MP+ 2 MP+ 2 MP', '4 GB', '64 GB', 'Snap 665; Octa-Core; 2.0 Ghz', 'Adreno 610', '4000 mAh', 'Android 9.0 (Pie)', '2 Sim; Nano SIM');
INSERT INTO `configuration` VALUES ('No.00611334', '6.5 inchs; HD+; 720 x 1520 Pixels', '8.0 MP', '13 MP ; 8 MP; 5 MP', '3 GB', '32 GB', 'Qualcomm Snapdragon 450 8 nhân 64-bit; 8; 1.8 GHz', 'Adreno 506', '4000 mAh', 'Android 9.0 (Pie)', '2 Sim; Nano SIM');
INSERT INTO `configuration` VALUES ('No.00612101', '5.45 inches; HD +; 1440 x 720 Pixel', '5.0 MP', '12.0 MP', '2 GB', '16 GB', 'Snap dragon 439; 8; 2.0Ghz', 'Adreno 505', '4000 mAh', 'Android 9', 'Nano SIM; 2 Sim');
INSERT INTO `configuration` VALUES ('No.00614395', '6.53 Inchs; Full HD+; 1080 x 2340 Pixels', '20.0 MP', '64 MP+ 8 MP+ 2 MP+ 2 MP', '6 GB', '128 GB', 'MTK G90T; Octa-Core; 2.0 Ghz', 'Mali-G76MC4', '4500 mAh', 'Android 9.0 (Pie)', 'Nano SIM; 2 Sim');
INSERT INTO `configuration` VALUES ('No.00615142', '6.3 inches; Full HD+; 1080 x 2340 Pixels', '13.0 MP', '48 MP+ 8 MP+ 2 MP+ 2 MP', '4 GB', '128 GB', 'Snap 665; Octa-Core; 2.0 Ghz', 'Adreno 610', '4000 mAh', 'Android 9.0 (Pie)', 'Nano SIM; 2 Sim');
INSERT INTO `configuration` VALUES ('No.00619318', '6.22 inches; HD +; 720 x 1520 Pixels', '8.0 MP', '12.0 MP', '2 GB', '32 GB', 'Snapdragon 439; Octa-Core; 2.0Ghz', 'Adreno 505', '5000 mAh', 'Android 9', 'Nano SIM;');
INSERT INTO `configuration` VALUES ('No.00622392', '6.3 inches; Full HD+; 1080 x 2340 Pixels', '13.0 MP', '48 MP+ 8 MP+ 2 MP+ 2 MP', '3 GB', '32 GB', 'Snap 665; Octa-Core; 2.0 Ghz', 'Adreno 610', '4000 mAh', 'Android 9.0 (Pie)', 'Nano SIM; 2 Sim');
INSERT INTO `configuration` VALUES ('No.00631292', '7.3; Super AMOLED; Full HD+; 2152 x 1536 Pixels', '10 MP; 8 MP; 10 MP', '12 MP ; 12 MP; 16 MP', '12 GB', '512 GB', '1 nhân 2.84 GHz; 3 nhân 2.42 GHz & 4 nhân 1.8 GHz; 8; 1 nhân 2.84 GHz; 3 nhân 2.42 GHz & 4 nhân', 'Adreno 640', '4380 mAh', 'Android 9.0 (Pie)', 'Nano SIM; 1 Sim');

-- ----------------------------
-- Table structure for items
-- ----------------------------
DROP TABLE IF EXISTS `items`;
CREATE TABLE `items`  (
  `ID_ITEMS` varchar(255) CHARACTER SET utf8 COLLATE utf8_unicode_ci NOT NULL,
  `ACTIVE` int(11) NOT NULL,
  `ITEMS_NAME` varchar(255) CHARACTER SET utf8 COLLATE utf8_unicode_ci NULL DEFAULT NULL,
  PRIMARY KEY (`ID_ITEMS`) USING BTREE
) ENGINE = InnoDB CHARACTER SET = utf8 COLLATE = utf8_unicode_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of items
-- ----------------------------
INSERT INTO `items` VALUES ('DT', 1, 'Điện thoại ');

-- ----------------------------
-- Table structure for product
-- ----------------------------
DROP TABLE IF EXISTS `product`;
CREATE TABLE `product`  (
  `ID_PRODUCT` varchar(255) CHARACTER SET utf8 COLLATE utf8_unicode_ci NOT NULL,
  `ID_ITEMS` varchar(255) CHARACTER SET utf8 COLLATE utf8_unicode_ci NOT NULL,
  `ID_SUPPLIER` varchar(255) CHARACTER SET utf8 COLLATE utf8_unicode_ci NOT NULL,
  `PRODUCT_NAME` varchar(255) CHARACTER SET utf8 COLLATE utf8_unicode_ci NULL DEFAULT NULL,
  `PRICE` double NOT NULL,
  `IMG` varchar(255) CHARACTER SET utf8 COLLATE utf8_unicode_ci NULL DEFAULT NULL,
  `TOTAL` int(11) NOT NULL,
  `ACTIVE` int(11) NOT NULL,
  `DISCOUNT` double NOT NULL,
  `STAR_MEDIUM` int(11) NOT NULL,
  PRIMARY KEY (`ID_PRODUCT`) USING BTREE,
  INDEX `FK2hcm0e8e8b2kr1786gggj9jf4`(`ID_ITEMS`) USING BTREE,
  INDEX `FKqobh83w4unw1nr3g1pun46gpd`(`ID_SUPPLIER`) USING BTREE,
  CONSTRAINT `FK2hcm0e8e8b2kr1786gggj9jf4` FOREIGN KEY (`ID_ITEMS`) REFERENCES `items` (`ID_ITEMS`) ON DELETE RESTRICT ON UPDATE RESTRICT,
  CONSTRAINT `FKqobh83w4unw1nr3g1pun46gpd` FOREIGN KEY (`ID_SUPPLIER`) REFERENCES `supplier` (`ID_SUPPLIER`) ON DELETE RESTRICT ON UPDATE RESTRICT
) ENGINE = InnoDB CHARACTER SET = utf8 COLLATE = utf8_unicode_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of product
-- ----------------------------
INSERT INTO `product` VALUES ('No.00269739', 'DT', 'APP', 'iPhone 7 32GB', 8990000, '/img/phone/636159398645952790_ip7-black-1.jpg~/img/phone/636159398740350005_ip7-black-2.jpg~/img/phone/636159398740506008_ip7-black-3.jpg~', 1000, 0, 0, 0);
INSERT INTO `product` VALUES ('No.00269765', 'DT', 'APP', 'iPhone 7 Plus 32GB ', 11990000, '/img/phone/636836628988322696_ip7-plus-vang-1.png~/img/phone/636836628988166719_ip7-plus-vang-2.png~/img/phone/636836628988478673_ip7-plus-vang-3.png~/img/phone/636836628988166719_ip7-plus-vang-4.png~/img/phone/636836628987688789_ip7-plus-vang-5.png~', 1000, 1, 1500000, 1);
INSERT INTO `product` VALUES ('No.00271554', 'DT', 'APP', 'iPhone 6s Plus 32GB ', 8990000, '/img/phone/636172339622394948_apple-Iphone-6s-gold-1.jpg~/img/phone/636172339809600948_apple-Iphone-6s-gold-2.jpg~/img/phone/636172339809912958_apple-Iphone-6s-gold-3.jpg~', 1000, 1, 0, 0);
INSERT INTO `product` VALUES ('No.00336613', 'DT', 'SAM', 'Samsung Galaxy S8 Plus ', 12900000, '/img/phone/636396217066191623_1.jpg~/img/phone/636396217240361623_2.jpg~/img/phone/636396217378181623_3.jpg~/img/phone/636396217480091623_4.jpg~', 1000, 1, 1500000, 0);
INSERT INTO `product` VALUES ('No.00395565', 'DT', 'APP', 'iPhone 8 64GB ', 15590000, '/img/phone/636459060591822074_1.jpg~/img/phone/636459060731746898_2.jpg~/img/phone/636459060877911402_3.jpg~', 1000, 1, 1500000, 0);
INSERT INTO `product` VALUES ('No.00395579', 'DT', 'APP', 'iPhone 8 Plus 64GB ', 15590000, '/img/phone/636459041871679213_1.jpg~/img/phone/636459041871523220_2.jpg~/img/phone/636459041871523220_3.jpg~', 1000, 1, 1500000, 0);
INSERT INTO `product` VALUES ('No.00395596', 'DT', 'APP', 'iPhone X 64GB ', 19990000, '/img/phone/636483223586180190_3.jpg~/img/phone/636483223586180190_1.jpg~/img/phone/636483223586024189_2.jpg~/img/phone/636483223586024189_4.jpg~', 1000, 1, 1500000, 0);
INSERT INTO `product` VALUES ('No.00398983', 'DT', 'SAM', 'Samsung Galaxy J7+ ', 5990000, '/img/phone/636447215496605018_1.jpg~', 1000, 1, 1500000, 0);
INSERT INTO `product` VALUES ('No.00459260', 'DT', 'SAM', 'Samsung Galaxy A6+ ', 5990000, '/img/phone/636809190689012141_ss-a6plus-xanh-1.png~/img/phone/636809190688992141_ss-a6plus-xanh-2.png~/img/phone/636809190688782141_ss-a6plus-xanh-3.png~/img/phone/636809190688432141_ss-a6plus-xanh-4.png~/img/phone/636809190688442141_ss-a6plus-xanh-5.png~', 1000, 1, 1500000, 0);
INSERT INTO `product` VALUES ('No.00459261', 'DT', 'SAM', 'Samsung Galaxy A7 ', 4990000, '/img/phone/636746958719163577_A7-2018-Blue-1.png~/img/phone/636746958719007591_A7-2018-Blue-5.png~/img/phone/636746958719007591_A7-2018-Blue-2.png~/img/phone/636746958719007591_A7-2018-Blue-4.png~/img/phone/636746958721371395_A7-2018-Blue-3.png~', 1000, 1, 1500000, 0);
INSERT INTO `product` VALUES ('No.00484676', 'DT', 'SAM', 'Samsung Galaxy Note 9 128GB ', 17990000, '/img/phone/636703736254310068_note9-xanh-1.jpg~/img/phone/636703738270710068_note9-xanh-2.jpg~/img/phone/636703738270710068_note9-xanh-3.jpg~/img/phone/636703738276900068_note9-xanh-4.jpg~/img/phone/636703738277690068_note9-xanh-5.jpg~', 1000, 1, 1500000, 0);
INSERT INTO `product` VALUES ('No.00487580', 'DT', 'XIA', 'Xiaomi Mi A2 Lite 4GB-64GB ', 15000000, '/img/phone/636813355548095597_xiaomi-mi-a2-lite-den-1.png~', 1000, 1, 1500000, 0);
INSERT INTO `product` VALUES ('No.00495360', 'DT', 'APP', 'iPhone Xs 64GB ', 19990000, '/img/phone/636748771945393060_iPhone-Xs-Max-gold.png~/img/phone/636767481293463872_iphone-xs-gold-4.png~/img/phone/636767481293188883_iphone-xs-gold-2.png~/img/phone/636767481289803972_iphone-xs-gold-3.png~', 1000, 1, 1500000, 0);
INSERT INTO `product` VALUES ('No.00495366', 'DT', 'APP', 'iPhone Xs Max 64GB ', 18990000, '/img/phone/636748771945393060_iPhone-Xs-Max-gold.png~/img/phone/636767481293463872_iphone-xs-gold-4.png~/img/phone/636767481293188883_iphone-xs-gold-2.png~/img/phone/636767481289803972_iphone-xs-gold-3.png~', 1000, 1, 1500000, 4);
INSERT INTO `product` VALUES ('No.00495369', 'DT', 'APP', 'iPhone Xs Max 256GB ', 15000000, '/img/phone/636748771945393060_iPhone-Xs-Max-gold.png~/img/phone/636767481293463872_iphone-xs-gold-4.png~/img/phone/636767481293188883_iphone-xs-gold-2.png~/img/phone/636767481289803972_iphone-xs-gold-3.png~', 1000, 1, 1500000, 0);
INSERT INTO `product` VALUES ('No.00495370', 'DT', 'APP', 'iPhone XR 64GB ', 17990000, '/img/phone/636748797174925889_iphone-Xr-den.png~/img/phone/636812432713875725_ip-xr-den-2.png~/img/phone/636812432713563751_ip-xr-den-3.png~/img/phone/636812432713563751_ip-xr-den-4.png~', 1000, 1, 1500000, 0);
INSERT INTO `product` VALUES ('No.00500236', 'DT', 'APP', 'iPhone XR 128GB ', 18990000, '/img/phone/636748797174925889_iphone-Xr-trang.png~/img/phone/636812413545273171_ip-xr-trang-2.png~/img/phone/636812413545117183_ip-xr-trang-3.png~/img/phone/636812414861121183_ip-xr-trang-4.png~', 1000, 1, 1500000, 0);
INSERT INTO `product` VALUES ('No.00516749', 'DT', 'XIA', 'Xiaomi Mi 8 Lite 128GB ', 15000000, '/img/phone/636764973135496458_xiaomi-mi8-lite-den-1.jpg~', 1000, 1, 1500000, 0);
INSERT INTO `product` VALUES ('No.00543131', 'DT', 'SAM', 'Samsung Galaxy M20 ', 15000000, '/img/phone/636856463608789792_Galaxy-M20-gray-3.png~', 1000, 1, 1500000, 0);
INSERT INTO `product` VALUES ('No.00543133', 'DT', 'SAM', 'Samsung Galaxy A30 - 32GB ', 5590000, '/img/phone/636912614574572070_samsung-galaxy-a30-xanh-1.png~/img/phone/636868838012148030_samsung-galaxy-a30-xanh-4.png~/img/phone/636868838011728030_samsung-galaxy-a30-xanh-5.png~/img/phone/636868838018978030_samsung-galaxy-a30-xanh-3.png~', 1000, 1, 1500000, 0);
INSERT INTO `product` VALUES ('No.00543135', 'DT', 'SAM', 'Samsung Galaxy A30 - 64GB ', 6590000, '/img/phone/636912614574572070_samsung-galaxy-a30-xanh-1.png~/img/phone/636868838012148030_samsung-galaxy-a30-xanh-4.png~/img/phone/636868838011728030_samsung-galaxy-a30-xanh-5.png~/img/phone/636868838018978030_samsung-galaxy-a30-xanh-3.png~', 1000, 1, 1500000, 0);
INSERT INTO `product` VALUES ('No.00543137', 'DT', 'SAM', 'Samsung Galaxy A50 ', 5490000, '/img/phone/636880897344731431_ss-galaxy-a50-xanh-1.png~/img/phone/636880897344451431_ss-galaxy-a50-xanh-2.png~/img/phone/636880897344041431_ss-galaxy-a50-xanh-3.png~/img/phone/636880897348111431_ss-galaxy-a50-xanh-4.png~/img/phone/636880897346861431_ss-ga', 1000, 1, 1500000, 0);
INSERT INTO `product` VALUES ('No.00543138', 'DT', 'SAM', 'Samsung Galaxy A50 ', 6490000, '/img/phone/636880897344731431_ss-galaxy-a50-xanh-1.png~/img/phone/636880897344451431_ss-galaxy-a50-xanh-2.png~/img/phone/636880897344041431_ss-galaxy-a50-xanh-3.png~/img/phone/636880897348111431_ss-galaxy-a50-xanh-4.png~/img/phone/636880897346861431_ss-ga', 1000, 1, 1500000, 0);
INSERT INTO `product` VALUES ('No.00543143', 'DT', 'SAM', 'Samsung Galaxy S10 ', 12990000, '/img/phone/636863643187455627_ss-galaxy-s10-trang-1.png~/img/phone/636863643187365636_ss-galaxy-s10-trang-2.png~/img/phone/636863643186995673_ss-galaxy-s10-trang-3.png~/img/phone/636863643186615711_ss-galaxy-s10-trang-4.png~', 1000, 1, 1500000, 0);
INSERT INTO `product` VALUES ('No.00555882', 'DT', 'SAM', 'Samsung Galaxy A20 ', 7890000, '/img/phone/636891307002642548_ss-galaxy-a20-do-1.png~', 1000, 1, 1500000, 0);
INSERT INTO `product` VALUES ('No.00555884', 'DT', 'SAM', 'Samsung Galaxy A70 ', 8790000, '/img/phone/636907475981220637_samsung-galaxy-a70-den-1.png~/img/phone/636907475980100637_samsung-galaxy-a70-den-2.png~/img/phone/636907475976810637_samsung-galaxy-a70-den-3.png~/img/phone/636907475976490637_samsung-galaxy-a70-den-4.png~', 1000, 1, 1500000, 0);
INSERT INTO `product` VALUES ('No.00558932', 'DT', 'XIA', 'Xiaomi Redmi Note 7 64GB ', 15000000, '/img/phone/636887569650284152_xiaomi-redmi-note-7-1.png~', 1000, 1, 1500000, 0);
INSERT INTO `product` VALUES ('No.00560169', 'DT', 'XIA', 'Xiaomi Redmi 7 3GB-32GB ', 15000000, '/img/phone/636888638313721946_xiaomi-redmi-7-den-1.png~', 1000, 1, 1500000, 0);
INSERT INTO `product` VALUES ('No.00560172', 'DT', 'XIA', 'Xiaomi Redmi 7 2GB-16GB ', 15000000, '/img/phone/636888638313721946_xiaomi-redmi-7-den-1.png~', 1000, 1, 1500000, 0);
INSERT INTO `product` VALUES ('No.00566164', 'DT', 'SAM', 'Samsung Galaxy A80 ', 9990000, '/img/phone/636907523746637260_samsung-galaxy-a80-vang-1.png~/img/phone/636907523746007260_samsung-galaxy-a80-vang-2.png~/img/phone/636907523745957260_samsung-galaxy-a80-vang-3.png~/img/phone/636951725534644854_ss-a80- vang-5.png~/img/phone/636951725534332', 1000, 1, 1500000, 0);
INSERT INTO `product` VALUES ('No.00566165', 'DT', 'SAM', 'Samsung Galaxy S10+ ', 22900000, '/img/phone/636863636051023338_ss-galaxy-s10-plus-den-1.png~/img/phone/636863636050913338_ss-galaxy-s10-plus-den-2.png~/img/phone/636863636050673338_ss-galaxy-s10-plus-den-3.png~/img/phone/636863637628103338_ss-galaxy-s10-plus-den-4.png~', 1000, 1, 1500000, 0);
INSERT INTO `product` VALUES ('No.00566166', 'DT', 'SAM', 'Samsung Galaxy S10+ ', 22990000, '/img/phone/636863636051023338_ss-galaxy-s10-plus-den-1.png~/img/phone/636863636050913338_ss-galaxy-s10-plus-den-2.png~/img/phone/636863636050673338_ss-galaxy-s10-plus-den-3.png~/img/phone/636863637628103338_ss-galaxy-s10-plus-den-4.png~', 1000, 1, 1500000, 0);
INSERT INTO `product` VALUES ('No.00574553', 'DT', 'XIA', 'Xiaomi Mi 9 64GB ', 15000000, '/img/phone/636928415238970301_xiaomi-mi-9-xanh-1.png~', 1000, 1, 1500000, 0);
INSERT INTO `product` VALUES ('No.00576711', 'DT', 'SAM', 'Samsung Galaxy A10 ', 4390000, '/img/phone/636933637955357473_samsung-galaxy-a10-den-1.png~', 1000, 1, 1500000, 0);
INSERT INTO `product` VALUES ('No.00593504', 'DT', 'XIA', 'Xiaomi Mi 9T 128GB ', 15000000, '/img/phone/636994743728810745_xiaomi-mi-9t-xanh-1.png~', 1000, 1, 1500000, 0);
INSERT INTO `product` VALUES ('No.00593506', 'DT', 'XIA', 'Xiaomi Redmi 7A 32GB ', 15000000, '/img/phone/636994958321498457_xiaomi-redmi-7a-xanh-1.png~', 1000, 1, 1500000, 0);
INSERT INTO `product` VALUES ('No.00593510', 'DT', 'XIA', 'Xiaomi Mi 9T 64GB ', 15000000, '/img/phone/636994743728810745_xiaomi-mi-9t-xanh-1.png~', 1000, 1, 1500000, 0);
INSERT INTO `product` VALUES ('No.00594152', 'DT', 'XIA', 'Xiaomi Mi A3 64GB ', 15000000, '/img/phone/636995644032612351_xiaomi-mi-a3-xam-1.png~', 1000, 1, 1500000, 0);
INSERT INTO `product` VALUES ('No.00594679', 'DT', 'SAM', 'Samsung Galaxy Note 10 ', 22990000, '/img/phone/637008587939942324_SS-note-10-glow-1.png~/img/phone/637008587939151850_SS-note-10-glow-2.png~/img/phone/637008587938711586_SS-note-10-glow-3.png~/img/phone/637008587935549690_SS-note-10-glow-4.png~/img/phone/637008587935229498_SS-note-10-glow-5', 1000, 1, 1500000, 0);
INSERT INTO `product` VALUES ('No.00594681', 'DT', 'SAM', 'Samsung Galaxy Note 10+ ', 26990000, '/img/phone/637008702547566121_SS-note-10-pl-glow-1-1.png~/img/phone/637008691896256121_SS-note-10-pl-glow-2.png~/img/phone/637008691896296121_SS-note-10-pl-glow-4.png~/img/phone/637008691896296121_SS-note-10-pl-glow-3.png~/img/phone/637008691895586121_SS-', 1000, 1, 1500000, 0);
INSERT INTO `product` VALUES ('No.00594684', 'DT', 'SAM', 'Samsung Galaxy A30s ', 5590000, '/img/phone/637027741626632925_ss-a30s-den-1.png~/img/phone/637027741626632925_ss-a30s-den-2.png~/img/phone/637027741626320955_ss-a30s-den-3.png~', 1000, 1, 1500000, 0);
INSERT INTO `product` VALUES ('No.00594687', 'DT', 'SAM', 'Samsung Galaxy A50s ', 6990000, '/img/phone/637030967816819060_ss-a50s-den-1.png~/img/phone/637030967816506704_ss-a50s-den-2.png~/img/phone/637030967816506704_ss-a50s-den-3.png~/img/phone/637030967816819060_ss-a50s-den-4.png~', 1000, 1, 1500000, 0);
INSERT INTO `product` VALUES ('No.00594690', 'DT', 'SAM', 'Samsung Galaxy A10s ', 4990000, '/img/phone/637012880064673970_SS-a10s-den-1.png~', 1000, 1, 1500000, 0);
INSERT INTO `product` VALUES ('No.00595085', 'DT', 'SAM', 'Samsung Galaxy S10e ', 22900000, '/img/phone/637008129845765817_SS-S10e-green-1.png~/img/phone/637008129843825817_SS-S10e-green-2.png~/img/phone/637008129843485817_SS-S10e-green-3.png~', 1000, 1, 1500000, 0);
INSERT INTO `product` VALUES ('No.00606098', 'DT', 'APP', 'iPhone 11 Pro 64GB ', 33990000, '/img/phone/637037672778988772_11-pro-xanh.png~', 1000, 1, 1500000, 0);
INSERT INTO `product` VALUES ('No.00606102', 'DT', 'APP', 'iPhone 11 Pro 256GB ', 37990000, '/img/phone/637037672778988772_11-pro-xanh.png~', 1000, 1, 1500000, 0);
INSERT INTO `product` VALUES ('No.00606106', 'DT', 'APP', 'iPhone 11 Pro 512GB ', 43990000, '/img/phone/637037672778988772_11-pro-xanh.png~', 1000, 1, 1500000, 3);
INSERT INTO `product` VALUES ('No.00606110', 'DT', 'APP', 'iPhone 11 Pro Max 64GB ', 33990000, '/img/phone/637037687763926758_11-pro-max-xanh.png~', 1000, 1, 1500000, 0);
INSERT INTO `product` VALUES ('No.00606111', 'DT', 'APP', 'iPhone 11 Pro Max 256GB ', 37990000, '/img/phone/637037687765081535_11-pro-max-vang.png~', 1000, 1, 1500000, 0);
INSERT INTO `product` VALUES ('No.00606118', 'DT', 'APP', 'iPhone 11 Pro Max 512GB ', 43990000, '/img/phone/637037687763926758_11-pro-max-xanh.png~', 1000, 1, 1500000, 0);
INSERT INTO `product` VALUES ('No.00606119', 'DT', 'APP', 'iPhone 11 64GB ', 25990000, '/img/phone/637037652463329577_11-do.png~', 1000, 1, 1500000, 0);
INSERT INTO `product` VALUES ('No.00606125', 'DT', 'APP', 'iPhone 11 128GB ', 25990000, '/img/phone/637037652463329577_11-do.png~', 1000, 1, 1500000, 0);
INSERT INTO `product` VALUES ('No.00606131', 'DT', 'APP', 'iPhone 11 256GB ', 26990000, '/img/phone/637037652463329577_11-do.png~', 1000, 1, 1500000, 4);
INSERT INTO `product` VALUES ('No.00608808', 'DT', 'XIA', 'Xiaomi Redmi Note 8 Pro 6GB-64GB ', 15000000, '/img/phone/637060435932431657_xiaomi-redmi-note-8-pro-xanh-1.png~', 1000, 1, 1500000, 0);
INSERT INTO `product` VALUES ('No.00608809', 'DT', 'XIA', 'Xiaomi Redmi Note 8 4GB-64GB ', 15000000, '/img/phone/637060410960077373_xiaomi-redmi-note-8-xanh-1.png~', 1000, 1, 1500000, 0);
INSERT INTO `product` VALUES ('No.00611334', 'DT', 'SAM', 'Samsung Galaxy A20s 32GB ', 4390000, '/img/phone/637049168849441623_ss-a20s-xanh-1.png~/img/phone/637049168849131639_ss-a20s-xanh-2.png~/img/phone/637049168849121650_ss-a20s-xanh-3.png~/img/phone/637049168848951724_ss-a20s-xanh-4.png~/img/phone/637049168848152311_ss-a20s-xanh-5.png~', 1000, 1, 1500000, 0);
INSERT INTO `product` VALUES ('No.00612101', 'DT', 'XIA', 'Xiaomi Redmi 7A 16GB ', 15000000, '/img/phone/636994958321498457_xiaomi-redmi-7a-xanh-1.png~', 1000, 1, 1500000, 0);
INSERT INTO `product` VALUES ('No.00614395', 'DT', 'XIA', 'Xiaomi Redmi Note 8 Pro 6GB-128GB ', 15000000, '/img/phone/637060441292208256_xiaomi-redmi-note-8-pro-den-1.png~', 1000, 1, 1500000, 0);
INSERT INTO `product` VALUES ('No.00615142', 'DT', 'XIA', 'Xiaomi Redmi Note 8 4GB-128GB ', 15000000, '/img/phone/637060410960077373_xiaomi-redmi-note-8-xanh-1.png~', 1000, 1, 1500000, 0);
INSERT INTO `product` VALUES ('No.00619318', 'DT', 'XIA', 'Xiaomi Redmi 8A 2GB - 32GB ', 15000000, '/img/phone/637072701542091596_xiaomi-redmi-8a-den-1.png~', 1000, 1, 1500000, 0);
INSERT INTO `product` VALUES ('No.00622392', 'DT', 'XIA', 'Xiaomi Redmi Note 8 3GB-32GB ', 15000000, '/img/phone/637060418361864075_xiaomi-redmi-note-8-den-1.png~', 1000, 1, 1500000, 0);
INSERT INTO `product` VALUES ('No.00631292', 'DT', 'SAM', 'Samsung Galaxy Fold ', 50000000, '/img/phone/637102754985873870_samsung-galaxy-fold-den-0.png~/img/phone/637102750659229623_samsung-galaxy-fold-den-1.png~/img/phone/637102750659209597_samsung-galaxy-fold-den-3.png~/img/phone/637102750658709593_samsung-galaxy-fold-den-2.png~/img/phone/6371', 1000, 1, 1500000, 0);

-- ----------------------------
-- Table structure for role
-- ----------------------------
DROP TABLE IF EXISTS `role`;
CREATE TABLE `role`  (
  `idRole` bigint(20) NOT NULL AUTO_INCREMENT,
  `name` varchar(255) CHARACTER SET utf8 COLLATE utf8_unicode_ci NULL DEFAULT NULL,
  PRIMARY KEY (`idRole`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 3 CHARACTER SET = utf8 COLLATE = utf8_unicode_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of role
-- ----------------------------
INSERT INTO `role` VALUES (1, 'ROLE_ADMIN');
INSERT INTO `role` VALUES (2, 'ROLE_USER');

-- ----------------------------
-- Table structure for supplier
-- ----------------------------
DROP TABLE IF EXISTS `supplier`;
CREATE TABLE `supplier`  (
  `ID_SUPPLIER` varchar(255) CHARACTER SET utf8 COLLATE utf8_unicode_ci NOT NULL,
  `ACTIVE` int(11) NOT NULL,
  `NAME_SUPPLIER` varchar(255) CHARACTER SET utf8 COLLATE utf8_unicode_ci NULL DEFAULT NULL,
  PRIMARY KEY (`ID_SUPPLIER`) USING BTREE
) ENGINE = InnoDB CHARACTER SET = utf8 COLLATE = utf8_unicode_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of supplier
-- ----------------------------
INSERT INTO `supplier` VALUES ('APP', 1, 'Apple');
INSERT INTO `supplier` VALUES ('SAM', 1, 'Samsung');
INSERT INTO `supplier` VALUES ('XIA', 1, 'Xiaomi');

-- ----------------------------
-- Table structure for user
-- ----------------------------
DROP TABLE IF EXISTS `user`;
CREATE TABLE `user`  (
  `USER_NAME` varchar(50) CHARACTER SET utf8 COLLATE utf8_unicode_ci NOT NULL,
  `CODE` varchar(255) CHARACTER SET utf8 COLLATE utf8_unicode_ci NULL DEFAULT NULL,
  `EMAIL` varchar(255) CHARACTER SET utf8 COLLATE utf8_unicode_ci NULL DEFAULT NULL,
  `FULLNAME` varchar(255) CHARACTER SET utf8 COLLATE utf8_unicode_ci NULL DEFAULT NULL,
  `PASSWORD` varchar(1000) CHARACTER SET utf8 COLLATE utf8_unicode_ci NULL DEFAULT NULL,
  `PHONE` varchar(255) CHARACTER SET utf8 COLLATE utf8_unicode_ci NULL DEFAULT NULL,
  `idRole` bigint(20) NULL DEFAULT NULL,
  PRIMARY KEY (`USER_NAME`) USING BTREE,
  INDEX `FK6gm7vbjyv8qqbs7sj72cbjh51`(`idRole`) USING BTREE,
  CONSTRAINT `FK6gm7vbjyv8qqbs7sj72cbjh51` FOREIGN KEY (`idRole`) REFERENCES `role` (`idRole`) ON DELETE RESTRICT ON UPDATE RESTRICT
) ENGINE = InnoDB CHARACTER SET = utf8 COLLATE = utf8_unicode_ci ROW_FORMAT = Dynamic;

SET FOREIGN_KEY_CHECKS = 1;
