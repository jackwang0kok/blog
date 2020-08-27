/*
 Navicat Premium Data Transfer

 Source Server         : localhost
 Source Server Type    : MySQL
 Source Server Version : 50731
 Source Host           : localhost:3306
 Source Schema         : kokblog

 Target Server Type    : MySQL
 Target Server Version : 50731
 File Encoding         : 65001

 Date: 27/08/2020 12:35:23
*/

SET NAMES utf8mb4;
SET FOREIGN_KEY_CHECKS = 0;

-- ----------------------------
-- Table structure for cate
-- ----------------------------
DROP TABLE IF EXISTS `cate`;
CREATE TABLE `cate`  (
  `id` int(11) UNSIGNED NOT NULL AUTO_INCREMENT,
  `name` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `pid` int(11) NOT NULL DEFAULT 0,
  `intro` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL DEFAULT '',
  PRIMARY KEY (`id`) USING BTREE,
  UNIQUE INDEX `name`(`name`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 7 CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of cate
-- ----------------------------

-- ----------------------------
-- Table structure for opts
-- ----------------------------
DROP TABLE IF EXISTS `opts`;
CREATE TABLE `opts`  (
  `key` varchar(64) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL DEFAULT '',
  `value` varchar(2048) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL DEFAULT '',
  `intro` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL DEFAULT '',
  INDEX `key`(`key`) USING BTREE
) ENGINE = InnoDB CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of opts
-- ----------------------------
INSERT INTO `opts` VALUES ('analytic', '<script async src=\"//busuanzi.ibruce.info/busuanzi/2.3/busuanzi.pure.mini.js\"></script> ', '统计代码，可以添加百度统计、Google 统计等');
INSERT INTO `opts` VALUES ('auto_summary', '0', '');
INSERT INTO `opts` VALUES ('comment', '{\"clientID\": \"clientIDValue\",\"clientSecret\": \"clientSecretValue\",\"repo\": \"repoValue\",\"owner\": \"zxysilentValue\",\"admin\":[\"adminValue\"],\"distractionFreeMode\":true,\"githubUserName\":\"githubUserNameValue\",\"使用说明\":\"https://github.com/gitalk/gitalk\"}', '评论类型');
INSERT INTO `opts` VALUES ('custom_js', 'console.log(\"https://blog.zxysilent.com\")', '自定义js');
INSERT INTO `opts` VALUES ('introription', 'zxysilent;zxysilent blog;zxyslt;zxyslt blog;', '网站描述');
INSERT INTO `opts` VALUES ('favicon_url', '/favicon.ico', 'favicon');
INSERT INTO `opts` VALUES ('github_url', 'http://kokzs8.com/', 'GitHub 地址');
INSERT INTO `opts` VALUES ('keywords', 'KOK官网', '网站关键字');
INSERT INTO `opts` VALUES ('logo_url', '/static/logo_big.png', 'logo 地址');
INSERT INTO `opts` VALUES ('miitbeian', '蜀ICP备16011344号-2', '网站备案号');
INSERT INTO `opts` VALUES ('page_size', '6', '文章一页显示的条数');
INSERT INTO `opts` VALUES ('site_url', 'http://kokzs8.com/', '网站地址');
INSERT INTO `opts` VALUES ('title', 'KOK体育', '网站标题');
INSERT INTO `opts` VALUES ('weibo_url', 'http://kokzs8.com/', '微博地址');
INSERT INTO `opts` VALUES ('qq_number', '37025558', 'QQ号码');
INSERT INTO `opts` VALUES ('telegram_number', '37025558', '小飞机号码');
INSERT INTO `opts` VALUES ('logo_big_url', '/static/logo_big.png', '大logo 地址');
INSERT INTO `opts` VALUES ('logo_small_url', '/static/logo_small.png', '小logo 地址');

-- ----------------------------
-- Table structure for post
-- ----------------------------
DROP TABLE IF EXISTS `post`;
CREATE TABLE `post`  (
  `id` int(11) UNSIGNED NOT NULL AUTO_INCREMENT,
  `cate_id` int(11) NOT NULL DEFAULT 0,
  `user_id` int(11) UNSIGNED NOT NULL,
  `type` tinyint(4) NOT NULL DEFAULT 0 COMMENT '0 为文章，1 为页面',
  `status` tinyint(4) NOT NULL DEFAULT 0 COMMENT '0 为草稿，1 为待审核，2 为已拒绝，3 为已经发布',
  `title` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NOT NULL,
  `path` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NOT NULL DEFAULT '' COMMENT 'URL 的 pathname',
  `summary` longtext CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NOT NULL COMMENT '摘要',
  `markdown_content` longtext CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NOT NULL,
  `content` longtext CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NOT NULL,
  `allow_comment` tinyint(4) NOT NULL DEFAULT 1 COMMENT '1 为允许， 0 为不允许',
  `create_time` datetime(0) NULL DEFAULT NULL,
  `update_time` datetime(0) NOT NULL,
  `is_public` tinyint(4) NOT NULL DEFAULT 1 COMMENT '1 为公开，0 为不公开',
  `comment_num` int(11) NOT NULL DEFAULT 0,
  `options` varchar(4096) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL DEFAULT '' COMMENT '一些选项，JSON 结构',
  PRIMARY KEY (`id`) USING BTREE,
  INDEX `create_time`(`create_time`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 73 CHARACTER SET = utf8mb4 COLLATE = utf8mb4_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of post
-- ----------------------------

-- ----------------------------
-- Table structure for post_tag
-- ----------------------------
DROP TABLE IF EXISTS `post_tag`;
CREATE TABLE `post_tag`  (
  `id` int(11) UNSIGNED NOT NULL AUTO_INCREMENT,
  `post_id` int(11) NOT NULL,
  `tag_id` int(11) NOT NULL,
  PRIMARY KEY (`id`) USING BTREE,
  UNIQUE INDEX `post_tag`(`post_id`, `tag_id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 457 CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of post_tag
-- ----------------------------

-- ----------------------------
-- Table structure for tag
-- ----------------------------
DROP TABLE IF EXISTS `tag`;
CREATE TABLE `tag`  (
  `id` int(11) UNSIGNED NOT NULL AUTO_INCREMENT,
  `name` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL DEFAULT '',
  `intro` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL DEFAULT '',
  PRIMARY KEY (`id`) USING BTREE,
  UNIQUE INDEX `name`(`name`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 21 CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of tag
-- ----------------------------

-- ----------------------------
-- Table structure for user
-- ----------------------------
DROP TABLE IF EXISTS `user`;
CREATE TABLE `user`  (
  `id` int(11) UNSIGNED NOT NULL AUTO_INCREMENT,
  `name` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL DEFAULT '',
  `num` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL DEFAULT '',
  `pass` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL DEFAULT '',
  `role` int(11) NOT NULL DEFAULT 0,
  `email` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL DEFAULT '',
  `phone` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL DEFAULT '',
  `ip` varchar(32) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL DEFAULT '',
  `ecount` int(11) NOT NULL DEFAULT 0,
  `ltime` datetime(0) NOT NULL,
  `ctime` datetime(0) NOT NULL,
  PRIMARY KEY (`id`) USING BTREE,
  UNIQUE INDEX `name`(`num`) USING BTREE,
  UNIQUE INDEX `email`(`email`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 2 CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of user
-- ----------------------------
INSERT INTO `user` VALUES (1, 'admin', 'admin', '192023a7bbd73250516f069df18b50', 1074791424, 'admin@gmail.com', '', '194.146.86.234', 1, '2020-08-27 12:22:57', '2017-04-05 23:28:35');

SET FOREIGN_KEY_CHECKS = 1;
