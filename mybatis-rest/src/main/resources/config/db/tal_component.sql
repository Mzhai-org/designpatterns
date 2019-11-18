/*
 Navicat Premium Data Transfer

 Source Server         : question-api-local
 Source Server Type    : MySQL
 Source Server Version : 50721
 Source Host           : localhost:3306
 Source Schema         : tal_component

 Target Server Type    : MySQL
 Target Server Version : 50721
 File Encoding         : 65001

 Date: 18/11/2019 17:06:21
*/

SET NAMES utf8mb4;
SET FOREIGN_KEY_CHECKS = 0;

-- ----------------------------
-- Table structure for quapi_config
-- ----------------------------
DROP TABLE IF EXISTS `quapi_config`;
CREATE TABLE `quapi_config`  (
  `id` int(11) NOT NULL COMMENT '扩展性及个性化站点配置id',
  `code` varchar(128) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NOT NULL COMMENT '配置代码',
  `name` varchar(512) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT '' COMMENT '配置名称',
  `value` varchar(2048) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT '' COMMENT '配置内容',
  `domain` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT '' COMMENT '配置应用的域名',
  `type` varchar(32) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NOT NULL DEFAULT '' COMMENT '配置分组类型',
  `descs` varchar(2048) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL,
  `phase` int(11) NULL DEFAULT NULL,
  `org_id` varchar(32) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT '0' COMMENT '所属机构id',
  `enable` tinyint(1) NOT NULL DEFAULT 1 COMMENT '1 启用， 0 禁用',
  `can_override` tinyint(1) NULL DEFAULT 0 COMMENT '是否允许个性化： 1 允许，0 不允许',
  `crt_dttm` datetime(0) NULL DEFAULT NULL COMMENT '创建时间',
  `lastup_dttm` datetime(0) NULL DEFAULT NULL COMMENT '最后更新时间',
  `crt_id` char(32) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL COMMENT '创建人ID',
  `lastup_id` char(32) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL COMMENT '最后更新人ID',
  `sort` int(11) NULL DEFAULT NULL,
  `subject_id` int(11) NULL DEFAULT NULL,
  `area_id` int(11) NULL DEFAULT 0,
  `grade_id` int(11) NULL DEFAULT NULL,
  `platform_id` int(11) NULL DEFAULT NULL,
  PRIMARY KEY (`id`) USING BTREE,
  INDEX `idx_code`(`code`) USING BTREE
) ENGINE = InnoDB CHARACTER SET = utf8mb4 COLLATE = utf8mb4_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of quapi_config
-- ----------------------------
INSERT INTO `quapi_config` VALUES (3, 'phase', '小学', '3', '', 'sys', '', NULL, '', 1, 0, '2018-09-01 10:55:56', '2018-09-01 10:55:56', '', '', 2, NULL, NULL, NULL, 0);
INSERT INTO `quapi_config` VALUES (4, 'phase', '初中', '4', '', 'sys', '', NULL, '', 1, 0, '2018-09-01 10:55:56', '2018-09-01 10:55:56', '', '', 3, NULL, NULL, NULL, 0);
INSERT INTO `quapi_config` VALUES (5, 'phase', '高中', '5', '', 'sys', '', NULL, '', 1, 0, '2018-09-01 10:55:56', '2018-09-01 10:55:56', '', '', 4, NULL, NULL, NULL, 0);
INSERT INTO `quapi_config` VALUES (6, 'grade', '一年级', '6', '', 'sys', '', NULL, '', 1, 0, '2018-09-01 10:55:56', '2018-09-01 10:55:56', '', '', NULL, NULL, NULL, NULL, 0);
INSERT INTO `quapi_config` VALUES (7, 'grade', '二年级', '7', '', 'sys', '', NULL, '', 1, 0, '2018-09-01 10:55:56', '2018-09-01 10:55:56', '', '', NULL, NULL, NULL, NULL, 0);
INSERT INTO `quapi_config` VALUES (8, 'grade', '三年级', '8', '', 'sys', '', NULL, '', 1, 0, '2018-09-01 10:55:56', '2018-09-01 10:55:56', '', '', NULL, NULL, NULL, NULL, 0);
INSERT INTO `quapi_config` VALUES (9, 'grade', '四年级', '9', '', 'sys', '', NULL, '', 1, 0, '2018-09-01 10:55:56', '2018-09-01 10:55:56', '', '', NULL, NULL, NULL, NULL, 0);
INSERT INTO `quapi_config` VALUES (10, 'grade', '五年级', '10', '', 'sys', '', NULL, '', 1, 0, '2018-09-01 10:55:56', '2018-09-01 10:55:56', '', '', NULL, NULL, NULL, NULL, 0);
INSERT INTO `quapi_config` VALUES (11, 'grade', '六年级', '11', '', 'sys', '', NULL, '', 1, 0, '2018-09-01 10:55:56', '2018-09-01 10:55:56', '', '', NULL, NULL, NULL, NULL, 0);
INSERT INTO `quapi_config` VALUES (12, 'grade', '七年级', '12', '', 'sys', '', NULL, '', 1, 0, '2018-09-01 10:55:56', '2018-09-01 10:55:56', '', '', NULL, NULL, NULL, NULL, 0);
INSERT INTO `quapi_config` VALUES (13, 'grade', '八年级', '13', '', 'sys', '', NULL, '', 1, 0, '2018-09-01 10:55:56', '2018-09-01 10:55:56', '', '', NULL, NULL, NULL, NULL, 0);
INSERT INTO `quapi_config` VALUES (14, 'grade', '九年级', '14', '', 'sys', '', NULL, '', 1, 0, '2018-09-01 10:55:56', '2018-09-01 10:55:56', '', '', NULL, NULL, NULL, NULL, 0);
INSERT INTO `quapi_config` VALUES (15, 'grade', '初中通用', '15', '', 'sys', '', NULL, '', 0, 0, '2018-09-01 10:55:56', '2018-09-01 10:55:56', '', '', NULL, NULL, NULL, NULL, 0);
INSERT INTO `quapi_config` VALUES (16, 'grade', '高中通用', '16', '', 'sys', '', NULL, '', 0, 0, '2018-09-01 10:55:56', '2018-09-01 10:55:56', '', '', NULL, NULL, NULL, NULL, 0);
INSERT INTO `quapi_config` VALUES (17, 'grade', '必修1', '17', '', 'sys', '', NULL, '', 0, 0, '2018-09-01 10:55:56', '2018-09-01 10:55:56', '', '', NULL, NULL, NULL, NULL, 0);
INSERT INTO `quapi_config` VALUES (18, 'grade', '必修2', '18', '', 'sys', '', NULL, '', 0, 0, '2018-09-01 10:55:56', '2018-09-01 10:55:56', '', '', NULL, NULL, NULL, NULL, 0);
INSERT INTO `quapi_config` VALUES (19, 'grade', '必修3', '19', '', 'sys', '', NULL, '', 0, 0, '2018-09-01 10:55:56', '2018-09-01 10:55:56', '', '', NULL, NULL, NULL, NULL, 0);
INSERT INTO `quapi_config` VALUES (20, 'grade', '必修4', '20', '', 'sys', '', NULL, '', 0, 0, '2018-09-01 10:55:56', '2018-09-01 10:55:56', '', '', NULL, NULL, NULL, NULL, 0);
INSERT INTO `quapi_config` VALUES (21, 'grade', '必修5', '21', '', 'sys', '', NULL, '', 0, 0, '2018-09-01 10:55:56', '2018-09-01 10:55:56', '', '', NULL, NULL, NULL, NULL, 0);
INSERT INTO `quapi_config` VALUES (22, 'grade', '必修6', '22', '', 'sys', '', NULL, '', 0, 0, '2018-09-01 10:55:56', '2018-09-01 10:55:56', '', '', NULL, NULL, NULL, NULL, 0);
INSERT INTO `quapi_config` VALUES (23, 'grade', '必修7', '23', '', 'sys', '', NULL, '', 0, 0, '2018-09-01 10:55:56', '2018-09-01 10:55:56', '', '', NULL, NULL, NULL, NULL, 0);
INSERT INTO `quapi_config` VALUES (24, 'grade', '必修8', '24', '', 'sys', '', NULL, '', 0, 0, '2018-09-01 10:55:56', '2018-09-01 10:55:56', '', '', NULL, NULL, NULL, NULL, 0);
INSERT INTO `quapi_config` VALUES (25, 'grade', '必修9', '25', '', 'sys', '', NULL, '', 0, 0, '2018-09-01 10:55:56', '2018-09-01 10:55:56', '', '', NULL, NULL, NULL, NULL, 0);
INSERT INTO `quapi_config` VALUES (26, 'grade', '必修10', '26', '', 'sys', '', NULL, '', 0, 0, '2018-09-01 10:55:56', '2018-09-01 10:55:56', '', '', NULL, NULL, NULL, NULL, 0);
INSERT INTO `quapi_config` VALUES (27, 'grade', '必修11', '27', '', 'sys', '', NULL, '', 0, 0, '2018-09-01 10:55:56', '2018-09-01 10:55:56', '', '', NULL, NULL, NULL, NULL, 0);
INSERT INTO `quapi_config` VALUES (28, 'grade', '高一', '28', '', 'sys', NULL, NULL, '', 1, 0, '2018-09-01 10:55:56', '2018-09-01 10:55:56', '', '', NULL, NULL, NULL, NULL, 0);
INSERT INTO `quapi_config` VALUES (29, 'grade', '高二', '29', '', 'sys', NULL, NULL, '', 1, 0, '2018-09-01 10:55:56', '2018-09-01 10:55:56', '', '', NULL, NULL, NULL, NULL, 0);
INSERT INTO `quapi_config` VALUES (30, 'grade', '高三', '30', '', 'sys', NULL, NULL, '', 1, 0, '2018-09-01 10:55:56', '2018-09-01 10:55:56', '', '', NULL, NULL, NULL, NULL, 0);
INSERT INTO `quapi_config` VALUES (31, 'grade', '小学通用', '31', '', 'sys', '', NULL, '', 0, 0, '2018-09-01 10:55:56', '2018-09-01 10:55:56', '', '', NULL, NULL, NULL, NULL, 0);
INSERT INTO `quapi_config` VALUES (32, 'grade', '选修1', '32', '', 'sys', '', NULL, '', 0, 0, '2018-09-01 10:55:56', '2018-09-01 10:55:56', '', '', NULL, NULL, NULL, NULL, 0);
INSERT INTO `quapi_config` VALUES (33, 'grade', '选修2', '33', '', 'sys', '', NULL, '', 0, 0, '2018-09-01 10:55:56', '2018-09-01 10:55:56', '', '', NULL, NULL, NULL, NULL, 0);
INSERT INTO `quapi_config` VALUES (34, 'grade', '选修3', '34', '', 'sys', '', NULL, '', 0, 0, '2018-09-01 10:55:56', '2018-09-01 10:55:56', '', '', NULL, NULL, NULL, NULL, 0);
INSERT INTO `quapi_config` VALUES (35, 'grade', '模块1', '35', '', 'sys', '', NULL, '', 0, 0, '2018-09-01 10:55:56', '2018-09-01 10:55:56', '', '', NULL, NULL, NULL, NULL, 0);
INSERT INTO `quapi_config` VALUES (36, 'grade', '模块2', '36', '', 'sys', '', NULL, '', 0, 0, '2018-09-01 10:55:56', '2018-09-01 10:55:56', '', '', NULL, NULL, NULL, NULL, 0);
INSERT INTO `quapi_config` VALUES (37, 'grade', '模块3', '37', '', 'sys', '', NULL, '', 0, 0, '2018-09-01 10:55:56', '2018-09-01 10:55:56', '', '', NULL, NULL, NULL, NULL, 0);
INSERT INTO `quapi_config` VALUES (38, 'grade', '模块4', '38', '', 'sys', '', NULL, '', 0, 0, '2018-09-01 10:55:56', '2018-09-01 10:55:56', '', '', NULL, NULL, NULL, NULL, 0);
INSERT INTO `quapi_config` VALUES (39, 'grade', '必修', '39', '', 'sys', '', NULL, '', 0, 0, '2018-09-01 10:55:56', '2018-09-01 10:55:56', '', '', NULL, NULL, NULL, NULL, 0);
INSERT INTO `quapi_config` VALUES (40, 'grade', '选修', '40', '', 'sys', '', NULL, '', 0, 0, '2018-09-01 10:55:56', '2018-09-01 10:55:56', '', '', NULL, NULL, NULL, NULL, 0);
INSERT INTO `quapi_config` VALUES (41, 'grade', '选修4', '41', '', 'sys', '', NULL, '', 0, 0, '2018-09-01 10:55:56', '2018-09-01 10:55:56', '', '', NULL, NULL, NULL, NULL, 0);
INSERT INTO `quapi_config` VALUES (42, 'grade', '选修5', '42', '', 'sys', '', NULL, '', 0, 0, '2018-09-01 10:55:56', '2018-09-01 10:55:56', '', '', NULL, NULL, NULL, NULL, 0);
INSERT INTO `quapi_config` VALUES (43, 'grade', '选修6', '43', '', 'sys', '', NULL, '', 0, 0, '2018-09-01 10:55:56', '2018-09-01 10:55:56', '', '', NULL, NULL, NULL, NULL, 0);
INSERT INTO `quapi_config` VALUES (44, 'grade', '选修7', '44', '', 'sys', '', NULL, '', 0, 0, '2018-09-01 10:55:56', '2018-09-01 10:55:56', '', '', NULL, NULL, NULL, NULL, 0);
INSERT INTO `quapi_config` VALUES (45, 'grade', '选修8', '45', '', 'sys', '', NULL, '', 0, 0, '2018-09-01 10:55:56', '2018-09-01 10:55:56', '', '', NULL, NULL, NULL, NULL, 0);
INSERT INTO `quapi_config` VALUES (46, 'grade', '选修9', '46', '', 'sys', '', NULL, '', 0, 0, '2018-09-01 10:55:56', '2018-09-01 10:55:56', '', '', NULL, NULL, NULL, NULL, 0);
INSERT INTO `quapi_config` VALUES (47, 'grade', '选修10', '47', '', 'sys', '', NULL, '', 0, 0, '2018-09-01 10:55:56', '2018-09-01 10:55:56', '', '', NULL, NULL, NULL, NULL, 0);
INSERT INTO `quapi_config` VALUES (48, 'grade', '选修11', '48', '', 'sys', '', NULL, '', 0, 0, '2018-09-01 10:55:56', '2018-09-01 10:55:56', '', '', NULL, NULL, NULL, NULL, 0);
INSERT INTO `quapi_config` VALUES (49, 'grade', '选修1-1', '49', '', 'sys', '', NULL, '', 0, 0, '2018-09-01 10:55:56', '2018-09-01 10:55:56', '', '', NULL, NULL, NULL, NULL, 0);
INSERT INTO `quapi_config` VALUES (50, 'grade', '选修1-2', '50', '', 'sys', '', NULL, '', 0, 0, '2018-09-01 10:55:56', '2018-09-01 10:55:56', '', '', NULL, NULL, NULL, NULL, 0);
INSERT INTO `quapi_config` VALUES (51, 'grade', '选修1-3', '51', '', 'sys', '', NULL, '', 0, 0, '2018-09-01 10:55:56', '2018-09-01 10:55:56', '', '', NULL, NULL, NULL, NULL, 0);
INSERT INTO `quapi_config` VALUES (52, 'grade', '选修1-4', '52', '', 'sys', '', NULL, '', 0, 0, '2018-09-01 10:55:56', '2018-09-01 10:55:56', '', '', NULL, NULL, NULL, NULL, 0);
INSERT INTO `quapi_config` VALUES (53, 'grade', '选修1-5', '53', '', 'sys', '', NULL, '', 0, 0, '2018-09-01 10:55:56', '2018-09-01 10:55:56', '', '', NULL, NULL, NULL, NULL, 0);
INSERT INTO `quapi_config` VALUES (54, 'grade', '选修1-6', '54', '', 'sys', '', NULL, '', 0, 0, '2018-09-01 10:55:56', '2018-09-01 10:55:56', '', '', NULL, NULL, NULL, NULL, 0);
INSERT INTO `quapi_config` VALUES (55, 'grade', '选修1-7', '55', '', 'sys', '', NULL, '', 0, 0, '2018-09-01 10:55:56', '2018-09-01 10:55:56', '', '', NULL, NULL, NULL, NULL, 0);
INSERT INTO `quapi_config` VALUES (56, 'grade', '选修1-8', '56', '', 'sys', '', NULL, '', 0, 0, '2018-09-01 10:55:56', '2018-09-01 10:55:56', '', '', NULL, NULL, NULL, NULL, 0);
INSERT INTO `quapi_config` VALUES (57, 'grade', '选修1-9', '57', '', 'sys', '', NULL, '', 0, 0, '2018-09-01 10:55:56', '2018-09-01 10:55:56', '', '', NULL, NULL, NULL, NULL, 0);
INSERT INTO `quapi_config` VALUES (58, 'grade', '选修1-10', '58', '', 'sys', '', NULL, '', 0, 0, '2018-09-01 10:55:56', '2018-09-01 10:55:56', '', '', NULL, NULL, NULL, NULL, 0);
INSERT INTO `quapi_config` VALUES (59, 'grade', '选修2-1', '59', '', 'sys', '', NULL, '', 0, 0, '2018-09-01 10:55:56', '2018-09-01 10:55:56', '', '', NULL, NULL, NULL, NULL, 0);
INSERT INTO `quapi_config` VALUES (60, 'grade', '选修2-2', '60', '', 'sys', '', NULL, '', 0, 0, '2018-09-01 10:55:56', '2018-09-01 10:55:56', '', '', NULL, NULL, NULL, NULL, 0);
INSERT INTO `quapi_config` VALUES (61, 'grade', '选修2-3', '61', '', 'sys', '', NULL, '', 0, 0, '2018-09-01 10:55:56', '2018-09-01 10:55:56', '', '', NULL, NULL, NULL, NULL, 0);
INSERT INTO `quapi_config` VALUES (62, 'grade', '选修2-4', '62', '', 'sys', '', NULL, '', 0, 0, '2018-09-01 10:55:56', '2018-09-01 10:55:56', '', '', NULL, NULL, NULL, NULL, 0);
INSERT INTO `quapi_config` VALUES (63, 'grade', '选修2-5', '63', '', 'sys', '', NULL, '', 0, 0, '2018-09-01 10:55:56', '2018-09-01 10:55:56', '', '', NULL, NULL, NULL, NULL, 0);
INSERT INTO `quapi_config` VALUES (64, 'grade', '选修2-6', '64', '', 'sys', '', NULL, '', 0, 0, '2018-09-01 10:55:56', '2018-09-01 10:55:56', '', '', NULL, NULL, NULL, NULL, 0);
INSERT INTO `quapi_config` VALUES (65, 'grade', '选修2-7', '65', '', 'sys', '', NULL, '', 0, 0, '2018-09-01 10:55:56', '2018-09-01 10:55:56', '', '', NULL, NULL, NULL, NULL, 0);
INSERT INTO `quapi_config` VALUES (66, 'grade', '选修2-8', '66', '', 'sys', '', NULL, '', 0, 0, '2018-09-01 10:55:56', '2018-09-01 10:55:56', '', '', NULL, NULL, NULL, NULL, 0);
INSERT INTO `quapi_config` VALUES (67, 'grade', '选修2-9', '67', '', 'sys', '', NULL, '', 0, 0, '2018-09-01 10:55:56', '2018-09-01 10:55:56', '', '', NULL, NULL, NULL, NULL, 0);
INSERT INTO `quapi_config` VALUES (68, 'grade', '选修2-10', '68', '', 'sys', '', NULL, '', 0, 0, '2018-09-01 10:55:56', '2018-09-01 10:55:56', '', '', NULL, NULL, NULL, NULL, 0);
INSERT INTO `quapi_config` VALUES (69, 'grade', '选修3-1', '69', '', 'sys', '', NULL, '', 0, 0, '2018-09-01 10:55:56', '2018-09-01 10:55:56', '', '', NULL, NULL, NULL, NULL, 0);
INSERT INTO `quapi_config` VALUES (70, 'grade', '选修3-2', '70', '', 'sys', '', NULL, '', 0, 0, '2018-09-01 10:55:56', '2018-09-01 10:55:56', '', '', NULL, NULL, NULL, NULL, 0);
INSERT INTO `quapi_config` VALUES (71, 'grade', '选修3-3', '71', '', 'sys', '', NULL, '', 0, 0, '2018-09-01 10:55:56', '2018-09-01 10:55:56', '', '', NULL, NULL, NULL, NULL, 0);
INSERT INTO `quapi_config` VALUES (72, 'grade', '选修3-4', '72', '', 'sys', '', NULL, '', 0, 0, '2018-09-01 10:55:56', '2018-09-01 10:55:56', '', '', NULL, NULL, NULL, NULL, 0);
INSERT INTO `quapi_config` VALUES (73, 'grade', '选修3-5', '73', '', 'sys', '', NULL, '', 0, 0, '2018-09-01 10:55:56', '2018-09-01 10:55:56', '', '', NULL, NULL, NULL, NULL, 0);
INSERT INTO `quapi_config` VALUES (74, 'grade', '选修3-6', '74', '', 'sys', '', NULL, '', 0, 0, '2018-09-01 10:55:56', '2018-09-01 10:55:56', '', '', NULL, NULL, NULL, NULL, 0);
INSERT INTO `quapi_config` VALUES (75, 'grade', '选修3-7', '75', '', 'sys', '', NULL, '', 0, 0, '2018-09-01 10:55:56', '2018-09-01 10:55:56', '', '', NULL, NULL, NULL, NULL, 0);
INSERT INTO `quapi_config` VALUES (76, 'grade', '选修3-8', '76', '', 'sys', '', NULL, '', 0, 0, '2018-09-01 10:55:56', '2018-09-01 10:55:56', '', '', NULL, NULL, NULL, NULL, 0);
INSERT INTO `quapi_config` VALUES (77, 'grade', '选修3-9', '77', '', 'sys', '', NULL, '', 0, 0, '2018-09-01 10:55:56', '2018-09-01 10:55:56', '', '', NULL, NULL, NULL, NULL, 0);
INSERT INTO `quapi_config` VALUES (78, 'grade', '选修3-10', '78', '', 'sys', '', NULL, '', 0, 0, '2018-09-01 10:55:56', '2018-09-01 10:55:56', '', '', NULL, NULL, NULL, NULL, 0);
INSERT INTO `quapi_config` VALUES (79, 'grade', '选修4-1', '79', '', 'sys', '', NULL, '', 0, 0, '2018-09-01 10:55:56', '2018-09-01 10:55:56', '', '', NULL, NULL, NULL, NULL, 0);
INSERT INTO `quapi_config` VALUES (80, 'grade', '选修4-2', '80', '', 'sys', '', NULL, '', 0, 0, '2018-09-01 10:55:56', '2018-09-01 10:55:56', '', '', NULL, NULL, NULL, NULL, 0);
INSERT INTO `quapi_config` VALUES (81, 'grade', '选修4-3', '81', '', 'sys', '', NULL, '', 0, 0, '2018-09-01 10:55:56', '2018-09-01 10:55:56', '', '', NULL, NULL, NULL, NULL, 0);
INSERT INTO `quapi_config` VALUES (82, 'grade', '选修4-4', '82', '', 'sys', '', NULL, '', 0, 0, '2018-09-01 10:55:56', '2018-09-01 10:55:56', '', '', NULL, NULL, NULL, NULL, 0);
INSERT INTO `quapi_config` VALUES (83, 'grade', '选修4-5', '83', '', 'sys', '', NULL, '', 0, 0, '2018-09-01 10:55:56', '2018-09-01 10:55:56', '', '', NULL, NULL, NULL, NULL, 0);
INSERT INTO `quapi_config` VALUES (84, 'grade', '选修4-6', '84', '', 'sys', '', NULL, '', 0, 0, '2018-09-01 10:55:56', '2018-09-01 10:55:56', '', '', NULL, NULL, NULL, NULL, 0);
INSERT INTO `quapi_config` VALUES (85, 'grade', '选修4-7', '85', '', 'sys', '', NULL, '', 0, 0, '2018-09-01 10:55:56', '2018-09-01 10:55:56', '', '', NULL, NULL, NULL, NULL, 0);
INSERT INTO `quapi_config` VALUES (86, 'grade', '选修4-8', '86', '', 'sys', '', NULL, '', 0, 0, '2018-09-01 10:55:56', '2018-09-01 10:55:56', '', '', NULL, NULL, NULL, NULL, 0);
INSERT INTO `quapi_config` VALUES (87, 'grade', '选修4-9', '87', '', 'sys', '', NULL, '', 0, 0, '2018-09-01 10:55:56', '2018-09-01 10:55:56', '', '', NULL, NULL, NULL, NULL, 0);
INSERT INTO `quapi_config` VALUES (88, 'grade', '选修4-10', '88', '', 'sys', '', NULL, '', 0, 0, '2018-09-01 10:55:56', '2018-09-01 10:55:56', '', '', NULL, NULL, NULL, NULL, 0);
INSERT INTO `quapi_config` VALUES (89, 'grade', '模块5', '89', '', 'sys', '', NULL, '', 0, 0, '2018-09-01 10:55:56', '2018-09-01 10:55:56', '', '', NULL, NULL, NULL, NULL, 0);
INSERT INTO `quapi_config` VALUES (90, 'grade', '模块6', '90', '', 'sys', '', NULL, '', 0, 0, '2018-09-01 10:55:56', '2018-09-01 10:55:56', '', '', NULL, NULL, NULL, NULL, 0);
INSERT INTO `quapi_config` VALUES (91, 'grade', '模块7', '91', '', 'sys', '', NULL, '', 0, 0, '2018-09-01 10:55:56', '2018-09-01 10:55:56', '', '', NULL, NULL, NULL, NULL, 0);
INSERT INTO `quapi_config` VALUES (92, 'grade', '模块8', '92', '', 'sys', '', NULL, '', 0, 0, '2018-09-01 10:55:56', '2018-09-01 10:55:56', '', '', NULL, NULL, NULL, NULL, 0);
INSERT INTO `quapi_config` VALUES (93, 'grade', '模块9', '93', '', 'sys', '', NULL, '', 0, 0, '2018-09-01 10:55:56', '2018-09-01 10:55:56', '', '', NULL, NULL, NULL, NULL, 0);
INSERT INTO `quapi_config` VALUES (94, 'grade', '模块10', '94', '', 'sys', '', NULL, '', 0, 0, '2018-09-01 10:55:56', '2018-09-01 10:55:56', '', '', NULL, NULL, NULL, NULL, 0);
INSERT INTO `quapi_config` VALUES (95, 'grade', '模块11', '95', '', 'sys', '', NULL, '', 0, 0, '2018-09-01 10:55:56', '2018-09-01 10:55:56', '', '', NULL, NULL, NULL, NULL, 0);
INSERT INTO `quapi_config` VALUES (96, 'grade', '托班', '96', '', 'sys', '', NULL, '', 0, 0, '2018-09-01 10:55:56', '2018-09-01 10:55:56', '', '', NULL, NULL, NULL, NULL, 0);
INSERT INTO `quapi_config` VALUES (97, 'grade', '小班', '97', '', 'sys', '', NULL, '', 0, 0, '2018-09-01 10:55:56', '2018-09-01 10:55:56', '', '', NULL, NULL, NULL, NULL, 0);
INSERT INTO `quapi_config` VALUES (98, 'grade', '中班', '98', '', 'sys', '', NULL, '', 0, 0, '2018-09-01 10:55:56', '2018-09-01 10:55:56', '', '', NULL, NULL, NULL, NULL, 0);
INSERT INTO `quapi_config` VALUES (99, 'grade', '大班', '99', '', 'sys', '', NULL, '', 0, 0, '2018-09-01 10:55:56', '2018-09-01 10:55:56', '', '', NULL, NULL, NULL, NULL, 0);
INSERT INTO `quapi_config` VALUES (100, 'grade', '职教一年级', '100', '', 'sys', '', NULL, '', 0, 0, '2018-09-01 10:55:56', '2018-09-01 10:55:56', '', '', NULL, NULL, NULL, NULL, 0);
INSERT INTO `quapi_config` VALUES (101, 'grade', '职教二年级', '101', '', 'sys', '', NULL, '', 0, 0, '2018-09-01 10:55:56', '2018-09-01 10:55:56', '', '', NULL, NULL, NULL, NULL, 0);
INSERT INTO `quapi_config` VALUES (102, 'grade', '选修12', '102', '', 'sys', '', NULL, '', 0, 0, '2018-09-01 10:55:56', '2018-09-01 10:55:56', '', '', NULL, NULL, NULL, NULL, 0);
INSERT INTO `quapi_config` VALUES (103, 'subject', '语文', '103', '', 'sys', '', NULL, '', 1, 0, '2018-09-01 10:55:56', '2018-09-01 10:55:56', '', '', NULL, NULL, NULL, NULL, 0);
INSERT INTO `quapi_config` VALUES (104, 'subject', '数学', '104', '', 'sys', '', NULL, '', 1, 0, '2018-09-01 10:55:56', '2018-09-01 10:55:56', '', '', NULL, NULL, NULL, NULL, 0);
INSERT INTO `quapi_config` VALUES (105, 'subject', '英语', '105', '', 'sys', '', NULL, '', 1, 0, '2018-09-01 10:55:56', '2018-09-01 10:55:56', '', '', NULL, NULL, NULL, NULL, 0);
INSERT INTO `quapi_config` VALUES (106, 'subject', '政治', '106', '', 'sys', '', NULL, '', 1, 0, '2018-09-01 10:55:56', '2018-09-01 10:55:56', '', '', NULL, NULL, NULL, NULL, 0);
INSERT INTO `quapi_config` VALUES (107, 'subject', '物理', '107', '', 'sys', '', NULL, '', 1, 0, '2018-09-01 10:55:56', '2018-09-01 10:55:56', '', '', NULL, NULL, NULL, NULL, 0);
INSERT INTO `quapi_config` VALUES (108, 'subject', '化学', '108', '', 'sys', '', NULL, '', 1, 0, '2018-09-01 10:55:56', '2018-09-01 10:55:56', '', '', NULL, NULL, NULL, NULL, 0);
INSERT INTO `quapi_config` VALUES (109, 'subject', '生物', '109', '', 'sys', '', NULL, '', 1, 0, '2018-09-01 10:55:56', '2018-09-01 10:55:56', '', '', NULL, NULL, NULL, NULL, 0);
INSERT INTO `quapi_config` VALUES (110, 'subject', '地理', '110', '', 'sys', '', NULL, '', 1, 0, '2018-09-01 10:55:56', '2018-09-01 10:55:56', '', '', NULL, NULL, NULL, NULL, 0);
INSERT INTO `quapi_config` VALUES (111, 'subject', '思品', '111', '', 'sys', '', NULL, '', 1, 0, '2018-09-01 10:55:56', '2018-09-01 10:55:56', '', '', NULL, NULL, NULL, NULL, 0);
INSERT INTO `quapi_config` VALUES (112, 'subject', '品德与社会', '112', '', 'sys', '', NULL, '', 1, 0, '2018-09-01 10:55:56', '2018-09-01 10:55:56', '', '', NULL, NULL, NULL, NULL, 0);
INSERT INTO `quapi_config` VALUES (113, 'subject', '品德与生活', '113', '', 'sys', '', NULL, '', 1, 0, '2018-09-01 10:55:56', '2018-09-01 10:55:56', '', '', NULL, NULL, NULL, NULL, 0);
INSERT INTO `quapi_config` VALUES (114, 'subject', '信息技术', '114', '', 'sys', '', NULL, '', 1, 0, '2018-09-01 10:55:56', '2018-09-01 10:55:56', '', '', NULL, NULL, NULL, NULL, 0);
INSERT INTO `quapi_config` VALUES (115, 'subject', '科学', '115', '', 'sys', '', NULL, '', 1, 0, '2018-09-01 10:55:56', '2018-09-01 10:55:56', '', '', NULL, NULL, NULL, NULL, 0);
INSERT INTO `quapi_config` VALUES (116, 'subject', '音乐', '116', '', 'sys', '', NULL, '', 1, 0, '2018-09-01 10:55:56', '2018-09-01 10:55:56', '', '', NULL, NULL, NULL, NULL, 0);
INSERT INTO `quapi_config` VALUES (117, 'subject', '美术', '117', '', 'sys', '', NULL, '', 1, 0, '2018-09-01 10:55:56', '2018-09-01 10:55:56', '', '', NULL, NULL, NULL, NULL, 0);
INSERT INTO `quapi_config` VALUES (118, 'subject', '体育', '118', '', 'sys', '', NULL, '', 1, 0, '2018-09-01 10:55:56', '2018-09-01 10:55:56', '', '', NULL, NULL, NULL, NULL, 0);
INSERT INTO `quapi_config` VALUES (119, 'subject', '历史', '119', '', 'sys', '', NULL, '', 1, 0, '2018-09-01 10:55:56', '2018-09-01 10:55:56', '', '', NULL, NULL, NULL, NULL, 0);
INSERT INTO `quapi_config` VALUES (120, 'subject', '劳动与技术', '120', '', 'sys', '', NULL, '', 1, 0, '2018-09-01 10:55:56', '2018-09-01 10:55:56', '', '', NULL, NULL, NULL, NULL, 0);
INSERT INTO `quapi_config` VALUES (121, 'subject', '通用技术', '121', '', 'sys', '', NULL, '', 1, 0, '2018-09-01 10:55:56', '2018-09-01 10:55:56', '', '', NULL, NULL, NULL, NULL, 0);
INSERT INTO `quapi_config` VALUES (122, 'subject', '历史与社会', '122', '', 'sys', '', NULL, '', 1, 0, '2018-09-01 10:55:56', '2018-09-01 10:55:56', '', '', NULL, NULL, NULL, NULL, 0);
INSERT INTO `quapi_config` VALUES (123, 'subject', '艺术', '123', '', 'sys', '', NULL, '', 1, 0, '2018-09-01 10:55:56', '2018-09-01 10:55:56', '', '', NULL, NULL, NULL, NULL, 0);
INSERT INTO `quapi_config` VALUES (124, 'subject', '奥数', '124', '', 'sys', '', NULL, '', 1, 0, '2018-09-01 10:55:56', '2018-09-01 10:55:56', '', '', NULL, NULL, NULL, NULL, 0);
INSERT INTO `quapi_config` VALUES (125, 'subject', '生活与科技', '125', '', 'sys', '', NULL, '', 1, 0, '2018-09-01 10:55:56', '2018-09-01 10:55:56', '', '', NULL, NULL, NULL, NULL, 0);
INSERT INTO `quapi_config` VALUES (126, 'subject', '幼儿园综合活动课程', '126', '', 'sys', '', NULL, '', 1, 0, '2018-09-01 10:55:56', '2018-09-01 10:55:56', '', '', NULL, NULL, NULL, NULL, 0);
INSERT INTO `quapi_config` VALUES (127, 'subject', '技术与设计', '127', '', 'sys', '', NULL, '', 1, 0, '2018-09-01 10:55:56', '2018-09-01 10:55:56', '', '', NULL, NULL, NULL, NULL, 0);
INSERT INTO `quapi_config` VALUES (128, 'subject', '诵读', '128', '', 'sys', '', NULL, '', 1, 0, '2018-09-01 10:55:56', '2018-09-01 10:55:56', '', '', NULL, NULL, NULL, NULL, 0);
INSERT INTO `quapi_config` VALUES (129, 'subject', '其他', '129', '', 'sys', '', NULL, '', 1, 0, '2018-09-01 10:55:56', '2018-09-01 10:55:56', '', '', NULL, NULL, NULL, NULL, 0);
INSERT INTO `quapi_config` VALUES (130, 'subject', '书法', '130', '', 'sys', '', NULL, '', 1, 0, '2018-09-01 10:55:56', '2018-09-01 10:55:56', '', '', NULL, NULL, NULL, NULL, 0);
INSERT INTO `quapi_config` VALUES (131, 'subject', '健康成长教育', '131', '', 'sys', '', NULL, '', 1, 0, '2018-09-01 10:55:56', '2018-09-01 10:55:56', '', '', NULL, NULL, NULL, NULL, 0);
INSERT INTO `quapi_config` VALUES (132, 'subject', '综合实践', '132', '', 'sys', '', NULL, '', 1, 0, '2018-09-01 10:55:56', '2018-09-01 10:55:56', '', '', NULL, NULL, NULL, NULL, 0);
INSERT INTO `quapi_config` VALUES (133, 'subject', '道德与法治', '133', '', 'sys', '', NULL, '', 1, 0, '2018-09-01 10:55:56', '2018-09-01 10:55:56', '', '', NULL, NULL, NULL, NULL, 0);
INSERT INTO `quapi_config` VALUES (134, 'subject', '心理健康', '134', '', 'sys', '', NULL, NULL, 1, 0, '2018-08-10 16:27:12', '2018-08-10 16:27:12', '', '', NULL, NULL, NULL, NULL, 0);
INSERT INTO `quapi_config` VALUES (135, 'subject', '社会思品', '135', '', 'sys', NULL, NULL, NULL, 1, 0, '2019-11-01 17:48:54', '2019-11-01 17:48:56', NULL, NULL, NULL, NULL, NULL, NULL, 0);
INSERT INTO `quapi_config` VALUES (265, 'phase_grade', NULL, '6,7,8,9,10,11', '', 'sys', '一年级,二年级,三年级,四年级,五年级,六年级', 3, NULL, 1, 0, '2018-09-06 13:27:42', '2018-09-06 13:27:42', '', '', NULL, NULL, NULL, NULL, 0);
INSERT INTO `quapi_config` VALUES (266, 'phase_grade', NULL, '11,12,13,14', '', 'sys', '六年级,七年级,八年级,九年级', 4, NULL, 1, 0, '2018-09-06 13:28:01', '2018-09-06 13:45:12', '', '', NULL, NULL, NULL, NULL, 0);
INSERT INTO `quapi_config` VALUES (267, 'phase_grade', NULL, '28,29,30', '', 'sys', '高一,高二,高三', 5, NULL, 1, 0, '2018-09-06 13:28:36', '2018-09-06 13:28:36', '', '', NULL, NULL, NULL, NULL, 0);
INSERT INTO `quapi_config` VALUES (268, 'phase_subject', NULL, '103,104,105,114,115,116,118,123', '', 'sys', '语文,数学,英语,信息技术,科学,音乐,体育,艺术', 3, NULL, 1, 0, '2018-09-06 13:31:59', '2018-09-06 13:31:59', '', '', NULL, NULL, NULL, NULL, 0);
INSERT INTO `quapi_config` VALUES (269, 'phase_subject', NULL, '103,104,105,106,107,108,109,110,112,115,116,117,118,119', '', 'sys', '语文,数学,英语,政治,物理,化学,生物,地理,品德与社会,科学,音乐,美术,体育,历史', 4, NULL, 1, 0, '2018-09-06 13:33:48', '2018-09-06 13:33:48', '', '', NULL, NULL, NULL, NULL, 0);
INSERT INTO `quapi_config` VALUES (270, 'phase_subject', NULL, '103,104,105,106,107,108,109,110,119', '', 'sys', '语文,数学,英语,政治,物理,化学,生物,地理,历史', 5, NULL, 1, 0, '2018-09-06 13:34:58', '2018-09-06 13:34:58', '', '', NULL, NULL, NULL, NULL, 0);

-- ----------------------------
-- Table structure for quapi_config_alias
-- ----------------------------
DROP TABLE IF EXISTS `quapi_config_alias`;
CREATE TABLE `quapi_config_alias`  (
  `id` char(32) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NOT NULL COMMENT '主键',
  `config_id` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NOT NULL COMMENT '配置id（元数据id）',
  `config_code` varchar(128) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NOT NULL,
  `config_name` char(50) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NOT NULL COMMENT '来源id',
  `alias` varchar(50) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT '' COMMENT '别名',
  `source_code` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL COMMENT '来源code',
  `crt_dttm` datetime(0) NULL DEFAULT NULL COMMENT '创建时间',
  `lastup_dttm` datetime(0) NULL DEFAULT NULL COMMENT '最后更新时间',
  `crt_id` char(32) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL COMMENT '创建人ID',
  `lastup_id` char(32) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL COMMENT '最后更新人ID',
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB CHARACTER SET = utf8mb4 COLLATE = utf8mb4_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of quapi_config_alias
-- ----------------------------
INSERT INTO `quapi_config_alias` VALUES ('4a2e817a8cb54d6e89d1af270f389ed3', '12', 'grade', '七年级', '初一', 's01', '2018-11-07 19:12:25', NULL, NULL, NULL);
INSERT INTO `quapi_config_alias` VALUES ('8663b3de7bbe44479fa26cc3197cdc43', '13', 'grade', '八年级', '初二', 's01', '2018-11-07 19:12:25', NULL, NULL, NULL);
INSERT INTO `quapi_config_alias` VALUES ('9a0534501adc433d8f07d052d3f769d2', '12', 'grade', '七年级', '初一', 's03', '2019-09-12 15:25:43', NULL, NULL, NULL);
INSERT INTO `quapi_config_alias` VALUES ('c7047dd3307b49c8bcd219eb3a92a186', '14', 'grade', '九年级', '初三', 's01', '2018-11-07 19:12:25', NULL, NULL, NULL);
INSERT INTO `quapi_config_alias` VALUES ('cc004b0101914dfdb4ba64f9d34234db', '13', 'grade', '八年级', '初二', 's03', '2019-09-12 15:25:43', NULL, NULL, NULL);
INSERT INTO `quapi_config_alias` VALUES ('f19cae027c8a4a61bb80c73b6f945245', '14', 'grade', '九年级', '初三', 's03', '2019-09-12 15:25:43', NULL, NULL, NULL);

-- ----------------------------
-- Table structure for quapi_config_source
-- ----------------------------
DROP TABLE IF EXISTS `quapi_config_source`;
CREATE TABLE `quapi_config_source`  (
  `id` char(32) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NOT NULL COMMENT '主键',
  `config_id` char(32) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NOT NULL COMMENT '配置id',
  `config_code` varchar(128) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NOT NULL COMMENT '元数据code',
  `source_code` char(32) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NOT NULL COMMENT '来源code',
  `source_id` varchar(50) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT '' COMMENT '来源主键',
  `crt_dttm` datetime(0) NULL DEFAULT NULL COMMENT '创建时间',
  `lastup_dttm` datetime(0) NULL DEFAULT NULL COMMENT '最后更新时间',
  `crt_id` char(32) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL COMMENT '创建人ID',
  `lastup_id` char(32) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL COMMENT '最后更新人ID',
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB CHARACTER SET = utf8mb4 COLLATE = utf8mb4_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of quapi_config_source
-- ----------------------------
INSERT INTO `quapi_config_source` VALUES ('02300fa9760d49169e99b131d1de5e9f', '11', 'grade', 's01', '6', '2019-08-27 20:22:21', NULL, NULL, NULL);
INSERT INTO `quapi_config_source` VALUES ('04b6916dd4144d838aca8e384aebc87e', '9', 'grade', 's03', '4', '2019-09-16 10:30:29', NULL, NULL, NULL);
INSERT INTO `quapi_config_source` VALUES ('07c6fc0cbace496c9d70bc49a5f6447d', '105', 'subject', 's01', '3', '2019-08-27 20:22:21', NULL, NULL, NULL);
INSERT INTO `quapi_config_source` VALUES ('0fa369933b6c4a1eafc9bc546c78f497', '7', 'grade', 's01', '2', '2019-08-27 20:22:21', NULL, NULL, NULL);
INSERT INTO `quapi_config_source` VALUES ('11d53aef95ef4c0fb4fc2ef9505426bc', '120', 'subject', 's03', '16', '2019-09-16 10:30:28', NULL, NULL, NULL);
INSERT INTO `quapi_config_source` VALUES ('125a2c313a0b4f3e81dcf3fb06094a85', '103', 'subject', 's03', '2', '2019-09-16 10:30:28', NULL, NULL, NULL);
INSERT INTO `quapi_config_source` VALUES ('16a41dc9538745baa668d1c6c0cfd40f', '10', 'grade', 's01', '5', '2019-08-27 20:22:21', NULL, NULL, NULL);
INSERT INTO `quapi_config_source` VALUES ('1f4afbd5722743bd9fbb29282c67259c', '104', 'subject', 's03', '3', '2019-09-16 10:30:29', NULL, NULL, NULL);
INSERT INTO `quapi_config_source` VALUES ('2265256d6c4a45948a066fbc8abbb8c1', '116', 'subject', 's03', '1006', '2019-09-16 10:30:28', NULL, NULL, NULL);
INSERT INTO `quapi_config_source` VALUES ('23670225264f4ef39b42fdf283d06949', '109', 'subject', 's01', '6', '2019-08-27 20:22:21', NULL, NULL, NULL);
INSERT INTO `quapi_config_source` VALUES ('267e88fabb20437d82c4c2603d65a6af', '112', 'subject', 's03', '21', '2019-09-16 10:30:28', NULL, NULL, NULL);
INSERT INTO `quapi_config_source` VALUES ('3238eab6b4ea463685ae2997454ef746', '9', 'grade', 's01', '4', '2019-08-27 20:22:21', NULL, NULL, NULL);
INSERT INTO `quapi_config_source` VALUES ('33924edfb0a94f068139f7ab2db7c42f', '29', 'grade', 's01', '11', '2019-08-27 20:22:21', NULL, NULL, NULL);
INSERT INTO `quapi_config_source` VALUES ('34c5b50d19c7468bb320ab1f6a4845dd', '107', 'subject', 's03', '6', '2019-09-16 10:30:29', NULL, NULL, NULL);
INSERT INTO `quapi_config_source` VALUES ('36079506bd474d909cc077f939f85a38', '5', 'phase', 's01', '3', '2019-08-27 20:22:21', NULL, NULL, NULL);
INSERT INTO `quapi_config_source` VALUES ('3c2c3c2ab7c54ea399c79d30d96b4e14', '11', 'grade', 's03', '6', '2019-09-16 10:30:29', NULL, NULL, NULL);
INSERT INTO `quapi_config_source` VALUES ('3e29c4d864c44b0294fae879a8bc88fd', '12', 'grade', 's03', '7', '2019-09-16 10:30:29', NULL, NULL, NULL);
INSERT INTO `quapi_config_source` VALUES ('413a675a2c274726b1d5924a7786f43d', '8', 'grade', 's01', '3', '2019-08-27 20:22:21', NULL, NULL, NULL);
INSERT INTO `quapi_config_source` VALUES ('520f5964acc34376b6990d4ec6f4af9c', '6', 'grade', 's01', '1', '2019-08-27 20:22:21', NULL, NULL, NULL);
INSERT INTO `quapi_config_source` VALUES ('5a8382f6399a42b2bb97078bfdd47975', '104', 'subject', 's01', '2', '2019-08-27 20:22:21', NULL, NULL, NULL);
INSERT INTO `quapi_config_source` VALUES ('5dac8a85d0df48bc854cd49848b233f0', '6', 'grade', 's03', '1', '2019-09-16 10:30:29', NULL, NULL, NULL);
INSERT INTO `quapi_config_source` VALUES ('63cb2fe405e14b80a6fbfb829066318a', '3', 'phase', 's03', '1', '2019-09-16 10:30:28', NULL, NULL, NULL);
INSERT INTO `quapi_config_source` VALUES ('6414f85529f54edb857e62a1f5dfa1f1', '121', 'subject', 's03', '15', '2019-09-16 10:30:29', NULL, NULL, NULL);
INSERT INTO `quapi_config_source` VALUES ('65deb4caecfb4bd1b259bd647a231511', '115', 'subject', 's01', '11', '2019-08-27 20:22:21', NULL, NULL, NULL);
INSERT INTO `quapi_config_source` VALUES ('6863152a9da64706a008cd179d639939', '119', 'subject', 's03', '8', '2019-09-16 10:30:28', NULL, NULL, NULL);
INSERT INTO `quapi_config_source` VALUES ('7076dd8231154901a860e93b3e8d3f1b', '28', 'grade', 's01', '10', '2019-08-27 20:22:21', NULL, NULL, NULL);
INSERT INTO `quapi_config_source` VALUES ('73bde8d5e5dc40129f1a13efa5929733', '10', 'grade', 's03', '5', '2019-09-16 10:30:29', NULL, NULL, NULL);
INSERT INTO `quapi_config_source` VALUES ('73ea38c88a3948d1bd10eadf3a72cbd1', '107', 'subject', 's01', '4', '2019-08-27 20:22:21', NULL, NULL, NULL);
INSERT INTO `quapi_config_source` VALUES ('7619b1cbb03c478f8838ffb368b5ad91', '115', 'subject', 's03', '5', '2019-09-16 10:30:29', NULL, NULL, NULL);
INSERT INTO `quapi_config_source` VALUES ('78c5649e3a434ed5a58ba6307623f567', '108', 'subject', 's01', '5', '2019-08-27 20:22:21', NULL, NULL, NULL);
INSERT INTO `quapi_config_source` VALUES ('7c2de6e11d7f49fd810e4b4be878c0ad', '14', 'grade', 's01', '9', '2019-08-27 20:22:21', NULL, NULL, NULL);
INSERT INTO `quapi_config_source` VALUES ('7d9ff5f6988e4291af3e1234188d81ff', '12', 'grade', 's01', '7', '2019-08-27 20:22:21', NULL, NULL, NULL);
INSERT INTO `quapi_config_source` VALUES ('7db9a8f47fe4488c8b70fedd427ca901', '3', 'phase', 's01', '1', '2019-08-27 20:22:21', NULL, NULL, NULL);
INSERT INTO `quapi_config_source` VALUES ('7de69dbab88743b38e5b056d973d3c05', '110', 'subject', 's01', '9', '2019-08-27 20:22:21', NULL, NULL, NULL);
INSERT INTO `quapi_config_source` VALUES ('8330feaec92444e0a0a3a0fdefcae72e', '28', 'grade', 's03', '11', '2019-09-16 10:30:29', NULL, NULL, NULL);
INSERT INTO `quapi_config_source` VALUES ('83f9a5c7c9814116be74185328e9afbf', '103', 'subject', 's01', '1', '2019-08-27 20:22:21', NULL, NULL, NULL);
INSERT INTO `quapi_config_source` VALUES ('86755882a78f437d9481ac56bd40ecc0', '4', 'phase', 's01', '2', '2019-08-27 20:22:21', NULL, NULL, NULL);
INSERT INTO `quapi_config_source` VALUES ('8e6d818df1c044528f9b1b7ae07a0d9a', '114', 'subject', 's03', '14', '2019-09-16 10:30:29', NULL, NULL, NULL);
INSERT INTO `quapi_config_source` VALUES ('94a3c015231e468b81d735d58ad6c4ad', '29', 'grade', 's03', '12', '2019-09-16 10:30:29', NULL, NULL, NULL);
INSERT INTO `quapi_config_source` VALUES ('94ce21c929744b33b5086d240c9848ba', '30', 'grade', 's01', '12', '2019-08-27 20:22:21', NULL, NULL, NULL);
INSERT INTO `quapi_config_source` VALUES ('9888eed5afb2414381abbb9c92ca35fb', '5', 'phase', 's03', '3', '2019-09-16 10:30:28', NULL, NULL, NULL);
INSERT INTO `quapi_config_source` VALUES ('9f4331046e9140cd8aff73d237eb8ddb', '106', 'subject', 's01', '10', '2019-08-27 20:22:21', NULL, NULL, NULL);
INSERT INTO `quapi_config_source` VALUES ('a711d6b648eb4114a133ab31d2506af1', '109', 'subject', 's03', '11', '2019-09-16 10:30:28', NULL, NULL, NULL);
INSERT INTO `quapi_config_source` VALUES ('a943e74617ba4505a160fe6f20102daa', '133', 'subject', 's03', '9', '2019-09-16 10:30:28', NULL, NULL, NULL);
INSERT INTO `quapi_config_source` VALUES ('abc3d400a1e94d6da0991cdc8238e4fc', '110', 'subject', 's03', '10', '2019-09-16 10:30:29', NULL, NULL, NULL);
INSERT INTO `quapi_config_source` VALUES ('acb71a4b78b541d384c04c7e50511d90', '105', 'subject', 's03', '4', '2019-09-16 10:30:28', NULL, NULL, NULL);
INSERT INTO `quapi_config_source` VALUES ('b03a8dedd4f8402b9dfca98e82146ad3', '108', 'subject', 's03', '7', '2019-09-16 10:30:29', NULL, NULL, NULL);
INSERT INTO `quapi_config_source` VALUES ('bca37de8fd874af6839320cc82e6979e', '7', 'grade', 's03', '2', '2019-09-16 10:30:29', NULL, NULL, NULL);
INSERT INTO `quapi_config_source` VALUES ('c0d7cddaa48d4aea8f8419aec403251e', '14', 'grade', 's03', '9', '2019-09-16 10:30:29', NULL, NULL, NULL);
INSERT INTO `quapi_config_source` VALUES ('c1892a611e1740cdb663f5f24ad838b3', '135', 'subject', 's03', '21', '2019-11-01 17:52:25', NULL, NULL, NULL);
INSERT INTO `quapi_config_source` VALUES ('c9f91395f3074ca8b98b14bda74453ca', '117', 'subject', 's03', '1008', '2019-09-16 10:30:28', NULL, NULL, NULL);
INSERT INTO `quapi_config_source` VALUES ('cdbbc32731df4c5892e3971def1e513d', '8', 'grade', 's03', '3', '2019-09-16 10:30:29', NULL, NULL, NULL);
INSERT INTO `quapi_config_source` VALUES ('d5770c823dc3467a97242a9f53da7e3f', '119', 'subject', 's01', '8', '2019-08-27 20:22:21', NULL, NULL, NULL);
INSERT INTO `quapi_config_source` VALUES ('d65eeee18387408abeb7afa92ba69878', '13', 'grade', 's03', '8', '2019-09-16 10:30:29', NULL, NULL, NULL);
INSERT INTO `quapi_config_source` VALUES ('eee56b0441b3446a8a409c5e0e858449', '118', 'subject', 's03', '1010', '2019-09-16 10:30:29', NULL, NULL, NULL);
INSERT INTO `quapi_config_source` VALUES ('f281dd3439ad438bb6baa97c368f179a', '13', 'grade', 's01', '8', '2019-08-27 20:22:21', NULL, NULL, NULL);
INSERT INTO `quapi_config_source` VALUES ('fc71ee2d248c45cab159c5768f49ed25', '122', 'subject', 's03', '20', '2019-09-16 10:30:28', NULL, NULL, NULL);
INSERT INTO `quapi_config_source` VALUES ('fd7f18244caf44d3a1a96bc2c8a0c8a5', '4', 'phase', 's03', '2', '2019-09-16 10:30:28', NULL, NULL, NULL);
INSERT INTO `quapi_config_source` VALUES ('feee726e6a9740a4bb1c501bb5c1abde', '30', 'grade', 's03', '13', '2019-09-16 10:30:29', NULL, NULL, NULL);

-- ----------------------------
-- Table structure for quapi_data_book
-- ----------------------------
DROP TABLE IF EXISTS `quapi_data_book`;
CREATE TABLE `quapi_data_book`  (
  `id` char(32) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NOT NULL DEFAULT '',
  `source_id` char(32) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL COMMENT '来源id',
  `name` varchar(256) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL COMMENT '书籍名称',
  `phase_id` char(32) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL COMMENT '学段id',
  `grade_id` char(32) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL COMMENT '年级id',
  `subject_id` char(32) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL COMMENT '学科id',
  `version_id` char(32) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL COMMENT '出版社id（如果不缓存的话也是第三方数据ID）',
  `parent_path` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL COMMENT '所有父级关系路径.以,分隔',
  `fascicule_id` char(32) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL COMMENT '册别',
  `book_edtion` varchar(32) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL COMMENT '版次',
  `format_name` varchar(32) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL COMMENT '简称',
  `enable` tinyint(1) NULL DEFAULT 0 COMMENT '是否可用0-不可用1-可用',
  `source_json_data` longtext CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL COMMENT '原source的json格式的数据',
  `source_code` char(32) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL COMMENT '来源码',
  `version` char(32) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL COMMENT '数据的版本号',
  `crt_id` char(32) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL,
  `crt_dttm` datetime(0) NULL DEFAULT NULL,
  `lastup_id` char(32) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL,
  `lastup_dttm` datetime(0) NULL DEFAULT NULL,
  PRIMARY KEY (`id`) USING BTREE,
  UNIQUE INDEX `unique_source_index`(`source_id`, `source_code`) USING BTREE
) ENGINE = InnoDB CHARACTER SET = utf8mb4 COLLATE = utf8mb4_general_ci COMMENT = '书籍信息表' ROW_FORMAT = Dynamic;

-- ----------------------------
-- Table structure for quapi_data_book_chapter
-- ----------------------------
DROP TABLE IF EXISTS `quapi_data_book_chapter`;
CREATE TABLE `quapi_data_book_chapter`  (
  `id` char(32) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NOT NULL COMMENT '主键',
  `source_id` char(32) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL COMMENT '来源id',
  `name` varchar(128) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL COMMENT '名称',
  `book_id` char(32) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL COMMENT '书籍id',
  `parent_id` char(32) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL COMMENT '父节点',
  `parent_path` varchar(1028) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL COMMENT '所有父级关系路径.',
  `level` tinyint(2) NULL DEFAULT NULL COMMENT '层级',
  `sort` int(11) UNSIGNED NULL DEFAULT NULL COMMENT '章节顺序',
  `enable` tinyint(1) NULL DEFAULT NULL COMMENT '是否可用',
  `source_json_data` longtext CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL COMMENT '原source的json格式的数据',
  `source_code` char(32) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL COMMENT '来源code',
  `version` char(32) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL COMMENT '数据的版本号',
  `crt_id` char(32) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL,
  `crt_dttm` datetime(0) NULL DEFAULT NULL,
  `lastup_id` char(32) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL,
  `lastup_dttm` datetime(0) NULL DEFAULT NULL,
  PRIMARY KEY (`id`) USING BTREE,
  UNIQUE INDEX `unique_id_source`(`source_id`, `source_code`) USING BTREE,
  INDEX `book_id_index`(`book_id`) USING BTREE,
  INDEX `pid_index`(`parent_id`) USING BTREE
) ENGINE = InnoDB CHARACTER SET = utf8mb4 COLLATE = utf8mb4_general_ci COMMENT = '章节表' ROW_FORMAT = Dynamic;

-- ----------------------------
-- Table structure for quapi_data_chapter
-- ----------------------------
DROP TABLE IF EXISTS `quapi_data_chapter`;
CREATE TABLE `quapi_data_chapter`  (
  `id` varchar(64) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NOT NULL COMMENT '章节id',
  `name` varchar(1000) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL COMMENT '章节名称',
  `parentid` varchar(64) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL COMMENT '父节点id',
  `path` varchar(10000) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL COMMENT '路径',
  `sort` int(255) NULL DEFAULT NULL COMMENT '排序',
  `version` varchar(16) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL COMMENT '版本',
  `sourcecode` varchar(16) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL COMMENT '来源code',
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB CHARACTER SET = utf8mb4 COLLATE = utf8mb4_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Table structure for quapi_data_chapter_knowledge
-- ----------------------------
DROP TABLE IF EXISTS `quapi_data_chapter_knowledge`;
CREATE TABLE `quapi_data_chapter_knowledge`  (
  `id` char(32) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NOT NULL,
  `source_id` char(32) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL,
  `chapter_id` char(32) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL COMMENT '章节id',
  `book_id` char(32) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL COMMENT '书籍id',
  `knowledge_id` char(32) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL COMMENT '知识点id',
  `lkc_id` char(32) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL COMMENT '教育云特有的lkc_id',
  `source_json_data` longtext CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL COMMENT '原source的json格式的数据',
  `source_code` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL COMMENT '来源id',
  `version` char(32) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL COMMENT '数据的版本号',
  `crt_id` varchar(32) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL,
  `crt_dttm` datetime(0) NULL DEFAULT NULL,
  `lastup_id` char(32) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL,
  `lastup_dttm` datetime(0) NULL DEFAULT NULL,
  PRIMARY KEY (`id`) USING BTREE,
  INDEX `idx_chapter_id`(`chapter_id`) USING BTREE
) ENGINE = InnoDB CHARACTER SET = utf8mb4 COLLATE = utf8mb4_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Table structure for quapi_data_document
-- ----------------------------
DROP TABLE IF EXISTS `quapi_data_document`;
CREATE TABLE `quapi_data_document`  (
  `id` char(32) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL COMMENT '资源ID',
  `resource_id` varchar(100) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '资源id',
  `origin_id` char(32) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '第三方资源id',
  `title` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '资源标题',
  `intro` longtext CHARACTER SET utf8 COLLATE utf8_general_ci NULL COMMENT '资源简介',
  `grade_id` char(32) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '适用于年级',
  `term_id` char(32) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '适用学期',
  `phase_id` char(32) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '学段（1:小学，2:初中，3:高中）',
  `subject_id` char(32) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '科目ID',
  `city_id` varchar(32) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '所属地区ID',
  `city_name` varchar(50) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '城市名称',
  `province_id` varchar(32) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '所属省份id',
  `province_name` varchar(50) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '省份名称',
  `type` varchar(32) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '	\r\n                        资源类型 说明：[3 = \'课件\', 8 = \'教案\'等',
  `type_name` varchar(50) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '类型名称',
  `book_id` varchar(32) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '册别（书）Id',
  `book_name` varchar(50) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '册别（书）名称',
  `chapter_id` varchar(32) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '章节ID',
  `chapter_name` varchar(50) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '章节名称',
  `version_id` varchar(32) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '版本id',
  `version_name` varchar(50) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '版本名称',
  `chapter_path` varchar(100) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '章节路径',
  `format_size` varchar(50) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '格式化后资源文件大小',
  `size` int(11) NULL DEFAULT NULL COMMENT '资源文件大小',
  `file_type_id` varchar(32) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '文件类型Id,如doc,ppt,等文件属于4100这个id值',
  `file_type` varchar(100) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '文件类型(ppt, doc, rar, video)',
  `year` varchar(10) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '资源所属年份，如果为空则没有特定年份',
  `flag_name` varchar(10) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '资源质量等级',
  `stars` float NULL DEFAULT 0 COMMENT '几星评价',
  `origin_json_data` longtext CHARACTER SET utf8 COLLATE utf8_general_ci NULL COMMENT '第三方调用json数据汇总',
  `upload_time` datetime(0) NULL DEFAULT NULL COMMENT '资源上传时间',
  `last_update` datetime(0) NULL DEFAULT NULL COMMENT '资源最后更新时间',
  `picture_url` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '文档缩略图地址',
  `school_local` tinyint(1) NULL DEFAULT NULL COMMENT '是否是校本资源的,1是，0不是',
  `org_id` char(32) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '所属机构',
  `origin_source` varchar(50) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '资源对接第三方（21资源网 等）',
  `download_times` int(11) NULL DEFAULT NULL COMMENT '下载次数',
  `view_times` int(11) NULL DEFAULT NULL COMMENT '访问次数',
  `collect_times` int(11) NULL DEFAULT NULL COMMENT '收藏次数',
  `last_hit` datetime(0) NULL DEFAULT NULL COMMENT '最后点击时间',
  `zan_times` int(11) NULL DEFAULT NULL COMMENT '被赞次数',
  `crt_id` char(32) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '创建人id',
  `crt_dttm` datetime(0) NULL DEFAULT NULL COMMENT '创建时间',
  `lastup_id` char(32) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '最后修改人id',
  `lastup_dttm` datetime(0) NULL DEFAULT NULL COMMENT '最后修改时间',
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB CHARACTER SET = utf8 COLLATE = utf8_general_ci COMMENT = '文档资源表' ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of quapi_data_document
-- ----------------------------
INSERT INTO `quapi_data_document` VALUES ('1c63d653c76449839ca6c7e412c4ac04', '3ac2d69cd09e4c838a326e0dbcf2e64f', '6390790', '统编版一年级上册语文汉语拼音  拼读练习课件(共41张PPT)', '(共41张PPT)\n拼音\n课前测一测\n定点凝视\n舒尔特表\n2	17	9	22	20\n11	5	23	7	16\n3	15	1	6	14\n12	25	4	10	21\n24	18	13	8	19\n654772\n37486\n掌心敷眼\n一起复习\n拼一拼    连一连\n示范： \n大家好，\n 我的名字叫***，\n拼出来就可以了\n  \n学习内容：\n课后考一考\n拼音大故事\n    今年夏天连续下了很久的雨。\n   清晨我从梦中醒来一看，又下雨了，还伴着闪电。\n   “快起床！外面下雨了！”我叫醒弟弟，来到屋外。\n  \n    我们来到公园，四周静悄悄的。\n    发现一朵小小的云挂在树梢上。云朵小小的。我们小心...', NULL, NULL, '3', '103', '0', '', '0', '', '3', '课件', '119480', '一年级上册(2016部编版）', '119552', '本单元综合与测试', '141764', '人教统编版（部编版）', '119480,119483,119552', '6.867 MB', 7200768, NULL, 'ppt', '2019', '普通', 2, '{\"chapterPath\":[{\"questionVersion\":0,\"assetVersion\":0,\"name\":\"小学语文\",\"id\":3,\"version\":0},{\"questionVersion\":0,\"assetVersion\":0,\"name\":\"人教统编版（部编版）\",\"id\":141764,\"version\":0},{\"questionVersion\":0,\"assetVersion\":0,\"name\":\"一年级上册(2016部编版）\",\"id\":119480,\"version\":0},{\"questionVersion\":0,\"assetVersion\":0,\"name\":\"汉语拼音\",\"id\":119483,\"version\":0},{\"questionVersion\":0,\"assetVersion\":0,\"name\":\"本单元综合与测试\",\"id\":119552,\"version\":0}],\"dateline\":1572416415,\"year\":\"2019\",\"typeName\":\"课件\",\"cityId\":0,\"stars\":\"2\",\"type\":3,\"title\":\"统编版一年级上册语文汉语拼音  拼读练习课件(共41张PPT)\",\"versionName\":\"统编版\",\"provinceId\":0,\"version\":1572426089,\"subjectId\":2,\"point\":\"2\",\"itemId\":6390790,\"versionId\":166,\"stage\":1,\"formatSize\":\"6.867 MB\",\"size\":\"7200768\",\"intro\":\"(共41张PPT)\\n拼音\\n课前测一测\\n定点凝视\\n舒尔特表\\n2\\t17\\t9\\t22\\t20\\n11\\t5\\t23\\t7\\t16\\n3\\t15\\t1\\t6\\t14\\n12\\t25\\t4\\t10\\t21\\n24\\t18\\t13\\t8\\t19\\n654772\\n37486\\n掌心敷眼\\n一起复习\\n拼一拼    连一连\\n示范： \\n大家好，\\n 我的名字叫***，\\n拼出来就可以了\\n  \\n学习内容：\\n课后考一考\\n拼音大故事\\n    今年夏天连续下了很久的雨。\\n   清晨我从梦中醒来一看，又下雨了，还伴着闪电。\\n   “快起床！外面下雨了！”我叫醒弟弟，来到屋外。\\n  \\n    我们来到公园，四周静悄悄的。\\n    发现一朵小小的云挂在树梢上。云朵小小的。我们小心...\",\"fileType\":\"ppt\",\"subjectName\":\"语文\",\"updatedAt\":1572426088}', '1970-01-19 12:46:56', '1970-01-19 12:47:06', NULL, NULL, NULL, 's03', NULL, NULL, NULL, NULL, NULL, NULL, '2019-11-01 16:46:41', NULL, '2019-11-01 16:46:41');
INSERT INTO `quapi_data_document` VALUES ('27914e3c895645348e4b34469c55e293', NULL, '6277205', '统编版语文一年级上册第三单元测试卷  课件（13张ppt）', '课件12张PPT。第三单元测试卷 (检测时间：60分钟　满分：100分) 小  长  白  笑  ', NULL, NULL, '3', '103', '0', '', '0', '', '3', '课件', '119480', '一年级上册(2016部编版）', '119552', '本单元综合与测试', '141764', '人教统编版（部编版）', '119480,119483,119552', '1.467 MB', 1538047, NULL, 'ppt', '2019', NULL, 1, '{\"chapterPath\":[{\"questionVersion\":0,\"assetVersion\":0,\"name\":\"小学语文\",\"id\":3,\"version\":0},{\"questionVersion\":0,\"assetVersion\":0,\"name\":\"人教统编版（部编版）\",\"id\":141764,\"version\":0},{\"questionVersion\":0,\"assetVersion\":0,\"name\":\"一年级上册(2016部编版）\",\"id\":119480,\"version\":0},{\"questionVersion\":0,\"assetVersion\":0,\"name\":\"汉语拼音\",\"id\":119483,\"version\":0},{\"questionVersion\":0,\"assetVersion\":0,\"name\":\"本单元综合与测试\",\"id\":119552,\"version\":0}],\"dateline\":1569501759,\"year\":\"2019\",\"typeName\":\"课件\",\"cityId\":0,\"stars\":\"1\",\"type\":3,\"title\":\"统编版语文一年级上册第三单元测试卷  课件（13张ppt）\",\"versionName\":\"统编版\",\"provinceId\":0,\"version\":1569539762,\"subjectId\":2,\"point\":\"1\",\"itemId\":6277205,\"versionId\":166,\"stage\":1,\"formatSize\":\"1.467 MB\",\"size\":\"1538047\",\"intro\":\"课件12张PPT。第三单元测试卷 (检测时间：60分钟　满分：100分) 小  长  白  笑  \",\"fileType\":\"ppt\",\"subjectName\":\"语文\",\"updatedAt\":1569539761}', '1970-01-19 11:58:22', '1970-01-19 11:59:00', NULL, NULL, NULL, 's03', NULL, NULL, NULL, NULL, NULL, NULL, '2019-11-01 16:46:41', NULL, '2019-11-01 16:46:41');
INSERT INTO `quapi_data_document` VALUES ('34f1c3a8efda4bfcbdf8398edeb6c33f', NULL, '6233280', '部编版语文一年级上册汉语拼音 习题课件（10份打包）', '课件6张PPT。  1  a o e第二单元    ,课件4张PPT。2 ｉｕ ü ｙ ｗ第二单元    ,课件5张PPT。3 ｂ ｐ ｍ ｆ第二单元    ,课件6张PPT。4 ｄ ｔ ｎ ｌ第二单元    ,课件5张PPT。5 ｇ ｋ ｈ第二单元    ,课件6张PPT。6 ｊ ｑ ｘ第二单元    √√√√,课件5张PPT。7 ｚ ｃ ｓ第二单元    ,课件5张PPT。8 zh  ch  sh  r第二单元    ,课件5张PPT。第二单元识字测评第二单元    ,课件5张PPT。语文园地二第二单元    ', NULL, NULL, '3', '103', '0', '', '0', '', '3', '课件', '119480', '一年级上册(2016部编版）', '119552', '本单元综合与测试', '141764', '人教统编版（部编版）', '119480,119483,119552', '3.35 MB', 3512750, NULL, 'ppt', '2019', NULL, 3, '{\"chapterPath\":[{\"questionVersion\":0,\"assetVersion\":0,\"name\":\"小学语文\",\"id\":3,\"version\":0},{\"questionVersion\":0,\"assetVersion\":0,\"name\":\"人教统编版（部编版）\",\"id\":141764,\"version\":0},{\"questionVersion\":0,\"assetVersion\":0,\"name\":\"一年级上册(2016部编版）\",\"id\":119480,\"version\":0},{\"questionVersion\":0,\"assetVersion\":0,\"name\":\"汉语拼音\",\"id\":119483,\"version\":0},{\"questionVersion\":0,\"assetVersion\":0,\"name\":\"本单元综合与测试\",\"id\":119552,\"version\":0}],\"dateline\":1568437264,\"year\":\"2019\",\"typeName\":\"课件\",\"cityId\":0,\"stars\":\"3\",\"type\":3,\"title\":\"部编版语文一年级上册汉语拼音 习题课件（10份打包）\",\"versionName\":\"统编版\",\"provinceId\":0,\"version\":1568461279,\"subjectId\":2,\"point\":\"3\",\"itemId\":6233280,\"versionId\":166,\"stage\":1,\"formatSize\":\"3.35 MB\",\"size\":\"3512750\",\"intro\":\"课件6张PPT。  1  a o e第二单元    ,课件4张PPT。2 ｉｕ ü ｙ ｗ第二单元    ,课件5张PPT。3 ｂ ｐ ｍ ｆ第二单元    ,课件6张PPT。4 ｄ ｔ ｎ ｌ第二单元    ,课件5张PPT。5 ｇ ｋ ｈ第二单元    ,课件6张PPT。6 ｊ ｑ ｘ第二单元    √√√√,课件5张PPT。7 ｚ ｃ ｓ第二单元    ,课件5张PPT。8 zh  ch  sh  r第二单元    ,课件5张PPT。第二单元识字测评第二单元    ,课件5张PPT。语文园地二第二单元    \",\"fileType\":\"ppt\",\"subjectName\":\"语文\",\"updatedAt\":1568461278}', '1970-01-19 11:40:37', '1970-01-19 11:41:01', NULL, NULL, NULL, 's03', NULL, NULL, NULL, NULL, NULL, NULL, '2019-11-01 16:46:41', NULL, '2019-11-01 16:46:41');
INSERT INTO `quapi_data_document` VALUES ('4156abbc507240abad89115ce0d78efa', 'f1d58f08643e410bb2529d95b6bcd704', '6274027', '统编版一年级上册语文习题课件-第3单元-汉语拼音（有答案8份PPT）', '课件6张PPT。,课件6张PPT。,课件6张PPT。,课件7张PPT。,课件6张PPT。,课件7张PPT。,课件5张PPT。,课件6张PPT。', NULL, NULL, '3', '103', '0', '', '0', '', '3', '课件', '119480', '一年级上册(2016部编版）', '119552', '本单元综合与测试', '141764', '人教统编版（部编版）', '119480,119483,119552', '4.062 MB', 4259288, NULL, 'ppt', '2019', '普通', 2, '{\"chapterPath\":[{\"questionVersion\":0,\"assetVersion\":0,\"name\":\"小学语文\",\"id\":3,\"version\":0},{\"questionVersion\":0,\"assetVersion\":0,\"name\":\"人教统编版（部编版）\",\"id\":141764,\"version\":0},{\"questionVersion\":0,\"assetVersion\":0,\"name\":\"一年级上册(2016部编版）\",\"id\":119480,\"version\":0},{\"questionVersion\":0,\"assetVersion\":0,\"name\":\"汉语拼音\",\"id\":119483,\"version\":0},{\"questionVersion\":0,\"assetVersion\":0,\"name\":\"本单元综合与测试\",\"id\":119552,\"version\":0}],\"dateline\":1569423531,\"year\":\"2019\",\"typeName\":\"课件\",\"cityId\":0,\"stars\":\"2\",\"type\":3,\"title\":\"统编版一年级上册语文习题课件-第3单元-汉语拼音（有答案8份PPT）\",\"versionName\":\"统编版\",\"provinceId\":0,\"version\":1569461072,\"subjectId\":2,\"point\":\"2\",\"itemId\":6274027,\"versionId\":166,\"stage\":1,\"formatSize\":\"4.062 MB\",\"size\":\"4259288\",\"intro\":\"课件6张PPT。,课件6张PPT。,课件6张PPT。,课件7张PPT。,课件6张PPT。,课件7张PPT。,课件5张PPT。,课件6张PPT。\",\"fileType\":\"ppt\",\"subjectName\":\"语文\",\"updatedAt\":1569461070}', '1970-01-19 11:57:04', '1970-01-19 11:57:41', NULL, NULL, NULL, 's03', NULL, NULL, NULL, NULL, NULL, NULL, '2019-11-01 16:46:41', NULL, '2019-11-01 16:46:41');
INSERT INTO `quapi_data_document` VALUES ('44ff6b5d632943d4ac11b99de6302b19', NULL, '6396800', '统编版一年级上册语文汉语拼音指导课件（共41张ppt）', NULL, NULL, NULL, '3', '103', '0', '', '0', '', '3', '课件', '119480', '一年级上册(2016部编版）', '119552', '本单元综合与测试', '141764', '人教统编版（部编版）', '119480,119483,119552', '3.032 MB', 3179008, NULL, 'ppt', '2019', NULL, 2, '{\"chapterPath\":[{\"questionVersion\":0,\"assetVersion\":0,\"name\":\"小学语文\",\"id\":3,\"version\":0},{\"questionVersion\":0,\"assetVersion\":0,\"name\":\"人教统编版（部编版）\",\"id\":141764,\"version\":0},{\"questionVersion\":0,\"assetVersion\":0,\"name\":\"一年级上册(2016部编版）\",\"id\":119480,\"version\":0},{\"questionVersion\":0,\"assetVersion\":0,\"name\":\"汉语拼音\",\"id\":119483,\"version\":0},{\"questionVersion\":0,\"assetVersion\":0,\"name\":\"本单元综合与测试\",\"id\":119552,\"version\":0}],\"dateline\":1572537700,\"year\":\"2019\",\"typeName\":\"课件\",\"cityId\":0,\"stars\":\"2\",\"type\":3,\"title\":\"统编版一年级上册语文汉语拼音指导课件（共41张ppt）\",\"versionName\":\"统编版\",\"provinceId\":0,\"version\":1572562717,\"subjectId\":2,\"point\":\"2\",\"itemId\":6396800,\"versionId\":166,\"stage\":1,\"formatSize\":\"3.032 MB\",\"size\":\"3179008\",\"fileType\":\"ppt\",\"subjectName\":\"语文\",\"updatedAt\":1572562717}', '1970-01-19 12:48:58', '1970-01-19 12:49:23', NULL, NULL, NULL, 's03', NULL, NULL, NULL, NULL, NULL, NULL, '2019-11-01 16:46:41', NULL, '2019-11-01 16:46:41');
INSERT INTO `quapi_data_document` VALUES ('7fe94e4d239d402e825516dc284e4252', NULL, '6384432', '统编版一年级上册语文第三单元达标测试卷 习题课件(共17张PPT)', '(共17张PPT)\n语文一年级 \n上册\n\n第三单元\n达标测试卷\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\nwo neng ba qi qiu shang de pin yin baobao song hui jia\n我能把气球上的拼音宝宝送回家。(18分)\nang\neng\nou\nong le\nun an\nIng)iu\ner\nen\ndo p ui\nue\ne\n复韵母:deu十\nao er\n前鼻韵母:anen\nun\n后鼻韵母:[ ang engining\nxie chu xia lie yin jie de yun mu\n写出下列音节的韵母。(8分)\nme\nqIao\nXue\nue\nQ\nyang\nO\nting\na...', NULL, NULL, '3', '103', '0', '', '0', '', '3', '课件', '119480', '一年级上册(2016部编版）', '119552', '本单元综合与测试', '141764', '人教统编版（部编版）', '119480,119483,119552', '1.631 MB', 1710097, NULL, 'ppt', '2019', NULL, 1, '{\"chapterPath\":[{\"questionVersion\":0,\"assetVersion\":0,\"name\":\"小学语文\",\"id\":3,\"version\":0},{\"questionVersion\":0,\"assetVersion\":0,\"name\":\"人教统编版（部编版）\",\"id\":141764,\"version\":0},{\"questionVersion\":0,\"assetVersion\":0,\"name\":\"一年级上册(2016部编版）\",\"id\":119480,\"version\":0},{\"questionVersion\":0,\"assetVersion\":0,\"name\":\"汉语拼音\",\"id\":119483,\"version\":0},{\"questionVersion\":0,\"assetVersion\":0,\"name\":\"本单元综合与测试\",\"id\":119552,\"version\":0}],\"dateline\":1572316895,\"year\":\"2019\",\"typeName\":\"课件\",\"cityId\":0,\"stars\":\"1\",\"type\":3,\"title\":\"统编版一年级上册语文第三单元达标测试卷 习题课件(共17张PPT)\",\"versionName\":\"统编版\",\"provinceId\":0,\"version\":1572352081,\"subjectId\":2,\"point\":\"1\",\"itemId\":6384432,\"versionId\":166,\"stage\":1,\"formatSize\":\"1.631 MB\",\"size\":\"1710097\",\"intro\":\"(共17张PPT)\\n语文一年级 \\n上册\\n\\n第三单元\\n达标测试卷\\n\\n\\n\\n\\n\\n\\n\\n\\n\\n\\n\\n\\n\\n\\n\\nwo neng ba qi qiu shang de pin yin baobao song hui jia\\n我能把气球上的拼音宝宝送回家。(18分)\\nang\\neng\\nou\\nong le\\nun an\\nIng)iu\\ner\\nen\\ndo p ui\\nue\\ne\\n复韵母:deu十\\nao er\\n前鼻韵母:anen\\nun\\n后鼻韵母:[ ang engining\\nxie chu xia lie yin jie de yun mu\\n写出下列音节的韵母。(8分)\\nme\\nqIao\\nXue\\nue\\nQ\\nyang\\nO\\nting\\na...\",\"fileType\":\"ppt\",\"subjectName\":\"语文\",\"updatedAt\":1572352081}', '1970-01-19 12:45:17', '1970-01-19 12:45:52', NULL, NULL, NULL, 's03', NULL, NULL, NULL, NULL, NULL, NULL, '2019-11-01 16:46:41', NULL, '2019-11-01 16:46:41');
INSERT INTO `quapi_data_document` VALUES ('d57be94de31644f295be856933845dcb', NULL, '6392410', '统编版一年级上册语文汉语拼音  拼读练习课件(共32张PPT)', '(共32张PPT)\n拼音\n单韵母第二课\n课前测一测\n横向快速移动训练\n舒尔特表\n7	3	4\n6	1	2\n5	9	8\n掌心敷眼\n学习内容：\n课后考一考\nOUE\n000\n%g。E△B∠N\n的a\nB\n吉趣声母爱唱歌,小朋友们起来\n拍拍手呀点点头,和声母宝宝唱唱。\nbemf dtl gkh jgx\nzh ch shrzcs\n最后yW不能忘!\n书!不掉!\nC\nsp劲\nch\nh\nzh\nsa\n区分\n区别\npa\nna\nzha\nfo\nmo\nWO\npo\nb\ne\ne\ne\nme\nde\nne\nke\nge\ne\nh\nzhe\nshe che\nre\nce\nze\nse\nke\nhe zhe che\ndeartutu. com\nGt...', NULL, NULL, '3', '103', '0', '', '0', '', '3', '课件', '119480', '一年级上册(2016部编版）', '119552', '本单元综合与测试', '141764', '人教统编版（部编版）', '119480,119483,119552', '3.373 MB', 3536384, NULL, 'ppt', '2019', NULL, 2, '{\"chapterPath\":[{\"questionVersion\":0,\"assetVersion\":0,\"name\":\"小学语文\",\"id\":3,\"version\":0},{\"questionVersion\":0,\"assetVersion\":0,\"name\":\"人教统编版（部编版）\",\"id\":141764,\"version\":0},{\"questionVersion\":0,\"assetVersion\":0,\"name\":\"一年级上册(2016部编版）\",\"id\":119480,\"version\":0},{\"questionVersion\":0,\"assetVersion\":0,\"name\":\"汉语拼音\",\"id\":119483,\"version\":0},{\"questionVersion\":0,\"assetVersion\":0,\"name\":\"本单元综合与测试\",\"id\":119552,\"version\":0}],\"dateline\":1572439039,\"year\":\"2019\",\"typeName\":\"课件\",\"cityId\":0,\"stars\":\"2\",\"type\":3,\"title\":\"统编版一年级上册语文汉语拼音  拼读练习课件(共32张PPT)\",\"versionName\":\"统编版\",\"provinceId\":0,\"version\":1572475215,\"subjectId\":2,\"point\":\"2\",\"itemId\":6392410,\"versionId\":166,\"stage\":1,\"formatSize\":\"3.373 MB\",\"size\":\"3536384\",\"intro\":\"(共32张PPT)\\n拼音\\n单韵母第二课\\n课前测一测\\n横向快速移动训练\\n舒尔特表\\n7\\t3\\t4\\n6\\t1\\t2\\n5\\t9\\t8\\n掌心敷眼\\n学习内容：\\n课后考一考\\nOUE\\n000\\n%g。E△B∠N\\n的a\\nB\\n吉趣声母爱唱歌,小朋友们起来\\n拍拍手呀点点头,和声母宝宝唱唱。\\nbemf dtl gkh jgx\\nzh ch shrzcs\\n最后yW不能忘!\\n书!不掉!\\nC\\nsp劲\\nch\\nh\\nzh\\nsa\\n区分\\n区别\\npa\\nna\\nzha\\nfo\\nmo\\nWO\\npo\\nb\\ne\\ne\\ne\\nme\\nde\\nne\\nke\\nge\\ne\\nh\\nzhe\\nshe che\\nre\\nce\\nze\\nse\\nke\\nhe zhe che\\ndeartutu. com\\nGt...\",\"fileType\":\"ppt\",\"subjectName\":\"语文\",\"updatedAt\":1572475215}', '1970-01-19 12:47:19', '1970-01-19 12:47:55', NULL, NULL, NULL, 's03', NULL, NULL, NULL, NULL, NULL, NULL, '2019-11-01 16:46:41', NULL, '2019-11-01 16:46:41');
INSERT INTO `quapi_data_document` VALUES ('e419a3e0400447c7914aa5cc2f2f40c9', NULL, '6392440', '统编版一年级上册语文汉语拼音  拼读练习课件(共43张PPT)', NULL, NULL, NULL, '3', '103', '0', '', '0', '', '3', '课件', '119480', '一年级上册(2016部编版）', '119552', '本单元综合与测试', '141764', '人教统编版（部编版）', '119480,119483,119552', '5.415 MB', 5678080, NULL, 'ppt', '2019', NULL, 2, '{\"chapterPath\":[{\"questionVersion\":0,\"assetVersion\":0,\"name\":\"小学语文\",\"id\":3,\"version\":0},{\"questionVersion\":0,\"assetVersion\":0,\"name\":\"人教统编版（部编版）\",\"id\":141764,\"version\":0},{\"questionVersion\":0,\"assetVersion\":0,\"name\":\"一年级上册(2016部编版）\",\"id\":119480,\"version\":0},{\"questionVersion\":0,\"assetVersion\":0,\"name\":\"汉语拼音\",\"id\":119483,\"version\":0},{\"questionVersion\":0,\"assetVersion\":0,\"name\":\"本单元综合与测试\",\"id\":119552,\"version\":0}],\"dateline\":1572439573,\"year\":\"2019\",\"typeName\":\"课件\",\"cityId\":0,\"stars\":\"2\",\"type\":3,\"title\":\"统编版一年级上册语文汉语拼音  拼读练习课件(共43张PPT)\",\"versionName\":\"统编版\",\"provinceId\":0,\"version\":1572475462,\"subjectId\":2,\"point\":\"2\",\"itemId\":6392440,\"versionId\":166,\"stage\":1,\"formatSize\":\"5.415 MB\",\"size\":\"5678080\",\"fileType\":\"ppt\",\"subjectName\":\"语文\",\"updatedAt\":1572475461}', '1970-01-19 12:47:20', '1970-01-19 12:47:55', NULL, NULL, NULL, 's03', NULL, NULL, NULL, NULL, NULL, NULL, '2019-11-01 16:46:41', NULL, '2019-11-01 16:46:41');
INSERT INTO `quapi_data_document` VALUES ('e5f783dc10e74f94b2d731faae509a4e', NULL, '6277198', '统编版语文一年级上册第二单元测试卷  课件（11张ppt）', '课件11张PPT。第二单元测试卷 (检测时间：60分钟　满分：100分) √  √  √  ', NULL, NULL, '3', '103', '0', '', '0', '', '3', '课件', '119480', '一年级上册(2016部编版）', '119552', '本单元综合与测试', '141764', '人教统编版（部编版）', '119480,119483,119552', '867.225 KB', 888038, NULL, 'ppt', '2019', NULL, 1, '{\"chapterPath\":[{\"questionVersion\":0,\"assetVersion\":0,\"name\":\"小学语文\",\"id\":3,\"version\":0},{\"questionVersion\":0,\"assetVersion\":0,\"name\":\"人教统编版（部编版）\",\"id\":141764,\"version\":0},{\"questionVersion\":0,\"assetVersion\":0,\"name\":\"一年级上册(2016部编版）\",\"id\":119480,\"version\":0},{\"questionVersion\":0,\"assetVersion\":0,\"name\":\"汉语拼音\",\"id\":119483,\"version\":0},{\"questionVersion\":0,\"assetVersion\":0,\"name\":\"本单元综合与测试\",\"id\":119552,\"version\":0}],\"dateline\":1569501690,\"year\":\"2019\",\"typeName\":\"课件\",\"cityId\":0,\"stars\":\"1\",\"type\":3,\"title\":\"统编版语文一年级上册第二单元测试卷  课件（11张ppt）\",\"versionName\":\"统编版\",\"provinceId\":0,\"version\":1569539405,\"subjectId\":2,\"point\":\"1\",\"itemId\":6277198,\"versionId\":166,\"stage\":1,\"formatSize\":\"867.225 KB\",\"size\":\"888038\",\"intro\":\"课件11张PPT。第二单元测试卷 (检测时间：60分钟　满分：100分) √  √  √  \",\"fileType\":\"ppt\",\"subjectName\":\"语文\",\"updatedAt\":1569539404}', '1970-01-19 11:58:22', '1970-01-19 11:58:59', NULL, NULL, NULL, 's03', NULL, NULL, NULL, NULL, NULL, NULL, '2019-11-01 16:46:41', NULL, '2019-11-01 16:46:41');
INSERT INTO `quapi_data_document` VALUES ('f1e11732e43c41bb8a63b606ead99fe7', NULL, '6233484', '部编版语文一年级上册第三单元　习题课件（7份打包）', '课件5张PPT。第三单元    10 ao  ou  iu,课件6张PPT。11 ie üe er第三单元    ,课件6张PPT。12  an en in un ün第三单元    ,课件5张PPT。13  ang eng ing ong第二单元    ,课件6张PPT。9 ai  ei  ui第三单元    ,课件5张PPT。第三单元识字测评第三单元    ,课件6张PPT。语文园地三第三单元    ', NULL, NULL, '3', '103', '0', '', '0', '', '3', '课件', '119480', '一年级上册(2016部编版）', '119552', '本单元综合与测试', '141764', '人教统编版（部编版）', '119480,119483,119552', '2.643 MB', 2771586, NULL, 'ppt', '2019', NULL, 2, '{\"chapterPath\":[{\"questionVersion\":0,\"assetVersion\":0,\"name\":\"小学语文\",\"id\":3,\"version\":0},{\"questionVersion\":0,\"assetVersion\":0,\"name\":\"人教统编版（部编版）\",\"id\":141764,\"version\":0},{\"questionVersion\":0,\"assetVersion\":0,\"name\":\"一年级上册(2016部编版）\",\"id\":119480,\"version\":0},{\"questionVersion\":0,\"assetVersion\":0,\"name\":\"汉语拼音\",\"id\":119483,\"version\":0},{\"questionVersion\":0,\"assetVersion\":0,\"name\":\"本单元综合与测试\",\"id\":119552,\"version\":0}],\"dateline\":1568448805,\"year\":\"2019\",\"typeName\":\"课件\",\"cityId\":0,\"stars\":\"2\",\"type\":3,\"title\":\"部编版语文一年级上册第三单元　习题课件（7份打包）\",\"versionName\":\"统编版\",\"provinceId\":0,\"version\":1568461733,\"subjectId\":2,\"point\":\"2\",\"itemId\":6233484,\"versionId\":166,\"stage\":1,\"formatSize\":\"2.643 MB\",\"size\":\"2771586\",\"intro\":\"课件5张PPT。第三单元    10 ao  ou  iu,课件6张PPT。11 ie üe er第三单元    ,课件6张PPT。12  an en in un ün第三单元    ,课件5张PPT。13  ang eng ing ong第二单元    ,课件6张PPT。9 ai  ei  ui第三单元    ,课件5张PPT。第三单元识字测评第三单元    ,课件6张PPT。语文园地三第三单元    \",\"fileType\":\"ppt\",\"subjectName\":\"语文\",\"updatedAt\":1568461733}', '1970-01-19 11:40:49', '1970-01-19 11:41:02', NULL, NULL, NULL, 's03', NULL, NULL, NULL, NULL, NULL, NULL, '2019-11-01 16:46:41', NULL, '2019-11-01 16:46:41');

-- ----------------------------
-- Table structure for quapi_data_knowledge_catalog
-- ----------------------------
DROP TABLE IF EXISTS `quapi_data_knowledge_catalog`;
CREATE TABLE `quapi_data_knowledge_catalog`  (
  `id` char(32) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NOT NULL,
  `source_id` char(32) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL,
  `parent_id` char(32) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL COMMENT '父id',
  `name` varchar(768) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL COMMENT '知识点名称',
  `phase_id` char(32) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL COMMENT '学段ID',
  `subject_id` char(32) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL,
  `type` int(11) NULL DEFAULT NULL COMMENT '标签目录类型：0:目录树节点显示，不能查询知识点  1:可查询知识点',
  `sort` int(11) NULL DEFAULT NULL COMMENT '排序',
  `enable` tinyint(1) NULL DEFAULT NULL COMMENT '是否可用',
  `source_json_data` longtext CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL COMMENT '原source的json格式的数据',
  `source_code` varchar(150) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL COMMENT '来源code',
  `version` char(32) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL COMMENT '数据的版本号',
  `crt_id` char(32) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL,
  `crt_dttm` datetime(0) NULL DEFAULT NULL,
  `lastup_id` char(32) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL,
  `lastup_dttm` datetime(0) NULL DEFAULT NULL,
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB CHARACTER SET = utf8mb4 COLLATE = utf8mb4_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Table structure for quapi_data_phase_subject_rela
-- ----------------------------
DROP TABLE IF EXISTS `quapi_data_phase_subject_rela`;
CREATE TABLE `quapi_data_phase_subject_rela`  (
  `id` char(32) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NOT NULL COMMENT '主键',
  `phase_id` char(32) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NOT NULL COMMENT '学段id',
  `subject_id` char(32) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NOT NULL COMMENT '学科id',
  `config_id` char(32) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NOT NULL COMMENT '配置id',
  `config_name` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL COMMENT '配置名称',
  `code_name` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL COMMENT '关系code 名称',
  `code` varchar(128) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NOT NULL COMMENT '关系code码',
  `orders` int(4) NULL DEFAULT 0 COMMENT '显示顺序',
  `enable` tinyint(1) NULL DEFAULT 0,
  `version` varchar(32) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL COMMENT '版本号',
  `source_json_data` longtext CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL COMMENT '来源数据json',
  `source_id` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL COMMENT '来源id',
  `source_code` varchar(50) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL COMMENT '来源code',
  `crt_dttm` datetime(0) NULL DEFAULT NULL COMMENT '创建时间',
  `lastup_dttm` datetime(0) NULL DEFAULT NULL COMMENT '最后更新时间',
  `crt_id` char(32) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL COMMENT '创建人ID',
  `lastup_id` char(32) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL COMMENT '最后更新人ID',
  PRIMARY KEY (`id`) USING BTREE,
  UNIQUE INDEX `ind_source_id`(`version`, `source_id`, `source_code`, `config_id`) USING BTREE
) ENGINE = InnoDB CHARACTER SET = utf8mb4 COLLATE = utf8mb4_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Table structure for quapi_data_subject_knowledge
-- ----------------------------
DROP TABLE IF EXISTS `quapi_data_subject_knowledge`;
CREATE TABLE `quapi_data_subject_knowledge`  (
  `id` char(32) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NOT NULL,
  `source_id` char(32) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL,
  `parent_id` char(32) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL COMMENT '父id',
  `knowledge_catalog_id` char(32) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL COMMENT '教研云特有的lkc_id',
  `name` varchar(768) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL COMMENT '知识点名称',
  `phase_id` char(32) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL COMMENT '学段id',
  `subject_id` char(32) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL COMMENT '学科id',
  `sort` int(11) NULL DEFAULT NULL COMMENT '排序',
  `path` varchar(765) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL COMMENT '父路径',
  `enable` tinyint(1) NULL DEFAULT NULL COMMENT '是否可用',
  `source_json_data` longtext CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL COMMENT '原source的json格式的数据',
  `source_code` varchar(150) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL COMMENT '来源code',
  `version` char(32) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL COMMENT '数据的版本号',
  `crt_id` char(32) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL,
  `crt_dttm` datetime(0) NULL DEFAULT NULL,
  `lastup_id` char(32) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL,
  `lastup_dttm` datetime(0) NULL DEFAULT NULL,
  PRIMARY KEY (`id`) USING BTREE,
  UNIQUE INDEX `unique_source_index`(`source_id`, `source_code`) USING BTREE
) ENGINE = InnoDB CHARACTER SET = utf8mb4 COLLATE = utf8mb4_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Table structure for quapi_phase_rela
-- ----------------------------
DROP TABLE IF EXISTS `quapi_phase_rela`;
CREATE TABLE `quapi_phase_rela`  (
  `id` char(32) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NOT NULL COMMENT '主键',
  `phase_id` char(32) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NOT NULL COMMENT '学段id',
  `config_id` char(32) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NOT NULL COMMENT '配置id',
  `code` varchar(128) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NOT NULL,
  `orders` int(4) NULL DEFAULT 0 COMMENT '显示顺序',
  `enable` tinyint(1) NULL DEFAULT 0 COMMENT '数据状态 1：正常 0：删除',
  `source_code` varchar(50) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL,
  `crt_dttm` datetime(0) NULL DEFAULT NULL COMMENT '创建时间',
  `lastup_dttm` datetime(0) NULL DEFAULT NULL COMMENT '最后更新时间',
  `crt_id` char(32) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL COMMENT '创建人ID',
  `lastup_id` char(32) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL COMMENT '最后更新人ID',
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB CHARACTER SET = utf8mb4 COLLATE = utf8mb4_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of quapi_phase_rela
-- ----------------------------
INSERT INTO `quapi_phase_rela` VALUES ('0011fa34da56479d9a03e4266e502a2d', '5', '106', 'phase_subject', 4, 1, 's01', '2019-08-27 20:26:34', NULL, NULL, NULL);
INSERT INTO `quapi_phase_rela` VALUES ('047d862f42df417b96a4798c4f8d6cc5', '3', '6', 'phase_grade', 1, 1, 's03', '2019-09-16 20:05:10', NULL, NULL, NULL);
INSERT INTO `quapi_phase_rela` VALUES ('08f83236ec494d6988dd5c496a94f798', '5', '114', 'phase_subject', 8, 1, 's03', '2019-09-16 20:05:07', NULL, NULL, NULL);
INSERT INTO `quapi_phase_rela` VALUES ('0fc3accb699349b89111e99159a1b395', '5', '29', 'phase_grade', 2, 1, 's03', '2019-09-16 20:05:10', NULL, NULL, NULL);
INSERT INTO `quapi_phase_rela` VALUES ('111ade63fc644785b897a3a10b7704ad', '5', '107', 'phase_subject', 5, 1, 's01', '2019-08-27 20:26:34', NULL, NULL, NULL);
INSERT INTO `quapi_phase_rela` VALUES ('11a6a815a8764a98a6f8e4a9b61aa0ea', '4', '104', 'phase_subject', 2, 1, 's01', '2019-08-27 20:26:34', NULL, NULL, NULL);
INSERT INTO `quapi_phase_rela` VALUES ('14b2bcc8da72449d9c8e8a44a33df231', '3', '103', 'phase_subject', 1, 1, 's03', '2019-09-16 20:05:07', NULL, NULL, NULL);
INSERT INTO `quapi_phase_rela` VALUES ('164cc6d22f92442ea642b500bfd1d287', '4', '13', 'phase_grade', 2, 1, 's03', '2019-09-16 20:05:10', NULL, NULL, NULL);
INSERT INTO `quapi_phase_rela` VALUES ('166aecafd7ff42c38d9e516018e8e4dd', '4', '120', 'phase_subject', 14, 1, 's03', '2019-09-16 20:05:07', NULL, NULL, NULL);
INSERT INTO `quapi_phase_rela` VALUES ('1957d737bfa54da58c5bee805661ecde', '3', '8', 'phase_grade', 3, 1, 's03', '2019-09-16 20:05:10', NULL, NULL, NULL);
INSERT INTO `quapi_phase_rela` VALUES ('199e360578944d59836ea8de85f03228', '3', '105', 'phase_subject', 3, 1, 's01', '2019-08-27 20:26:34', NULL, NULL, NULL);
INSERT INTO `quapi_phase_rela` VALUES ('19e28383f1824ff79ca134e4a693f89e', '4', '110', 'phase_subject', 8, 1, 's01', '2019-08-27 20:26:34', NULL, NULL, NULL);
INSERT INTO `quapi_phase_rela` VALUES ('1e5b3b7ba63d47db8fd0b1b386dc8a78', '5', '110', 'phase_subject', 7, 1, 's03', '2019-09-16 20:05:07', NULL, NULL, NULL);
INSERT INTO `quapi_phase_rela` VALUES ('2e7b4c1fe426493baa3fa1c0aad22ed7', '4', '133', 'phase_subject', 16, 1, 's03', '2019-09-16 20:05:07', NULL, NULL, NULL);
INSERT INTO `quapi_phase_rela` VALUES ('2f68220d686444d3a7f34b8d14b92799', '4', '105', 'phase_subject', 3, 1, 's03', '2019-09-16 20:05:07', NULL, NULL, NULL);
INSERT INTO `quapi_phase_rela` VALUES ('319a1ce7e822442995268fbaa1f73fd1', '3', '10', 'phase_grade', 5, 1, 's01', '2019-08-27 20:26:34', NULL, NULL, NULL);
INSERT INTO `quapi_phase_rela` VALUES ('31b1726f9f0a418bbba6ae1e3da31bd0', '5', '133', 'phase_subject', 15, 1, 's03', '2019-09-16 20:05:07', NULL, NULL, NULL);
INSERT INTO `quapi_phase_rela` VALUES ('35bc86ff0130473fb16bb1817db3a988', '4', '110', 'phase_subject', 7, 1, 's03', '2019-09-16 20:05:07', NULL, NULL, NULL);
INSERT INTO `quapi_phase_rela` VALUES ('39cdae5ff0ca451eb1f8d6ceb3f6d197', '5', '110', 'phase_subject', 8, 1, 's01', '2019-08-27 20:26:34', NULL, NULL, NULL);
INSERT INTO `quapi_phase_rela` VALUES ('43e47c54989b4434a455895866be7036', '5', '109', 'phase_subject', 6, 1, 's03', '2019-09-16 20:05:07', NULL, NULL, NULL);
INSERT INTO `quapi_phase_rela` VALUES ('44f66bdf266148ccb3ae9b6535d3ebf9', '5', '105', 'phase_subject', 3, 1, 's03', '2019-09-16 20:05:07', NULL, NULL, NULL);
INSERT INTO `quapi_phase_rela` VALUES ('47e060fe53df45c8aca04dc8e23efe22', '5', '105', 'phase_subject', 3, 1, 's01', '2019-08-27 20:26:34', NULL, NULL, NULL);
INSERT INTO `quapi_phase_rela` VALUES ('4ac02de613264a5fb10df45320b33341', '5', '117', 'phase_subject', 10, 1, 's03', '2019-09-16 20:05:07', NULL, NULL, NULL);
INSERT INTO `quapi_phase_rela` VALUES ('4b72dcb5a94c425884f2560293885015', '4', '104', 'phase_subject', 2, 1, 's03', '2019-09-16 20:05:07', NULL, NULL, NULL);
INSERT INTO `quapi_phase_rela` VALUES ('4d4b3853ce8e42e980ab2a2df870bc9a', '4', '12', 'phase_grade', 1, 1, 's03', '2019-09-16 20:05:10', NULL, NULL, NULL);
INSERT INTO `quapi_phase_rela` VALUES ('4d6ec3fc21744370b4235e95dff9fee2', '4', '108', 'phase_subject', 5, 1, 's03', '2019-09-16 20:05:07', NULL, NULL, NULL);
INSERT INTO `quapi_phase_rela` VALUES ('4e7e634b9a6f4046a8c7084b8a92eeda', '4', '106', 'phase_subject', 4, 1, 's01', '2019-08-27 20:26:34', NULL, NULL, NULL);
INSERT INTO `quapi_phase_rela` VALUES ('4fb3065c2c4140c394e6d7051ac21bba', '4', '115', 'phase_subject', 9, 1, 's03', '2019-09-16 20:05:07', NULL, NULL, NULL);
INSERT INTO `quapi_phase_rela` VALUES ('51561774483846aaa8a96f161c34d78e', '5', '116', 'phase_subject', 9, 1, 's03', '2019-09-16 20:05:07', NULL, NULL, NULL);
INSERT INTO `quapi_phase_rela` VALUES ('5387f6ea49734c29bff7f1ceecfc7868', '3', '9', 'phase_grade', 4, 1, 's03', '2019-09-16 20:05:10', NULL, NULL, NULL);
INSERT INTO `quapi_phase_rela` VALUES ('5a01e0ecf6814d1ab32cd902bb8d718e', '5', '103', 'phase_subject', 1, 1, 's01', '2019-08-27 20:26:34', NULL, NULL, NULL);
INSERT INTO `quapi_phase_rela` VALUES ('5a08a45038ff49b7b25632251315d42f', '3', '114', 'phase_subject', 4, 1, 's03', '2019-09-16 20:05:07', NULL, NULL, NULL);
INSERT INTO `quapi_phase_rela` VALUES ('5a16a874f11146908670079bbb943b1f', '4', '119', 'phase_subject', 9, 1, 's01', '2019-08-27 20:26:34', NULL, NULL, NULL);
INSERT INTO `quapi_phase_rela` VALUES ('5bea12f9b2c146c8a1675b6c49d52586', '3', '120', 'phase_subject', 9, 1, 's03', '2019-09-16 20:05:07', NULL, NULL, NULL);
INSERT INTO `quapi_phase_rela` VALUES ('63ba3d485c2049f8a59b0732253c1ddd', '5', '103', 'phase_subject', 1, 1, 's03', '2019-09-16 20:05:07', NULL, NULL, NULL);
INSERT INTO `quapi_phase_rela` VALUES ('67798e19a155409d97658b33d50b8014', '5', '30', 'phase_grade', 3, 1, 's03', '2019-09-16 20:05:10', NULL, NULL, NULL);
INSERT INTO `quapi_phase_rela` VALUES ('685b1400160a40b2924144f4c11e4d0f', '5', '104', 'phase_subject', 2, 1, 's01', '2019-08-27 20:26:34', NULL, NULL, NULL);
INSERT INTO `quapi_phase_rela` VALUES ('6ef766e362bf406d9ef3ff327afd1e65', '4', '12', 'phase_grade', 1, 1, 's01', '2019-08-27 20:26:34', NULL, NULL, NULL);
INSERT INTO `quapi_phase_rela` VALUES ('7102078ab2e442a78ded567300be7a89', '4', '122', 'phase_subject', 15, 1, 's03', '2019-09-16 20:05:07', NULL, NULL, NULL);
INSERT INTO `quapi_phase_rela` VALUES ('7422c06082e0473f835fd30dd0afa211', '4', '117', 'phase_subject', 11, 1, 's03', '2019-09-16 20:05:07', NULL, NULL, NULL);
INSERT INTO `quapi_phase_rela` VALUES ('7451ae82dd174ce0bd2903fce800dcba', '4', '14', 'phase_grade', 3, 1, 's03', '2019-09-16 20:05:10', NULL, NULL, NULL);
INSERT INTO `quapi_phase_rela` VALUES ('7737c4bc0b3b46b1a59431c7eca431ab', '3', '11', 'phase_grade', 6, 1, 's03', '2019-09-16 20:05:10', NULL, NULL, NULL);
INSERT INTO `quapi_phase_rela` VALUES ('7808597653c948b08b1a02c9eef4c413', '3', '103', 'phase_subject', 1, 1, 's01', '2019-08-27 20:26:34', NULL, NULL, NULL);
INSERT INTO `quapi_phase_rela` VALUES ('7a1cd27841e84cefa084f79509c31789', '4', '114', 'phase_subject', 8, 1, 's03', '2019-09-16 20:05:07', NULL, NULL, NULL);
INSERT INTO `quapi_phase_rela` VALUES ('7edf130251cb4d849ce8041f9cf553bc', '3', '10', 'phase_grade', 5, 1, 's03', '2019-09-16 20:05:10', NULL, NULL, NULL);
INSERT INTO `quapi_phase_rela` VALUES ('884a69c0d196489096a76697c1773e9b', '4', '119', 'phase_subject', 13, 1, 's03', '2019-09-16 20:05:07', NULL, NULL, NULL);
INSERT INTO `quapi_phase_rela` VALUES ('89a6105544ab4ae69539e64dafa5cb0f', '4', '109', 'phase_subject', 7, 1, 's01', '2019-08-27 20:26:34', NULL, NULL, NULL);
INSERT INTO `quapi_phase_rela` VALUES ('904c39d1443649c4962afa4147f4e68a', '5', '120', 'phase_subject', 13, 1, 's03', '2019-09-16 20:05:07', NULL, NULL, NULL);
INSERT INTO `quapi_phase_rela` VALUES ('929d627313394aeca035c5db216f20e0', '3', '116', 'phase_subject', 6, 1, 's03', '2019-09-16 20:05:07', NULL, NULL, NULL);
INSERT INTO `quapi_phase_rela` VALUES ('9464145b98e04f919ad84e921a72d1dc', '4', '109', 'phase_subject', 6, 1, 's03', '2019-09-16 20:05:07', NULL, NULL, NULL);
INSERT INTO `quapi_phase_rela` VALUES ('95ddb47c543d491b9ed75e857956e416', '5', '28', 'phase_grade', 1, 1, 's03', '2019-09-16 20:05:10', NULL, NULL, NULL);
INSERT INTO `quapi_phase_rela` VALUES ('9967d1afc3ff4b019c9b517bbb4f4115', '5', '108', 'phase_subject', 6, 1, 's01', '2019-08-27 20:26:34', NULL, NULL, NULL);
INSERT INTO `quapi_phase_rela` VALUES ('9bb80a17b2684a73878aeb519de251c3', '3', '9', 'phase_grade', 4, 1, 's01', '2019-08-27 20:26:34', NULL, NULL, NULL);
INSERT INTO `quapi_phase_rela` VALUES ('9f2ee9a6f6ea459a8feb5c32b74e8eeb', '5', '107', 'phase_subject', 4, 1, 's03', '2019-09-16 20:05:07', NULL, NULL, NULL);
INSERT INTO `quapi_phase_rela` VALUES ('a3dd808403064142973447fb784bede6', '3', '104', 'phase_subject', 2, 1, 's01', '2019-08-27 20:26:34', NULL, NULL, NULL);
INSERT INTO `quapi_phase_rela` VALUES ('a53d229ea7734fc28fa68584bb5cfa6c', '3', '8', 'phase_grade', 3, 1, 's01', '2019-08-27 20:26:34', NULL, NULL, NULL);
INSERT INTO `quapi_phase_rela` VALUES ('a6699d73b38a4c84840e5c59ece91103', '4', '105', 'phase_subject', 3, 1, 's01', '2019-08-27 20:26:34', NULL, NULL, NULL);
INSERT INTO `quapi_phase_rela` VALUES ('a90f7472fcaf41b7ba4fc167fc63e51c', '5', '104', 'phase_subject', 2, 1, 's03', '2019-09-16 20:05:07', NULL, NULL, NULL);
INSERT INTO `quapi_phase_rela` VALUES ('ae79e04d37d4465b9336f599572e58ac', '3', '7', 'phase_grade', 2, 1, 's01', '2019-08-27 20:26:34', NULL, NULL, NULL);
INSERT INTO `quapi_phase_rela` VALUES ('b52253556ac5462cad4e8c871c9aac91', '4', '107', 'phase_subject', 4, 1, 's03', '2019-09-16 20:05:07', NULL, NULL, NULL);
INSERT INTO `quapi_phase_rela` VALUES ('b6142e4b58394dbb81395bc34fbdd6d2', '4', '108', 'phase_subject', 6, 1, 's01', '2019-08-27 20:26:34', NULL, NULL, NULL);
INSERT INTO `quapi_phase_rela` VALUES ('b6858919542642ae95d7299ad5ba3ce1', '3', '133', 'phase_subject', 10, 1, 's03', '2019-09-16 20:05:07', NULL, NULL, NULL);
INSERT INTO `quapi_phase_rela` VALUES ('b797d55d14b84eff866cf821767973c4', '4', '103', 'phase_subject', 1, 1, 's01', '2019-08-27 20:26:34', NULL, NULL, NULL);
INSERT INTO `quapi_phase_rela` VALUES ('b8852918280b46faaf41e7a2087eb0eb', '5', '30', 'phase_grade', 3, 1, 's01', '2019-08-27 20:26:34', NULL, NULL, NULL);
INSERT INTO `quapi_phase_rela` VALUES ('bc296d1f184b45f48b941dba63c36c67', '3', '6', 'phase_grade', 1, 1, 's01', '2019-08-27 20:26:34', NULL, NULL, NULL);
INSERT INTO `quapi_phase_rela` VALUES ('bd9a4672076b48578f16c3dc48c08fb8', '5', '118', 'phase_subject', 11, 1, 's03', '2019-09-16 20:05:07', NULL, NULL, NULL);
INSERT INTO `quapi_phase_rela` VALUES ('bf3c2593830d40a4b22709df5fdcc94d', '5', '119', 'phase_subject', 12, 1, 's03', '2019-09-16 20:05:07', NULL, NULL, NULL);
INSERT INTO `quapi_phase_rela` VALUES ('c2007328f0074859a2ddbdd4d531ae06', '5', '29', 'phase_grade', 2, 1, 's01', '2019-08-27 20:26:34', NULL, NULL, NULL);
INSERT INTO `quapi_phase_rela` VALUES ('c67bbc09f2fc4319b57d17fa829ff964', '3', '117', 'phase_subject', 7, 1, 's03', '2019-09-16 20:05:07', NULL, NULL, NULL);
INSERT INTO `quapi_phase_rela` VALUES ('caa5c7e0bc5f49e9a332876934bebd1f', '3', '118', 'phase_subject', 8, 1, 's03', '2019-09-16 20:05:07', NULL, NULL, NULL);
INSERT INTO `quapi_phase_rela` VALUES ('cf30260b19da4732852ad68b3a9ca555', '5', '108', 'phase_subject', 5, 1, 's03', '2019-09-16 20:05:07', NULL, NULL, NULL);
INSERT INTO `quapi_phase_rela` VALUES ('d610eca1c019486d841e57df9784cdf8', '3', '115', 'phase_subject', 5, 1, 's03', '2019-09-16 20:05:07', NULL, NULL, NULL);
INSERT INTO `quapi_phase_rela` VALUES ('da1d4e689b3149c4a91d1e5c4e09ec1c', '3', '104', 'phase_subject', 2, 1, 's03', '2019-09-16 20:05:07', NULL, NULL, NULL);
INSERT INTO `quapi_phase_rela` VALUES ('dd09459497c74555a4b01b78550441b5', '3', '11', 'phase_grade', 6, 1, 's01', '2019-08-27 20:26:34', NULL, NULL, NULL);
INSERT INTO `quapi_phase_rela` VALUES ('df5cee630f994daa93a3026dbfe4e049', '4', '118', 'phase_subject', 12, 1, 's03', '2019-09-16 20:05:07', NULL, NULL, NULL);
INSERT INTO `quapi_phase_rela` VALUES ('e05fab74899b48d5bf1bacf3796b595c', '5', '109', 'phase_subject', 7, 1, 's01', '2019-08-27 20:26:34', NULL, NULL, NULL);
INSERT INTO `quapi_phase_rela` VALUES ('e14bf5f6430a4bbdb890e0e9b5ac836e', '5', '119', 'phase_subject', 9, 1, 's01', '2019-08-27 20:26:34', NULL, NULL, NULL);
INSERT INTO `quapi_phase_rela` VALUES ('e6bfad462fdb4f79917ee816e9f23926', '4', '103', 'phase_subject', 1, 1, 's03', '2019-09-16 20:05:07', NULL, NULL, NULL);
INSERT INTO `quapi_phase_rela` VALUES ('ebaf073df78a43c2a3b13adde2d31bf9', '4', '13', 'phase_grade', 2, 1, 's01', '2019-08-27 20:26:34', NULL, NULL, NULL);
INSERT INTO `quapi_phase_rela` VALUES ('ef94ce5b61f140cd825217e56b760930', '4', '14', 'phase_grade', 3, 1, 's01', '2019-08-27 20:26:34', NULL, NULL, NULL);
INSERT INTO `quapi_phase_rela` VALUES ('efa9747d6fa6438dbc276a0171007a59', '4', '116', 'phase_subject', 10, 1, 's03', '2019-09-16 20:05:07', NULL, NULL, NULL);
INSERT INTO `quapi_phase_rela` VALUES ('f0c05755555941e4a259c22ac6b58866', '4', '107', 'phase_subject', 5, 1, 's01', '2019-08-27 20:26:34', NULL, NULL, NULL);
INSERT INTO `quapi_phase_rela` VALUES ('f129e1b9f952425bacbc52a496641d87', '5', '28', 'phase_grade', 1, 1, 's01', '2019-08-27 20:26:34', NULL, NULL, NULL);
INSERT INTO `quapi_phase_rela` VALUES ('f17b6d1f5dcc4ef1a835e15656a081b7', '3', '7', 'phase_grade', 2, 1, 's03', '2019-09-16 20:05:10', NULL, NULL, NULL);
INSERT INTO `quapi_phase_rela` VALUES ('f79e51251b4947a98192b6b795916191', '3', '105', 'phase_subject', 3, 1, 's03', '2019-09-16 20:05:07', NULL, NULL, NULL);
INSERT INTO `quapi_phase_rela` VALUES ('fc242229a9aa4e998489bf6735b07308', '5', '121', 'phase_subject', 14, 1, 's03', '2019-09-16 20:05:07', NULL, NULL, NULL);

-- ----------------------------
-- Table structure for quapi_resources
-- ----------------------------
DROP TABLE IF EXISTS `quapi_resources`;
CREATE TABLE `quapi_resources`  (
  `id` varchar(64) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NOT NULL COMMENT '资源id',
  `code` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL COMMENT '资源code',
  `name` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL COMMENT '资源名称',
  `version` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL COMMENT '版本',
  PRIMARY KEY (`id`) USING BTREE,
  INDEX `idx_quapi_resources_code`(`code`) USING BTREE,
  INDEX `idx_quapi_resources_name`(`name`) USING BTREE
) ENGINE = InnoDB CHARACTER SET = utf8mb4 COLLATE = utf8mb4_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of quapi_resources
-- ----------------------------
INSERT INTO `quapi_resources` VALUES ('1', 's03', '常用题库', NULL);
INSERT INTO `quapi_resources` VALUES ('2', 's01', '精品题库', NULL);
INSERT INTO `quapi_resources` VALUES ('3', 's02', '学科网', NULL);
INSERT INTO `quapi_resources` VALUES ('4', 's04', '力学', NULL);

-- ----------------------------
-- Table structure for quapi_resources_config
-- ----------------------------
DROP TABLE IF EXISTS `quapi_resources_config`;
CREATE TABLE `quapi_resources_config`  (
  `id` varchar(64) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NOT NULL COMMENT '资源配置项id',
  `name` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL COMMENT '资源配置项名称',
  `value` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL COMMENT '资源配置项值',
  `desc` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL COMMENT '资源配置项描述',
  `parentid` varchar(64) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL COMMENT '父id',
  `resourceid` varchar(64) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL COMMENT '关联资源id',
  `path` varchar(700) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL COMMENT '路径',
  `sort` int(255) NULL DEFAULT NULL COMMENT '排序',
  PRIMARY KEY (`id`) USING BTREE,
  INDEX `idx_quapi_resources_config_resourceid`(`resourceid`) USING BTREE,
  INDEX `idx_quapi_resources_config_sort`(`sort`) USING BTREE,
  INDEX `idx_quapi_resources_config_path`(`path`) USING BTREE
) ENGINE = InnoDB CHARACTER SET = utf8mb4 COLLATE = utf8mb4_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of quapi_resources_config
-- ----------------------------
INSERT INTO `quapi_resources_config` VALUES ('1', '知识点树是否有根节点', '0', '0:无、1:有', '3', '2', '/3', 10);
INSERT INTO `quapi_resources_config` VALUES ('100', '分页最大数据条数', '1000', NULL, '3', '2', '/3', 20);
INSERT INTO `quapi_resources_config` VALUES ('11', '测试1', '1', 'aaa', '2', '2', '/2', 100);
INSERT INTO `quapi_resources_config` VALUES ('12', '测试2', '2', 'bbb', '2', '2', '/2', 200);
INSERT INTO `quapi_resources_config` VALUES ('13', 'ceshi3', NULL, 'dir', '2', '2', '/2', 150);
INSERT INTO `quapi_resources_config` VALUES ('14', '测试5444', '111', 'ccc', '13', '2', '/2/13', 110);
INSERT INTO `quapi_resources_config` VALUES ('2', '元数据', NULL, '元数据目录', NULL, '2', '/', 10);
INSERT INTO `quapi_resources_config` VALUES ('3', '知识点', NULL, '知识点目录', NULL, '2', '/', 20);
INSERT INTO `quapi_resources_config` VALUES ('4', '章节', NULL, '章节目录', NULL, '2', '/', 30);
INSERT INTO `quapi_resources_config` VALUES ('5', '试题', NULL, '试题目录', NULL, '2', '/', 40);

-- ----------------------------
-- Table structure for schema_comment_version
-- ----------------------------
DROP TABLE IF EXISTS `schema_comment_version`;
CREATE TABLE `schema_comment_version`  (
  `installed_rank` int(11) NOT NULL,
  `version` varchar(50) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL,
  `description` varchar(200) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NOT NULL,
  `type` varchar(20) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NOT NULL,
  `script` varchar(1000) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NOT NULL,
  `checksum` int(11) NULL DEFAULT NULL,
  `installed_by` varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NOT NULL,
  `installed_on` timestamp(0) NOT NULL DEFAULT CURRENT_TIMESTAMP(0),
  `execution_time` int(11) NOT NULL,
  `success` tinyint(1) NOT NULL,
  PRIMARY KEY (`installed_rank`) USING BTREE,
  INDEX `schema_comment_version_s_idx`(`success`) USING BTREE
) ENGINE = InnoDB CHARACTER SET = utf8mb4 COLLATE = utf8mb4_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of schema_comment_version
-- ----------------------------
INSERT INTO `schema_comment_version` VALUES (1, '0', '<< Flyway Baseline >>', 'BASELINE', '<< Flyway Baseline >>', NULL, 'root', '2019-09-06 10:06:35', 0, 1);
INSERT INTO `schema_comment_version` VALUES (2, '0.1', 'quapi resources', 'SQL', 'V0_1__quapi_resources.sql', -575800107, 'root', '2019-10-15 14:29:01', 325, 1);
INSERT INTO `schema_comment_version` VALUES (3, '0.3', 'quapi resources', 'SQL', 'V0_3__quapi_resources.sql', -1745486287, 'root', '2019-10-15 14:29:02', 68, 1);

-- ----------------------------
-- Table structure for schema_meta_version
-- ----------------------------
DROP TABLE IF EXISTS `schema_meta_version`;
CREATE TABLE `schema_meta_version`  (
  `installed_rank` int(11) NOT NULL,
  `version` varchar(50) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL,
  `description` varchar(200) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NOT NULL,
  `type` varchar(20) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NOT NULL,
  `script` varchar(1000) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NOT NULL,
  `checksum` int(11) NULL DEFAULT NULL,
  `installed_by` varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NOT NULL,
  `installed_on` timestamp(0) NOT NULL DEFAULT CURRENT_TIMESTAMP(0),
  `execution_time` int(11) NOT NULL,
  `success` tinyint(1) NOT NULL,
  PRIMARY KEY (`installed_rank`) USING BTREE,
  INDEX `schema_meta_version_s_idx`(`success`) USING BTREE
) ENGINE = InnoDB CHARACTER SET = utf8mb4 COLLATE = utf8mb4_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of schema_meta_version
-- ----------------------------
INSERT INTO `schema_meta_version` VALUES (1, '0', '<< Flyway Baseline >>', 'BASELINE', '<< Flyway Baseline >>', NULL, 'root', '2019-11-07 17:59:24', 0, 1);
INSERT INTO `schema_meta_version` VALUES (2, '0.1', 'metaapi resources', 'SQL', 'V0_1__metaapi_resources.sql', -1075689819, 'root', '2019-11-07 17:59:26', 1867, 1);

-- ----------------------------
-- Table structure for schema_quapi_pst_version
-- ----------------------------
DROP TABLE IF EXISTS `schema_quapi_pst_version`;
CREATE TABLE `schema_quapi_pst_version`  (
  `installed_rank` int(11) NOT NULL,
  `version` varchar(50) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL,
  `description` varchar(200) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NOT NULL,
  `type` varchar(20) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NOT NULL,
  `script` varchar(1000) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NOT NULL,
  `checksum` int(11) NULL DEFAULT NULL,
  `installed_by` varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NOT NULL,
  `installed_on` timestamp(0) NOT NULL DEFAULT CURRENT_TIMESTAMP(0),
  `execution_time` int(11) NOT NULL,
  `success` tinyint(1) NOT NULL,
  PRIMARY KEY (`installed_rank`) USING BTREE,
  INDEX `schema_quapi_pst_version_s_idx`(`success`) USING BTREE
) ENGINE = InnoDB CHARACTER SET = utf8mb4 COLLATE = utf8mb4_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of schema_quapi_pst_version
-- ----------------------------
INSERT INTO `schema_quapi_pst_version` VALUES (1, '0', '<< Flyway Baseline >>', 'BASELINE', '<< Flyway Baseline >>', NULL, 'root', '2019-09-19 15:00:14', 0, 1);
INSERT INTO `schema_quapi_pst_version` VALUES (2, '0.1', 'question-api-persistence', 'SQL', 'V0_1__question-api-persistence.sql', -1969116263, 'root', '2019-10-24 10:35:00', 223, 1);

SET FOREIGN_KEY_CHECKS = 1;
