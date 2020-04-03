/*
Navicat MySQL Data Transfer

Source Server         : root
Source Server Version : 80015
Source Host           : localhost:3306
Source Database       : jfinal_cms

Target Server Type    : MYSQL
Target Server Version : 80015
File Encoding         : 65001

Date: 2019-12-13 15:28:29
*/

SET FOREIGN_KEY_CHECKS=0;

-- ----------------------------
-- Table structure for `tb_user`
-- ----------------------------
DROP TABLE IF EXISTS `tb_user`;
CREATE TABLE `tb_user` (
  `id` int(20) NOT NULL AUTO_INCREMENT COMMENT '主键ID',
  `username` varchar(128) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci DEFAULT NULL COMMENT '登陆名',
  `nickname` varchar(128) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci DEFAULT NULL COMMENT '昵称',
  `realname` varchar(128) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci DEFAULT NULL COMMENT '实名',
  `password` varchar(128) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci DEFAULT NULL COMMENT '密码',
  `salt` varchar(32) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci DEFAULT NULL COMMENT '盐',
  `email` varchar(64) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci DEFAULT NULL COMMENT '邮件',
  `email_status` varchar(32) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci DEFAULT NULL COMMENT '邮箱状态（是否认证等）',
  `mobile` varchar(32) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci DEFAULT NULL COMMENT '手机电话',
  `mobile_status` varchar(32) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci DEFAULT NULL COMMENT '手机状态（是否认证等）',
  `telephone` varchar(32) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci DEFAULT NULL COMMENT '固定电话',
  `amount` decimal(10,2) unsigned DEFAULT '0.00' COMMENT '金额（余额）',
  `gender` varchar(16) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci DEFAULT NULL COMMENT '性别',
  `role_id` int(11) DEFAULT NULL COMMENT '权限',
  `signature` varchar(2048) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci DEFAULT NULL COMMENT '签名',
  `content_count` int(11) unsigned DEFAULT '0' COMMENT '内容数量',
  `comment_count` int(11) unsigned DEFAULT '0' COMMENT '评论数量',
  `qq` varchar(16) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci DEFAULT NULL COMMENT 'QQ号码',
  `wechat` varchar(32) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci DEFAULT NULL COMMENT '微信号',
  `weibo` varchar(256) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci DEFAULT NULL COMMENT '微博',
  `facebook` varchar(256) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci DEFAULT NULL,
  `linkedin` varchar(256) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci DEFAULT NULL,
  `birthday` datetime DEFAULT NULL COMMENT '生日',
  `company` varchar(256) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci DEFAULT NULL COMMENT '公司',
  `occupation` varchar(256) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci DEFAULT NULL COMMENT '职位、职业',
  `address` varchar(256) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci DEFAULT NULL COMMENT '地址',
  `zipcode` varchar(128) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci DEFAULT NULL COMMENT '邮政编码',
  `site` varchar(256) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci DEFAULT NULL COMMENT '个人网址',
  `graduateschool` varchar(256) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci DEFAULT NULL COMMENT '毕业学校',
  `education` varchar(256) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci DEFAULT NULL COMMENT '学历',
  `avatar` varchar(256) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci DEFAULT NULL COMMENT '头像',
  `idcardtype` varchar(128) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci DEFAULT NULL COMMENT '证件类型：身份证 护照 军官证等',
  `idcard` varchar(128) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci DEFAULT NULL COMMENT '证件号码',
  `status` int(32) DEFAULT '0' COMMENT '状态0正常1拉黑',
  `created` datetime DEFAULT NULL COMMENT '创建日期',
  `create_source` varchar(128) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci DEFAULT NULL COMMENT '用户来源（可能来之oauth第三方）',
  `logged` datetime DEFAULT NULL COMMENT '最后的登陆时间',
  `activated` datetime DEFAULT NULL COMMENT '激活时间',
  `token` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci DEFAULT '',
  `openId` varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci DEFAULT NULL COMMENT '微信公众平台openId',
  `token_expiretime` datetime DEFAULT NULL,
  PRIMARY KEY (`id`) USING BTREE,
  UNIQUE KEY `username` (`username`) USING BTREE,
  KEY `status` (`status`) USING BTREE,
  KEY `created` (`created`) USING BTREE,
  KEY `content_count` (`content_count`) USING BTREE,
  KEY `comment_count` (`comment_count`) USING BTREE
) ENGINE=InnoDB AUTO_INCREMENT=11 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci ROW_FORMAT=DYNAMIC COMMENT='用户信息表，保存用户信息。';

-- ----------------------------
-- Records of tb_user
-- ----------------------------
INSERT INTO `tb_user` VALUES ('1', 'gongzhen', 'gongzhen', '', '123456', '', '', '', '', '', '', '0.00', '', '1', '0', '0', null, '', '', '', '', '', '2018-06-03 13:25:12', '', '', '', '', '', '', '', '', '', '', '0', '2018-06-03 13:25:22', '', '2018-06-03 13:25:29', '2018-06-13 15:02:00', '', null, null);
INSERT INTO `tb_user` VALUES ('2', 'hello', 'hello', null, '123456', null, null, null, null, null, '15813722389', '0.00', null, '2', null, '0', '0', null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, '0', '2018-06-13 15:01:54', null, '2018-06-13 15:01:57', '2018-06-13 15:02:03', 'hellotoken', null, null);
INSERT INTO `tb_user` VALUES ('3', 'test', 'test', '', '123456', '', '', '', '', '', '', '0.00', '', '1', '0', '0', null, '', '', '', '', '', '2018-06-03 13:25:12', '', '', '', '', '', '', '', '', '', '', '0', '2018-06-03 13:25:22', '', '2018-06-03 13:25:29', '2018-06-13 15:02:00', '', '', null);
INSERT INTO `tb_user` VALUES ('4', null, '龚振', null, null, 'c0231ebfa50dbe702b92a44c07f2d7d4', null, null, null, null, null, '0.00', '1', '3', null, '0', '0', null, null, null, null, null, null, null, null, '{\"cityName\":\"北京市\",\"code\":0,\"countyName\":\"西城区\",\"detailInfo\":\"哈哈哈\",\"postFee\":0.0,\"provinceName\":\"北京市\",\"telNumber\":\"15625060528\",\"userName\":\"龚振\"}', null, null, null, null, 'https://wx.qlogo.cn/mmopen/vi_32/Q0j4TwGTfTKAEzsyJthMibK6ftEs41MOT4mgiamDOXJJYPO9xzS5UT4MibmZ6VSeSlKO2B3kczH5EMZMZ7CW5dmSg/132', null, null, '0', '2018-07-15 21:35:18', null, '2018-07-17 14:14:13', '2018-07-15 21:35:18', 'd3427b5e6fea5bfaa845b0a521bffe7a', 'oOXBG48kY-_6UNijSKMiGf_BRfRs', '2018-07-31 21:35:18');
INSERT INTO `tb_user` VALUES ('10', null, 'gongzhen', null, null, '1829e47e2f0e43d4dd65216708a4d8b5', null, null, null, null, null, '0.00', '1', '3', null, '0', '0', null, null, null, null, null, null, null, null, '{\"cityName\":\"广州市\",\"code\":0,\"countyName\":\"海珠区\",\"detailInfo\":\"新港中路397号\",\"postFee\":0.0,\"provinceName\":\"广东省\",\"telNumber\":\"020-81167888\",\"userName\":\"张三\"}', null, null, null, null, 'https://wx.qlogo.cn/mmopen/vi_32/Q0j4TwGTfTKzIZ9Cia4kjT7saIMRMqxeF8KuFIHNUyQUt69CjN2lpKLNQgic2vDRzbUhL9CQpwYxAyWTNkmcMeYg/132', null, null, '0', '2018-12-23 15:02:40', null, '2019-03-17 20:17:01', '2018-12-23 15:02:40', '69d7af84e942bc3bdb4915b8bd38c1f6', 'olBnq0PVRP2ILjWsMzp5QdWTAubg', '2019-05-16 19:50:59');
