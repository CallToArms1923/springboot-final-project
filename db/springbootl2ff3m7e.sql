/*
 Navicat Premium Data Transfer

 Source Server         : springbootfinalproject
 Source Server Type    : MySQL
 Source Server Version : 50744 (5.7.44)
 Source Host           : localhost:3307
 Source Schema         : springbootfinalproject

 Target Server Type    : MySQL
 Target Server Version : 50744 (5.7.44)
 File Encoding         : 65001

 Date: 25/04/2026 23:48:45
*/

SET NAMES utf8mb4;
SET FOREIGN_KEY_CHECKS = 0;

-- ----------------------------
-- Table structure for aboutus
-- ----------------------------
DROP TABLE IF EXISTS `aboutus`;
CREATE TABLE `aboutus`  (
  `id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `addtime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '创建时间',
  `title` varchar(200) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL COMMENT '标题',
  `subtitle` varchar(200) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '副标题',
  `content` longtext CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL COMMENT '内容',
  `picture1` longtext CHARACTER SET utf8 COLLATE utf8_general_ci NULL COMMENT '图片1',
  `picture2` longtext CHARACTER SET utf8 COLLATE utf8_general_ci NULL COMMENT '图片2',
  `picture3` longtext CHARACTER SET utf8 COLLATE utf8_general_ci NULL COMMENT '图片3',
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 2 CHARACTER SET = utf8 COLLATE = utf8_general_ci COMMENT = '关于我们' ROW_FORMAT = DYNAMIC;

-- ----------------------------
-- Records of aboutus
-- ----------------------------
INSERT INTO `aboutus` VALUES (1, '2024-03-23 08:04:39', '关于我们', 'ABOUT US', '当你设想门外是寒冷可怕的世界时，你还应该开门出去看看，是否真的如此。如果你有信心，你对前途就不犹豫了。如果你有勇气，你就不怕前途是否有困难或危险了每个人心中都应有两盏灯，一盏是希望的灯，一盏是勇气的灯。有了这两盏灯，我们就不怕海上的黑暗和风涛的险恶了。人的一生很像是在雾中行走。远远望去，只是迷蒙一片，辨不出方向和吉凶。可是，当你鼓起勇气，放下恐惧和怀疑，一步一步向前走去的时候，你就会发现，每走一步，你都能把下一步路看得清楚一点。“往前走，别站在远远的地方观望！”你就可以找到你的方向。', 'upload/aboutus_picture1.jpg', 'upload/aboutus_picture2.jpg', 'upload/aboutus_picture3.jpg');

-- ----------------------------
-- Table structure for config
-- ----------------------------
DROP TABLE IF EXISTS `config`;
CREATE TABLE `config`  (
  `id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `name` varchar(100) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL COMMENT '配置参数名称',
  `value` varchar(100) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '配置参数值',
  `url` varchar(500) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT 'url',
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 4 CHARACTER SET = utf8 COLLATE = utf8_general_ci COMMENT = '配置文件' ROW_FORMAT = DYNAMIC;

-- ----------------------------
-- Records of config
-- ----------------------------
INSERT INTO `config` VALUES (1, 'picture1', 'upload/picture1.jpg', NULL);
INSERT INTO `config` VALUES (2, 'picture2', 'upload/picture2.jpg', NULL);
INSERT INTO `config` VALUES (3, 'picture3', 'upload/picture3.jpg', NULL);

-- ----------------------------
-- Table structure for forum
-- ----------------------------
DROP TABLE IF EXISTS `forum`;
CREATE TABLE `forum`  (
  `id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `addtime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '创建时间',
  `title` varchar(200) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '帖子标题',
  `content` longtext CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL COMMENT '帖子内容',
  `parentid` bigint(20) NULL DEFAULT NULL COMMENT '父节点id',
  `userid` bigint(20) NOT NULL COMMENT '用户id',
  `username` varchar(200) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '用户名',
  `avatarurl` longtext CHARACTER SET utf8 COLLATE utf8_general_ci NULL COMMENT '头像',
  `isdone` varchar(200) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '状态',
  `istop` int(11) NULL DEFAULT 0 COMMENT '是否置顶',
  `toptime` datetime NULL DEFAULT NULL COMMENT '置顶时间',
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 83 CHARACTER SET = utf8 COLLATE = utf8_general_ci COMMENT = '论坛交流' ROW_FORMAT = DYNAMIC;

-- ----------------------------
-- Records of forum
-- ----------------------------
INSERT INTO `forum` VALUES (81, '2026-03-23 08:04:39', '面试时的暗语，你听懂了吗？', '1.“回家等通知”：基本上没戏了。\r\n2.\"薪资5千~8千”：实际上就是只给你5000元。\r\n3.弹性工作时间”：需要经常免费加班。\r\n4.“工资不封顶页”：工资可能很低到没有上限。\r\n5.“常年招工”：人员流动很大。\r\n6.要踏实能干”；这份工作会很累。\r\n7.“吃苦耐劳”：工作环境可能很差。\r\n8“包三餐”：从早到晚工作，没有时间吃饭。\r\n的工作。\r\n9.\"能适应较快的工作节奏”：在很短的时间内完成大量\r\n10.“包吃住”：公司位置偏远，需要住在宿舍里，方便随\r\n叫随到。\r\n11.“工资面议”：去面试时才能知道你的工资是多少。\r\n12.“三年以上工作经验”：工作没有人指导。', 0, 1, '走走停停', 'upload/forum_avatarurl1.jpg,upload/forum_avatarurl2.jpg,upload/forum_avatarurl3.jpg', '开放', 0, '2026-03-23 08:04:39');
INSERT INTO `forum` VALUES (82, '2026-03-23 08:04:39', '今天面了俩名应届生，一名华中科技大学和一名普通本科的。', '华科的这位求职者，在面试过程中，就自我优势方面阐述时多以校园经历为主，且表达含糊，给我一种很忙碌，又没忙出个所以然，问到意向如何时，他回答我说，都可以\r\n普通本科的求职者，在面试过程中，就自我优势方面叙述时多以实习经历为主，虽然短暂，但逻辑清晰，给了他很多启发，让他明白自己的优缺，问到意向如何时，于华科的求职者截然不同：我非常希望加入贵公司，如果通过了面试，我可以按时入职我很能理解他们，应届生工作经验确实缺乏，可是求职不是求学，我需要知道你真正想做什么，能做什么，是否愿意去学习、摸索、坚持\r\n我觉得应届生最大的竞争力是有自己的规划，从还没有完全踏入社会之前，就做好了应对残酷社会的准备，我能够接受你是来学习的，我能够接受你的不稳定，但我希望你此刻面对我时应该是从容的，自信的，具有希望的，是一个能够从学习中成长、在挫折中自省的人。\r\n最后也是选择了普通一本的求职者，真诚换真诚，后天入职', 0, 2, '哈哈哈', 'upload/forum_avatarurl2.jpg,upload/forum_avatarurl3.jpg,upload/forum_avatarurl4.jpg', '开放', 0, '2026-03-23 08:04:39');

-- ----------------------------
-- Table structure for jianzhifenlei
-- ----------------------------
DROP TABLE IF EXISTS `jianzhifenlei`;
CREATE TABLE `jianzhifenlei`  (
  `id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `addtime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '创建时间',
  `jianzhifenlei` varchar(200) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL COMMENT '兼职分类',
  `image` longtext CHARACTER SET utf8 COLLATE utf8_general_ci NULL COMMENT '图片',
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 37 CHARACTER SET = utf8 COLLATE = utf8_general_ci COMMENT = '兼职分类' ROW_FORMAT = DYNAMIC;

-- ----------------------------
-- Records of jianzhifenlei
-- ----------------------------
INSERT INTO `jianzhifenlei` VALUES (31, '2024-03-23 08:04:38', '日结零活', 'upload/jianzhifenlei_image1.jpg,upload/jianzhifenlei_image2.jpg,upload/jianzhifenlei_image3.jpg');
INSERT INTO `jianzhifenlei` VALUES (32, '2024-03-23 08:04:38', '周末节假日兼职', 'upload/jianzhifenlei_image2.jpg,upload/jianzhifenlei_image3.jpg,upload/jianzhifenlei_image4.jpg');
INSERT INTO `jianzhifenlei` VALUES (33, '2024-03-23 08:04:38', '寒暑假专项', 'upload/jianzhifenlei_image3.jpg,upload/jianzhifenlei_image4.jpg,upload/jianzhifenlei_image5.jpg');
INSERT INTO `jianzhifenlei` VALUES (34, '2024-03-23 08:04:38', '短期兼职', 'upload/jianzhifenlei_image4.jpg,upload/jianzhifenlei_image5.jpg,upload/jianzhifenlei_image6.jpg');
INSERT INTO `jianzhifenlei` VALUES (35, '2024-03-23 08:04:38', '长期兼职', 'upload/jianzhifenlei_image5.jpg,upload/jianzhifenlei_image6.jpg,upload/jianzhifenlei_image7.jpg');
INSERT INTO `jianzhifenlei` VALUES (36, '2024-03-23 08:04:38', '线上远程兼职', 'upload/jianzhifenlei_image6.jpg,upload/jianzhifenlei_image7.jpg,upload/jianzhifenlei_image8.jpg');

-- ----------------------------
-- Table structure for luquxinxi
-- ----------------------------
DROP TABLE IF EXISTS `luquxinxi`;
CREATE TABLE `luquxinxi`  (
  `id` int(11) NOT NULL AUTO_INCREMENT COMMENT '主键ID（序号）',
  `jianzhimingcheng` varchar(200) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL COMMENT '兼职名称',
  `jianzhifengmian` varchar(500) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL COMMENT '兼职封面',
  `jianzhifenlei` varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL COMMENT '兼职分类',
  `qiyezhanghao` varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL COMMENT '企业账号',
  `qiyemingcheng` varchar(200) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL COMMENT '企业名称',
  `fuzeren` varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL COMMENT '负责人',
  `kaigongriqi` date NULL DEFAULT NULL COMMENT '开工日期',
  `shangbandidian` varchar(300) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL COMMENT '上班地点',
  `xinzi` varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL COMMENT '薪资待遇',
  `xuehao` varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL COMMENT '学生账号',
  `xingming` varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL COMMENT '学生姓名',
  `mobile` varchar(20) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL COMMENT '手机号',
  `luqubeizhu` text CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL COMMENT '录取备注',
  `faburiqi` datetime NULL DEFAULT CURRENT_TIMESTAMP COMMENT '发布日期',
  `addtime` timestamp NULL DEFAULT CURRENT_TIMESTAMP COMMENT '创建时间',
  `shhf` varchar(50) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT '待回复' COMMENT '审核回复状态',
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 28 CHARACTER SET = utf8mb4 COLLATE = utf8mb4_general_ci COMMENT = '录取信息表' ROW_FORMAT = DYNAMIC;

-- ----------------------------
-- Records of luquxinxi
-- ----------------------------
INSERT INTO `luquxinxi` VALUES (1, '蜜雪冰城招聘奶茶店店员', 'upload/1777025506679.png', '长期兼职', 'mixuebingcheng', '蜜雪冰城股份有限公司', '王小曼', '2026-05-04', '郑州市金水区水兰徳中心23楼2313', '18元/小时 月结', 'doom', '杜穆', '19637726489', '可接受早晚班排班，周末优先上岗，入职前需办理健康证', '2026-04-24 12:55:30', '2026-04-24 12:55:30', '待回复');
INSERT INTO `luquxinxi` VALUES (2, '超市配送员 日结零活', 'upload/1777023830619.png', '短期兼职', 'hmxs', '上海盒马科技有限公司', '李先生', '2026-04-28', '郑州金水区盒马鲜生(国贸360店)', '7200元/月 包吃住', '性压抑', '赵立峰', '13823888881', '自带电动车优先，能接受夜班配送，无犯罪记录，可立即上岗', '2026-04-24 12:55:30', '2026-04-24 12:55:30', '待回复');
INSERT INTO `luquxinxi` VALUES (3, '阿迪达斯门店销售', 'upload/1777025994274.png', '周末兼职', 'Adidas', '阿迪达斯体育中国有限公司', '李雪琪', '2026-05-01', '郑州二七区杉杉奥特莱斯广场', '5400元底薪+提成', 'wutangforever', '李德可', '15635548630', '有零售销售经验优先，形象气质佳，周末及节假日必须到岗', '2026-04-24 12:55:30', '2026-04-24 12:55:30', '待回复');
INSERT INTO `luquxinxi` VALUES (27, '中牟肯德基服务员直聘J19488', 'upload/1777014815742.png', '长期兼职', 'kfc', '郑州肯德基有限公司', '王女士', '2026-04-26', '11', NULL, '饮食男女', '朱家倩', '13823888886', NULL, '2026-04-25 00:00:00', '2026-04-25 14:44:55', '待回复');

-- ----------------------------
-- Table structure for messages
-- ----------------------------
DROP TABLE IF EXISTS `messages`;
CREATE TABLE `messages`  (
  `id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `addtime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '创建时间',
  `userid` bigint(20) NOT NULL COMMENT '留言人id',
  `username` varchar(200) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '用户名',
  `avatarurl` longtext CHARACTER SET utf8 COLLATE utf8_general_ci NULL COMMENT '头像',
  `content` longtext CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL COMMENT '留言内容',
  `cpicture` longtext CHARACTER SET utf8 COLLATE utf8_general_ci NULL COMMENT '留言图片',
  `reply` longtext CHARACTER SET utf8 COLLATE utf8_general_ci NULL COMMENT '回复内容',
  `rpicture` longtext CHARACTER SET utf8 COLLATE utf8_general_ci NULL COMMENT '回复图片',
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 153 CHARACTER SET = utf8 COLLATE = utf8_general_ci COMMENT = '留言板' ROW_FORMAT = DYNAMIC;

-- ----------------------------
-- Records of messages
-- ----------------------------
INSERT INTO `messages` VALUES (150, '2026-04-18 12:19:45', 12, '爆赞', 'upload/1776514690826.jpeg', '<p>超市就是山姆，电车就是特斯拉，手机就是苹果，汉堡就是麦当劳。</p><p>年轻人不要住在没有山姆的城市。</p>', NULL, NULL, NULL);
INSERT INTO `messages` VALUES (151, '2026-04-21 13:41:49', 15, '走走停停', 'upload/1776518034700.png', '<p>随着年龄增长你会学到的12件宝贵的事情</p><p><br></p><p>1. 保持冷静比试图赢得争论要好。</p><p><br></p><p>2. 时间比金钱更宝贵。</p><p><br></p><p>3. 不是每个人都需要成为你生活的一部分。</p><p><br></p><p>4. 健康是你最好的长期投资。</p><p><br></p><p>5. 说“不”表示你尊重自己。</p><p><br></p><p>6. 真正的朋友不多，要珍惜他们。</p><p><br></p><p>7. 随着年龄增长，家庭变得越来越重要。</p><p><br></p><p>8. 你不需要参与每一场争吵或打架。</p><p><br></p><p>9. 真正的幸福来自内心，而不是来自物质。</p><p><br></p><p>10. 当你保持安静时，你会注意到更多。</p><p><br></p><p>11. 原谅别人能让你感到自由。</p><p><br></p><p>12. 当你不再责怪别人时，你会变得更聪明。</p>', 'upload/1776778850499.png', NULL, NULL);
INSERT INTO `messages` VALUES (152, '2026-04-21 13:42:50', 18, '小武', 'upload/1776518801257.png', '<p>如何在72小时内重启整个人生：</p><p><br></p><p>1. 今晚删除3个应用。</p><p><br></p><p>你已经知道是哪3个。就是那些你逃避时会打开的应用。</p><p><br></p><p>不是飞行模式，不是屏幕时间限制。直接删除。</p><p><br></p><p>如果这扇门还开着，接下来72小时都白费。</p><p><br></p><p>2. 写下丑陋的那一页。</p><p><br></p><p>一张纸，一个问题：我的人生现在真正哪里出了问题。</p><p><br></p><p>不是目标，不是计划。那个你几个月来一直压在心里没有写下来的真实答案。</p><p><br></p><p>3. 像一个守诺言的人住在这里一样打扫一个房间。</p><p><br></p><p>不是整个公寓。就一个房间。扔掉坏掉的东西，认真整理床铺。</p><p><br></p><p>你的空间一直在反映你的习惯。先改变空间。</p><p><br></p><p>4. 在大脑清醒前让身体动起来。</p><p><br></p><p>第2天。在咖啡前，在手机前，在脑子列出理由前。</p><p><br></p><p>重点不是健身。是证明你的嘴和手终于站在同一队了。</p><p><br></p><p>5. 对一个人说出真话。</p><p><br></p><p>对一个你信任的人说一句诚实的话。\'我一直被困住了，现在我在努力走出来。\'</p><p><br></p><p>你一直独自承担是因为孤独感更安全，但孤独是每次重启的坟墓。</p><p><br></p><p>6. 选定一件事。在第72小时开始做它。别告诉任何人。</p><p><br></p><p>每天一个行动，小到最坏的日子也杀不死它，大到30天的坚持能改变一切。</p><p><br></p><p>72小时是拆除，这个行动是你承诺仍有效的第一个证明。</p>', 'upload/1776778968233.JPG', '<p>说的有道理</p><p><br></p>', NULL);

-- ----------------------------
-- Table structure for mianshitongzhi
-- ----------------------------
DROP TABLE IF EXISTS `mianshitongzhi`;
CREATE TABLE `mianshitongzhi`  (
  `id` int(11) NOT NULL AUTO_INCREMENT COMMENT '主键ID',
  `jianzhimingcheng` varchar(200) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL COMMENT '兼职名称',
  `jianzhifengmian` varchar(300) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL COMMENT '兼职封面',
  `jianzhifenlei` varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL COMMENT '兼职分类',
  `qiyezhanghao` varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL COMMENT '企业账号',
  `qiyemingcheng` varchar(200) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL COMMENT '企业名称',
  `fuzeren` varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL COMMENT '负责人',
  `mianshiriqi` datetime NULL DEFAULT NULL COMMENT '面试日期',
  `leixing` varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL COMMENT '类型',
  `mianshididian` varchar(300) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL COMMENT '面试地点',
  `xuehao` varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL COMMENT '学号',
  `xingming` varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL COMMENT '姓名',
  `mobile` varchar(20) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL COMMENT '手机号',
  `mianshibeizhu` text CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL COMMENT '面试备注',
  `caozuoriqi` datetime NULL DEFAULT NULL COMMENT '操作日期',
  `shhf` varchar(10) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL COMMENT '是否回复',
  `addtime` timestamp NULL DEFAULT CURRENT_TIMESTAMP COMMENT '创建时间',
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 14 CHARACTER SET = utf8mb4 COLLATE = utf8mb4_general_ci COMMENT = '面试通知表' ROW_FORMAT = DYNAMIC;

-- ----------------------------
-- Records of mianshitongzhi
-- ----------------------------
INSERT INTO `mianshitongzhi` VALUES (1, '3名日结工/赵一鸣送零食-一日一结', 'upload/1777023964894.png', '短期兼职', '配送', '沈阳市蓝胖子配送服务有限公司', '贾淑艳', '2026-04-26 00:00:00', '周日', '郑州金水区金印现代城', '性压抑', '赵立峰', '13823888881', '', '2026-04-24 00:00:00', '', '2026-04-24 11:36:38');
INSERT INTO `mianshitongzhi` VALUES (2, '阿迪达斯郑州二七杉杉店兼职', 'upload/1777025994274.png', '周末节假日兼职', 'Adidas', '阿迪达斯体育中国有限公司', '李雪琪', '2026-05-06 00:00:00', '周四', '郑州二七区杉杉奥特莱斯广场', '饮食男女', '朱家倩', '13823888886', '', '2026-04-24 00:00:00', '', '2026-04-24 12:36:37');

-- ----------------------------
-- Table structure for news
-- ----------------------------
DROP TABLE IF EXISTS `news`;
CREATE TABLE `news`  (
  `id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `addtime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '创建时间',
  `title` varchar(200) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL COMMENT '标题',
  `introduction` longtext CHARACTER SET utf8 COLLATE utf8_general_ci NULL COMMENT '简介',
  `typename` varchar(200) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '分类名称',
  `name` varchar(200) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '发布人',
  `headportrait` longtext CHARACTER SET utf8 COLLATE utf8_general_ci NULL COMMENT '头像',
  `clicknum` int(11) NULL DEFAULT 0 COMMENT '点击次数',
  `clicktime` datetime NULL DEFAULT NULL COMMENT '最近点击时间',
  `thumbsupnum` int(11) NULL DEFAULT 0 COMMENT '赞',
  `crazilynum` int(11) NULL DEFAULT 0 COMMENT '踩',
  `storeupnum` int(11) NULL DEFAULT 0 COMMENT '收藏数',
  `picture` longtext CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL COMMENT '图片',
  `content` longtext CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL COMMENT '内容',
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 109 CHARACTER SET = utf8 COLLATE = utf8_general_ci COMMENT = '招聘资讯' ROW_FORMAT = DYNAMIC;

-- ----------------------------
-- Records of news
-- ----------------------------
INSERT INTO `news` VALUES (101, '2026-03-23 08:04:39', '趁着年轻，输得起，看得开，去经历', '我在大学一年级那一年，毫无悬念地把自己吃成了一个胖子。不是那种巨大的胖子，而是介于正规的肥胖和臃肿之间的尴尬体型，比标准体型重了15斤。于是，我的整个大用户活变成了电影《蝴蝶效应》系列，那只蝴蝶重达15斤', '分类名称1', '小武', 'upload/news_headportrait1.jpg', 3, '2026-04-25 11:09:11', 1, 1, 1, 'upload/news_picture1.jpg', '<p>我在大学一年级那一年，毫无悬念地把自己吃成了一个胖子。不是那种巨大的胖子，而是介于正规的肥胖和臃肿之间的尴尬体型，比标准体型重了15斤。于是，我的整个大用户活变成了电影《蝴蝶效应》系列，那只蝴蝶重达15斤。</p><p>  首先，我皈依了减肥。我可以整整一天滴水不进，然后第二天中午，一个小时之内连续去三个食堂吃午饭，每次都是两荤一素、一两米饭加一瓶大可乐，像是一个人孢子分裂出了三个暴食症患者。其次，因为要么饿得百爪挠心，要么撑得寝食难安，我变成了一个昼夜颠倒的人，再加上觉得自己邋遢难看，不愿见人，便逃掉了很多课。其三，逃课的空虚让我花了大量时间网购，击败了全国90%以上的电商消费者，和快递员结下了深厚的友谊。我买的大多数是衣服，衣服又穿不进，羞愤难当，继续皈依减肥。总之，那是我非常不快乐的几年。因为难以接受自己，所以蜷缩着，拒绝他人。</p><p>    我很久之后才知道，人用来自憎的大脑边缘系统，在童年时就已经形成。可是，用来开导自己、原谅自己、使自己变得强大的智慧，却往往在我们本该成熟的年纪依然不具备。每一世代的年轻人都是脆弱的、敏感的、容易受他人影响的。而对于正年轻的一代来说，这个挑战异乎寻常的艰难。</p><p> 电影《楚门的世界》中提出了一个假设以及相应的解答:当一个人活在所有人的窥探之下，他应该怎么办?答案是:他逃走，获得自由。然而，如果所有人活在所有人的窥探之下，那又该如何逃避?这不是假设，而是正在悄然发生的现实。我们无时无刻不在朋友圈、微博、贴吧、个人主页上展现自己的生活，同时，也在同样的平台上窥探他人的生活。我们无时无刻不在评估他人，同时，也在接受他人的评估。“个性张扬”只是狐假虎威的外衣，为的是掩饰自卑与自恋此起彼伏、相爱相杀的脆弱。我们羡慕嫉妒他人，也努力把自己的生活修饰得让他人羡慕嫉妒。我们对他人的意见过于敏感，无法忍受不被“点赞”的人生。</p><p>  社交网络的核心在于“社交”，社交的动力，是出于人们无法忍受孤独;人们之所以无法忍受孤独，是因为人们无法拷问自己。可是，总有一天，我们要站在镜子前，发现我们并不是自己创造出来的那个有趣、可爱、有吸引力、有能力的人。那么，你还喜欢镜子里的自己吗?或者，镜子里的你还喜欢自己吗?这个世界是否称赞你、羡慕你、爱你，在某种程度上是个不断膨胀的谎言。关键的问题在于，你是否对自己足够诚实，并且接受诚实之后的不完美。</p><p>   失去的痛苦、被拒绝的痛苦、被伤害的痛苦、分别的痛苦，它们如此显眼地横在前行的路上，让人想逃遁到那个充满着“赞”的虚幻世界里。然而，我们是人，走在一条从摇篮到坟墓的路上，年轻在途中，衰老在途中。必须和真实的世界发生联系，而不是兀自为尚未发生的事情恐惧;必须和真实的人发生各种关系，而不是如一座座只能遥远眺望的孤岛。</p><p>那些杀不死我们的，它们有时并不会让我们更加强大，而只是成为一段诗意或自嘲的记忆。趁着年轻，输得起，看得开，去经历。那些杀不死我们的，它们在混沌而无序的未来里，并不能成为我们手中的武器，却为我们的存活，增加了反抗脆弱与敏感的韧性。</p>');
INSERT INTO `news` VALUES (102, '2026-03-03 08:04:39', '大学就该抓住青春，用汗水实现梦想', '大学之青春，人生之春，人生之王，人生之华也，宝贵的时光我们理当去珍惜。然而，当我们在青春布满藤墓的围墙上缓慢的攀行时;依旧游离在青春摇摆不定的尾巴上时;奋力想抓却抓不住，用力一扯，却又是散落一地的音符时;我们是否该回头思考了。零零碎碎的记忆，偶尔会闪过寂寞的长空，飘然在无际的苍穹，仅仅留下几颗闪烁的残星让我们自己深思，青春易逝，好比东逝的水—去不复还', '分类名称2', 'kobe', 'upload/news_headportrait2.jpg', 2, '2024-03-23 16:04:39', 2, 2, 2, 'upload/news_picture2.jpg', '<p>  大学之青春，人生之春，人生之王，人生之华也，宝贵的时光我们理当去珍惜。然而，当我们在青春布满藤墓的围墙上缓慢的攀行时;依旧游离在青春摇摆不定的尾巴上时;奋力想抓却抓不住，用力一扯，却又是散落一地的音符时;我们是否该回头思考了。零零碎碎的记忆，偶尔会闪过寂寞的长空，飘然在无际的苍穹，仅仅留下几颗闪烁的残星让我们自己深思，青春易逝，好比东逝的水—去不复还。</p><p>  青春是属于我们的，是人生最最美好的时光。我们应该好好把握住现在象牙塔的点点滴滴。大学对于我们来说很重要，这里充满了好奇、机遇和挑战。当我懵懵懂懂的走过了两年才突然发现原来大学是这样的，每个人有不同的选择，有不同的理想，也有不同的人生。但是无论怎样都是一个博学的过程，学做人，学知识，用户活..…...春是疯狂的，是充满激情的，是奋斗的，最重要的是我们要坚定我们的梦想，为了梦想付出一切，为了梦想坚持到底，这才是真正的青春。青春的梦想就是黑夜里的灯塔在我们迷茫时给予我们方向，就是力量的源泉在我们身陷逆境时给予我们最大的动力，就是爱的港湾在我们屡次失败时给予我们受伤的心灵以安慰。因此无论何时何地，都不能忘却心里坚守的那份沉甸甸的梦想。</p><p>   青春的梦想很简单，可能是梦想成为学习的佼佼者让GPA无限趋于4.0，可能是梦想成为用户工作的杰出者当上主席为自己的从政事业奠定基础，也可能是梦想成为运动场上的超级明星拥有大量的球迷粉丝，也可能是梦想成为职场达人，面试无压力，就业有保障...….或许你觉得这些都算不上梦想，其实梦想并不分大小和轻重，不能说只有中国梦才算是梦想，梦想就是这样每个人有不同的定位，但都是值得去追逐的，去为之奋斗的。()拥有了梦想，就有了坚定的信念，海风再大海浪再大，也无法扼杀我们追逐胜利的信念。信念给我们坚持的勇气，勇气赐我们昂扬的斗志，斗志带我们摆脱厄运;拥有了梦想，就能化压力为动力，梦想会时刻在鞭策我们，鼓励我们，让我们审视自己，发现不足，奋力补救，让自己保持不懈的前进动力;拥有了梦想，我们就不会在迷茫的路上更加迷茫，我们就能在青春之歌复杂的五线谱中听到动人的旋律。</p><p>   我们是大用户，是祖国的未来，是民族复兴的脊梁，面对如此重任，怎么能不胸怀大志，坚定梦想，在青春的道路上奋斗。“恰同学少年，风华正茂，书生意气，挥斥方道。”青春是黄金时段，我们要以梦想为方向，扬帆起航，努力拼搏，给我们即将失去的青春以最好的结局。人因梦想而伟大，让我们一起奏响青春的梦想之歌，为各自的梦想努力进发吧!</p>');
INSERT INTO `news` VALUES (103, '2026-03-21 08:04:39', '留退路就没有出路', '公元前一世纪，凯撒大帝率领他的军队抵达了英格兰，他决心要赢得这场战争，不管遇到什么情况都不会退却。为了让士兵们明白自己必胜的决心和信心，也为了断绝士兵们逃跑退缩的念头，凯撒命令士兵将运载他们的所有船只都烧毁。这使得军队的士气受到了莫大的鼓舞。后来他们获胜了', '分类名称3', '卡里老虎', 'upload/news_headportrait3.jpg', 3, '2024-03-23 16:04:39', 3, 3, 3, 'upload/news_picture3.jpg', '<p>  公元前一世纪，凯撒大帝率领他的军队抵达了英格兰，他决心要赢得这场战争，不管遇到什么情况都不会退却。为了让士兵们明白自己必胜的决心和信心，也为了断绝士兵们逃跑退缩的念头，凯撒命令士兵将运载他们的所有船只都烧毁。这使得军队的士气受到了莫大的鼓舞。后来他们获胜了。</p><p>  很多人在处理重要问题的时候，总是喜欢把这些问题暂且搁置在一边，等以后再做。他们没有决定的勇气和魄力，总是在着手做事的时候想给自己留一条后路，以免没有出路。对于他们来说，退路就是出路。但是，事实证明，这样是不会有任何成就的。</p><p>背水一战、破釜沉舟的军队往往能获得胜利。同样，一个做事不留退路、一心向前的人，不管遇到什么困难和障碍，他都不会后退，因为他没有路可以退。而那些人在为自己准备退路的同时就是在后退，他们立志不坚，把精力和时间投入到退缩的准备上，这种人绝不会获得成功。</p><p>  一个人能否成功，关键在于他意志力的强弱。意志坚强的人不管遇到什么困难和障碍，都会百折不挠，想方设法地克服;意志薄弱的人一遇到麻烦，甚至在挫折还没有到来之前，他们就开始庸人自扰，彷徨失措，把精力都放在如何规避问题上，放在为自己铺设后路上。当困难一个接一个来时，他们就一步接一步后退，最后他们终将无路可退。</p><p>现实生活中，到处都充斥着这样的青年，他们富有上进心，希望有一番成就和作为，但是他们意志薄弱，没有必胜的决心，不敢破釜沉舟;他们始终左摇右摆，没有坚定的信念，一遇到挫折和困难，马上就缩回了进取的手和脚。这样的人，这样的心态，最后遭受失败也不足为奇。</p><p>   不给自己留后路，让自己没有回旋的余地，方能竭尽全力，锐意进取，就算遇到千万困难，也不会退缩，因为回头也没有路了，不如不顾一切地前进，还能找到一线希望。有了这样一种“拼命”和“豁出去”了的信念，才能彻彻底底地消除心中的恐惧、犹豫、胆怯。当一个人不给自己任何退路的时候，他就什么都不怕了，勇气、信心、热忱等从心底油然而生，到最后自然能“置之死地而后生”。</p><p>    面对严峻的问题和重要环节，周全而细致地考虑问题的各个方面也是应该的，但是过多地权衡，前怕狼后怕虎，一会儿这样一会儿那样，最终却还是原样，可以肯定地说，你不会有任何进展，甚至还会变得—塌糊涂。</p><p>出路和退路不是同义词，而是反义词，留退路就没有出路，因此，你应该只找出路，不留退路。大用户励志青春文章:培养积极的思维模式。</p>');
INSERT INTO `news` VALUES (104, '2026-03-17 08:04:39', '在大学给自己定个目标', '最近和几名大一的用户聊天，几名同学认为身边的人普遍都很迷茫，不知道该干什么，业余时间要么是对着电脑、要么是抱着手机刷微博。我问道:“为什么不找点事情做做，制定一个计划，哪怕是锻炼身体也好?4年也可以把身体锻炼得结实些。”当然，我也清楚，我的这些建议对他们来说，未必能有多大用。许多用户因为意志不坚定，没有老师的监督、逼迫，根本就无法做到', '分类名称4', '小猴猫', 'upload/news_headportrait4.jpg', 4, '2024-03-23 16:04:39', 4, 4, 4, 'upload/news_picture4.jpg', '<p>  最近和几名大一的用户聊天，几名同学认为身边的人普遍都很迷茫，不知道该干什么，业余时间要么是对着电脑、要么是抱着手机刷微博。我问道:“为什么不找点事情做做，制定一个计划，哪怕是锻炼身体也好?4年也可以把身体锻炼得结实些。”当然，我也清楚，我的这些建议对他们来说，未必能有多大用。许多用户因为意志不坚定，没有老师的监督、逼迫，根本就无法做到。</p><p>   这让我想到前段时间蹿红网络的“悔过励志帖”——《同学，我大四了》，作者回首自己的大学4年，他感叹投入精力“充其量不过40%”︰每天上网时间少则4个小时，多则10个小时;考试永远是画画重点，在高呼“60分万岁”中与奖学金无缘。作者借自己求职受挫，写帖子以警醒后来人，不要等毕业时再后悔，就业难不仅仅是大学、社会的问题，也是自身的问题。</p><p>  也许，这样的大用户不是一个两个，而是一个群体。然而，我总是怀疑这样的励志帖，甚至教师在课堂上苦口婆心地劝说，能对现实中的大学和大用户起到多大的影响和作用，很多时候恐怕只有“三分钟热度”的效应。毕竟，现实的窘境不是一天积累起来的，从小学到高中，用户们的学习都是被动地接受应试，隐藏着功利性的目的，也许从没有为主动学习感到过快乐，而在高中时代，有的教师甚至打出这样的励志宣言:等你考上大学，你就可以想干什么干什么了..…..乎，高中时代的目标是很清晰的，就是为了考上大学，而在一些高中生的眼里，大学甚至就好比是天堂，进了大学的门就可以放轻松了。</p><p> 此前，有很多声音都认为大学越来越像培训机构，功利性学习正在整个大学蔓延，考证热、过早地职业化都是大学功利性学习最好的表现形式。在这种批判的声音中，“培训机构”总有被贬低的意味，难与大学之学术思想殿堂的高雅相媲美。但是，在这种批判的背后，还有一个现实问题被遮蔽，那就是很多大用户对自己的学习、对大用户活没有任何目标。</p><p>暨南大学舆情研究中心曾就“当代广州大用户生活与思想现状”作过详细的问卷调查，其中，接受调查的广州高校在读本科生共有191份有效样本，就“读大学的原因”、“大学第一印象”、“专业选择首要因素”等问题制作问卷调查并进行分析。结果显示，在未来规划方面，73.3%的同学表示只有粗略的想法，并无非常明确的目标。</p><p>  如果说功利化的学习毕竟还有一个前进的目标，至少能体现出一种为了目标而奋斗的精神和奔头，而没有任何目标，漫无目的地混日子则更可怕，它体现的是一种虚无、意义的缺失。说实话，没有引导用户树立明确的奋斗目标、进而指引用户为之努力的大学，用户很难找到努力的方向，也找不到努力的意义，这还不如“培训机构”来得实在、来得有效用，至少，培训机构的目标很清晰，它能够给用户们一个实实在在看得见的效果，而没有任何目标、浑浑噩噩的大用户活，也许只会给很多用户带来悔过。</p><p>无论如何，混日子的大用户活是不可取的。一方面，高校应该在新生入学的时候，作好目标和方向的引导，甚至贯穿大学4年的学习过程;另一方面，还在迷途的大用户，应尽早为自己找个前进的方向，作好自我规划，对自己的未来和前途负责。</p>');
INSERT INTO `news` VALUES (105, '2026-02-08 08:04:39', '做个真正的用户', '最坚强的人，是以宽容的态度面对自己缺点的人，而懦弱的人，则不敢面对自己的缺点，最终自暴自弃，葬送自己。只要有进取心，我们都能从失败的领域中，发现到达成功的途径;只要有自信心，我们身上的每一个缺陷，也都可以成为与众不同的优点', '分类名称5', '侃爷', 'upload/news_headportrait5.jpg', 5, '2024-03-23 16:04:39', 5, 5, 5, 'upload/news_picture5.jpg', '<p>  最坚强的人，是以宽容的态度面对自己缺点的人，而懦弱的人，则不敢面对自己的缺点，最终自暴自弃，葬送自己。只要有进取心，我们都能从失败的领域中，发现到达成功的途径;只要有自信心，我们身上的每一个缺陷，也都可以成为与众不同的优点。</p><p>曾经有人特地赶赴日本，向三宅一生服装设计大师请教如何设计出独具一格的服装款式。三宅一生大师提出两个很有意思的观点:一是，设计的衣服，其实都是没有全部完成的，其余的创作空间，则是留给穿衣服的人去完成的;二是，选择布料时，会请厂商提供纺织、印染失败的布料，从这些“残次”的作品中寻找泉涌般的创作灵感，设计出最具独创性的作品。</p><p>这样一来，顾客才能穿出自己的风格，并使得同一件衣服，在不同的人身上，能有不同的效果。而且，以这样的概念设计出来的衣服，也不容易失败。正是因为这两个观点，三宅一生所设计的服装总是独一无二地能够引领世界潮流。</p><p>  在艺术家的眼中，任何事物都是创作的最好材料，不管是枯木还是残破的布料，对他们而言，都是最具生命力的事物，在他们手中都能画腐朽为神奇。</p><p>朽木也能精雕，更何况我们自己。那些看起来弯曲、盘旋、似乎毫无用处的木料，往往最终能成为艺术品的原材料，因为这种不同，才特别珍贵。花点心思，身上的缺点也能变成独特的优点，就像艺术家们一般，顺着曲折的木头，创造出与众不同、完美无缺的惊世杰作。</p><p>励志文章3:一生学习，成就一生无知的人并不是没有学问的人，而是不明了自己的人。当一个有学问的人信赖书本、知识和权威，借着它们而了解自己，那么他便是愚蠢的。了解是由自我认识而来，而自我认识乃是一个人明白他自己的整个心理过程。因此，教育的真正意义是自我了解，因为整个生活是汇聚于我们每个人的身心的最高“机密”。</p><p>   目前我们所谓的教育，只是由书本聚集见闻、知识，这是任何懂得阅读的人都办得到的。这种教育提供了一条巧妙的逃避自我之途，如同其他所有的逃避方式一样，它无可避免地制造出有增无减的苦难。冲突和混乱是由于我们和他人、事物、概念之间差错的关系而产生，除非我们了解此项关系而改变它，否则，知识的学习和堆砌，各种技能的获取，都只会将我们导向更深的混乱和毁灭。</p><p> 我们将子女送入学校，学习一些技能，并希望借此来带动整个家庭的长久繁荣，至少在家长们年老的时候有养老保险，有稳定的照顾。我们对孩子最急切的渴望，就是将他塑造成一个能在一个领域中出类拔萃之人，希望给予他一个安全的经济地位。物质的获得有时候并不难，然而，技术的训练能使我们了解自己吗?</p><p>虽然，懂得念书写字、学习土木工程或其他某种职业，是必需的，然而技术能给予我们了解生活的能力吗?技术，无疑是次要的;如果技术是我们惟一奋力以求的东西，那么我们就摒弃了生活中最主要的东西了。</p><p>    生活，是痛苦、喜悦、美、丑、爱等多种感受的综合，一旦我们将它整体地加以了解，那么这项了解在各方面都会创出它应有的技术。不过，相反的说法就不是真的了∶技术永远无法产生创造性的了解。</p><p>如果过分强调技术，我们便毁灭了人。磨练技能和效率，然而对生活却不了解，对思想、欲望的行踪不能领悟，只会使我们变得日益残暴无情，以致于触发战争，危害了我们肉体上的安全。由于我们的教育过重于单单培养技术，已经制造出许多科学家、数学家、造桥工程师、征服太空的人，但这些人了解生活的整体过程吗?一个专家能把生活本身完整地体验感受表达出来吗?或者他真的体验到生活了吗?有时候，当他不是专家时，反而更能直指生活的本质。一颗能够给予人辉煌一生的企图心，首先应当是一颗敏感的善良的热情的心，让我们对周围的一切保持孩童一样旺盛的好奇心。我们应当渴望了解新奇的事物，渴望探索未知的领域。只有在这种理念的支配下，我们才能不断地、孜孜以求地、乐此不疲地提升自己的认知和理解能力，改善自我，从而更接近成功的巅峰。</p>');
INSERT INTO `news` VALUES (106, '2026-03-23 08:04:39', '远大的目标是成功的磁石', '上天对每个老实人都是公平的，每个人每一天都是二十四个小时，每个人的所有时间都是一生;同时上天对每个老实人又是不公平的，给每一个人的时间不都是二十四个小时，给每一个人的所有时间不都是一生。这之间的区别就在于有无远大目标', '分类名称6', '泰勒', 'upload/news_headportrait6.jpg', 6, '2024-03-23 16:04:39', 6, 6, 6, 'upload/news_picture6.jpg', '<p>  上天对每个老实人都是公平的，每个人每一天都是二十四个小时，每个人的所有时间都是一生;同时上天对每个老实人又是不公平的，给每一个人的时间不都是二十四个小时，给每一个人的所有时间不都是一生。这之间的区别就在于有无远大目标。</p><p>    有大目标的人，生活永远是积极的，他们会朝着自己的目标不断前进;没有大目标的老实人浑浑噩噩，不思进取，最后被生活淘汰。</p><p> 从前有个叫阿巴格的人生活在内蒙古草原上。有一次，年少的阿巴格和爸爸在草原上迷了路，阿巴格又累又怕，到最后快走不动了。爸爸就从兜里掏出五枚硬币，把一枚硬币埋在草地里，把其余四枚放在阿巴格的手上，说:“人生有五枚金币，童年、少年、青年、中年、老年各有一枚，你现在才用了一枚，就是埋在草地里的那一枚，你不能把五枚都扔在草原里，你要一点点地用，每一次都用出不同来，这样才不枉人生一世。今天我们一定要走出草原，你将来也一定要走出草原。世界很大，人活着，就要多走些地方，多看看，不要让你的金币没有用就扔掉。”在父亲的鼓励下，阿巴格走出了草原。长大后，阿巴格离开了家乡，成了一名十分优秀的船长。</p><p>  目标是与一个人的愿望相联系的，是对未来的一种设想，它往往和目前的行动不直接联系。但目标又不能脱离现实的生活，现实生活中的某些现象如果符合了个人的需要，与个人的世界观一致，这些现实的因素就会以个人目标的形式表现出来。目标总是对现实生活的重新加工，舍弃其中某些成分，又对某些因素给予强调的过程，但它必须以对客观规律的认识为基础，符合客观规律。</p><p> 能实现自己目标的老实人，对他个人而言，他是一个成功者，也是个幸福者。目标是成功的必要条件，虽然仅仅拥有目标，你不一定能取得成功;但是如果没有目标，成功对你而言就无从谈起。</p><p>远大的美好目标能吸引人努力为实现它而奋斗不止。</p>');
INSERT INTO `news` VALUES (107, '2026-02-23 08:04:39', '做一个最好的自己', '自信是成功的前提，你拥有自信，就拥有成功的一半机会。相信自己是最棒的就一定会成就一定的事业。拥有自信的人之所以会心想事成、走向成功，是因为他们都有着巨大无比的潜能等着去开发;消极失败的心态之所以会使人怯弱无能、走向失败，是因为它使人放弃潜能的开发，让潜能在那里沉睡、白白浪费', '分类名称7', '丁震', 'upload/news_headportrait7.jpg', 7, '2024-03-23 16:04:39', 7, 7, 7, 'upload/news_picture7.jpg', '<p>自信是成功的前提，你拥有自信，就拥有成功的一半机会。相信自己是最棒的就一定会成就一定的事业。拥有自信的人之所以会心想事成、走向成功，是因为他们都有着巨大无比的潜能等着去开发;消极失败的心态之所以会使人怯弱无能、走向失败，是因为它使人放弃潜能的开发，让潜能在那里沉睡、白白浪费。</p><p>我们大家都知道的人大脑拥有140亿个脑细胞，但我们思维意识只利用了脑细胞的很少部分，如能将更多的脑细胞从睡眠中激活出来，人的思维意识将更加强大。如果我们都能充满自信，就能创造人间奇迹，亦能创造一个最好的自己。</p><p> 一个人相信自己是什么，就会是什么。一个人心里怎样想，就会成为怎样的人。这从心里学上讲是有一定的道理的。我们每一个人心里都有一幅心里蓝图，或是一幅自画像，有人称它为运作结果。如果你想象的是做最好的你，那么你就会在你内心的荧光屏上看到一个踌躇满志、不断进取、勇于开拓创新的自我。同时还会经常收到我做的很好，我以后还会做的更好之类的信息，这样你注定会成为一个最好的你。美国哲学家爱默生说:“人的一生正如他一天中所想的那样，你怎么想，怎么期待，就有怎样的人生。”美国有名的钢铁大王安德鲁·卡耐基就是一个充分发挥自己创造机会的楷模。他12岁时由英格兰移居美国，先是在一家纺织厂做工人，当时他的目标是“做全厂最出色的工人。”因为他经常这样想，以这样做，最终他实现了他的目标。后来命运有安排他当邮递员，他想的是怎样成为“全美最杰出的邮递员。”结果他的这一目标也实现了。他的一生总是根据自己所处的环境和地位塑造最佳的自己，他的座右铭就是“相信自己是最棒的。“</p><p>做一个最好的自己，不一定非要当什么“家”，也不一定非要出什么“名”，更不要与别人比高低、比大小。就像人的手指，有大有小，有长有短，他们各有所长，各有所短，你能说拇指比食指好吗?决定最好的你，既不是你拥有的物质财富的多少，也不是你身份的贵贱，关键是看你是否拥有实现自己理想的强烈愿望的程度，看你身上的潜力能否充分发挥。人们熟知的一些英雄模范，就是在平凡的工作岗位上充分发挥人的创新能力，做好自己身边的每一件小事，创造了做好的自己。</p><p>“塑造一个最好的自己”，这个目标人人都可以实现。你只意识到自己是大自然的一分子，坚信自己拥有“无限的能力”与“无限的可能”，这种坚定的信心能帮助你创造和谐的心理、生理韵律，建立起自己理想的自我形象，体现自己人格行为应该具有的魅力。</p>');
INSERT INTO `news` VALUES (108, '2026-03-01 08:04:39', '有了梦想就不会感到疲惫', '一段时间以前，一位在港的大陆用户，因为学业的压力、前途的渺茫等诸多原因，选择了自杀。在讨论和反思的潮流中，有一位毕业生在校内网匿名发表了自己的故事。他说，自己当年在学校也曾经面临绝境，一文不名。他选择了做“乞丐用户”，坚持着念完了课程。回忆的一些情节让我印象深刻，比如，平时偷偷住电梯间，蓬头垢面如乞丐;实在很饿，学校举办餐会的时候默默进场埋头大吃', '分类名称8', '焦雷', 'upload/news_headportrait8.jpg', 8, '2024-03-23 16:04:39', 8, 8, 8, 'upload/news_picture8.jpg', '<p>  一段时间以前，一位在港的大陆用户，因为学业的压力、前途的渺茫等诸多原因，选择了自杀。在讨论和反思的潮流中，有一位毕业生在校内网匿名发表了自己的故事。他说，自己当年在学校也曾经面临绝境，一文不名。他选择了做“乞丐用户”，坚持着念完了课程。回忆的一些情节让我印象深刻，比如，平时偷偷住电梯间，蓬头垢面如乞丐;实在很饿，学校举办餐会的时候默默进场埋头大吃。</p><p>“峣峣者易折，皎皎者易污。”能够从内地高校到香港读书的学子，都是一些很优秀的年轻人。不知道曾经高居象牙塔的书生，怎样狠下心，咬牙面对那一个天渊般的落差，以及旁人的目光和议论。</p><p>  说到这里，很像一个《读者》式的励志故事。但是这种励志故事从来就不缺乏感动人的力量，因为虽然光明的尾巴不是人人都能够拥有，但是人人都有梦想，面对实现过程中的困难，其奋斗或者说挣扎，却常常和平凡如你我的人们相遇。</p><p>    《当幸福来敲门/The Pursuit of Happyness》就是这样偶然被看到，又感动了我的电影。黑人克里斯是一名普普通通的医疗器械推销员，妻子忍受不了经济上的压力离开了他，留下5岁的儿子克里斯托夫和他相依为命。克里斯银行账户里只剩下21块钱，因为没钱付房租，他和儿子被撵出了公寓。费尽周折，克里斯赢得了在一家着名股票投资公司实习的机会，但是实习期间没有薪水，而且最终只有一人可以成功进入公司。</p><p>    学妹曾经告诉我一个故事，让我每次想到都觉得莫名恐怖。她说，她硕士毕业去广东求职，一个中学要招几个老师，结果南来北往的硕士博士挤了快有一个礼堂。可想而知，竞争有多么残酷。看来，中外求职者都面临着同样的挑战。但是克里斯和许多“80后”的大学毕业生不同，他更加坚韧:为了节省时间，上班时候不喝水，以避免上厕所。以疯狂的速度给客户打电话，打完一个，直接按挂机键就拨下一个电话。白天，克里斯忍受着一次又一次被拒绝的失望，带着微笑在公司和客户之间穿梭。回家，则要带着儿子穿过污秽的街道，忍受房东的咆哮。</p><p>    终于，交不起房租的父子俩流落街头。克里斯和儿子在午夜地铁里相对无言，儿子不能理解为什么不能回家住，爸爸却开始玩游戏:“我们通过时光机，到达古代了!”儿子立刻兴奋地配合起来，环顾左右。父子俩在“恐龙”的追杀下，逃到了一个“山洞”里，“山洞”是什么呢，其实是一间男厕所。克里斯搂着熟睡的儿子，坐靠在厕所的墙面。午夜的灯光很惨白，这个消瘦的、营养不良的父亲，默默地流下了泪水。</p><p>    父子俩依旧为了幸福到来而努力。他们开始住收容所，面对有限的床位，这个奔跑起来像猎豹一样的人，有时候得把草原上的爆发力运用到打架上面来。儿子在简陋的收容所床上睡着了，父亲还在埋头修理推销的医疗器械，或者翻那本厚厚的笔试全书。</p><p>   钱包磨损得厉害，而且，太瘪了，每张钱都很熟悉。老板要借5块钱，犹豫再三，摩挚着纸币，最终还是把钱送了出去。卖血。鲜血在塑料袋里面渗开，那是一个男人所能奉献的最后。拿着卖血的钱，克里斯仍然去买电子元件。一点点的希望，都要去坚持。</p><p>对于父母，最心酸的事儿是什么呢?就是子女的一点可怜的愿望得不到满足。克里斯托夫的惟一的玩偶“美国英雄”，在一次挤车的过程中掉到了地上。5岁的男孩悲伤欲绝，克里斯坚硬的表情下，读出的是面对困难的凶狠和惨痛。但是，无论多么深切的无望，都没有摧毁父子间的亲情与他们的信念，他们相信幸福总会落到自己的身上。“你是个好爸爸”，克里斯托夫跟着爸爸四处流浪，可是孩子的心灵，衡量的砝码和天使是—样的。</p><p>  克里斯最终成为了投资公司的员工，看似冷漠的白人老板们，此时显出他们的些微温情。他忍住了泪水，颤抖着拿起自己的物品，走入了茫茫人海。在熙熙攘攘的人群中间，克里斯举起手，为自己鼓掌，那无声的，一下下重重的掌声，是在为自己喝彩。其实，克里斯托夫的“美国英雄”并没有失落。</p><p>  这是一个非常典型的“美国梦”:一个人通过自己的努力，可以实现自己的梦想，幸福，会来敲门。很多人往往会关注对于梦想的树立，而往往忽略过程的艰辛。特别是，当面对一个看似无望的现实的时候，有多少人会坚持，多少人会放弃呢?生活总是在不断地修正，并且提醒我们，顺应大潮的人总是较有可能抵达成功的彼岸。可是，确实是有些人，愿意逆流而上。我相信，这是导演对于逆行者的一点鼓励。</p><p>那个香港的匿名毕业生后来博士毕业，找到了一份不错的工作，有了漂亮的妻子和可爱的孩子。这个强人在帖子里说，有什么坚持不下来的呢?只要有梦想</p>');

-- ----------------------------
-- Table structure for newstype
-- ----------------------------
DROP TABLE IF EXISTS `newstype`;
CREATE TABLE `newstype`  (
  `id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `addtime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '创建时间',
  `typename` varchar(200) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL COMMENT '分类名称',
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 99 CHARACTER SET = utf8 COLLATE = utf8_general_ci COMMENT = '招聘资讯分类' ROW_FORMAT = DYNAMIC;

-- ----------------------------
-- Records of newstype
-- ----------------------------
INSERT INTO `newstype` VALUES (91, '2024-03-23 08:04:39', '分类名称1');
INSERT INTO `newstype` VALUES (92, '2024-03-23 08:04:39', '分类名称2');
INSERT INTO `newstype` VALUES (93, '2024-03-23 08:04:39', '分类名称3');
INSERT INTO `newstype` VALUES (94, '2024-03-23 08:04:39', '分类名称4');
INSERT INTO `newstype` VALUES (95, '2024-03-23 08:04:39', '分类名称5');
INSERT INTO `newstype` VALUES (96, '2024-03-23 08:04:39', '分类名称6');
INSERT INTO `newstype` VALUES (97, '2024-03-23 08:04:39', '分类名称7');
INSERT INTO `newstype` VALUES (98, '2024-03-23 08:04:39', '分类名称8');

-- ----------------------------
-- Table structure for smsregistercode
-- ----------------------------
DROP TABLE IF EXISTS `smsregistercode`;
CREATE TABLE `smsregistercode`  (
  `id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `addtime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '创建时间',
  `mobile` varchar(200) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL COMMENT '手机',
  `role` varchar(200) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL COMMENT '角色',
  `code` varchar(200) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL COMMENT '验证码',
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 159 CHARACTER SET = utf8 COLLATE = utf8_general_ci COMMENT = '短信验证码' ROW_FORMAT = DYNAMIC;

-- ----------------------------
-- Records of smsregistercode
-- ----------------------------
INSERT INTO `smsregistercode` VALUES (151, '2024-03-23 08:04:39', '手机1', '角色1', '验证码1');
INSERT INTO `smsregistercode` VALUES (152, '2024-03-23 08:04:39', '手机2', '角色2', '验证码2');
INSERT INTO `smsregistercode` VALUES (153, '2024-03-23 08:04:39', '手机3', '角色3', '验证码3');
INSERT INTO `smsregistercode` VALUES (154, '2024-03-23 08:04:39', '手机4', '角色4', '验证码4');
INSERT INTO `smsregistercode` VALUES (155, '2024-03-23 08:04:39', '手机5', '角色5', '验证码5');
INSERT INTO `smsregistercode` VALUES (156, '2024-03-23 08:04:39', '手机6', '角色6', '验证码6');
INSERT INTO `smsregistercode` VALUES (157, '2024-03-23 08:04:39', '手机7', '角色7', '验证码7');
INSERT INTO `smsregistercode` VALUES (158, '2024-03-23 08:04:39', '手机8', '角色8', '验证码8');

-- ----------------------------
-- Table structure for storeup
-- ----------------------------
DROP TABLE IF EXISTS `storeup`;
CREATE TABLE `storeup`  (
  `id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `addtime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '创建时间',
  `userid` bigint(20) NOT NULL COMMENT '用户id',
  `refid` bigint(20) NULL DEFAULT NULL COMMENT '商品id',
  `tablename` varchar(200) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '表名',
  `name` varchar(200) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL COMMENT '名称',
  `picture` longtext CHARACTER SET utf8 COLLATE utf8_general_ci NULL COMMENT '图片',
  `type` varchar(200) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT '1' COMMENT '类型',
  `inteltype` varchar(200) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '推荐类型',
  `remark` varchar(200) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '备注',
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 1 CHARACTER SET = utf8 COLLATE = utf8_general_ci COMMENT = '收藏表' ROW_FORMAT = DYNAMIC;

-- ----------------------------
-- Records of storeup
-- ----------------------------

-- ----------------------------
-- Table structure for systemintro
-- ----------------------------
DROP TABLE IF EXISTS `systemintro`;
CREATE TABLE `systemintro`  (
  `id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `addtime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '创建时间',
  `title` varchar(200) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL COMMENT '标题',
  `subtitle` varchar(200) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '副标题',
  `content` longtext CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL COMMENT '内容',
  `picture1` longtext CHARACTER SET utf8 COLLATE utf8_general_ci NULL COMMENT '图片1',
  `picture2` longtext CHARACTER SET utf8 COLLATE utf8_general_ci NULL COMMENT '图片2',
  `picture3` longtext CHARACTER SET utf8 COLLATE utf8_general_ci NULL COMMENT '图片3',
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 2 CHARACTER SET = utf8 COLLATE = utf8_general_ci COMMENT = '系统简介' ROW_FORMAT = DYNAMIC;

-- ----------------------------
-- Records of systemintro
-- ----------------------------
INSERT INTO `systemintro` VALUES (1, '2024-03-23 08:04:39', '系统简介', 'SYSTEM INTRODUCTION', '在平静的海平面上，每个人都可以成为领航员。但如果只有阳光而没有阴影，只有欢乐而没有痛苦，那就不是完整的人生。就拿最幸福的人来说吧——他的幸福是一团纠结的纱线。痛苦和幸福轮番而至，让我们悲喜交集，甚至死亡都让人生更加可爱。人在生命的严肃时刻，在悲伤与丧亲的阴影下，才最接近真实的自我。在生活和事业的各个方面，才智的功能远不如性格，头脑的功能远不如心性，天分远不如自制力、毅力与教养。我始终认为内心开始过严肃生活的人，他外在的生活会开始变得更为俭朴。在一个奢侈浪费的年代，但愿我能让世人了解：人类真正的需求是多么的稀少。不重蹈覆辙才是真正的醒悟。比别人优秀并无任何高贵之处，真正的高贵在于超越从前的自我。', 'upload/systemintro_picture1.jpg', 'upload/systemintro_picture2.jpg', 'upload/systemintro_picture3.jpg');

-- ----------------------------
-- Table structure for token
-- ----------------------------
DROP TABLE IF EXISTS `token`;
CREATE TABLE `token`  (
  `id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `userid` bigint(20) NOT NULL COMMENT '用户id',
  `username` varchar(100) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL COMMENT '用户名',
  `tablename` varchar(100) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '表名',
  `role` varchar(100) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '角色',
  `token` varchar(200) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL COMMENT '密码',
  `addtime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '新增时间',
  `expiratedtime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '过期时间',
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 16 CHARACTER SET = utf8 COLLATE = utf8_general_ci COMMENT = 'token表' ROW_FORMAT = DYNAMIC;

-- ----------------------------
-- Records of token
-- ----------------------------
INSERT INTO `token` VALUES (1, 1, 'admin', 'users', '管理员', '07st9s9wi0pohp9439c577zcuc1ah637', '2024-03-23 08:23:15', '2026-04-25 20:45:31');
INSERT INTO `token` VALUES (2, 21, '企业账号1', 'zhaopingongsi', '招聘公司', 'r4tayi7jev565m93tohr25lj58eli94l', '2026-04-17 16:13:36', '2026-04-18 01:13:36');
INSERT INTO `token` VALUES (3, 11, '账号1', 'xuesheng', '用户', 'frrm9e1fakb9tikgnamaow6lba94ox1v', '2026-04-17 16:14:09', '2026-04-25 19:55:55');
INSERT INTO `token` VALUES (4, 1776509881846, 'wutangforever', 'xuesheng', '用户', 'uiaxzyrhheu45ycthvul10mb2cosfyiw', '2026-04-18 10:58:39', '2026-04-18 19:58:40');
INSERT INTO `token` VALUES (5, 12, 'baozan', 'xuesheng', '用户', 'ouiky3p0oj3c6uajyyg23uaao6lcwipg', '2026-04-18 12:13:47', '2026-04-18 21:19:26');
INSERT INTO `token` VALUES (6, 18, '小武', 'xuesheng', '用户', 'uuk6zsqrcyotenf7gue8ojkq5x5i6hvd', '2026-04-19 10:33:18', '2026-04-21 22:42:33');
INSERT INTO `token` VALUES (7, 15, '走走停停', 'xuesheng', '用户', 'd4cq7e9y3gu6pe6bz2hixa6ifb18cbaf', '2026-04-21 13:38:51', '2026-04-21 22:38:51');
INSERT INTO `token` VALUES (8, 19, 'wutangforever', 'xuesheng', '用户', 'm1884qrh2gd2s1dl4i789fobpbmtdexx', '2026-04-21 13:43:27', '2026-04-24 21:31:08');
INSERT INTO `token` VALUES (9, 24, 'kfc', 'zhaopingongsi', '招聘公司', 'y5c30k4zornyv5bng1puuuvf4cvqtd7l', '2026-04-24 07:21:06', '2026-04-25 23:39:33');
INSERT INTO `token` VALUES (10, 27, '配送', 'zhaopingongsi', '招聘公司', 'u9nhipudi8n85coqs2ejr0io2l5jm1ur', '2026-04-24 11:33:05', '2026-04-24 21:05:26');
INSERT INTO `token` VALUES (11, 16, '饮食男女', 'xuesheng', '用户', '7ywvpeclpca51tu41mf5ajy6kaeogvgg', '2026-04-24 12:29:45', '2026-04-25 21:07:57');
INSERT INTO `token` VALUES (12, 14, 'sunshine', 'xuesheng', '用户', 'cw61u3yq96wx87t7kmtsu5td7ek2x9s6', '2026-04-24 12:34:19', '2026-04-24 21:34:19');
INSERT INTO `token` VALUES (13, 22, 'adidas', 'zhaopingongsi', '招聘公司', 'tndu6cva5y7ssc3jvfsfwfab8xwzv7u1', '2026-04-24 12:35:49', '2026-04-24 21:35:49');
INSERT INTO `token` VALUES (14, 32, 'uniqlo', 'zhaopingongsi', '招聘公司', 'z3kygz65ac88yj76shxss4zcfhdnqpry', '2026-04-25 02:41:06', '2026-04-25 11:41:07');
INSERT INTO `token` VALUES (15, 30, 'starbuck', 'zhaopingongsi', '招聘公司', 'jfwpidu2dhdf9zlpyuc1npkximjc3nty', '2026-04-25 02:52:35', '2026-04-25 11:52:36');

-- ----------------------------
-- Table structure for toudixinxi
-- ----------------------------
DROP TABLE IF EXISTS `toudixinxi`;
CREATE TABLE `toudixinxi`  (
  `id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `addtime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '创建时间',
  `jianzhimingcheng` varchar(200) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '兼职名称',
  `jianzhifengmian` longtext CHARACTER SET utf8 COLLATE utf8_general_ci NULL COMMENT '兼职封面',
  `jianzhifenlei` varchar(200) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '兼职分类',
  `qiyezhanghao` varchar(200) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '企业账号',
  `qiyemingcheng` varchar(200) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '企业名称',
  `fuzeren` varchar(200) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '负责人',
  `zhaopinrenshu` int(11) NOT NULL COMMENT '应聘人数',
  `xuehao` varchar(200) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '账号',
  `xingming` varchar(200) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '姓名',
  `mobile` varchar(200) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '手机号',
  `xueli` varchar(200) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '学历',
  `xuexiao` varchar(200) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '学校',
  `jianlifujian` longtext CHARACTER SET utf8 COLLATE utf8_general_ci NULL COMMENT '简历附件',
  `toudibeizhu` varchar(200) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '投递备注',
  `toudiriqi` date NULL DEFAULT NULL COMMENT '投递日期',
  `sfsh` varchar(200) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT '待审核' COMMENT '是否审核',
  `shhf` longtext CHARACTER SET utf8 COLLATE utf8_general_ci NULL COMMENT '审核回复',
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 73 CHARACTER SET = utf8 COLLATE = utf8_general_ci COMMENT = '投递信息' ROW_FORMAT = DYNAMIC;

-- ----------------------------
-- Records of toudixinxi
-- ----------------------------
INSERT INTO `toudixinxi` VALUES (59, '2026-04-24 11:29:00', '3名日结工/赵一鸣送零食-一日一结', 'upload/1777023964894.png', '短期兼职', '配送', '沈阳市蓝胖子配送服务有限公司', '贾淑艳', 1, '性压抑', '赵立峰', '13823888881', '本科', '大连理工大学', '', '', '2026-04-24', '待审核', NULL);
INSERT INTO `toudixinxi` VALUES (60, '2026-04-24 11:29:23', '蜜雪冰城招聘奶茶店店员', 'upload/1777025506679.png', '长期兼职', 'mixuebingcheng', '蜜雪冰城股份有限公司', '王小曼', 1, '性压抑', '赵立峰', '13823888881', '本科', '大连理工大学', '', '', '2026-04-24', '待审核', NULL);
INSERT INTO `toudixinxi` VALUES (61, '2026-04-24 11:29:42', '数据运营', 'upload/1777025323632.png', '短期兼职', 'hello', '上海哈啰普惠科技有限公司', '赵哲会', 1, '性压抑', '赵立峰', '13823888881', '本科', '大连理工大学', '', '', '2026-04-24', '待审核', NULL);
INSERT INTO `toudixinxi` VALUES (62, '2026-04-24 12:29:59', '3名日结工/赵一鸣送零食-一日一结', 'upload/1777023964894.png', '短期兼职', '配送', '沈阳市蓝胖子配送服务有限公司', '贾淑艳', 1, '饮食男女', '朱家倩', '13823888886', '博士研究生', '哈尔滨工业大学', '', '', '2026-04-24', '待审核', NULL);
INSERT INTO `toudixinxi` VALUES (63, '2026-04-24 12:30:11', '数据运营', 'upload/1777025323632.png', '短期兼职', 'hello', '上海哈啰普惠科技有限公司', '赵哲会', 1, '饮食男女', '朱家倩', '13823888886', '博士研究生', '哈尔滨工业大学', '', '', '2026-04-24', '待审核', NULL);
INSERT INTO `toudixinxi` VALUES (64, '2026-04-24 12:30:29', '阿迪达斯郑州二七杉杉店兼职', 'upload/1777025994274.png', '周末节假日兼职', 'Adidas', '阿迪达斯体育中国有限公司', '李雪琪', 1, '饮食男女', '朱家倩', '13823888886', '博士研究生', '哈尔滨工业大学', '', '', '2026-04-26', '待审核', NULL);
INSERT INTO `toudixinxi` VALUES (66, '2026-04-24 12:31:38', '超市配送员，超时无罚款，可日结可就近', 'upload/1777023830619.png', '日结零活', 'hmxs', '上海盒马科技有限公司', '李先生', 1, 'wutangforever', '李德可', '15635548630', '本科', '深圳大学', '', '', '2026-03-10', '待审核', NULL);
INSERT INTO `toudixinxi` VALUES (67, '2026-04-24 12:31:53', '数据运营', 'upload/1777025323632.png', '短期兼职', 'hello', '上海哈啰普惠科技有限公司', '赵哲会', 1, 'wutangforever', '李德可', '15635548630', '本科', '深圳大学', '', '', '2026-02-15', '待审核', NULL);
INSERT INTO `toudixinxi` VALUES (68, '2026-04-24 12:32:20', '门店店员', 'upload/1777026020836.png', '兼职分类4', '宠物', '郑州乐臣宠物用品有限公司', '刘景赢', 1, 'wutangforever', '李德可', '15635548630', '本科', '深圳大学', '', '', '2026-03-31', '待审核', NULL);
INSERT INTO `toudixinxi` VALUES (69, '2026-04-24 12:34:27', '每天200元日结小故事电台\r\n读文', 'upload/1777023772982.png', '	\r\n线上远程兼职', 'feixing', '肃州飞鑫文化传媒有限公司', '朱光薛', 1, 'sunshine', '金凯瑞', '13823888884', '博士研究生', '清华大学', '', '', '2026-04-24', '待审核', NULL);
INSERT INTO `toudixinxi` VALUES (70, '2026-04-24 12:34:53', '门店店员', 'upload/1777026020836.png', '寒暑假专项', '宠物', '郑州乐臣宠物用品有限公司', '刘景赢', 1, 'sunshine', '金凯瑞', '13823888884', '博士研究生', '清华大学', '', '', '2026-04-24', '待审核', NULL);
INSERT INTO `toudixinxi` VALUES (71, '2026-04-24 12:35:16', '蜜雪冰城招聘奶茶店店员', 'upload/1777025506679.png', '长期兼职', 'mixuebingcheng', '蜜雪冰城股份有限公司', '王小曼', 1, 'sunshine', '金凯瑞', '13823888884', '博士研究生', '清华大学', '', '', '2026-02-06', '待审核', NULL);
INSERT INTO `toudixinxi` VALUES (72, '2026-04-25 09:23:00', '兼职咖啡师', 'upload/1777085602772.png', '短期兼职', 'starbuck', '星巴克企业管理（中国）有限公司', '李先生', 1, '性压抑', '赵立峰', '13823888881', '本科', '大连理工大学', '', '', '2026-04-25', '待审核', NULL);

-- ----------------------------
-- Table structure for users
-- ----------------------------
DROP TABLE IF EXISTS `users`;
CREATE TABLE `users`  (
  `id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `username` varchar(100) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL COMMENT '用户名',
  `password` varchar(100) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL COMMENT '密码',
  `image` varchar(200) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '头像',
  `role` varchar(100) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT '管理员' COMMENT '角色',
  `addtime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '新增时间',
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 2 CHARACTER SET = utf8 COLLATE = utf8_general_ci COMMENT = '用户表' ROW_FORMAT = DYNAMIC;

-- ----------------------------
-- Records of users
-- ----------------------------
INSERT INTO `users` VALUES (1, 'admin', 'admin', 'upload/1776774316529.JPG', '管理员', '2024-03-23 08:04:39');

-- ----------------------------
-- Table structure for xuesheng
-- ----------------------------
DROP TABLE IF EXISTS `xuesheng`;
CREATE TABLE `xuesheng`  (
  `id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `addtime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '创建时间',
  `xuehao` varchar(200) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL COMMENT '账号',
  `mima` varchar(200) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL COMMENT '密码',
  `xingming` varchar(200) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL COMMENT '姓名',
  `xingbie` varchar(200) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '性别',
  `nianling` int(11) NULL DEFAULT NULL COMMENT '年龄',
  `xueli` varchar(200) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL COMMENT '学历',
  `xuexiao` varchar(200) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL COMMENT '学校',
  `touxiang` longtext CHARACTER SET utf8 COLLATE utf8_general_ci NULL COMMENT '头像',
  `mobile` varchar(200) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '手机号',
  PRIMARY KEY (`id`) USING BTREE,
  UNIQUE INDEX `xuehao`(`xuehao`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 21 CHARACTER SET = utf8 COLLATE = utf8_general_ci COMMENT = '用户' ROW_FORMAT = DYNAMIC;

-- ----------------------------
-- Records of xuesheng
-- ----------------------------
INSERT INTO `xuesheng` VALUES (11, '2024-03-23 08:04:38', '性压抑', 'e10adc3949ba59abbe56e057f20f883e', '赵立峰', '男', 25, '本科', '大连理工大学', 'upload/1776515000516.png', '13823888881');
INSERT INTO `xuesheng` VALUES (12, '2024-03-23 08:04:38', '爆赞', 'e10adc3949ba59abbe56e057f20f883e', '户晨封', '男', 21, '大专', '河南职业学校', 'upload/1776514690826.jpeg', '13823888882');
INSERT INTO `xuesheng` VALUES (13, '2024-03-23 08:04:38', 'asen', 'e10adc3949ba59abbe56e057f20f883e', '艾志恒', '男', 23, '本科', '重庆大学', 'upload/1776517774708.png', '13823888883');
INSERT INTO `xuesheng` VALUES (14, '2024-03-23 08:04:38', 'sunshine', 'e10adc3949ba59abbe56e057f20f883e', '金凯瑞', '男', 24, '博士研究生', '清华大学', 'upload/1776517923864.png', '13823888884');
INSERT INTO `xuesheng` VALUES (15, '2024-03-23 08:04:38', '走走停停', 'e10adc3949ba59abbe56e057f20f883e', '吴迪', '男', 27, '硕士研究生', '武汉大学', 'upload/1776518034700.png', '13823888885');
INSERT INTO `xuesheng` VALUES (16, '2024-03-23 08:04:38', '饮食男女', 'e10adc3949ba59abbe56e057f20f883e', '朱家倩', '女', 26, '博士研究生', '哈尔滨工业大学', 'upload/1776518363673.png', '13823888886');
INSERT INTO `xuesheng` VALUES (17, '2024-03-23 08:04:38', '情书', 'e10adc3949ba59abbe56e057f20f883e', '赵渡边', '女', 27, '博士研究生', '南京大学', 'upload/1776518547166.png', '13823888887');
INSERT INTO `xuesheng` VALUES (18, '2024-03-23 08:04:38', '小武', 'e10adc3949ba59abbe56e057f20f883e', '王小武', '男', 18, '大专', '陕西职业技术学院', 'upload/1776518801257.png', '13823888888');
INSERT INTO `xuesheng` VALUES (19, '2026-04-18 10:58:01', 'wutangforever', 'e10adc3949ba59abbe56e057f20f883e', '李德可', '男', 22, '本科', '深圳大学', 'upload/1776509871832.JPG', '15635548630');
INSERT INTO `xuesheng` VALUES (20, '2026-04-18 12:09:41', 'doom', 'e10adc3949ba59abbe56e057f20f883e', '杜穆', '男', 19, '本科', '湖南大学', 'upload/1776514179729.JPG', '19637726489');

-- ----------------------------
-- Table structure for zhaopingongsi
-- ----------------------------
DROP TABLE IF EXISTS `zhaopingongsi`;
CREATE TABLE `zhaopingongsi`  (
  `id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `addtime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '创建时间',
  `qiyezhanghao` varchar(200) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL COMMENT '企业账号',
  `mima` varchar(200) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL COMMENT '密码',
  `qiyemingcheng` varchar(200) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL COMMENT '企业名称',
  `qiyedizhi` varchar(200) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '企业地址',
  `fuzeren` varchar(200) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL COMMENT '负责人',
  `qiyeyouxiang` varchar(200) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '企业邮箱',
  `lianxishouji` varchar(200) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '联系手机',
  `yingyezhizhao` longtext CHARACTER SET utf8 COLLATE utf8_general_ci NULL COMMENT '营业执照',
  `sfsh` varchar(200) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT '待审核' COMMENT '是否审核',
  `shhf` longtext CHARACTER SET utf8 COLLATE utf8_general_ci NULL COMMENT '审核回复',
  PRIMARY KEY (`id`) USING BTREE,
  UNIQUE INDEX `qiyezhanghao`(`qiyezhanghao`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 33 CHARACTER SET = utf8 COLLATE = utf8_general_ci COMMENT = '招聘公司' ROW_FORMAT = DYNAMIC;

-- ----------------------------
-- Records of zhaopingongsi
-- ----------------------------
INSERT INTO `zhaopingongsi` VALUES (21, '2024-03-23 08:04:38', 'mixuebingcheng', 'e10adc3949ba59abbe56e057f20f883e', '蜜雪冰城', '郑州市金水区兰德中心23楼2313', '王小曼', '2864523695@qq.com', '13836485201', 'upload/BHHGHHHFJDAAF-7PdM14NcxI.png', '是', '');
INSERT INTO `zhaopingongsi` VALUES (22, '2024-03-23 08:04:38', 'Adidas', 'e10adc3949ba59abbe56e057f20f883e', '阿迪达斯', '郑州二七区杉杉奥特莱斯广场', '李雪琪', '65137985623@gmail.com', '18765523080', 'upload/zhaopingongsi_yingyezhizhao2.jpg', '是', '');
INSERT INTO `zhaopingongsi` VALUES (23, '2024-03-23 08:04:38', 'feixing', 'e10adc3949ba59abbe56e057f20f883e', '肃州飞鑫文化传媒有限公司', '郑州金水区文化嘉园写字楼A座', '朱光薛', '6526650003@outlook.com', '19625493202', 'upload/zhaopingongsi_yingyezhizhao3.jpg', '是', '');
INSERT INTO `zhaopingongsi` VALUES (24, '2024-03-23 08:04:38', 'kfc', 'e10adc3949ba59abbe56e057f20f883e', '肯德基', '郑州中牟县八房井购物中心', '王女士', 'kfc66665@gmail.com', '15366698264', 'upload/zhaopingongsi_yingyezhizhao4.jpg', '是', '');
INSERT INTO `zhaopingongsi` VALUES (25, '2024-03-23 08:04:38', 'haidilao', 'e10adc3949ba59abbe56e057f20f883e', '海底捞', '郑州荥阳市海底捞火锅（荥阳吾悦广场店）', '张先生', '6524555@outlook.com', '13823800885', 'upload/zhaopingongsi_yingyezhizhao5.jpg', '是', '');
INSERT INTO `zhaopingongsi` VALUES (26, '2024-03-23 08:04:38', 'hmxs', 'e10adc3949ba59abbe56e057f20f883e', '盒马鲜生', '郑州金水区盒马鲜生（国贸360店）', '李先生', '59655255@outlook.com', '13823641886', 'upload/zhaopingongsi_yingyezhizhao6.jpg', '是', '');
INSERT INTO `zhaopingongsi` VALUES (27, '2024-03-23 08:04:38', '配送', 'e10adc3949ba59abbe56e057f20f883e', '沈阳市蓝胖子配送服务有限公司', '郑州金水区金印现代城', '贾淑艳', '773890007@qq.com', '16932251030', 'upload/zhaopingongsi_yingyezhizhao7.jpg', '是', '');
INSERT INTO `zhaopingongsi` VALUES (28, '2024-03-23 08:04:38', '宠物', 'e10adc3949ba59abbe56e057f20f883e', '郑州乐臣宠物用品有限公司', '郑州中原区中原商贸城4楼A21', '刘景赢', '35165984108@qq.com', '13739908963', 'upload/zhaopingongsi_yingyezhizhao8.jpg', '是', '');
INSERT INTO `zhaopingongsi` VALUES (29, '2026-04-24 10:03:39', 'hello', 'e10adc3949ba59abbe56e057f20f883e', '上海哈啰普惠科技有限公司', '郑州金水区兰德中心27', '赵哲会', '6321526398@outlook.com', '13546662050', 'upload/1777025017015.png', '是', '');
INSERT INTO `zhaopingongsi` VALUES (30, '2026-04-25 02:35:58', 'starbuck', 'e10adc3949ba59abbe56e057f20f883e', '星巴克企业管理（中国）有限公司', '郑州金水区X•one信万广场（郑州金水店）星巴克', '李先生', '556545215@gmail.com', '16985263000', 'upload/1777084555302.png', '是', '');
INSERT INTO `zhaopingongsi` VALUES (32, '2026-04-25 02:37:47', 'uniqlo', 'e10adc3949ba59abbe56e057f20f883e', '迅销（中国）商贸有限公司', '郑州二七区优衣库（郑州万象城店）1F', '张千越', '03456654@gmail.com', '13864493057', 'upload/1777084664579.png', '是', '');

-- ----------------------------
-- Table structure for zhaopinxinxi
-- ----------------------------
DROP TABLE IF EXISTS `zhaopinxinxi`;
CREATE TABLE `zhaopinxinxi`  (
  `id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `addtime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '创建时间',
  `jianzhimingcheng` varchar(200) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL COMMENT '兼职名称',
  `jianzhifengmian` longtext CHARACTER SET utf8 COLLATE utf8_general_ci NULL COMMENT '兼职封面',
  `jianzhifenlei` varchar(200) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL COMMENT '兼职分类',
  `xueliyaoqiu` varchar(200) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '学历要求',
  `zhaopinrenshu` int(11) NOT NULL COMMENT '招聘人数',
  `zhize` varchar(200) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL COMMENT '职责',
  `jianzhidizhi` varchar(200) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL COMMENT '兼职地址',
  `xinchoudaiyu` double NULL DEFAULT NULL COMMENT '薪酬待遇',
  `zhiweiyaoqiu` longtext CHARACTER SET utf8 COLLATE utf8_general_ci NULL COMMENT '职位要求',
  `qiyezhanghao` varchar(200) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '企业账号',
  `qiyemingcheng` varchar(200) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '企业名称',
  `fuzeren` varchar(200) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '负责人',
  `lianxishouji` varchar(200) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '联系手机',
  `faburiqi` date NULL DEFAULT NULL COMMENT '发布日期',
  `clicktime` datetime NULL DEFAULT NULL COMMENT '最近点击时间',
  `clicknum` int(11) NULL DEFAULT 0 COMMENT '点击次数',
  `storeupnum` int(11) NULL DEFAULT 0 COMMENT '收藏数',
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 51 CHARACTER SET = utf8 COLLATE = utf8_general_ci COMMENT = '招聘信息' ROW_FORMAT = DYNAMIC;

-- ----------------------------
-- Records of zhaopinxinxi
-- ----------------------------
INSERT INTO `zhaopinxinxi` VALUES (41, '2024-03-23 08:04:38', '蜜雪冰城招聘奶茶店店员', 'upload/1777025506679.png', '长期兼职', '大专', 2, '店员', '郑州管城回族区蜜雪冰城（总部旗舰店）蜜雪冰城', 6000, '1、饮品制作：按标准快速出品，保证品质；管理原料，确保新鲜；处理订单，主动推荐新品及优惠。\n2、客户服务：礼貌接待，解答疑问；妥善处理投诉，提升满意度。\n3、店铺清洁：清洁店内区域，维护设备，整理物料与商品。\n4、库存管理：协助盘点，提交补货申请；验收、归位货物，记录库存。\n任职资格：\n1、大专及以上学历，热爱餐饮行业，吃苦耐劳，有团队意识；\n2、身体健康，持有餐饮健康证；\n3、能适应快节奏的工作环境；\n4、亲和力强、善于沟通、具备应变与问题解决能力。\n', 'mixuebingcheng', '蜜雪冰城股份有限公司', '王小曼', '13836485201', '2026-04-23', '2026-04-25 10:39:05', 8, 1);
INSERT INTO `zhaopinxinxi` VALUES (42, '2024-03-23 08:04:38', '阿迪达斯郑州二七杉杉店兼职', 'upload/1777025994274.png', '周末节假日兼职', '本科', 19, '销售', '郑州二七区杉杉奥特莱斯广场', 5400, '岗位要求：性格开朗，能主动进行卖场顾客服务，收银、理货等；有销售经验者优先\n出勤要求：9-22:30之间排班6-8小时，周内可提供出勤3-4天及以上，至少做到五一假期结束，能长期兼职优先考虑\n薪资待遇：180/天，按小时发薪，法定节假日三薪工作地点：河南省郑州市二七区大学南路246号郑州杉杉奥特菜斯购物广场', 'Adidas', '阿迪达斯体育中国有限公司', '李雪琪', '18765523080', '2026-01-02', '2026-04-24 20:30:31', 5, 2);
INSERT INTO `zhaopinxinxi` VALUES (43, '2024-03-23 08:04:38', '数据运营', 'upload/1777025323632.png', '短期兼职', '硕士', 3, '数据统计', '兼职地址3', 3600, '1. 数据采集与处理：负责收集处理大区资保运营数据、产品数据等相关信息，并进行数据清洗和处理，以确保数据质量\n2. 数据分析与挖掘：通过数据分析工具（如SQL、Python、Excel等）对业务数据进行分析，识别关键数据指标和趋势，为运营决策提供支持。\n3. 优化和改进建议：基于分析结果，提出运营策略的优化方案。例如，建议如何改善用户体验或提高资产处理效率。\n4. 产品和活动运营支持：协助数据策略上线、推广及日常运营，追踪活动效果，评估数据表现，并提出改进建议。\n5． 跨部门沟通与协作：与总部，大区部门，城市一线等团队密切合作，确保数据的正确应用，并推动数据驱动的决策。\n此岗位通常适合数据分析基础较好，具有一定沟通协调能力，抗压能力强的在校生或应届毕业生，表现优秀者提供转正机会。', 'hello', '上海哈啰普惠科技有限公司', '赵哲会', '13546662050', '2026-04-27', '2026-04-25 10:38:55', 11, 3);
INSERT INTO `zhaopinxinxi` VALUES (44, '2024-03-23 08:04:38', '门店店员', 'upload/1777026020836.png', '寒暑假专项', '本科', 18, '柜台销售', '郑州中原区中原商贸城4楼A21', 3000, '工作地点：国基路花卉市场店、郑汴路花卉市场店、棉纺路锦艺城店、中原商贸城店\r\n工作内容：门店日常卫生维护，产品陈列，接待客户，销售产品。不要短期工，\r\n工作时间：早9：00晚18：00每周休息一天\r\n薪资：\r\n1.基本工资2500，全勤200、绩效奖300\r\n2.综合薪资3000+完成3w销售提成3%三万以下1.5%\r\n3.培训期每天80试用期一个月\r\n要求：，能吃苦耐劳，性格开朗，内心敞亮。\r\n4.招聘周六周日兼职每小时12元每天工作一天10小时销售提成1%\r\n5.面试成功后统一到国基路总店培训一个月，以后每个月都有一周时间总店培训（如果接受不了、勿投简历）', '宠物', '郑州乐臣宠物用品有限公司', '刘景赢', '13739908963', '2026-02-23', '2026-04-25 20:03:35', 50, 4);
INSERT INTO `zhaopinxinxi` VALUES (45, '2024-03-23 08:04:38', '3名日结工/赵一鸣送零食-一日一结', 'upload/1777023964894.png', '短期兼职', '大专', 1, '配送员', '郑州金水区金印现代城', 6000, '工作周期：1个月每周工期：无要求工作时间：不限工作时段：不限结算方式：日结\n招聘截止时间：2026-05-03', '配送', '沈阳市蓝胖子配送服务有限公司', '贾淑艳', '16932251030', '2026-03-23', '2026-04-24 20:30:01', 59, 5);
INSERT INTO `zhaopinxinxi` VALUES (46, '2024-03-23 08:04:38', '超市配送员，超时无罚款，可日结可就近', 'upload/1777023830619.png', '日结零活', '大专', 5, '配送员', '郑州金水区盒马鲜生（国贸360店）', 7200, '【工作内容】\r\nAPP系统指派订单，无需抢单，3公里内短途配送，系统优化配送路线，一趟可送3-8单。\r\n【薪资待遇】\r\n打酱油：日均180~240元\r\n正常做：日均240~300元\r\n认真做：日均300~400元\r\n【配送货物】\r\n水果、生鲜、蔬菜、牛奶、面包、零食饮料、等生活用品。\r\n【工作时间】\r\n全职：长白班，早/中/晚班任选\r\n兼职：周一至周五每天4小时起，或周未全天\r\n【适合人群】\r\n18-48岁，会骑电动车，会用手机导航欢迎肯吃苦、想稳定增收的全职伙伴也适合有空闲时间、想灵活兼职的你我他', 'hmxs', '上海盒马科技有限公司', '李先生', '13823888886', '2026-03-31', '2026-04-24 20:31:40', 65, 6);
INSERT INTO `zhaopinxinxi` VALUES (47, '2024-03-23 08:04:38', '每天200元日结小故事电台\r\n读文', 'upload/1777023772982.png', '	\r\n线上远程兼职', '大专', 1, '音频主播', '郑州金水区文化嘉园写字楼A座', 6000, '居家办公，无需到公司面试或上班，薪资日结绝不拖欠，时间也自由，不管你是待业还是下班找兼职，都可以来试试。\r\n全程不收取任何费用，也不需要你投资一分钱。也没有任何违约金。\r\n工作简单 轻松 无压力新手小白当天上岗，操作简单方便，不需要学历和经验。\r\n音频主播日结133元，不露脸要求声音好听有特色视频主播：每天200元日结算不拖欠，提成50%，要求美颜上镜效果好看', 'feixing', '肃州飞鑫文化传媒有限公司', '朱光薛', '19625493202', '2026-03-23', '2026-04-24 20:34:29', 30, 7);
INSERT INTO `zhaopinxinxi` VALUES (48, '2026-04-24 15:21:57', '中牟肯德基服务员直聘J19488', 'upload/1777014815742.png', '长期兼职', '高中', 1, '服务员', '郑州中牟县八房井购物中心', 3500, '肯德基总部直聘服务员欢迎您的加入！\n【福利待遇】\n1、无试用期，无押金\n2、上班员工享受企业内部专享特惠员工餐\n3、工作时间灵活，根据您的空闲时间和餐厅需求进行排班，5-8小时均可\n4、学生兼职可提供实习证明，体验制度成熟的管理运作模式，有广阔的发展空间，大专学历在毕业前可升迁为楼面经理\n5、享有高颜值的工作环境，免费提供时尚高颜值制服，全方位开放的中央空调，冬暖夏凉，员工休息室内冰箱，饮水机，微波炉，一应俱全。', 'kfc', '郑州肯德基有限公司', '王女士', '15366698264', '2026-04-09', '2026-04-25 22:18:04', 15, 8);
INSERT INTO `zhaopinxinxi` VALUES (49, '2026-04-25 02:52:00', '优衣库店员', 'upload/1777085488684.png', '长期兼职', '大专', 5, '店员', '郑州二七区优衣库（郑州万象城店）1F', 3200, '【全职】\n优衣库（Uniqlo）是迅销集团旗下的世界服装零售业知名品牌，秉承“LifeWear服饰人生”的品牌理念，希望能够用服装的力量让世界各地人们生活更加美好。\n【工作内容】\n1、处理店铺各项基本业务（包括顾客接待、商品整理、收银、试衣间、清扫等）\n2、以优衣库伙伴的角色参与店铺运营\n3、通过自己的努力积极参与店铺团队建设成为店铺的经营者\n岗位福利：五险一金、双休、节假日出勤三薪', 'uniqlo', '迅销（中国）商贸有限公司', '张千越', '13864493057', '2026-04-25', '2026-04-25 10:54:46', 1, 0);
INSERT INTO `zhaopinxinxi` VALUES (50, '2026-04-25 02:53:58', '兼职咖啡师', 'upload/1777085602772.png', '短期兼职', '本科', 9, '咖啡师', '郑州金水区X•one信万广场（郑州金水店）星巴克', 4000, '', 'starbuck', '星巴克企业管理（中国）有限公司', '李先生', '16985263000', '2026-04-25', '2026-04-25 17:23:02', 3, 0);

SET FOREIGN_KEY_CHECKS = 1;
