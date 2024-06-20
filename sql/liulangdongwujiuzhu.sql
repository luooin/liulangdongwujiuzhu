/*
 Navicat Premium Data Transfer

 Source Server         : 本地
 Source Server Type    : MySQL
 Source Server Version : 80028
 Source Host           : localhost:3306
 Source Schema         : liulangdongwujiuzhu

 Target Server Type    : MySQL
 Target Server Version : 80028
 File Encoding         : 65001

 Date: 20/06/2024 11:26:52
*/

SET NAMES utf8mb4;
SET FOREIGN_KEY_CHECKS = 0;

-- ----------------------------
-- Table structure for address
-- ----------------------------
DROP TABLE IF EXISTS `address`;
CREATE TABLE `address`  (
  `id` int(0) NOT NULL AUTO_INCREMENT COMMENT '主键 ',
  `yonghu_id` int(0) NOT NULL COMMENT '创建用户',
  `address_name` varchar(200) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL COMMENT '收货人 ',
  `address_phone` varchar(200) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL COMMENT '电话 ',
  `address_dizhi` varchar(200) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL COMMENT '地址 ',
  `isdefault_types` int(0) NOT NULL COMMENT '是否默认地址 ',
  `insert_time` timestamp(0) NOT NULL DEFAULT CURRENT_TIMESTAMP(0) COMMENT '添加时间',
  `update_time` timestamp(0) NOT NULL DEFAULT CURRENT_TIMESTAMP(0) COMMENT '修改时间',
  `create_time` timestamp(0) NOT NULL DEFAULT CURRENT_TIMESTAMP(0) COMMENT '创建时间 show3',
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 19 CHARACTER SET = utf8 COLLATE = utf8_general_ci COMMENT = '收货地址' ROW_FORMAT = DYNAMIC;

-- ----------------------------
-- Records of address
-- ----------------------------
INSERT INTO `address` VALUES (1, 3, '收货人1', '17703786901', '地址1', 1, '2023-03-29 09:38:28', '2023-03-29 09:38:28', '2023-03-29 09:38:28');
INSERT INTO `address` VALUES (2, 1, '收货人2', '17703786902', '地址2', 1, '2023-03-29 09:38:28', '2023-03-29 09:38:28', '2023-03-29 09:38:28');
INSERT INTO `address` VALUES (3, 2, '收货人3', '17703786903', '地址3', 1, '2023-03-29 09:38:28', '2023-03-29 09:38:28', '2023-03-29 09:38:28');
INSERT INTO `address` VALUES (4, 3, '收货人4', '17703786904', '地址4', 1, '2023-03-29 09:38:28', '2023-03-29 09:38:28', '2023-03-29 09:38:28');
INSERT INTO `address` VALUES (5, 1, '收货人5', '17703786905', '地址5', 1, '2023-03-29 09:38:28', '2023-03-29 09:38:28', '2023-03-29 09:38:28');
INSERT INTO `address` VALUES (6, 1, '收货人6', '17703786906', '地址6', 1, '2023-03-29 09:38:28', '2023-03-29 09:38:28', '2023-03-29 09:38:28');
INSERT INTO `address` VALUES (7, 1, '收货人7', '17703786907', '地址7', 1, '2023-03-29 09:38:28', '2023-03-29 09:38:28', '2023-03-29 09:38:28');
INSERT INTO `address` VALUES (8, 3, '收货人8', '17703786908', '地址8', 1, '2023-03-29 09:38:28', '2023-03-29 09:38:28', '2023-03-29 09:38:28');
INSERT INTO `address` VALUES (9, 1, '收货人9', '17703786909', '地址9', 1, '2023-03-29 09:38:28', '2023-03-29 09:38:28', '2023-03-29 09:38:28');
INSERT INTO `address` VALUES (10, 1, '收货人10', '17703786910', '地址10', 1, '2023-03-29 09:38:28', '2023-03-29 09:38:28', '2023-03-29 09:38:28');
INSERT INTO `address` VALUES (11, 1, '收货人11', '17703786911', '地址11', 1, '2023-03-29 09:38:28', '2023-03-29 09:38:28', '2023-03-29 09:38:28');
INSERT INTO `address` VALUES (12, 1, '王五', '17703786912', '地址12', 1, '2023-03-29 09:38:28', '2024-04-19 23:08:11', '2023-03-29 09:38:28');
INSERT INTO `address` VALUES (13, 3, '收货人13', '17703786913', '地址13', 1, '2023-03-29 09:38:28', '2023-03-29 09:38:28', '2023-03-29 09:38:28');
INSERT INTO `address` VALUES (14, 1, '张三', '17703786914', '地址14', 1, '2023-03-29 09:38:28', '2024-04-19 23:08:01', '2023-03-29 09:38:28');
INSERT INTO `address` VALUES (15, 4, '张三', '17777777888', '地址11', 1, '2023-03-29 10:36:42', '2023-03-29 10:36:42', '2023-03-29 10:36:42');
INSERT INTO `address` VALUES (16, 5, 'a3', '13970944991', '123', 1, '2024-03-19 10:44:31', '2024-03-19 11:17:39', '2024-03-19 10:44:31');
INSERT INTO `address` VALUES (17, 1, '张三', '13970945657', '南昌市', 1, '2024-04-20 09:47:25', '2024-04-20 09:47:24', '2024-04-20 09:47:25');
INSERT INTO `address` VALUES (18, 1, '张三', '13970944991', '南昌', 2, '2024-05-22 23:16:19', '2024-05-22 23:16:19', '2024-05-22 23:16:19');

-- ----------------------------
-- Table structure for config
-- ----------------------------
DROP TABLE IF EXISTS `config`;
CREATE TABLE `config`  (
  `id` bigint(0) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `name` varchar(100) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '配置参数名称',
  `value` varchar(100) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '配置参数值',
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 4 CHARACTER SET = utf8 COLLATE = utf8_general_ci COMMENT = '配置文件' ROW_FORMAT = DYNAMIC;

-- ----------------------------
-- Records of config
-- ----------------------------
INSERT INTO `config` VALUES (1, '轮播图111', 'upload/config1.jpg');
INSERT INTO `config` VALUES (2, '轮播图2', 'upload/config2.jpg');
INSERT INTO `config` VALUES (3, '轮播图3', 'upload/config3.jpg');

-- ----------------------------
-- Table structure for dictionary
-- ----------------------------
DROP TABLE IF EXISTS `dictionary`;
CREATE TABLE `dictionary`  (
  `id` bigint(0) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `dic_code` varchar(200) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '字段',
  `dic_name` varchar(200) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '字段名',
  `code_index` int(0) NULL DEFAULT NULL COMMENT '编码',
  `index_name` varchar(200) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '编码名字  Search111 ',
  `super_id` int(0) NULL DEFAULT NULL COMMENT '父字段id',
  `beizhu` varchar(200) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '备注',
  `create_time` timestamp(0) NULL DEFAULT NULL COMMENT '创建时间',
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 47 CHARACTER SET = utf8 COLLATE = utf8_general_ci COMMENT = '字典' ROW_FORMAT = DYNAMIC;

-- ----------------------------
-- Records of dictionary
-- ----------------------------
INSERT INTO `dictionary` VALUES (1, 'forum_types', '帖子类型', 1, '宠物收养', NULL, NULL, '2023-03-29 09:36:14');
INSERT INTO `dictionary` VALUES (2, 'forum_types', '帖子类型', 2, '宠物知识', NULL, NULL, '2023-03-29 09:36:14');
INSERT INTO `dictionary` VALUES (3, 'forum_types', '帖子类型', 3, '宠物寄养', NULL, NULL, '2023-03-29 09:36:14');
INSERT INTO `dictionary` VALUES (4, 'forum_state_types', '帖子状态', 1, '发帖', NULL, NULL, '2023-03-29 09:36:14');
INSERT INTO `dictionary` VALUES (5, 'forum_state_types', '帖子状态', 2, '回帖', NULL, NULL, '2023-03-29 09:36:14');
INSERT INTO `dictionary` VALUES (6, 'gonggao_types', '公告类型', 1, '紧急救助', NULL, NULL, '2023-03-29 09:36:14');
INSERT INTO `dictionary` VALUES (7, 'gonggao_types', '公告类型', 2, '宠物知识宣传', NULL, NULL, '2023-03-29 09:36:14');
INSERT INTO `dictionary` VALUES (8, 'sex_types', '性别类型', 1, '男', NULL, NULL, '2023-03-29 09:36:14');
INSERT INTO `dictionary` VALUES (9, 'sex_types', '性别类型', 2, '女', NULL, NULL, '2023-03-29 09:36:14');
INSERT INTO `dictionary` VALUES (10, 'jinyong_types', '账户状态', 1, '启用', NULL, NULL, '2023-03-29 09:36:14');
INSERT INTO `dictionary` VALUES (11, 'jinyong_types', '账户状态', 2, '禁用', NULL, NULL, '2023-03-29 09:36:14');
INSERT INTO `dictionary` VALUES (12, 'xingbie_types', '性别', 1, '公', NULL, NULL, '2023-03-29 09:36:14');
INSERT INTO `dictionary` VALUES (13, 'xingbie_types', '性别', 2, '母', NULL, NULL, '2023-03-29 09:36:14');
INSERT INTO `dictionary` VALUES (14, 'dongwu_zhuangtai_types', '动物状态', 1, '未领养', NULL, NULL, '2023-03-29 09:36:14');
INSERT INTO `dictionary` VALUES (15, 'dongwu_zhuangtai_types', '动物状态', 2, '已领养', NULL, NULL, '2023-03-29 09:36:14');
INSERT INTO `dictionary` VALUES (16, 'liulangdongwu_types', '动物类型', 1, '猫', NULL, NULL, '2023-03-29 09:36:14');
INSERT INTO `dictionary` VALUES (17, 'liulangdongwu_types', '动物类型', 2, '狗', NULL, NULL, '2023-03-29 09:36:14');
INSERT INTO `dictionary` VALUES (18, 'liulangdongwu_erji_types', '详细类型', 1, '波斯猫', 1, NULL, '2023-03-29 09:36:14');
INSERT INTO `dictionary` VALUES (19, 'liulangdongwu_erji_types', '详细类型', 2, '加菲猫', 1, NULL, '2023-03-29 09:36:14');
INSERT INTO `dictionary` VALUES (20, 'liulangdongwu_erji_types', '详细类型', 3, '田园犬', 2, NULL, '2023-03-29 09:36:14');
INSERT INTO `dictionary` VALUES (21, 'liulangdongwu_erji_types', '详细类型', 4, '阿拉斯加', 2, NULL, '2023-03-29 09:36:14');
INSERT INTO `dictionary` VALUES (22, 'liulangdongwu_collection_types', '收藏表类型', 1, '收藏', NULL, NULL, '2023-03-29 09:36:14');
INSERT INTO `dictionary` VALUES (23, 'liulangdongwu_order_types', '领养状态', 101, '已申请领养', NULL, NULL, '2023-03-29 09:36:14');
INSERT INTO `dictionary` VALUES (24, 'liulangdongwu_order_types', '领养状态', 102, '已取消申请', NULL, NULL, '2023-03-29 09:36:14');
INSERT INTO `dictionary` VALUES (25, 'liulangdongwu_order_types', '领养状态', 103, '已同意领养', NULL, NULL, '2023-03-29 09:36:14');
INSERT INTO `dictionary` VALUES (26, 'liulangdongwu_order_types', '领养状态', 104, '已收到宠物', NULL, NULL, '2023-03-29 09:36:14');
INSERT INTO `dictionary` VALUES (27, 'liulangdongwu_order_yesno_types', '申请状态', 1, '待审核', NULL, NULL, '2023-03-29 09:36:14');
INSERT INTO `dictionary` VALUES (28, 'liulangdongwu_order_yesno_types', '申请状态', 2, '同意', NULL, NULL, '2023-03-29 09:36:14');
INSERT INTO `dictionary` VALUES (29, 'liulangdongwu_order_yesno_types', '申请状态', 3, '拒绝', NULL, NULL, '2023-03-29 09:36:15');
INSERT INTO `dictionary` VALUES (30, 'isdefault_types', '是否默认地址', 1, '否', NULL, NULL, '2023-03-29 09:36:15');
INSERT INTO `dictionary` VALUES (31, 'isdefault_types', '是否默认地址', 2, '是', NULL, NULL, '2023-03-29 09:36:15');
INSERT INTO `dictionary` VALUES (32, 'liulangdongwu_huafei_types', '消费类型', 1, '食物', NULL, NULL, '2023-03-29 09:36:15');
INSERT INTO `dictionary` VALUES (33, 'liulangdongwu_huafei_types', '消费类型', 2, '药物', NULL, NULL, '2023-03-29 09:36:15');
INSERT INTO `dictionary` VALUES (34, 'liulangdongwu_huafei_types', '消费类型', 3, '医疗项目', NULL, NULL, '2023-03-29 09:36:15');
INSERT INTO `dictionary` VALUES (35, 'liulangdongwu_huafei_types', '消费类型', 4, '衣服', NULL, NULL, '2023-03-29 09:36:15');
INSERT INTO `dictionary` VALUES (36, 'liulangdongwu_jinkuang_types', '流浪动物状态', 1, '非常好', NULL, NULL, '2023-03-29 09:36:15');
INSERT INTO `dictionary` VALUES (37, 'liulangdongwu_jinkuang_types', '流浪动物状态', 2, '一般般', NULL, NULL, '2023-03-29 09:36:15');
INSERT INTO `dictionary` VALUES (38, 'liulangdongwu_jinkuang_types', '流浪动物状态', 3, '较差', NULL, NULL, '2023-03-29 09:36:15');
INSERT INTO `dictionary` VALUES (39, 'liulangdongwu_jinkuang_types', '流浪动物状态', 4, '正常', NULL, NULL, '2023-03-29 09:36:15');
INSERT INTO `dictionary` VALUES (40, 'liulangdongwu_order_types', '领养状态', 109, '拒绝领养', NULL, '', '2023-03-29 09:36:14');
INSERT INTO `dictionary` VALUES (41, 'liulangdongwu_erji_types', '详细类型', 5, '泰迪', 2, '', '2023-03-29 10:38:20');
INSERT INTO `dictionary` VALUES (42, 'liulangdongwu_jinkuang_types', '流浪动物状态', 5, '非常糟糕', NULL, '', '2023-03-29 10:38:33');
INSERT INTO `dictionary` VALUES (44, 'liulangdongwu_huafei_types', '消费类型', 5, '生活用品', NULL, '', '2024-04-18 21:39:03');
INSERT INTO `dictionary` VALUES (45, 'gonggao_types', '公告类型', 3, '每周通知', NULL, '', '2024-04-18 21:49:37');
INSERT INTO `dictionary` VALUES (46, 'forum_types', '帖子类型', 4, '宠物丢失', NULL, '', '2024-04-18 23:57:11');

-- ----------------------------
-- Table structure for forum
-- ----------------------------
DROP TABLE IF EXISTS `forum`;
CREATE TABLE `forum`  (
  `id` int(0) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `forum_name` varchar(200) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '帖子标题  Search111 ',
  `yonghu_id` int(0) NULL DEFAULT NULL COMMENT '用户',
  `users_id` int(0) NULL DEFAULT NULL COMMENT '管理员',
  `forum_content` longtext CHARACTER SET utf8 COLLATE utf8_general_ci NULL COMMENT '发布内容',
  `super_ids` int(0) NULL DEFAULT NULL COMMENT '父id',
  `forum_types` int(0) NULL DEFAULT NULL COMMENT '帖子类型  Search111 ',
  `forum_state_types` int(0) NULL DEFAULT NULL COMMENT '帖子状态',
  `insert_time` timestamp(0) NULL DEFAULT NULL COMMENT '发帖时间',
  `update_time` timestamp(0) NULL DEFAULT NULL COMMENT '修改时间',
  `create_time` timestamp(0) NULL DEFAULT NULL COMMENT '创建时间 show2',
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 25 CHARACTER SET = utf8 COLLATE = utf8_general_ci COMMENT = '论坛' ROW_FORMAT = DYNAMIC;

-- ----------------------------
-- Records of forum
-- ----------------------------
INSERT INTO `forum` VALUES (1, '小狗饮食', 3, NULL, '发布内容1', 472, 1, 1, '2023-03-29 09:38:28', '2023-03-29 09:38:28', '2023-03-29 09:38:28');
INSERT INTO `forum` VALUES (2, '帖子标题2', 2, NULL, '发布内容2', 289, 3, 1, '2023-03-29 09:38:28', '2023-03-29 09:38:28', '2023-03-29 09:38:28');
INSERT INTO `forum` VALUES (3, '帖子标题3', 3, NULL, '发布内容3', 308, 3, 1, '2023-03-29 09:38:28', '2023-03-29 09:38:28', '2023-03-29 09:38:28');
INSERT INTO `forum` VALUES (4, '帖子标题4', 2, NULL, '发布内容4', 477, 3, 1, '2023-03-29 09:38:28', '2023-03-29 09:38:28', '2023-03-29 09:38:28');
INSERT INTO `forum` VALUES (5, '帖子标题5', 3, NULL, '发布内容5', 367, 1, 1, '2023-03-29 09:38:28', '2023-03-29 09:38:28', '2023-03-29 09:38:28');
INSERT INTO `forum` VALUES (6, '想要一只大金毛', 2, NULL, '<p>5k收一只金毛，要非常健康的哦~~~</p>', 274, 1, 1, '2023-03-29 09:38:28', '2024-04-18 22:23:42', '2023-03-29 09:38:28');
INSERT INTO `forum` VALUES (7, '帖子标题7', 2, NULL, '发布内容7', 457, 3, 1, '2023-03-29 09:38:28', '2023-03-29 09:38:28', '2023-03-29 09:38:28');
INSERT INTO `forum` VALUES (8, '帖子标题8', 1, NULL, '发布内容8', 45, 1, 1, '2023-03-29 09:38:28', '2023-03-29 09:38:28', '2023-03-29 09:38:28');
INSERT INTO `forum` VALUES (9, '帖子标题9', 2, NULL, '发布内容9', 215, 1, 1, '2023-03-29 09:38:28', '2023-03-29 09:38:28', '2023-03-29 09:38:28');
INSERT INTO `forum` VALUES (10, '萨摩耶需要领养', 1, NULL, '<p>有没有可以领养萨摩耶三天的呀</p>', 209, 3, 1, '2023-03-29 09:38:28', '2024-04-19 00:41:44', '2023-03-29 09:38:28');
INSERT INTO `forum` VALUES (11, '帖子标题11', 2, NULL, '发布内容11', 72, 3, 1, '2023-03-29 09:38:28', '2023-03-29 09:38:28', '2023-03-29 09:38:28');
INSERT INTO `forum` VALUES (12, '帖子标题12', 3, NULL, '发布内容12', 113, 3, 1, '2023-03-29 09:38:28', '2023-03-29 09:38:28', '2023-03-29 09:38:28');
INSERT INTO `forum` VALUES (13, '帖子标题13', 3, NULL, '发布内容13', 142, 3, 1, '2023-03-29 09:38:28', '2023-03-29 09:38:28', '2023-03-29 09:38:28');
INSERT INTO `forum` VALUES (15, NULL, 1, NULL, '换个哈哈哈', 14, NULL, 2, '2023-03-29 10:37:51', NULL, '2023-03-29 10:37:51');
INSERT INTO `forum` VALUES (16, '捡到一只白色波斯猫', 1, NULL, '<p>在八一广场附近看到一只波斯猫，很精致，可能是谁家的小猫走丢了。希望宠物主人看到可以联系我，小猫先带走了。</p>', NULL, 2, 1, '2023-03-29 10:37:59', '2024-04-18 23:56:45', '2023-03-29 10:37:59');
INSERT INTO `forum` VALUES (17, NULL, NULL, 1, '哈哈哈', 16, NULL, 2, '2023-03-29 10:38:39', NULL, '2023-03-29 10:38:39');
INSERT INTO `forum` VALUES (18, NULL, 5, NULL, '1111111', 16, NULL, 2, '2024-03-19 10:43:17', NULL, '2024-03-19 10:43:17');
INSERT INTO `forum` VALUES (19, '一只小橘猫需要寄养', 1, NULL, '<p>最近三天有没有在青山湖区可以接寄养的呀，有偿300元</p><p>包小猫的食物还有生活用品噢~~</p>', NULL, 3, 1, '2024-03-23 22:52:56', '2024-04-18 22:02:47', '2024-03-23 22:52:56');
INSERT INTO `forum` VALUES (20, NULL, 1, NULL, '11111111\n', 19, NULL, 2, '2024-03-23 22:59:47', NULL, '2024-03-23 22:59:47');
INSERT INTO `forum` VALUES (21, '丢失一只小橘猫', 1, NULL, '<p>在中山路丢失一只橘猫，看到的朋友可以打电话13845621457联系我噢！</p>', NULL, 4, 1, '2024-04-19 00:47:16', NULL, '2024-04-19 00:47:16');
INSERT INTO `forum` VALUES (22, NULL, 1, NULL, '', 21, NULL, 2, '2024-04-23 14:46:09', NULL, '2024-04-23 14:46:09');
INSERT INTO `forum` VALUES (23, NULL, 1, NULL, '111111\n', 19, NULL, 2, '2024-05-11 13:27:11', NULL, '2024-05-11 13:27:11');
INSERT INTO `forum` VALUES (24, NULL, 1, NULL, '哈哈哈哈哈', 21, NULL, 2, '2024-05-22 22:49:44', NULL, '2024-05-22 22:49:44');

-- ----------------------------
-- Table structure for gonggao
-- ----------------------------
DROP TABLE IF EXISTS `gonggao`;
CREATE TABLE `gonggao`  (
  `id` int(0) NOT NULL AUTO_INCREMENT COMMENT '主键 ',
  `gonggao_name` varchar(200) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '公告名称 Search111  ',
  `gonggao_photo` varchar(200) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '公告图片 ',
  `gonggao_types` int(0) NOT NULL COMMENT '公告类型 Search111 ',
  `insert_time` timestamp(0) NULL DEFAULT NULL COMMENT '公告发布时间 ',
  `gonggao_content` longtext CHARACTER SET utf8 COLLATE utf8_general_ci NULL COMMENT '公告详情 ',
  `create_time` timestamp(0) NULL DEFAULT NULL COMMENT '创建时间 show1 show2 nameShow',
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 15 CHARACTER SET = utf8 COLLATE = utf8_general_ci COMMENT = '公告' ROW_FORMAT = DYNAMIC;

-- ----------------------------
-- Records of gonggao
-- ----------------------------
INSERT INTO `gonggao` VALUES (1, '公告名称1', 'upload/gonggao1.jpg', 2, '2023-03-29 09:38:28', '公告详情1', '2023-03-29 09:38:28');
INSERT INTO `gonggao` VALUES (2, '公告名称2', 'upload/gonggao2.jpg', 2, '2023-03-29 09:38:28', '公告详情2', '2023-03-29 09:38:28');
INSERT INTO `gonggao` VALUES (3, '公告名称3', 'upload/gonggao3.jpg', 1, '2023-03-29 09:38:28', '公告详情3', '2023-03-29 09:38:28');
INSERT INTO `gonggao` VALUES (4, '猫洗澡的频率', 'upload/gonggao4.jpg', 2, '2023-03-29 09:38:28', '<p>建议两到三个月给猫洗一次澡噢</p><p><br></p>', '2023-03-29 09:38:28');
INSERT INTO `gonggao` VALUES (5, '本周宠物收养', 'upload/gonggao5.jpg', 3, '2023-03-29 09:38:28', '<p>本周有三只宠物已经有新家啦~分别是小白，团子，多肉</p><p>希望有更多的人可以参与到我们的救助活动噢！</p>', '2023-03-29 09:38:28');
INSERT INTO `gonggao` VALUES (6, '农大小猫紧急救助', 'upload/gonggao6.jpg', 1, '2023-03-29 09:38:28', '<p>农大校园看到一只小猫，身上有血迹，目前看不到是哪里受伤了，需要救助</p>', '2023-03-29 09:38:28');
INSERT INTO `gonggao` VALUES (7, '流浪动物过冬', 'upload/gonggao7.jpg', 1, '2023-03-29 09:38:28', '<p>冬天快到了，外面的流浪动物没有居住的地方，大家看到了可以提供一些温暖的小窝让他们居住</p>', '2023-03-29 09:38:28');
INSERT INTO `gonggao` VALUES (8, '猫咪驱虫', 'upload/gonggao8.jpg', 2, '2023-03-29 09:38:28', '<p>小猫每个月要做一次体外驱虫，每三个月一次体内驱虫</p>', '2023-03-29 09:38:28');
INSERT INTO `gonggao` VALUES (9, '公告名称9', 'upload/gonggao9.jpg', 1, '2023-03-29 09:38:28', '<p>小猫走丢，希望大家可以帮忙寻找</p>', '2023-03-29 09:38:28');
INSERT INTO `gonggao` VALUES (10, '医疗费捐助', 'upload/gonggao10.jpg', 1, '2023-03-29 09:38:28', '<p>小猫闯红灯被小车撞了，需要紧急送往医院！</p><p>友友们可以为小猫捐助一些钱，帮助它~</p>', '2023-03-29 09:38:28');
INSERT INTO `gonggao` VALUES (11, '狗的饮食', 'upload/gonggao11.jpg', 2, '2023-03-29 09:38:28', '<p>狗狗不能吃巧克力！！！</p>', '2023-03-29 09:38:28');
INSERT INTO `gonggao` VALUES (12, '急救小猫', 'upload/gonggao12.jpg', 1, '2023-03-29 09:38:28', '<p>公告详情12</p>', '2023-03-29 09:38:28');
INSERT INTO `gonggao` VALUES (13, '小猫洗澡知识', 'upload/gonggao13.jpg', 2, '2023-03-29 09:38:28', '<p>小奶猫前四个月，尽量不要洗澡哦！小猫咪的抵抗力比较弱，很容易生病或者感染的。</p>', '2023-03-29 09:38:28');
INSERT INTO `gonggao` VALUES (14, '狸花猫救助', 'upload/gonggao14.jpg', 1, '2023-03-29 09:38:28', '<p>青山湖区这表有一只狸花猫，腿骨折了，需要马上送去医院！！！</p>', '2023-03-29 09:38:28');

-- ----------------------------
-- Table structure for liulangdongwu
-- ----------------------------
DROP TABLE IF EXISTS `liulangdongwu`;
CREATE TABLE `liulangdongwu`  (
  `id` int(0) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `liulangdongwu_name` varchar(200) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '流浪动物名称 Search111',
  `liulangdongwu_photo` varchar(200) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '流浪动物照片',
  `liulangdongwu_types` int(0) NULL DEFAULT NULL COMMENT '动物类型 Search111',
  `liulangdongwu_erji_types` int(0) NULL DEFAULT NULL COMMENT '详细类型 Search111',
  `liulangdongwu_age` int(0) NULL DEFAULT NULL COMMENT '流浪动物年龄',
  `liulangdongwu_jiezhong` varchar(11) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '疫苗接种',
  `xingbie_types` int(0) NULL DEFAULT NULL COMMENT '性别 Search111',
  `liulangdongwu_zuyangjin` decimal(10, 2) NULL DEFAULT NULL COMMENT '助养金',
  `liulangdongwu_content` text CHARACTER SET utf8 COLLATE utf8_general_ci NULL COMMENT '动物介绍',
  `dongwu_zhuangtai_types` int(0) NULL DEFAULT NULL COMMENT '动物状态 Search111',
  `liulangdongwu_delete` int(0) NULL DEFAULT NULL COMMENT '逻辑删除',
  `create_time` timestamp(0) NULL DEFAULT NULL COMMENT '创建时间  show1 show2 photoShow',
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 15 CHARACTER SET = utf8 COLLATE = utf8_general_ci COMMENT = '流浪动物' ROW_FORMAT = DYNAMIC;

-- ----------------------------
-- Records of liulangdongwu
-- ----------------------------
INSERT INTO `liulangdongwu` VALUES (1, '圆圆', 'upload/liulangdongwu1.jpg', 1, 1, 1, '疫苗接种1', 1, 525.01, '动物介绍1', 2, 1, '2023-03-29 09:38:28');
INSERT INTO `liulangdongwu` VALUES (2, '多肉', 'upload/liulangdongwu2.jpg', 1, 1, 1, '疫苗接种2', 2, 450.51, '动物介绍2', 1, 1, '2023-03-29 09:38:28');
INSERT INTO `liulangdongwu` VALUES (3, '布丁', 'upload/liulangdongwu3.jpg', 1, 1, 1, '疫苗接种3', 1, 428.25, '动物介绍3', 1, 1, '2023-03-29 09:38:28');
INSERT INTO `liulangdongwu` VALUES (4, '糯米', 'upload/liulangdongwu4.jpg', 1, 2, 1, '疫苗接种4', 2, 549.05, '动物介绍4', 2, 1, '2023-03-29 09:38:28');
INSERT INTO `liulangdongwu` VALUES (5, '可乐', 'upload/liulangdongwu5.jpg', 1, 2, 1, '疫苗接种5', 2, 646.33, '动物介绍5', 2, 1, '2023-03-29 09:38:28');
INSERT INTO `liulangdongwu` VALUES (6, '旺财', 'upload/liulangdongwu6.jpg', 1, 2, 1, '疫苗接种6', 2, 194.99, '动物介绍6', 2, 1, '2023-03-29 09:38:28');
INSERT INTO `liulangdongwu` VALUES (7, '团子', 'upload/liulangdongwu7.jpg', 1, 2, 1, '疫苗接种7', 2, 306.48, '动物介绍7', 1, 1, '2023-03-29 09:38:28');
INSERT INTO `liulangdongwu` VALUES (8, '嘟嘟', 'upload/liulangdongwu8.jpg', 2, 3, 1, '疫苗接种8', 1, 742.73, '动物介绍8', 2, 1, '2023-03-29 09:38:28');
INSERT INTO `liulangdongwu` VALUES (9, '旺财', 'upload/liulangdongwu9.jpg', 2, 3, 2, '疫苗接种9', 2, 790.49, '动物介绍9', 1, 1, '2023-03-29 09:38:28');
INSERT INTO `liulangdongwu` VALUES (10, '大哈', 'upload/liulangdongwu10.jpg', 2, 3, 2, '疫苗接种10', 1, 283.13, '<p>动物介绍10</p>', 2, 1, '2023-03-29 09:38:28');
INSERT INTO `liulangdongwu` VALUES (11, '二哈', 'upload/liulangdongwu11.jpg', 2, 3, 2, '疫苗接种11', 1, 596.99, '动物介绍11', 2, 1, '2023-03-29 09:38:28');
INSERT INTO `liulangdongwu` VALUES (12, '蹦蹦', 'upload/liulangdongwu12.jpg', 1, 2, 2, '疫苗接种12', 1, 375.01, '<p>动物介绍12</p>', 2, 1, '2023-03-29 09:38:28');
INSERT INTO `liulangdongwu` VALUES (13, '旺旺', 'upload/liulangdongwu13.jpg', 2, 4, 2, '疫苗接种13', 2, 128.04, '<p>动物介绍13</p>', 2, 1, '2023-03-29 09:38:28');
INSERT INTO `liulangdongwu` VALUES (14, '小白', 'upload/liulangdongwu14.jpg', 2, 3, 2, '疫苗接种14', 2, 244.31, '<p>动物介绍14</p>', 2, 1, '2023-03-29 09:38:28');

-- ----------------------------
-- Table structure for liulangdongwu_collection
-- ----------------------------
DROP TABLE IF EXISTS `liulangdongwu_collection`;
CREATE TABLE `liulangdongwu_collection`  (
  `id` int(0) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `liulangdongwu_id` int(0) NULL DEFAULT NULL COMMENT '流浪动物',
  `yonghu_id` int(0) NULL DEFAULT NULL COMMENT '用户',
  `liulangdongwu_collection_types` int(0) NULL DEFAULT NULL COMMENT '类型',
  `insert_time` timestamp(0) NULL DEFAULT NULL COMMENT '收藏时间',
  `create_time` timestamp(0) NULL DEFAULT NULL COMMENT '创建时间 show3 photoShow',
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 18 CHARACTER SET = utf8 COLLATE = utf8_general_ci COMMENT = '流浪动物收藏' ROW_FORMAT = DYNAMIC;

-- ----------------------------
-- Records of liulangdongwu_collection
-- ----------------------------
INSERT INTO `liulangdongwu_collection` VALUES (1, 1, 1, 1, '2023-03-29 09:38:28', '2023-03-29 09:38:28');
INSERT INTO `liulangdongwu_collection` VALUES (2, 2, 2, 1, '2023-03-29 09:38:28', '2023-03-29 09:38:28');
INSERT INTO `liulangdongwu_collection` VALUES (3, 3, 2, 1, '2023-03-29 09:38:28', '2023-03-29 09:38:28');
INSERT INTO `liulangdongwu_collection` VALUES (4, 4, 3, 1, '2023-03-29 09:38:28', '2023-03-29 09:38:28');
INSERT INTO `liulangdongwu_collection` VALUES (5, 5, 2, 1, '2023-03-29 09:38:28', '2023-03-29 09:38:28');
INSERT INTO `liulangdongwu_collection` VALUES (6, 6, 2, 1, '2023-03-29 09:38:28', '2023-03-29 09:38:28');
INSERT INTO `liulangdongwu_collection` VALUES (7, 7, 1, 1, '2023-03-29 09:38:28', '2023-03-29 09:38:28');
INSERT INTO `liulangdongwu_collection` VALUES (8, 8, 3, 1, '2023-03-29 09:38:28', '2023-03-29 09:38:28');
INSERT INTO `liulangdongwu_collection` VALUES (9, 9, 1, 1, '2023-03-29 09:38:28', '2023-03-29 09:38:28');
INSERT INTO `liulangdongwu_collection` VALUES (10, 10, 1, 1, '2023-03-29 09:38:28', '2023-03-29 09:38:28');
INSERT INTO `liulangdongwu_collection` VALUES (11, 11, 1, 1, '2023-03-29 09:38:28', '2023-03-29 09:38:28');
INSERT INTO `liulangdongwu_collection` VALUES (12, 12, 1, 1, '2023-03-29 09:38:28', '2023-03-29 09:38:28');
INSERT INTO `liulangdongwu_collection` VALUES (13, 13, 2, 1, '2023-03-29 09:38:28', '2023-03-29 09:38:28');
INSERT INTO `liulangdongwu_collection` VALUES (14, 14, 3, 1, '2023-03-29 09:38:28', '2023-03-29 09:38:28');
INSERT INTO `liulangdongwu_collection` VALUES (16, 12, 4, 1, '2023-03-29 10:36:49', '2023-03-29 10:36:49');

-- ----------------------------
-- Table structure for liulangdongwu_huafei
-- ----------------------------
DROP TABLE IF EXISTS `liulangdongwu_huafei`;
CREATE TABLE `liulangdongwu_huafei`  (
  `id` int(0) NOT NULL AUTO_INCREMENT COMMENT '主键 ',
  `liulangdongwu_id` int(0) NULL DEFAULT NULL COMMENT '流浪动物',
  `liulangdongwu_huafei_uuid_number` varchar(200) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '流浪动物花费编号',
  `liulangdongwu_huafei_name` varchar(200) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '花费标题  Search111 ',
  `liulangdongwu_huafei_file` varchar(200) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '附件',
  `liulangdongwu_huafei_money` decimal(10, 2) NULL DEFAULT NULL COMMENT '花费金额',
  `liulangdongwu_huafei_types` int(0) NULL DEFAULT NULL COMMENT '消费类型 Search111',
  `huafei_time` timestamp(0) NULL DEFAULT NULL COMMENT '花费时间',
  `liulangdongwu_huafei_content` longtext CHARACTER SET utf8 COLLATE utf8_general_ci NULL COMMENT '花费缘由',
  `insert_time` timestamp(0) NULL DEFAULT NULL COMMENT '录入时间',
  `create_time` timestamp(0) NULL DEFAULT NULL COMMENT '创建时间',
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 16 CHARACTER SET = utf8 COLLATE = utf8_general_ci COMMENT = '流浪动物花费' ROW_FORMAT = DYNAMIC;

-- ----------------------------
-- Records of liulangdongwu_huafei
-- ----------------------------
INSERT INTO `liulangdongwu_huafei` VALUES (1, 1, '1680053908352', '疫苗', 'upload/file.rar', 22.56, 3, '2024-03-29 09:38:28', '花费缘由1', '2024-03-29 09:38:28', '2024-03-29 09:38:28');
INSERT INTO `liulangdongwu_huafei` VALUES (2, 2, '1680053908298', '新衣服', 'upload/file.rar', 22.56, 4, '2024-03-29 09:38:28', '花费缘由2', '2024-03-29 09:38:28', '2024-03-29 09:38:28');
INSERT INTO `liulangdongwu_huafei` VALUES (3, 3, '1680053908329', '绝育手术', 'upload/file.rar', 22.56, 3, '2024-03-29 09:38:28', '花费缘由3', '2024-03-29 09:38:28', '2024-03-29 09:38:28');
INSERT INTO `liulangdongwu_huafei` VALUES (4, 4, '1680053908308', '买衣服', 'upload/file.rar', 22.56, 4, '2024-03-29 09:38:28', '花费缘由4', '2024-03-29 09:38:28', '2024-03-29 09:38:28');
INSERT INTO `liulangdongwu_huafei` VALUES (5, 5, '1680053908326', '买感冒药', 'upload/file.rar', 22.56, 2, '2024-03-29 09:38:28', '花费缘由5', '2024-03-29 09:38:28', '2024-03-29 09:38:28');
INSERT INTO `liulangdongwu_huafei` VALUES (6, 6, '1680053908308', '买衣服', 'upload/file.rar', 22.56, 4, '2024-03-29 09:38:28', '花费缘由6', '2024-03-29 09:38:28', '2024-03-29 09:38:28');
INSERT INTO `liulangdongwu_huafei` VALUES (7, 7, '1680053908326', '绝育手术', 'upload/file.rar', 22.56, 3, '2024-03-29 09:38:28', '花费缘由7', '2024-03-29 09:38:28', '2024-03-29 09:38:28');
INSERT INTO `liulangdongwu_huafei` VALUES (8, 8, '1680053908320', '买衣服', 'upload/file.rar', 22.56, 4, '2024-03-29 09:38:28', '花费缘由8', '2024-03-29 09:38:28', '2024-03-29 09:38:28');
INSERT INTO `liulangdongwu_huafei` VALUES (9, 9, '1680053908323', '驱虫药', 'upload/file.rar', 22.56, 2, '2024-03-29 09:38:28', '花费缘由9', '2024-03-29 09:38:28', '2024-03-29 09:38:28');
INSERT INTO `liulangdongwu_huafei` VALUES (10, 10, '1680053908353', '腹泻药', 'upload/file.rar', 22.56, 2, '2024-03-29 09:38:28', '花费缘由10', '2024-03-29 09:38:28', '2024-03-29 09:38:28');
INSERT INTO `liulangdongwu_huafei` VALUES (11, 11, '1680053908391', '疫苗', 'upload/file.rar', 36.55, 3, '2024-03-29 09:38:28', '花费缘由11', '2024-03-29 09:38:28', '2024-03-29 09:38:28');
INSERT INTO `liulangdongwu_huafei` VALUES (12, 12, '1680053908327', '驱虫药', 'upload/file.rar', 36.55, 2, '2024-03-29 09:38:28', '花费缘由12', '2024-03-29 09:38:28', '2024-03-29 09:38:28');
INSERT INTO `liulangdongwu_huafei` VALUES (13, 13, '1680053908311', '疫苗', 'upload/file.rar', 36.55, 3, '2024-03-29 09:38:28', '花费缘由13', '2024-03-29 09:38:28', '2024-03-29 09:38:28');
INSERT INTO `liulangdongwu_huafei` VALUES (14, 14, '1680053908334', '疫苗', 'upload/file.rar', 36.55, 2, '2024-03-29 09:38:28', '花费缘由14', '2024-03-29 09:38:28', '2024-03-29 09:38:28');
INSERT INTO `liulangdongwu_huafei` VALUES (15, 12, '1680057578569', '疫苗接种', '/upload/1680057586249.doc', 33.00, 3, '2024-03-29 10:39:50', '<p>打疫苗</p>', '2024-03-29 10:39:53', '2024-03-29 10:39:53');

-- ----------------------------
-- Table structure for liulangdongwu_jinkuang
-- ----------------------------
DROP TABLE IF EXISTS `liulangdongwu_jinkuang`;
CREATE TABLE `liulangdongwu_jinkuang`  (
  `id` int(0) NOT NULL AUTO_INCREMENT COMMENT '主键 ',
  `liulangdongwu_id` int(0) NULL DEFAULT NULL COMMENT '流浪动物',
  `yonghu_id` int(0) NULL DEFAULT NULL COMMENT '用户',
  `liulangdongwu_jinkuang_uuid_number` varchar(200) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '流浪动物近况编号',
  `liulangdongwu_jinkuang_name` varchar(200) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '近况标题  Search111 ',
  `liulangdongwu_jinkuang_photo` varchar(200) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '宠物照片',
  `liulangdongwu_jinkuang_address` varchar(200) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '记录地点',
  `liulangdongwu_jinkuang_types` int(0) NULL DEFAULT NULL COMMENT '流浪动物状态 Search111',
  `jilu_time` timestamp(0) NULL DEFAULT NULL COMMENT '记录时间',
  `liulangdongwu_jinkuang_content` longtext CHARACTER SET utf8 COLLATE utf8_general_ci NULL COMMENT '近况详情 ',
  `insert_time` timestamp(0) NULL DEFAULT NULL COMMENT '录入时间',
  `create_time` timestamp(0) NULL DEFAULT NULL COMMENT '创建时间  show3 listShow',
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 16 CHARACTER SET = utf8 COLLATE = utf8_general_ci COMMENT = '流浪动物近况' ROW_FORMAT = DYNAMIC;

-- ----------------------------
-- Records of liulangdongwu_jinkuang
-- ----------------------------
INSERT INTO `liulangdongwu_jinkuang` VALUES (1, 1, 3, '1680053908329', '近况标题1', 'upload/liulangdongwu_jinkuang1.jpg', '记录地点1', 3, '2023-03-29 09:38:28', '近况详情1', '2023-03-29 09:38:28', '2023-03-29 09:38:28');
INSERT INTO `liulangdongwu_jinkuang` VALUES (2, 2, 2, '1680053908329', '近况标题2', 'upload/liulangdongwu_jinkuang2.jpg', '记录地点2', 4, '2023-03-29 09:38:28', '近况详情2', '2023-03-29 09:38:28', '2023-03-29 09:38:28');
INSERT INTO `liulangdongwu_jinkuang` VALUES (3, 3, 1, '1680053908330', '近况标题3', 'upload/liulangdongwu_jinkuang3.jpg', '记录地点3', 3, '2023-03-29 09:38:28', '近况详情3', '2023-03-29 09:38:28', '2023-03-29 09:38:28');
INSERT INTO `liulangdongwu_jinkuang` VALUES (4, 4, 1, '1680053908370', '近况标题4', 'upload/liulangdongwu_jinkuang4.jpg', '记录地点4', 2, '2023-03-29 09:38:28', '近况详情4', '2023-03-29 09:38:28', '2023-03-29 09:38:28');
INSERT INTO `liulangdongwu_jinkuang` VALUES (5, 5, 3, '1680053908307', '近况标题5', 'upload/liulangdongwu_jinkuang5.jpg', '记录地点5', 1, '2023-03-29 09:38:28', '近况详情5', '2023-03-29 09:38:28', '2023-03-29 09:38:28');
INSERT INTO `liulangdongwu_jinkuang` VALUES (6, 6, 2, '1680053908321', '近况标题6', 'upload/liulangdongwu_jinkuang6.jpg', '记录地点6', 4, '2023-03-29 09:38:28', '近况详情6', '2023-03-29 09:38:28', '2023-03-29 09:38:28');
INSERT INTO `liulangdongwu_jinkuang` VALUES (7, 7, 2, '1680053908376', '近况标题7', 'upload/liulangdongwu_jinkuang7.jpg', '记录地点7', 4, '2023-03-29 09:38:28', '近况详情7', '2023-03-29 09:38:28', '2023-03-29 09:38:28');
INSERT INTO `liulangdongwu_jinkuang` VALUES (8, 8, 1, '1680053908306', '近况标题8', 'upload/liulangdongwu_jinkuang8.jpg', '记录地点8', 1, '2023-03-29 09:38:28', '近况详情8', '2023-03-29 09:38:28', '2023-03-29 09:38:28');
INSERT INTO `liulangdongwu_jinkuang` VALUES (9, 9, 1, '1680053908326', '近况标题9', 'upload/liulangdongwu_jinkuang9.jpg', '记录地点9', 4, '2023-03-29 09:38:28', '近况详情9', '2023-03-29 09:38:28', '2023-03-29 09:38:28');
INSERT INTO `liulangdongwu_jinkuang` VALUES (10, 10, 3, '1680053908384', '近况标题10', 'upload/liulangdongwu_jinkuang10.jpg', '记录地点10', 3, '2023-03-29 09:38:28', '近况详情10', '2023-03-29 09:38:28', '2023-03-29 09:38:28');
INSERT INTO `liulangdongwu_jinkuang` VALUES (11, 11, 3, '1680053908326', '近况标题11', 'upload/liulangdongwu_jinkuang11.jpg', '记录地点11', 4, '2023-03-29 09:38:28', '近况详情11', '2023-03-29 09:38:28', '2023-03-29 09:38:28');
INSERT INTO `liulangdongwu_jinkuang` VALUES (12, 12, 1, '1680053908332', '近况标题12', 'upload/liulangdongwu_jinkuang12.jpg', '记录地点12', 1, '2023-03-29 09:38:28', '近况详情12', '2023-03-29 09:38:28', '2023-03-29 09:38:28');
INSERT INTO `liulangdongwu_jinkuang` VALUES (13, 13, 3, '1680053908375', '近况标题13', 'upload/liulangdongwu_jinkuang13.jpg', '记录地点13', 2, '2023-03-29 09:38:28', '近况详情13', '2023-03-29 09:38:28', '2023-03-29 09:38:28');
INSERT INTO `liulangdongwu_jinkuang` VALUES (14, 14, 2, '1680053908332', '近况标题14', 'upload/liulangdongwu_jinkuang14.jpg', '记录地点14', 3, '2023-03-29 09:38:28', '近况详情14', '2023-03-29 09:38:28', '2023-03-29 09:38:28');
INSERT INTO `liulangdongwu_jinkuang` VALUES (15, 11, 1, '1680057437411', '标题11', 'upload/1680057444609.jpg', '地点111', 3, '2023-03-30 00:00:00', '还是的广东省格式的', '2023-03-29 10:37:36', '2023-03-29 10:37:36');

-- ----------------------------
-- Table structure for liulangdongwu_liuyan
-- ----------------------------
DROP TABLE IF EXISTS `liulangdongwu_liuyan`;
CREATE TABLE `liulangdongwu_liuyan`  (
  `id` int(0) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `liulangdongwu_id` int(0) NULL DEFAULT NULL COMMENT '流浪动物',
  `yonghu_id` int(0) NULL DEFAULT NULL COMMENT '用户',
  `liulangdongwu_liuyan_text` longtext CHARACTER SET utf8 COLLATE utf8_general_ci NULL COMMENT '留言内容',
  `insert_time` timestamp(0) NULL DEFAULT NULL COMMENT '留言时间',
  `reply_text` longtext CHARACTER SET utf8 COLLATE utf8_general_ci NULL COMMENT '回复内容',
  `update_time` timestamp(0) NULL DEFAULT NULL COMMENT '回复时间',
  `create_time` timestamp(0) NULL DEFAULT NULL COMMENT '创建时间',
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 22 CHARACTER SET = utf8 COLLATE = utf8_general_ci COMMENT = '流浪动物留言' ROW_FORMAT = DYNAMIC;

-- ----------------------------
-- Records of liulangdongwu_liuyan
-- ----------------------------
INSERT INTO `liulangdongwu_liuyan` VALUES (1, 1, 3, '留言内容1', '2023-03-29 09:38:28', '回复信息1', '2023-03-29 09:38:28', '2023-03-29 09:38:28');
INSERT INTO `liulangdongwu_liuyan` VALUES (2, 2, 1, '留言内容2', '2023-03-29 09:38:28', '回复信息2', '2023-03-29 09:38:28', '2023-03-29 09:38:28');
INSERT INTO `liulangdongwu_liuyan` VALUES (3, 3, 3, '留言内容3', '2023-03-29 09:38:28', '回复信息3', '2023-03-29 09:38:28', '2023-03-29 09:38:28');
INSERT INTO `liulangdongwu_liuyan` VALUES (4, 4, 3, '留言内容4', '2023-03-29 09:38:28', '回复信息4', '2023-03-29 09:38:28', '2023-03-29 09:38:28');
INSERT INTO `liulangdongwu_liuyan` VALUES (5, 5, 1, '留言内容5', '2023-03-29 09:38:28', '回复信息5', '2023-03-29 09:38:28', '2023-03-29 09:38:28');
INSERT INTO `liulangdongwu_liuyan` VALUES (6, 6, 2, '留言内容6', '2023-03-29 09:38:28', '回复信息6', '2023-03-29 09:38:28', '2023-03-29 09:38:28');
INSERT INTO `liulangdongwu_liuyan` VALUES (7, 7, 2, '留言内容7', '2023-03-29 09:38:28', '回复信息7', '2023-03-29 09:38:28', '2023-03-29 09:38:28');
INSERT INTO `liulangdongwu_liuyan` VALUES (8, 8, 2, '留言内容8', '2023-03-29 09:38:28', '回复信息8', '2023-03-29 09:38:28', '2023-03-29 09:38:28');
INSERT INTO `liulangdongwu_liuyan` VALUES (9, 9, 1, '留言内容9', '2023-03-29 09:38:28', '回复信息9', '2023-03-29 09:38:28', '2023-03-29 09:38:28');
INSERT INTO `liulangdongwu_liuyan` VALUES (10, 10, 1, '留言内容10', '2023-03-29 09:38:28', '回复信息10', '2023-03-29 09:38:28', '2023-03-29 09:38:28');
INSERT INTO `liulangdongwu_liuyan` VALUES (11, 11, 1, '留言内容11', '2023-03-29 09:38:28', '回复信息11', '2023-03-29 09:38:28', '2023-03-29 09:38:28');
INSERT INTO `liulangdongwu_liuyan` VALUES (12, 12, 1, '留言内容12', '2023-03-29 09:38:28', '回复信息12', '2023-03-29 09:38:28', '2023-03-29 09:38:28');
INSERT INTO `liulangdongwu_liuyan` VALUES (13, 13, 2, '留言内容13', '2023-03-29 09:38:28', '回复信息13', '2023-03-29 09:38:28', '2023-03-29 09:38:28');
INSERT INTO `liulangdongwu_liuyan` VALUES (14, 14, 3, '好可爱呀', '2023-03-29 09:38:28', '好可爱呀', '2024-04-19 23:46:51', '2023-03-29 09:38:28');
INSERT INTO `liulangdongwu_liuyan` VALUES (15, 7, 1, 'yhjj干点啥风格', '2023-03-29 10:29:02', NULL, NULL, '2023-03-29 10:29:02');
INSERT INTO `liulangdongwu_liuyan` VALUES (16, 6, 4, '个哈哈哈或', '2023-03-29 10:36:21', '黑胡椒', '2023-03-29 10:39:07', '2023-03-29 10:36:21');
INSERT INTO `liulangdongwu_liuyan` VALUES (17, 14, 1, '小白看起来也太乖了吧！', '2024-04-19 00:48:30', NULL, NULL, '2024-04-19 00:48:30');
INSERT INTO `liulangdongwu_liuyan` VALUES (18, 13, 1, '旺旺太可爱了吧！\n', '2024-04-19 22:29:18', '哈哈哈', '2024-04-20 09:49:24', '2024-04-19 22:29:18');
INSERT INTO `liulangdongwu_liuyan` VALUES (19, 12, 1, '可爱！\n', '2024-04-20 09:45:57', NULL, NULL, '2024-04-20 09:45:57');
INSERT INTO `liulangdongwu_liuyan` VALUES (20, 12, 1, '可爱！\n', '2024-04-23 15:07:12', NULL, NULL, '2024-04-23 15:07:12');
INSERT INTO `liulangdongwu_liuyan` VALUES (21, 11, 1, '11111', '2024-05-11 13:27:50', NULL, NULL, '2024-05-11 13:27:50');

-- ----------------------------
-- Table structure for liulangdongwu_order
-- ----------------------------
DROP TABLE IF EXISTS `liulangdongwu_order`;
CREATE TABLE `liulangdongwu_order`  (
  `id` int(0) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `liulangdongwu_order_uuid_number` varchar(200) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '申请领养编号 Search111 ',
  `address_id` int(0) NULL DEFAULT NULL COMMENT '收货地址 ',
  `liulangdongwu_id` int(0) NULL DEFAULT NULL COMMENT '流浪动物',
  `yonghu_id` int(0) NULL DEFAULT NULL COMMENT '用户',
  `liulangdongwu_order_courier_name` varchar(200) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '快递公司',
  `liulangdongwu_order_courier_number` varchar(200) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '快递单号',
  `liulangdongwu_order_types` int(0) NULL DEFAULT NULL COMMENT '领养状态 Search111 ',
  `liulangdongwu_order_yesno_types` int(0) NULL DEFAULT NULL COMMENT '申请状态 Search111',
  `liulangdongwu_order_yesno_text` longtext CHARACTER SET utf8 COLLATE utf8_general_ci NULL COMMENT '审核意见',
  `liulangdongwu_order_shenhe_time` timestamp(0) NULL DEFAULT NULL COMMENT '审核时间',
  `insert_time` timestamp(0) NULL DEFAULT NULL COMMENT '订单创建时间',
  `create_time` timestamp(0) NULL DEFAULT NULL COMMENT '创建时间 show3 listShow',
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 7 CHARACTER SET = utf8 COLLATE = utf8_general_ci COMMENT = '流浪动物订单' ROW_FORMAT = DYNAMIC;

-- ----------------------------
-- Records of liulangdongwu_order
-- ----------------------------
INSERT INTO `liulangdongwu_order` VALUES (1, '1680055555298', 9, 12, 1, NULL, NULL, 102, NULL, NULL, NULL, '2023-03-29 10:05:55', '2023-03-29 10:05:55');
INSERT INTO `liulangdongwu_order` VALUES (2, '1680055641164', 2, 13, 1, NULL, NULL, 101, 1, NULL, NULL, '2023-03-29 10:07:21', '2023-03-29 10:07:21');
INSERT INTO `liulangdongwu_order` VALUES (3, '1680057415517', 15, 6, 4, '申通快递', '235416551', 103, 2, '孤鸿寡鹄', '2023-03-29 10:39:28', '2023-03-29 10:36:56', '2023-03-29 10:36:56');
INSERT INTO `liulangdongwu_order` VALUES (4, '1710816287290', 16, 9, 5, NULL, NULL, 109, 3, '无', '2024-04-20 09:59:30', '2024-03-19 10:44:47', '2024-03-19 10:44:47');
INSERT INTO `liulangdongwu_order` VALUES (5, '1711370500416', 14, 5, 1, '顺丰', '6666669999999', 103, 2, '同意领养', '2024-04-20 09:50:06', '2024-03-25 20:41:40', '2024-03-25 20:41:40');
INSERT INTO `liulangdongwu_order` VALUES (6, '1715405301488', 17, 7, 1, NULL, NULL, 101, 1, NULL, NULL, '2024-05-11 13:28:21', '2024-05-11 13:28:21');
INSERT INTO `liulangdongwu_order` VALUES (7, '1718853670477', 18, 7, 1, NULL, NULL, 101, 1, NULL, NULL, '2024-06-20 11:21:10', '2024-06-20 11:21:10');
INSERT INTO `liulangdongwu_order` VALUES (8, '1718853779073', 5, 3, 1, NULL, NULL, 101, 1, NULL, NULL, '2024-06-20 11:22:59', '2024-06-20 11:22:59');

-- ----------------------------
-- Table structure for liulangdongwu_zhuyang
-- ----------------------------
DROP TABLE IF EXISTS `liulangdongwu_zhuyang`;
CREATE TABLE `liulangdongwu_zhuyang`  (
  `id` int(0) NOT NULL AUTO_INCREMENT COMMENT '主键 ',
  `yonghu_id` int(0) NULL DEFAULT NULL COMMENT '用户',
  `liulangdongwu_id` int(0) NULL DEFAULT NULL COMMENT '流浪动物',
  `liulangdongwu_zhuyang_money` decimal(10, 2) NULL DEFAULT NULL COMMENT '助养金额',
  `insert_time` timestamp(0) NULL DEFAULT NULL COMMENT '助养时间',
  `create_time` timestamp(0) NULL DEFAULT NULL COMMENT '创建时间  show3 listShow',
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 20 CHARACTER SET = utf8 COLLATE = utf8_general_ci COMMENT = '流浪动物助养' ROW_FORMAT = DYNAMIC;

-- ----------------------------
-- Records of liulangdongwu_zhuyang
-- ----------------------------
INSERT INTO `liulangdongwu_zhuyang` VALUES (1, 3, 1, 689.68, '2023-03-29 09:38:28', '2023-03-29 09:38:28');
INSERT INTO `liulangdongwu_zhuyang` VALUES (2, 1, 2, 58.27, '2023-03-29 09:38:28', '2023-03-29 09:38:28');
INSERT INTO `liulangdongwu_zhuyang` VALUES (3, 3, 3, 803.61, '2023-03-29 09:38:28', '2023-03-29 09:38:28');
INSERT INTO `liulangdongwu_zhuyang` VALUES (4, 2, 4, 958.13, '2023-03-29 09:38:28', '2023-03-29 09:38:28');
INSERT INTO `liulangdongwu_zhuyang` VALUES (5, 2, 5, 264.31, '2023-03-29 09:38:28', '2023-03-29 09:38:28');
INSERT INTO `liulangdongwu_zhuyang` VALUES (6, 2, 6, 947.24, '2023-03-29 09:38:28', '2023-03-29 09:38:28');
INSERT INTO `liulangdongwu_zhuyang` VALUES (7, 1, 7, 724.42, '2023-03-29 09:38:28', '2023-03-29 09:38:28');
INSERT INTO `liulangdongwu_zhuyang` VALUES (8, 2, 8, 303.54, '2023-03-29 09:38:28', '2023-03-29 09:38:28');
INSERT INTO `liulangdongwu_zhuyang` VALUES (9, 3, 9, 557.80, '2023-03-29 09:38:28', '2023-03-29 09:38:28');
INSERT INTO `liulangdongwu_zhuyang` VALUES (10, 3, 10, 412.62, '2023-03-29 09:38:28', '2023-03-29 09:38:28');
INSERT INTO `liulangdongwu_zhuyang` VALUES (11, 1, 11, 86.72, '2023-03-29 09:38:28', '2023-03-29 09:38:28');
INSERT INTO `liulangdongwu_zhuyang` VALUES (12, 1, 12, 264.45, '2023-03-29 09:38:28', '2023-03-29 09:38:28');
INSERT INTO `liulangdongwu_zhuyang` VALUES (13, 2, 13, 484.48, '2023-03-29 09:38:28', '2023-03-29 09:38:28');
INSERT INTO `liulangdongwu_zhuyang` VALUES (14, 3, 14, 926.99, '2023-03-29 09:38:28', '2023-03-29 09:38:28');
INSERT INTO `liulangdongwu_zhuyang` VALUES (15, 1, 12, 99.00, '2023-03-29 10:11:01', '2023-03-29 10:11:01');
INSERT INTO `liulangdongwu_zhuyang` VALUES (16, 1, 7, 11.00, '2023-03-29 10:29:18', '2023-03-29 10:29:18');
INSERT INTO `liulangdongwu_zhuyang` VALUES (17, 4, 6, 22.00, '2023-03-29 10:36:06', '2023-03-29 10:36:06');
INSERT INTO `liulangdongwu_zhuyang` VALUES (18, 1, 5, 5.00, '2024-03-25 16:50:40', '2024-03-25 16:50:40');
INSERT INTO `liulangdongwu_zhuyang` VALUES (19, 1, 3, 1.00, '2024-03-25 20:44:53', '2024-03-25 20:44:53');

-- ----------------------------
-- Table structure for token
-- ----------------------------
DROP TABLE IF EXISTS `token`;
CREATE TABLE `token`  (
  `id` bigint(0) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `userid` bigint(0) NOT NULL COMMENT '员工id',
  `username` varchar(100) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL COMMENT '员工名',
  `tablename` varchar(100) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '表名',
  `role` varchar(100) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '角色',
  `token` varchar(200) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL COMMENT '密码',
  `addtime` timestamp(0) NOT NULL DEFAULT CURRENT_TIMESTAMP(0) COMMENT '新增时间',
  `expiratedtime` timestamp(0) NOT NULL DEFAULT CURRENT_TIMESTAMP(0) COMMENT '过期时间',
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 8 CHARACTER SET = utf8 COLLATE = utf8_general_ci COMMENT = 'token表' ROW_FORMAT = DYNAMIC;

-- ----------------------------
-- Records of token
-- ----------------------------
INSERT INTO `token` VALUES (1, 1, 'a1', 'yonghu', '用户', 'xqisi8q913u02prxm1cakmh2rrrzntuc', '2023-03-29 09:45:29', '2024-06-20 12:09:17');
INSERT INTO `token` VALUES (2, 1, 'admin', 'users', '管理员', 'u1udezkgm4snk3zexdlwfr39kv2i0cu7', '2023-03-29 10:30:30', '2024-06-20 12:17:23');
INSERT INTO `token` VALUES (3, 4, 'a5', 'yonghu', '用户', 's6yg4swcj2nsk3h52rkv79yvjwu5aof2', '2023-03-29 10:35:07', '2023-03-29 11:35:08');
INSERT INTO `token` VALUES (4, 5, 'a6', 'yonghu', '用户', '8obcqr6x1ckodnsty8yf2apbttzf7z5e', '2024-03-19 10:43:07', '2024-03-19 11:43:08');
INSERT INTO `token` VALUES (5, 6, 'a6', 'yonghu', '用户', 'dqycxgr1rqvcedc0cged8qs8yheyuai8', '2024-03-23 20:52:14', '2024-03-23 21:52:15');
INSERT INTO `token` VALUES (6, 3, 'a3', 'yonghu', '用户', 'vfj3q5lb27r0ti7n8lu810c46llvoitc', '2024-03-23 20:52:28', '2024-03-23 21:52:28');
INSERT INTO `token` VALUES (7, 2, 'a1', 'users', '管理员', 'hol34mx6uvf3lhmzzbovz4uvqjq6qzcl', '2024-04-20 00:55:38', '2024-05-23 00:39:11');

-- ----------------------------
-- Table structure for users
-- ----------------------------
DROP TABLE IF EXISTS `users`;
CREATE TABLE `users`  (
  `id` bigint(0) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `username` varchar(100) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL COMMENT '员工名',
  `password` varchar(100) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL COMMENT '密码',
  `role` varchar(100) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT '管理员' COMMENT '角色',
  `addtime` timestamp(0) NOT NULL DEFAULT CURRENT_TIMESTAMP(0) COMMENT '新增时间',
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 3 CHARACTER SET = utf8 COLLATE = utf8_general_ci COMMENT = '管理员' ROW_FORMAT = DYNAMIC;

-- ----------------------------
-- Records of users
-- ----------------------------
INSERT INTO `users` VALUES (1, 'admin', '123456', '管理员', '2023-03-29 09:36:14');
INSERT INTO `users` VALUES (2, 'a1', '123456', '管理员', '2024-04-19 23:53:25');

-- ----------------------------
-- Table structure for yonghu
-- ----------------------------
DROP TABLE IF EXISTS `yonghu`;
CREATE TABLE `yonghu`  (
  `id` int(0) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `username` varchar(200) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '账户',
  `password` varchar(200) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '密码',
  `yonghu_name` varchar(200) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '用户姓名 Search111 ',
  `yonghu_phone` varchar(200) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '用户手机号',
  `yonghu_id_number` varchar(200) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '用户身份证号',
  `yonghu_photo` varchar(200) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '用户头像',
  `sex_types` int(0) NULL DEFAULT NULL COMMENT '性别',
  `yonghu_email` varchar(200) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '用户邮箱',
  `new_money` decimal(10, 2) NULL DEFAULT NULL COMMENT '余额 ',
  `jinyong_types` int(0) NULL DEFAULT NULL COMMENT '账户状态 Search111 ',
  `create_time` timestamp(0) NULL DEFAULT NULL COMMENT '创建时间',
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 7 CHARACTER SET = utf8 COLLATE = utf8_general_ci COMMENT = '用户' ROW_FORMAT = DYNAMIC;

-- ----------------------------
-- Records of yonghu
-- ----------------------------
INSERT INTO `yonghu` VALUES (1, 'a1', '123456', 'aaaa', '18312345698', '123456789123456789', '/upload/1713449438001.jpg', 2, '22222@qq.com', 34.09, 1, '2023-03-29 09:38:28');
INSERT INTO `yonghu` VALUES (2, 'a2', '123456', '梅泫叶', '17703786902', '410224199010102002', '/upload/1713449378567.jpg', 2, '2@qq.com', 166.80, 1, '2023-03-29 09:38:28');
INSERT INTO `yonghu` VALUES (3, 'a3', '123456', '山思雨', '17787945612', '410224199010102003', '/upload/1713449333323.jpg', 2, '3@qq.com', 687.34, 1, '2023-03-29 09:38:28');
INSERT INTO `yonghu` VALUES (4, 'a5', '123456', '苏苏', '17788889999', '360121200105304781', '/upload/1713449484651.jpg', 2, '5@qq.com', 9977.00, 1, '2023-03-29 10:35:03');
INSERT INTO `yonghu` VALUES (5, 'a3', '123456', '张万森', '13987945612', '360121200105300540', '/upload/1713449196025.jpg', 1, '2944378898@qq.com', 13.00, 1, '2024-03-19 10:42:58');
INSERT INTO `yonghu` VALUES (6, 'a6', '123456', '林北星', '13912345678', '362121200105300987', '/upload/1713449128839.jpg', 2, '222@qq.com', 0.00, 1, '2024-03-19 16:31:20');

SET FOREIGN_KEY_CHECKS = 1;
