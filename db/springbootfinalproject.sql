/*
 Navicat Premium Data Transfer

 Source Server         : springbootl2ff3m7e
 Source Server Type    : MySQL
 Source Server Version : 50744 (5.7.44)
 Source Host           : localhost:3307
 Source Schema         : springbootfinalproject

 Target Server Type    : MySQL
 Target Server Version : 50744 (5.7.44)
 File Encoding         : 65001

 Date: 18/05/2026 02:11:37
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
INSERT INTO `aboutus` VALUES (1, '2024-03-23 08:04:39', '关于我们', 'ABOUT US', '<p>智聘兼职发布平台，诞生于对兼职市场乱象的深刻洞察与改变的决心，我们见过太多求职者在海量杂乱信息中迷失，被虚假岗位欺骗、被不合理克扣工资、遇到问题投诉无门，也见过无数企业在招聘短期人员时，面临信息不对称、招聘效率低、人员匹配度差的困境，我们坚信兼职不该是一场充满风险的博弈，而应该是求职者积累经验、获得收入，企业补充人力、高效运转的双赢桥梁，因此我们搭建了这个中立、透明、可靠的服务平台，面向所有有兼职需求的学生群体与各类用工企业，致力于打破信息壁垒，净化兼职环境，在这里每一家入驻企业都经过多层资质审核，每一条岗位信息都经过人工核验，我们坚决杜绝虚假招聘、黑中介与不合理用工，希望用严谨的态度和贴心的服务，让每一位求职者都能找到放心靠谱的工作，让每一家企业都能快速招到合适的人才，让每一份付出都能得到应有的回报，让每一次相遇都能成为彼此成长路上的助力。</p>', 'upload/1777300635772.jpg', 'upload/1777300643349.JPG', 'upload/1777300655011.jpg');

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
INSERT INTO `config` VALUES (1, 'picture1', 'upload/1777300704441.jpg', NULL);
INSERT INTO `config` VALUES (2, 'picture2', 'upload/1777300346237.jpg', NULL);
INSERT INTO `config` VALUES (3, 'picture3', 'upload/1777300684024.jpg', NULL);

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
) ENGINE = InnoDB AUTO_INCREMENT = 90 CHARACTER SET = utf8 COLLATE = utf8_general_ci COMMENT = '论坛交流' ROW_FORMAT = DYNAMIC;

-- ----------------------------
-- Records of forum
-- ----------------------------
INSERT INTO `forum` VALUES (81, '2026-03-23 08:04:39', '面试时的暗语，你听懂了吗？', '1.“回家等通知”：基本上没戏了。\r\n2.\"薪资5千~8千”：实际上就是只给你5000元。\r\n3.弹性工作时间”：需要经常免费加班。\r\n4.“工资不封顶页”：工资可能很低到没有上限。\r\n5.“常年招工”：人员流动很大。\r\n6.要踏实能干”；这份工作会很累。\r\n7.“吃苦耐劳”：工作环境可能很差。\r\n8“包三餐”：从早到晚工作，没有时间吃饭。\r\n的工作。\r\n9.\"能适应较快的工作节奏”：在很短的时间内完成大量\r\n10.“包吃住”：公司位置偏远，需要住在宿舍里，方便随\r\n叫随到。\r\n11.“工资面议”：去面试时才能知道你的工资是多少。\r\n12.“三年以上工作经验”：工作没有人指导。', 0, 1, '走走停停', 'upload/forum_avatarurl1.jpg,upload/forum_avatarurl2.jpg,upload/forum_avatarurl3.jpg', '开放', 1, '2026-04-26 20:46:29');
INSERT INTO `forum` VALUES (82, '2026-03-23 08:04:39', '今天面了俩名应届生，一名华中科技大学和一名普通本科的。', '华科的这位求职者，在面试过程中，就自我优势方面阐述时多以校园经历为主，且表达含糊，给我一种很忙碌，又没忙出个所以然，问到意向如何时，他回答我说，都可以\r\n普通本科的求职者，在面试过程中，就自我优势方面叙述时多以实习经历为主，虽然短暂，但逻辑清晰，给了他很多启发，让他明白自己的优缺，问到意向如何时，于华科的求职者截然不同：我非常希望加入贵公司，如果通过了面试，我可以按时入职我很能理解他们，应届生工作经验确实缺乏，可是求职不是求学，我需要知道你真正想做什么，能做什么，是否愿意去学习、摸索、坚持\r\n我觉得应届生最大的竞争力是有自己的规划，从还没有完全踏入社会之前，就做好了应对残酷社会的准备，我能够接受你是来学习的，我能够接受你的不稳定，但我希望你此刻面对我时应该是从容的，自信的，具有希望的，是一个能够从学习中成长、在挫折中自省的人。\r\n最后也是选择了普通一本的求职者，真诚换真诚，后天入职', 0, 2, '哈哈哈', 'upload/forum_avatarurl2.jpg,upload/forum_avatarurl3.jpg,upload/forum_avatarurl4.jpg', '开放', 0, '2026-03-23 08:04:39');
INSERT INTO `forum` VALUES (83, '2026-04-27 21:14:48', NULL, '<p><strong>加油<span class=\"ql-cursor\">﻿</span></strong></p>', 81, 15, '走走停停', 'upload/Snipaste_2026-04-18_21-13-13.png', NULL, 0, NULL);
INSERT INTO `forum` VALUES (84, '2026-05-10 18:00:00', '第一次面试紧张到说不出话，有什么缓解方法吗？', '明天要去面试一家咖啡店的兼职，之前没有面试经验，现在特别紧张，担心到时候说话结巴或者脑子空白。\n\n有没有过来人分享一下面试技巧？比如怎么自我介绍，面试官一般会问什么问题？\n\n提前感谢各位大佬！', 0, 1777324817193, 'liuyang2026', 'upload/Snipaste_2026-04-18_21-13-13.png', '开放', 0, NULL);
INSERT INTO `forum` VALUES (85, '2026-05-10 18:05:00', '兼职被骗了怎么办？押金不退！', '之前在一家快递公司做兼职，入职时交了500块押金，说离职时会退。\n\n结果干了半个月想辞职，对方各种理由拖延，现在直接不回消息了。\n\n请问这种情况怎么维权？有没有类似经历的朋友？', 0, 1777324817196, 'zhangwei2026', 'upload/Snipaste_2026-04-18_21-09-07.png', '开放', 0, NULL);
INSERT INTO `forum` VALUES (86, '2026-05-10 18:10:00', '郑州有哪些靠谱的寒暑假兼职推荐？', '大二暑假想找份兼职，最好是能学到东西的那种，不想只是纯体力劳动。\n\n目前考虑过家教、书店管理员、咖啡店店员，大家还有什么好的推荐吗？\n\n坐标郑州金水区，希望工作地点不要太远。', 0, 1777324817195, 'wangjing2026', 'upload/BHHGFBEJHDDCI-meuDb1j0cZ.png', '开放', 0, NULL);
INSERT INTO `forum` VALUES (87, '2026-05-10 18:15:00', '分享我的简历模板，希望对大家有帮助', '最近投了很多兼职简历，总结了一些经验，整理了一份简洁实用的简历模板。\n\n主要包含：个人信息、教育背景、实习经历、技能证书、自我评价这几个模块。\n\n有需要的同学可以私信我，免费分享给大家！\n\n祝大家都能找到心仪的兼职~', 0, 1777324817198, 'zhaolei2026', 'upload/IMG_6046.JPG', '开放', 1, '2026-05-10 18:15:00');
INSERT INTO `forum` VALUES (88, '2026-05-17 09:21:35', NULL, '<p>真的假的</p><p><br></p>', 82, 21, '卡力老虎', 'upload/1777324815283.png', NULL, 0, NULL);
INSERT INTO `forum` VALUES (89, '2026-05-17 09:23:43', NULL, '<p>自信真的很重要，真诚也是</p>', 88, 12, '爆赞', 'upload/BHHGFBEGDDIBA-x1kpJJvOCI.jpeg', NULL, 0, NULL);

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
INSERT INTO `jianzhifenlei` VALUES (31, '2024-03-23 08:04:38', '日结零活', 'upload/1778481706577.jpg');
INSERT INTO `jianzhifenlei` VALUES (32, '2024-03-23 08:04:38', '周末节假日兼职', 'upload/1778481692389.jpg');
INSERT INTO `jianzhifenlei` VALUES (33, '2024-03-23 08:04:38', '寒暑假专项', 'upload/1778481677186.jpg');
INSERT INTO `jianzhifenlei` VALUES (34, '2024-03-23 08:04:38', '短期兼职', 'upload/1778481660716.jpg');
INSERT INTO `jianzhifenlei` VALUES (35, '2024-03-23 08:04:38', '长期兼职', 'upload/1778481635943.jpg');
INSERT INTO `jianzhifenlei` VALUES (36, '2024-03-23 08:04:38', '线上远程兼职', 'upload/1778481577816.jpg');

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
) ENGINE = InnoDB AUTO_INCREMENT = 46 CHARACTER SET = utf8mb4 COLLATE = utf8mb4_general_ci COMMENT = '录取信息表' ROW_FORMAT = DYNAMIC;

-- ----------------------------
-- Records of luquxinxi
-- ----------------------------
INSERT INTO `luquxinxi` VALUES (1, '蜜雪冰城招聘奶茶店店员', 'upload/BHHHACFEJDGCE-xj9LONwUcJ.png', '长期兼职', 'mixuebingcheng', '蜜雪冰城股份有限公司', '王小曼', '2026-05-04', '郑州市金水区水兰徳中心23楼2313', '18元/小时 月结', 'doom', '杜穆', '19637726489', '可接受早晚班排班，周末优先上岗，入职前需办理健康证', '2026-04-24 12:55:30', '2026-04-24 12:55:30', '待回复');
INSERT INTO `luquxinxi` VALUES (2, '超市配送员 日结零活', 'upload/BHHHACDIAHECJ-Z3OFDdjiPT.png', '短期兼职', 'hmxs', '上海盒马科技有限公司', '李先生', '2026-04-28', '郑州金水区盒马鲜生(国贸360店)', '7200元/月 包吃住', '性压抑', '赵立峰', '13823888881', '自带电动车优先，能接受夜班配送，无犯罪记录，可立即上岗', '2026-04-24 12:55:30', '2026-04-24 12:55:30', '待回复');
INSERT INTO `luquxinxi` VALUES (3, '阿迪达斯门店销售', 'upload/BHHHACFJGEHGE-6O5CcdfBKJ.png', '周末兼职', 'Adidas', '阿迪达斯体育中国有限公司', '李雪琪', '2026-05-01', '郑州二七区杉杉奥特莱斯广场', '5400元底薪+提成', 'wutangforever', '李德可', '15635548630', '有零售销售经验优先，形象气质佳，周末及节假日必须到岗', '2026-04-24 12:55:30', '2026-04-24 12:55:30', '待回复');
INSERT INTO `luquxinxi` VALUES (27, '中牟肯德基服务员直聘J19488', 'upload/BHHHABEIABEID-5JNrWKvyIT.png', '长期兼职', 'kfc', '郑州肯德基有限公司', '王女士', '2026-04-26', '郑州中牟县八房井购物中心', NULL, '饮食男女', '朱家倩', '13823888886', NULL, '2026-04-25 00:00:00', '2026-04-25 14:44:55', '待回复');
INSERT INTO `luquxinxi` VALUES (32, '瑞幸咖啡门店长期店员', 'upload/BHHHBJCIHEDEF-D53ttmwlFC.png', '长期兼职', 'luckin_coffee', '瑞幸咖啡（郑州）有限公司', '林晓', '2026-05-08', '郑州市二七区德化街无限城1楼瑞幸咖啡', '19元/小时 月结', 'zhengyu2026', '郑宇', '13737788776', '请于2026-05-07前办理餐饮健康证，入职携带身份证复印件2张', '2026-04-26 10:00:00', '2026-04-26 07:05:31', '待回复');
INSERT INTO `luquxinxi` VALUES (33, '外卖配送员（日结）', 'upload/BHHHBJDAGGACE-06LFdvlT76.png', '日结零活', 'eleme_delivery', '饿了么郑州城市运营中心', '黄涛', '2026-04-29', '郑州市管城区银基商贸城配送站', '300元/天 日结', 'mahui2026', '马辉', '15937799887', '请于2026-04-28到站点办理入职，自带电动车，无犯罪记录', '2026-04-26 11:00:00', '2026-04-26 07:05:31', '待回复');
INSERT INTO `luquxinxi` VALUES (34, '寒暑假书店整理员', 'upload/BHHHBJDAAHEGD-OJXtLbyIqU.png', '寒暑假专项', 'xinhua_bookstore', '郑州新华书店有限公司', '刘芳', '2026-07-01', '郑州市金水区西太康路购书中心', '2500元/月 包午餐', 'tiantian2026', '田甜', '18837777665', '仅限在校大学生，入职需提供学生证复印件，可开具实习证明', '2026-04-26 12:00:00', '2026-04-26 07:05:31', '待回复');
INSERT INTO `luquxinxi` VALUES (35, '居家线上远程客服', 'upload/BHHHBJCJGAFCB-uSBJmjTvPu.png', '线上远程兼职', 'ecom_kefu', '郑州云商电商科技有限公司', '张鑫', '2026-05-05', '线上居家办公', '15元/小时 周结', 'fangyuan2026', '方媛', '19937766554', '请于2026-05-04参加线上岗前培训，需有稳定网络和安静办公环境', '2026-04-26 13:00:00', '2026-04-26 07:05:31', '待回复');
INSERT INTO `luquxinxi` VALUES (36, '数据运营', 'upload/BHHHACFCJEFHA-n58a5DF1So.png', '短期兼职', 'hello', '上海哈啰普惠科技有限公司', '赵哲会', '2026-04-27', '郑州金水区兰德中心27', NULL, 'doom', '杜穆', '15033981036', NULL, '2026-04-26 00:00:00', '2026-04-26 12:45:00', '待回复');
INSERT INTO `luquxinxi` VALUES (37, '耐克门店销售兼职', 'upload/BHHIEAJFFFICB-JdUB7481kq.png', '周末节假日兼职', 'nike_zhengzhou', '耐克体育（中国）有限公司郑州分公司', '周敏', '2026-05-20', '郑州市金水区花园路丹尼斯百货3楼耐克专柜', '3800元/月 提成另计', 'liuyang2026', '刘洋', '13837788899', '面试表现优秀，有相关经验，予以录用。请于2026-05-19办理入职手续，携带身份证复印件2张、学生证复印件1张、一寸照片2张', '2026-05-10 16:00:00', '2026-05-10 16:00:00', '待回复');
INSERT INTO `luquxinxi` VALUES (38, '迪卡侬运动顾问兼职', 'upload/BHHIEAJGADIIJ-OD5jgRkVzp.png', '长期兼职', 'decathlon_zz', '迪卡侬体育用品（郑州）有限公司', '吴刚', '2026-05-22', '郑州市郑东新区CBD内环迪卡侬运动超市', '4000元/月 员工折扣', 'chenhao2026', '陈浩', '15937788800', '体育专业背景符合要求，运动知识丰富，予以录用。入职前需参加为期3天的产品知识培训', '2026-05-10 16:05:00', '2026-05-10 16:05:00', '待回复');
INSERT INTO `luquxinxi` VALUES (39, '库迪咖啡吧台兼职', 'upload/BHHIEAJIBFDBB-bRjhOmOzWv.png', '长期兼职', 'cotti_coffee', '库迪咖啡（郑州）连锁有限公司', '赵芳', '2026-05-18', '郑州市中原区万达广场1楼库迪咖啡', '3600元/月 包工作餐', 'lixia2026', '李霞', '19937788833', '有星巴克工作经验，技能匹配度高，予以录用。请于2026-05-17到门店办理健康证和入职手续', '2026-05-10 16:10:00', '2026-05-10 16:10:00', '待回复');
INSERT INTO `luquxinxi` VALUES (40, '书吧图书管理员助理', 'upload/BHHIEAJJEEHCF-wBoxcbu7nx.png', '寒暑假专项', 'bookcafe_zz', '郑州漫咖啡书吧文化传播有限公司', '马文', '2026-07-01', '郑州市郑东新区龙子湖大学城漫咖啡书吧', '2800元/月 免费咖啡', 'zhoujie2026', '周杰', '18837788866', '热爱阅读，文笔优秀，符合岗位要求。暑期工作期间可开具实习证明，表现优秀者可长期合作', '2026-05-10 16:15:00', '2026-05-10 16:15:00', '待回复');
INSERT INTO `luquxinxi` VALUES (41, '麦当劳餐厅服务员', 'upload/BHHIEAJGFFDAA-c0scrzJVxy.png', '日结零活', 'mcdonalds_zz', '麦当劳（郑州）餐饮管理有限公司', '孙丽', '2026-05-15', '郑州市二七区火车站广场麦当劳餐厅', '2800元/月 包工作餐', 'huangbo2026', '黄波', '15537788888', '面试时间充裕，态度积极，予以录用。请先办理餐饮健康证，入职后可弹性排班，每周至少出勤3天', '2026-05-10 16:20:00', '2026-05-10 16:20:00', '待回复');
INSERT INTO `luquxinxi` VALUES (42, '库迪咖啡吧台兼职', 'upload/BHHIEAJIBFDBB-bRjhOmOzWv.png', '长期兼职', 'cotti_coffee', '库迪咖啡（郑州）连锁有限公司', '赵芳', '2026-05-20', '郑州市中原区万达广场1楼库迪咖啡', '3600元/月 包工作餐', '卡力老虎', '樊泽', '16934589310', '面试表现优秀，态度积极，予以录用。请于2026-05-19办理健康证和入职手续，携带身份证复印件2张', '2026-05-15 10:00:00', '2026-05-15 10:00:00', '待回复');
INSERT INTO `luquxinxi` VALUES (43, '顺丰快递员兼职', 'upload/BHHIEAJHHJBIA-cRMGHEgDFm.png', '日结零活', 'sf_express_zz', '顺丰速运郑州金水区分部', '王强', '2026-05-18', '郑州市金水区经三路顺丰速运营业点', '350元/天 日结', '卡力老虎', '樊泽', '16934589310', '自带电动车，熟悉金水区路线，吃苦耐劳，予以录用。请于2026-05-17到站点办理入职，无犯罪记录证明', '2026-05-15 11:00:00', '2026-05-15 11:00:00', '待回复');
INSERT INTO `luquxinxi` VALUES (44, '书吧图书管理员助理', 'upload/BHHIEAJJEEHCF-wBoxcbu7nx.png', '寒暑假专项', 'bookcafe_zz', '郑州漫咖啡书吧文化传播有限公司', '马文', '2026-07-01', '郑州市郑东新区龙子湖大学城漫咖啡书吧', '2800元/月 免费咖啡', '卡力老虎', '樊泽', '16934589310', '热爱阅读，细心负责，符合岗位要求。暑期工作期间可开具实习证明，表现优秀者可长期合作', '2026-05-15 14:30:00', '2026-05-15 14:30:00', '待回复');
INSERT INTO `luquxinxi` VALUES (45, '寒暑假书店整理员', 'upload/BHHHBJDAAHEGD-OJXtLbyIqU.png', '寒暑假专项', 'xinhua_bookstore', '郑州新华书店有限公司', '刘芳', '2026-05-13', '郑州市金水区西太康路购书中心', NULL, 'xyy', '赵立峰', '17044120066', NULL, '2026-05-11 00:00:00', '2026-05-17 12:18:20', '待回复');

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
) ENGINE = InnoDB AUTO_INCREMENT = 155 CHARACTER SET = utf8 COLLATE = utf8_general_ci COMMENT = '留言板' ROW_FORMAT = DYNAMIC;

-- ----------------------------
-- Records of messages
-- ----------------------------
INSERT INTO `messages` VALUES (151, '2026-04-21 13:41:49', 15, '走走停停', 'upload/IMG_4942.JPG', '<p>随着年龄增长你会学到的12件宝贵的事情</p><p><br></p><p>1. 保持冷静比试图赢得争论要好。</p><p><br></p><p>2. 时间比金钱更宝贵。</p><p><br></p><p>3. 不是每个人都需要成为你生活的一部分。</p><p><br></p><p>4. 健康是你最好的长期投资。</p><p><br></p><p>5. 说“不”表示你尊重自己。</p><p><br></p><p>6. 真正的朋友不多，要珍惜他们。</p><p><br></p><p>7. 随着年龄增长，家庭变得越来越重要。</p><p><br></p><p>8. 你不需要参与每一场争吵或打架。</p><p><br></p><p>9. 真正的幸福来自内心，而不是来自物质。</p><p><br></p><p>10. 当你保持安静时，你会注意到更多。</p><p><br></p><p>11. 原谅别人能让你感到自由。</p><p><br></p><p>12. 当你不再责怪别人时，你会变得更聪明。</p>', 'upload/微信图片_20260427194349_239_2.jpg', NULL, NULL);
INSERT INTO `messages` VALUES (152, '2026-04-21 13:42:50', 18, '小武', 'upload/IMG_6044.JPG', '<p>如何在72小时内重启整个人生：</p><p><br></p><p>1. 今晚删除3个应用。</p><p><br></p><p>你已经知道是哪3个。就是那些你逃避时会打开的应用。</p><p><br></p><p>不是飞行模式，不是屏幕时间限制。直接删除。</p><p><br></p><p>如果这扇门还开着，接下来72小时都白费。</p><p><br></p><p>2. 写下丑陋的那一页。</p><p><br></p><p>一张纸，一个问题：我的人生现在真正哪里出了问题。</p><p><br></p><p>不是目标，不是计划。那个你几个月来一直压在心里没有写下来的真实答案。</p><p><br></p><p>3. 像一个守诺言的人住在这里一样打扫一个房间。</p><p><br></p><p>不是整个公寓。就一个房间。扔掉坏掉的东西，认真整理床铺。</p><p><br></p><p>你的空间一直在反映你的习惯。先改变空间。</p><p><br></p><p>4. 在大脑清醒前让身体动起来。</p><p><br></p><p>第2天。在咖啡前，在手机前，在脑子列出理由前。</p><p><br></p><p>重点不是健身。是证明你的嘴和手终于站在同一队了。</p><p><br></p><p>5. 对一个人说出真话。</p><p><br></p><p>对一个你信任的人说一句诚实的话。\'我一直被困住了，现在我在努力走出来。\'</p><p><br></p><p>你一直独自承担是因为孤独感更安全，但孤独是每次重启的坟墓。</p><p><br></p><p>6. 选定一件事。在第72小时开始做它。别告诉任何人。</p><p><br></p><p>每天一个行动，小到最坏的日子也杀不死它，大到30天的坚持能改变一切。</p><p><br></p><p>72小时是拆除，这个行动是你承诺仍有效的第一个证明。</p>', 'upload/IMG_6042.JPG', '<p>说的有道理</p><p><br></p>', NULL);
INSERT INTO `messages` VALUES (153, '2026-04-27 17:53:34', 12, '爆赞', 'upload/BHHGFBEGDDIBA-x1kpJJvOCI.jpeg', '<p>超市就是山姆，电车就是特斯拉，手机就是苹果，汉堡就是麦当劳。</p><p>年轻人不要住在没有山姆的城市。</p>', 'upload/1777312413232.jpeg', '<p>就是你在煽动对立？</p><p><br></p>', NULL);
INSERT INTO `messages` VALUES (154, '2026-05-11 04:39:07', 21, '卡力老虎', 'upload/1777324815283.png', '<p>你知道我们在讨论什么</p><p>言辞太锋利 我高晓松</p><p>我太有文化了 准备考公</p>', NULL, '<p>true</p>', NULL);

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
  `addtime` timestamp NULL DEFAULT CURRENT_TIMESTAMP COMMENT '创建时间',
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 20 CHARACTER SET = utf8mb4 COLLATE = utf8mb4_general_ci COMMENT = '面试通知表' ROW_FORMAT = DYNAMIC;

-- ----------------------------
-- Records of mianshitongzhi
-- ----------------------------
INSERT INTO `mianshitongzhi` VALUES (1, '3名日结工/711送零食-一日一结', 'upload/BHHHCJDAGDBIB-a1i9rDLJI4.png', '短期兼职', '配送', '沈阳市蓝胖子配送服务有限公司', '贾淑艳', '2026-04-26 00:00:00', '周日', '郑州金水区金印现代城', '性压抑', '赵立峰', '13823888881', '', '2026-04-24 00:00:00', '2026-04-24 11:36:38');
INSERT INTO `mianshitongzhi` VALUES (2, '阿迪达斯郑州二七杉杉店兼职', 'upload/BHHHACFJGEHGE-6O5CcdfBKJ.png', '周末节假日兼职', 'Adidas', '阿迪达斯体育中国有限公司', '李雪琪', '2026-05-06 00:00:00', '周四', '郑州二七区杉杉奥特莱斯广场', '饮食男女', '朱家倩', '13823888886', '', '2026-04-24 00:00:00', '2026-04-24 12:36:37');
INSERT INTO `mianshitongzhi` VALUES (3, '星巴克门店兼职咖啡师', 'upload/BHHHAIFFJCIHJ-IPc12j8zrd.png', '周末节假日兼职', 'starbucks_zz', '星巴克企业管理（中国）有限公司郑州分公司', '张曼玉', '2026-05-10 10:00:00', '周六', '郑州市郑东新区CBD千玺广场1楼星巴克', 'liyue2026', '李悦', '13937789876', '面试请携带个人简历，有饮品制作经验者可携带相关作品', '2026-04-26 00:00:00', '2026-04-26 07:06:22');
INSERT INTO `mianshitongzhi` VALUES (4, '中牟肯德基服务员直聘J19488', 'upload/BHHHABEIABEID-5JNrWKvyIT.png', '长期兼职', 'kfc', '郑州肯德基有限公司', '王女士', '2026-04-30 00:00:00', '周二', '郑州中牟县八房井购物中心', '卡力老虎', '樊泽', '16934589310', '', '2026-04-28 00:00:00', '2026-04-27 21:25:38');
INSERT INTO `mianshitongzhi` VALUES (5, '耐克门店销售兼职', 'upload/BHHIEAJFFFICB-JdUB7481kq.png', '周末节假日兼职', 'nike_zhengzhou', '耐克体育（中国）有限公司郑州分公司', '周敏', '2026-05-15 14:00:00', '周五', '郑州市金水区花园路丹尼斯百货3楼耐克专柜办公室', 'liuyang2026', '刘洋', '13837788899', '请携带个人简历和学生证，有零售经验者优先录用', '2026-05-10 00:00:00', '2026-05-10 15:00:00');
INSERT INTO `mianshitongzhi` VALUES (6, '迪卡侬运动顾问兼职', 'upload/BHHIEAJGADIIJ-OD5jgRkVzp.png', '长期兼职', 'decathlon_zz', '迪卡侬体育用品（郑州）有限公司', '吴刚', '2026-05-16 10:00:00', '周六', '郑州市郑东新区CBD内环迪卡侬运动超市人力资源部', 'chenhao2026', '陈浩', '15937788800', '面试时请展示运动特长，穿着运动装出席', '2026-05-10 00:00:00', '2026-05-10 15:05:00');
INSERT INTO `mianshitongzhi` VALUES (7, '库迪咖啡吧台兼职', 'upload/BHHIEAJIBFDBB-bRjhOmOzWv.png', '长期兼职', 'cotti_coffee', '库迪咖啡（郑州）连锁有限公司', '赵芳', '2026-05-14 15:00:00', '周三', '郑州市中原区万达广场1楼库迪咖啡门店', 'lixia2026', '李霞', '19937788833', '有咖啡师经验者优先，现场将进行简单饮品制作测试', '2026-05-10 00:00:00', '2026-05-10 15:10:00');
INSERT INTO `mianshitongzhi` VALUES (8, '顺丰快递员兼职', 'upload/BHHIEAJHHJBIA-cRMGHEgDFm.png', '日结零活', 'sf_express_zz', '顺丰速运郑州金水区分部', '王强', '2026-05-13 09:00:00', '周二', '郑州市金水区经三路顺丰速运营业点', 'zhaolei2026', '赵磊', '15037788844', '请自带电动车，面试后将进行路线熟悉培训', '2026-05-10 00:00:00', '2026-05-10 15:15:00');
INSERT INTO `mianshitongzhi` VALUES (9, '书吧图书管理员助理', 'upload/BHHIEAJJEEHCF-wBoxcbu7nx.png', '寒暑假专项', 'bookcafe_zz', '郑州漫咖啡书吧文化传播有限公司', '马文', '2026-05-17 14:30:00', '周日', '郑州市郑东新区龙子湖大学城漫咖啡书吧', 'zhoujie2026', '周杰', '18837788866', '请准备一份自我介绍和近期阅读书单分享', '2026-05-10 00:00:00', '2026-05-10 15:20:00');
INSERT INTO `mianshitongzhi` VALUES (10, '瑜伽馆前台接待', 'upload/BHHIEAJJBEHCA-vy1NfKSzLb.png', '线上远程兼职', 'yoga_studio', '郑州瑜伽时光健身工作室', '张婷', '2026-05-18 10:00:00', '周一', '郑州市金水区文化路正弘城6楼瑜伽馆', 'wufang2026', '吴芳', '17737788877', '面试时请着舒适服装，将有简单瑜伽体式展示环节', '2026-05-10 00:00:00', '2026-05-10 15:25:00');
INSERT INTO `mianshitongzhi` VALUES (11, '麦当劳餐厅服务员', 'upload/BHHIEAJGFFDAA-c0scrzJVxy.png', '日结零活', 'mcdonalds_zz', '麦当劳（郑州）餐饮管理有限公司', '孙丽', '2026-05-12 16:00:00', '周一', '郑州市二七区火车站广场麦当劳餐厅经理办公室', 'huangbo2026', '黄波', '15537788888', '请携带身份证复印件和健康证（如有），面试后即可安排试岗', '2026-05-10 00:00:00', '2026-05-10 15:30:00');
INSERT INTO `mianshitongzhi` VALUES (12, '宜家家居导购助理', 'upload/BHHIEAJHFDIBH-qJrsezIhXi.png', '寒暑假专项', 'ikea_zhengzhou', '宜家家居（郑州）商场', '李娜', '2026-05-19 11:00:00', '周二', '郑州市惠济区北三环宜家家居商场人力资源部', 'wangjing2026', '王静', '18737788811', '请着正装出席，面试将包括情景模拟测试', '2026-05-10 00:00:00', '2026-05-10 15:35:00');
INSERT INTO `mianshitongzhi` VALUES (13, '瑞幸咖啡门店长期店员', 'upload/BHHHBJCIHEDEF-D53ttmwlFC.png', '长期兼职', 'luckin_coffee', '瑞幸咖啡（郑州）有限公司', '林晓', '2026-05-15 10:00:00', '周五', '郑州市二七区德化街无限城1楼瑞幸咖啡门店', '卡力老虎', '樊泽', '16934589310', '请携带个人简历，有餐饮经验者优先', '2026-05-12 09:00:00', '2026-05-12 09:00:00');
INSERT INTO `mianshitongzhi` VALUES (14, '名创优品理货员', 'upload/BHHIEAJIHBEAA-ENYFOjU6Pp.png', '周末节假日兼职', 'miniso_zz', '名创优品（郑州）商贸有限公司', '刘洋', '2026-05-16 14:00:00', '周六', '郑州市管城区银基商贸城名创优品门店办公室', '卡力老虎', '樊泽', '16934589310', '面试时请着便装，需现场进行简单商品整理测试', '2026-05-13 10:30:00', '2026-05-13 10:30:00');
INSERT INTO `mianshitongzhi` VALUES (15, '瑜伽馆前台接待', 'upload/BHHIEAJJBEHCA-vy1NfKSzLb.png', '线上远程兼职', 'yoga_studio', '郑州瑜伽时光健身工作室', '张婷', '2026-05-17 15:00:00', '周日', '郑州市金水区文化路正弘城6楼瑜伽馆前台', '卡力老虎', '樊泽', '16934589310', '气质优雅者优先，面试将有简单沟通环节', '2026-05-14 11:15:00', '2026-05-14 11:15:00');
INSERT INTO `mianshitongzhi` VALUES (17, '寒暑假书店整理员', 'upload/BHHHBJDAAHEGD-OJXtLbyIqU.png', '寒暑假专项', 'xinhua_bookstore', '郑州新华书店有限公司', '刘芳', '2026-05-21 00:00:00', '周四', '111', 'wangjing2026', '王静', '18737788811', '', '2026-05-17 00:00:00', '2026-05-17 12:19:40');
INSERT INTO `mianshitongzhi` VALUES (18, '寒暑假书店整理员', 'upload/BHHHBJDAAHEGD-OJXtLbyIqU.png', '寒暑假专项', 'xinhua_bookstore', '郑州新华书店有限公司', '刘芳', '2026-05-18 00:00:00', '周一', '111', '卡力老虎', '樊泽', '16934589310', '', '2026-05-17 00:00:00', '2026-05-17 12:20:02');
INSERT INTO `mianshitongzhi` VALUES (19, '寒暑假书店整理员', 'upload/BHHHBJDAAHEGD-OJXtLbyIqU.png', '寒暑假专项', 'xinhua_bookstore', '郑州新华书店有限公司', '刘芳', '2026-05-20 00:00:00', '周三', '新华书店', 'xyy', '赵立峰', '17044120066', '', '2026-05-17 00:00:00', '2026-05-17 12:20:50');

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
INSERT INTO `news` VALUES (101, '2026-03-23 08:04:39', '趁着年轻，输得起，看得开，去经历', '我在大学一年级那一年，毫无悬念地把自己吃成了一个胖子。不是那种巨大的胖子，而是介于正规的肥胖和臃肿之间的尴尬体型，比标准体型重了15斤。于是，我的整个大用户活变成了电影《蝴蝶效应》系列，那只蝴蝶重达15斤', '名企内推专区', '小武', 'upload/news_headportrait1.jpg', 6, '2026-05-11 12:45:20', 1, 1, 1, 'upload/1778474735030.jpg', '<p>我在大学一年级那一年，毫无悬念地把自己吃成了一个胖子。不是那种巨大的胖子，而是介于正规的肥胖和臃肿之间的尴尬体型，比标准体型重了15斤。于是，我的整个大用户活变成了电影《蝴蝶效应》系列，那只蝴蝶重达15斤。</p><p>首先，我皈依了减肥。我可以整整一天滴水不进，然后第二天中午，一个小时之内连续去三个食堂吃午饭，每次都是两荤一素、一两米饭加一瓶大可乐，像是一个人孢子分裂出了三个暴食症患者。其次，因为要么饿得百爪挠心，要么撑得寝食难安，我变成了一个昼夜颠倒的人，再加上觉得自己邋遢难看，不愿见人，便逃掉了很多课。其三，逃课的空虚让我花了大量时间网购，击败了全国90%以上的电商消费者，和快递员结下了深厚的友谊。我买的大多数是衣服，衣服又穿不进，羞愤难当，继续皈依减肥。总之，那是我非常不快乐的几年。因为难以接受自己，所以蜷缩着，拒绝他人。</p><p>我很久之后才知道，人用来自憎的大脑边缘系统，在童年时就已经形成。可是，用来开导自己、原谅自己、使自己变得强大的智慧，却往往在我们本该成熟的年纪依然不具备。每一世代的年轻人都是脆弱的、敏感的、容易受他人影响的。而对于正年轻的一代来说，这个挑战异乎寻常的艰难。</p><p>电影《楚门的世界》中提出了一个假设以及相应的解答:当一个人活在所有人的窥探之下，他应该怎么办?答案是:他逃走，获得自由。然而，如果所有人活在所有人的窥探之下，那又该如何逃避?这不是假设，而是正在悄然发生的现实。我们无时无刻不在朋友圈、微博、贴吧、个人主页上展现自己的生活，同时，也在同样的平台上窥探他人的生活。我们无时无刻不在评估他人，同时，也在接受他人的评估。“个性张扬”只是狐假虎威的外衣，为的是掩饰自卑与自恋此起彼伏、相爱相杀的脆弱。我们羡慕嫉妒他人，也努力把自己的生活修饰得让他人羡慕嫉妒。我们对他人的意见过于敏感，无法忍受不被“点赞”的人生。</p><p>社交网络的核心在于“社交”，社交的动力，是出于人们无法忍受孤独;人们之所以无法忍受孤独，是因为人们无法拷问自己。可是，总有一天，我们要站在镜子前，发现我们并不是自己创造出来的那个有趣、可爱、有吸引力、有能力的人。那么，你还喜欢镜子里的自己吗?或者，镜子里的你还喜欢自己吗?这个世界是否称赞你、羡慕你、爱你，在某种程度上是个不断膨胀的谎言。关键的问题在于，你是否对自己足够诚实，并且接受诚实之后的不完美。</p><p>失去的痛苦、被拒绝的痛苦、被伤害的痛苦、分别的痛苦，它们如此显眼地横在前行的路上，让人想逃遁到那个充满着“赞”的虚幻世界里。然而，我们是人，走在一条从摇篮到坟墓的路上，年轻在途中，衰老在途中。必须和真实的世界发生联系，而不是兀自为尚未发生的事情恐惧;必须和真实的人发生各种关系，而不是如一座座只能遥远眺望的孤岛。</p><p>那些杀不死我们的，它们有时并不会让我们更加强大，而只是成为一段诗意或自嘲的记忆。趁着年轻，输得起，看得开，去经历。那些杀不死我们的，它们在混沌而无序的未来里，并不能成为我们手中的武器，却为我们的存活，增加了反抗脆弱与敏感的韧性。</p>');
INSERT INTO `news` VALUES (102, '2026-03-03 08:04:39', '大学就该抓住青春，用汗水实现梦想', '大学之青春，人生之春，人生之王，人生之华也，宝贵的时光我们理当去珍惜。然而，当我们在青春布满藤墓的围墙上缓慢的攀行时;依旧游离在青春摇摆不定的尾巴上时;奋力想抓却抓不住，用力一扯，却又是散落一地的音符时;我们是否该回头思考了。零零碎碎的记忆，偶尔会闪过寂寞的长空，飘然在无际的苍穹，仅仅留下几颗闪烁的残星让我们自己深思，青春易逝，好比东逝的水—去不复还', '劳动权益科普', 'kobe', 'upload/news_headportrait2.jpg', 4, '2026-05-11 12:45:07', 2, 2, 2, 'upload/1778474714542.JPG', '<p>大学之青春，人生之春，人生之王，人生之华也，宝贵的时光我们理当去珍惜。然而，当我们在青春布满藤墓的围墙上缓慢的攀行时;依旧游离在青春摇摆不定的尾巴上时;奋力想抓却抓不住，用力一扯，却又是散落一地的音符时;我们是否该回头思考了。零零碎碎的记忆，偶尔会闪过寂寞的长空，飘然在无际的苍穹，仅仅留下几颗闪烁的残星让我们自己深思，青春易逝，好比东逝的水—去不复还。</p><p>青春是属于我们的，是人生最最美好的时光。我们应该好好把握住现在象牙塔的点点滴滴。大学对于我们来说很重要，这里充满了好奇、机遇和挑战。当我懵懵懂懂的走过了两年才突然发现原来大学是这样的，每个人有不同的选择，有不同的理想，也有不同的人生。但是无论怎样都是一个博学的过程，学做人，学知识，用户活..…...春是疯狂的，是充满激情的，是奋斗的，最重要的是我们要坚定我们的梦想，为了梦想付出一切，为了梦想坚持到底，这才是真正的青春。青春的梦想就是黑夜里的灯塔在我们迷茫时给予我们方向，就是力量的源泉在我们身陷逆境时给予我们最大的动力，就是爱的港湾在我们屡次失败时给予我们受伤的心灵以安慰。因此无论何时何地，都不能忘却心里坚守的那份沉甸甸的梦想。</p><p>青春的梦想很简单，可能是梦想成为学习的佼佼者让GPA无限趋于4.0，可能是梦想成为用户工作的杰出者当上主席为自己的从政事业奠定基础，也可能是梦想成为运动场上的超级明星拥有大量的球迷粉丝，也可能是梦想成为职场达人，面试无压力，就业有保障...….或许你觉得这些都算不上梦想，其实梦想并不分大小和轻重，不能说只有中国梦才算是梦想，梦想就是这样每个人有不同的定位，但都是值得去追逐的，去为之奋斗的。()拥有了梦想，就有了坚定的信念，海风再大海浪再大，也无法扼杀我们追逐胜利的信念。信念给我们坚持的勇气，勇气赐我们昂扬的斗志，斗志带我们摆脱厄运;拥有了梦想，就能化压力为动力，梦想会时刻在鞭策我们，鼓励我们，让我们审视自己，发现不足，奋力补救，让自己保持不懈的前进动力;拥有了梦想，我们就不会在迷茫的路上更加迷茫，我们就能在青春之歌复杂的五线谱中听到动人的旋律。</p><p>我们是大用户，是祖国的未来，是民族复兴的脊梁，面对如此重任，怎么能不胸怀大志，坚定梦想，在青春的道路上奋斗。“恰同学少年，风华正茂，书生意气，挥斥方道。”青春是黄金时段，我们要以梦想为方向，扬帆起航，努力拼搏，给我们即将失去的青春以最好的结局。人因梦想而伟大，让我们一起奏响青春的梦想之歌，为各自的梦想努力进发吧!</p>');
INSERT INTO `news` VALUES (103, '2026-03-21 08:04:39', '留退路就没有出路', '公元前一世纪，凯撒大帝率领他的军队抵达了英格兰，他决心要赢得这场战争，不管遇到什么情况都不会退却。为了让士兵们明白自己必胜的决心和信心，也为了断绝士兵们逃跑退缩的念头，凯撒命令士兵将运载他们的所有船只都烧毁。这使得军队的士气受到了莫大的鼓舞。后来他们获胜了', '劳动权益科普', '卡里老虎', 'upload/news_headportrait3.jpg', 6, '2026-05-11 12:44:50', 3, 3, 3, 'upload/1778474701730.JPG', '<p>公元前一世纪，凯撒大帝率领他的军队抵达了英格兰，他决心要赢得这场战争，不管遇到什么情况都不会退却。为了让士兵们明白自己必胜的决心和信心，也为了断绝士兵们逃跑退缩的念头，凯撒命令士兵将运载他们的所有船只都烧毁。这使得军队的士气受到了莫大的鼓舞。后来他们获胜了。</p><p>很多人在处理重要问题的时候，总是喜欢把这些问题暂且搁置在一边，等以后再做。他们没有决定的勇气和魄力，总是在着手做事的时候想给自己留一条后路，以免没有出路。对于他们来说，退路就是出路。但是，事实证明，这样是不会有任何成就的。</p><p>背水一战、破釜沉舟的军队往往能获得胜利。同样，一个做事不留退路、一心向前的人，不管遇到什么困难和障碍，他都不会后退，因为他没有路可以退。而那些人在为自己准备退路的同时就是在后退，他们立志不坚，把精力和时间投入到退缩的准备上，这种人绝不会获得成功。</p><p>一个人能否成功，关键在于他意志力的强弱。意志坚强的人不管遇到什么困难和障碍，都会百折不挠，想方设法地克服;意志薄弱的人一遇到麻烦，甚至在挫折还没有到来之前，他们就开始庸人自扰，彷徨失措，把精力都放在如何规避问题上，放在为自己铺设后路上。当困难一个接一个来时，他们就一步接一步后退，最后他们终将无路可退。</p><p>现实生活中，到处都充斥着这样的青年，他们富有上进心，希望有一番成就和作为，但是他们意志薄弱，没有必胜的决心，不敢破釜沉舟;他们始终左摇右摆，没有坚定的信念，一遇到挫折和困难，马上就缩回了进取的手和脚。这样的人，这样的心态，最后遭受失败也不足为奇。</p><p>不给自己留后路，让自己没有回旋的余地，方能竭尽全力，锐意进取，就算遇到千万困难，也不会退缩，因为回头也没有路了，不如不顾一切地前进，还能找到一线希望。有了这样一种“拼命”和“豁出去”了的信念，才能彻彻底底地消除心中的恐惧、犹豫、胆怯。当一个人不给自己任何退路的时候，他就什么都不怕了，勇气、信心、热忱等从心底油然而生，到最后自然能“置之死地而后生”。</p><p>面对严峻的问题和重要环节，周全而细致地考虑问题的各个方面也是应该的，但是过多地权衡，前怕狼后怕虎，一会儿这样一会儿那样，最终却还是原样，可以肯定地说，你不会有任何进展，甚至还会变得—塌糊涂。</p><p>出路和退路不是同义词，而是反义词，留退路就没有出路，因此，你应该只找出路，不留退路。大用户励志青春文章:培养积极的思维模式。</p>');
INSERT INTO `news` VALUES (104, '2026-03-17 08:04:39', '在大学给自己定个目标', '最近和几名大一的用户聊天，几名同学认为身边的人普遍都很迷茫，不知道该干什么，业余时间要么是对着电脑、要么是抱着手机刷微博。我问道:“为什么不找点事情做做，制定一个计划，哪怕是锻炼身体也好?4年也可以把身体锻炼得结实些。”当然，我也清楚，我的这些建议对他们来说，未必能有多大用。许多用户因为意志不坚定，没有老师的监督、逼迫，根本就无法做到', '名企内推专区', '小猴猫', 'upload/news_headportrait4.jpg', 6, '2026-05-11 12:43:40', 4, 4, 4, 'upload/1778474633530.jpg', '<p>最近和几名大一的用户聊天，几名同学认为身边的人普遍都很迷茫，不知道该干什么，业余时间要么是对着电脑、要么是抱着手机刷微博。我问道:“为什么不找点事情做做，制定一个计划，哪怕是锻炼身体也好?4年也可以把身体锻炼得结实些。”当然，我也清楚，我的这些建议对他们来说，未必能有多大用。许多用户因为意志不坚定，没有老师的监督、逼迫，根本就无法做到。</p><p>这让我想到前段时间蹿红网络的“悔过励志帖”——《同学，我大四了》，作者回首自己的大学4年，他感叹投入精力“充其量不过40%”︰每天上网时间少则4个小时，多则10个小时;考试永远是画画重点，在高呼“60分万岁”中与奖学金无缘。作者借自己求职受挫，写帖子以警醒后来人，不要等毕业时再后悔，就业难不仅仅是大学、社会的问题，也是自身的问题。</p><p>也许，这样的大用户不是一个两个，而是一个群体。然而，我总是怀疑这样的励志帖，甚至教师在课堂上苦口婆心地劝说，能对现实中的大学和大用户起到多大的影响和作用，很多时候恐怕只有“三分钟热度”的效应。毕竟，现实的窘境不是一天积累起来的，从小学到高中，用户们的学习都是被动地接受应试，隐藏着功利性的目的，也许从没有为主动学习感到过快乐，而在高中时代，有的教师甚至打出这样的励志宣言:等你考上大学，你就可以想干什么干什么了..…..乎，高中时代的目标是很清晰的，就是为了考上大学，而在一些高中生的眼里，大学甚至就好比是天堂，进了大学的门就可以放轻松了。</p><p>此前，有很多声音都认为大学越来越像培训机构，功利性学习正在整个大学蔓延，考证热、过早地职业化都是大学功利性学习最好的表现形式。在这种批判的声音中，“培训机构”总有被贬低的意味，难与大学之学术思想殿堂的高雅相媲美。但是，在这种批判的背后，还有一个现实问题被遮蔽，那就是很多大用户对自己的学习、对大用户活没有任何目标。</p><p>暨南大学舆情研究中心曾就“当代广州大用户生活与思想现状”作过详细的问卷调查，其中，接受调查的广州高校在读本科生共有191份有效样本，就“读大学的原因”、“大学第一印象”、“专业选择首要因素”等问题制作问卷调查并进行分析。结果显示，在未来规划方面，73.3%的同学表示只有粗略的想法，并无非常明确的目标。</p><p>如果说功利化的学习毕竟还有一个前进的目标，至少能体现出一种为了目标而奋斗的精神和奔头，而没有任何目标，漫无目的地混日子则更可怕，它体现的是一种虚无、意义的缺失。说实话，没有引导用户树立明确的奋斗目标、进而指引用户为之努力的大学，用户很难找到努力的方向，也找不到努力的意义，这还不如“培训机构”来得实在、来得有效用，至少，培训机构的目标很清晰，它能够给用户们一个实实在在看得见的效果，而没有任何目标、浑浑噩噩的大用户活，也许只会给很多用户带来悔过。</p><p>无论如何，混日子的大用户活是不可取的。一方面，高校应该在新生入学的时候，作好目标和方向的引导，甚至贯穿大学4年的学习过程;另一方面，还在迷途的大用户，应尽早为自己找个前进的方向，作好自我规划，对自己的未来和前途负责。</p>');
INSERT INTO `news` VALUES (105, '2026-02-08 08:04:39', '做个真正的用户', '最坚强的人，是以宽容的态度面对自己缺点的人，而懦弱的人，则不敢面对自己的缺点，最终自暴自弃，葬送自己。只要有进取心，我们都能从失败的领域中，发现到达成功的途径;只要有自信心，我们身上的每一个缺陷，也都可以成为与众不同的优点', '劳动权益科普', '侃爷', 'upload/news_headportrait5.jpg', 7, '2026-05-11 12:44:00', 5, 5, 5, 'upload/1778474649268.jpg', '<p>最坚强的人，是以宽容的态度面对自己缺点的人，而懦弱的人，则不敢面对自己的缺点，最终自暴自弃，葬送自己。只要有进取心，我们都能从失败的领域中，发现到达成功的途径;只要有自信心，我们身上的每一个缺陷，也都可以成为与众不同的优点。</p><p>曾经有人特地赶赴日本，向三宅一生服装设计大师请教如何设计出独具一格的服装款式。三宅一生大师提出两个很有意思的观点:一是，设计的衣服，其实都是没有全部完成的，其余的创作空间，则是留给穿衣服的人去完成的;二是，选择布料时，会请厂商提供纺织、印染失败的布料，从这些“残次”的作品中寻找泉涌般的创作灵感，设计出最具独创性的作品。</p><p>这样一来，顾客才能穿出自己的风格，并使得同一件衣服，在不同的人身上，能有不同的效果。而且，以这样的概念设计出来的衣服，也不容易失败。正是因为这两个观点，三宅一生所设计的服装总是独一无二地能够引领世界潮流。</p><p>在艺术家的眼中，任何事物都是创作的最好材料，不管是枯木还是残破的布料，对他们而言，都是最具生命力的事物，在他们手中都能画腐朽为神奇。</p><p>朽木也能精雕，更何况我们自己。那些看起来弯曲、盘旋、似乎毫无用处的木料，往往最终能成为艺术品的原材料，因为这种不同，才特别珍贵。花点心思，身上的缺点也能变成独特的优点，就像艺术家们一般，顺着曲折的木头，创造出与众不同、完美无缺的惊世杰作。</p><p>励志文章3:一生学习，成就一生无知的人并不是没有学问的人，而是不明了自己的人。当一个有学问的人信赖书本、知识和权威，借着它们而了解自己，那么他便是愚蠢的。了解是由自我认识而来，而自我认识乃是一个人明白他自己的整个心理过程。因此，教育的真正意义是自我了解，因为整个生活是汇聚于我们每个人的身心的最高“机密”。</p><p>目前我们所谓的教育，只是由书本聚集见闻、知识，这是任何懂得阅读的人都办得到的。这种教育提供了一条巧妙的逃避自我之途，如同其他所有的逃避方式一样，它无可避免地制造出有增无减的苦难。冲突和混乱是由于我们和他人、事物、概念之间差错的关系而产生，除非我们了解此项关系而改变它，否则，知识的学习和堆砌，各种技能的获取，都只会将我们导向更深的混乱和毁灭。</p><p>我们将子女送入学校，学习一些技能，并希望借此来带动整个家庭的长久繁荣，至少在家长们年老的时候有养老保险，有稳定的照顾。我们对孩子最急切的渴望，就是将他塑造成一个能在一个领域中出类拔萃之人，希望给予他一个安全的经济地位。物质的获得有时候并不难，然而，技术的训练能使我们了解自己吗?</p><p>虽然，懂得念书写字、学习土木工程或其他某种职业，是必需的，然而技术能给予我们了解生活的能力吗?技术，无疑是次要的;如果技术是我们惟一奋力以求的东西，那么我们就摒弃了生活中最主要的东西了。</p><p>生活，是痛苦、喜悦、美、丑、爱等多种感受的综合，一旦我们将它整体地加以了解，那么这项了解在各方面都会创出它应有的技术。不过，相反的说法就不是真的了∶技术永远无法产生创造性的了解。</p><p>如果过分强调技术，我们便毁灭了人。磨练技能和效率，然而对生活却不了解，对思想、欲望的行踪不能领悟，只会使我们变得日益残暴无情，以致于触发战争，危害了我们肉体上的安全。由于我们的教育过重于单单培养技术，已经制造出许多科学家、数学家、造桥工程师、征服太空的人，但这些人了解生活的整体过程吗?一个专家能把生活本身完整地体验感受表达出来吗?或者他真的体验到生活了吗?有时候，当他不是专家时，反而更能直指生活的本质。一颗能够给予人辉煌一生的企图心，首先应当是一颗敏感的善良的热情的心，让我们对周围的一切保持孩童一样旺盛的好奇心。我们应当渴望了解新奇的事物，渴望探索未知的领域。只有在这种理念的支配下，我们才能不断地、孜孜以求地、乐此不疲地提升自己的认知和理解能力，改善自我，从而更接近成功的巅峰。</p>');
INSERT INTO `news` VALUES (107, '2026-02-23 08:04:39', '做一个最好的自己', '自信是成功的前提，你拥有自信，就拥有成功的一半机会。相信自己是最棒的就一定会成就一定的事业。拥有自信的人之所以会心想事成、走向成功，是因为他们都有着巨大无比的潜能等着去开发;消极失败的心态之所以会使人怯弱无能、走向失败，是因为它使人放弃潜能的开发，让潜能在那里沉睡、白白浪费', '劳动权益科普', '丁震', 'upload/news_headportrait7.jpg', 9, '2026-05-11 12:44:29', 7, 7, 7, 'upload/1778474683641.jpg', '<p>自信是成功的前提，你拥有自信，就拥有成功的一半机会。相信自己是最棒的就一定会成就一定的事业。拥有自信的人之所以会心想事成、走向成功，是因为他们都有着巨大无比的潜能等着去开发;消极失败的心态之所以会使人怯弱无能、走向失败，是因为它使人放弃潜能的开发，让潜能在那里沉睡、白白浪费。</p><p>我们大家都知道的人大脑拥有140亿个脑细胞，但我们思维意识只利用了脑细胞的很少部分，如能将更多的脑细胞从睡眠中激活出来，人的思维意识将更加强大。如果我们都能充满自信，就能创造人间奇迹，亦能创造一个最好的自己。</p><p>一个人相信自己是什么，就会是什么。一个人心里怎样想，就会成为怎样的人。这从心里学上讲是有一定的道理的。我们每一个人心里都有一幅心里蓝图，或是一幅自画像，有人称它为运作结果。如果你想象的是做最好的你，那么你就会在你内心的荧光屏上看到一个踌躇满志、不断进取、勇于开拓创新的自我。同时还会经常收到我做的很好，我以后还会做的更好之类的信息，这样你注定会成为一个最好的你。美国哲学家爱默生说:“人的一生正如他一天中所想的那样，你怎么想，怎么期待，就有怎样的人生。”美国有名的钢铁大王安德鲁·卡耐基就是一个充分发挥自己创造机会的楷模。他12岁时由英格兰移居美国，先是在一家纺织厂做工人，当时他的目标是“做全厂最出色的工人。”因为他经常这样想，以这样做，最终他实现了他的目标。后来命运有安排他当邮递员，他想的是怎样成为“全美最杰出的邮递员。”结果他的这一目标也实现了。他的一生总是根据自己所处的环境和地位塑造最佳的自己，他的座右铭就是“相信自己是最棒的。“</p><p>做一个最好的自己，不一定非要当什么“家”，也不一定非要出什么“名”，更不要与别人比高低、比大小。就像人的手指，有大有小，有长有短，他们各有所长，各有所短，你能说拇指比食指好吗?决定最好的你，既不是你拥有的物质财富的多少，也不是你身份的贵贱，关键是看你是否拥有实现自己理想的强烈愿望的程度，看你身上的潜力能否充分发挥。人们熟知的一些英雄模范，就是在平凡的工作岗位上充分发挥人的创新能力，做好自己身边的每一件小事，创造了做好的自己。</p><p>“塑造一个最好的自己”，这个目标人人都可以实现。你只意识到自己是大自然的一分子，坚信自己拥有“无限的能力”与“无限的可能”，这种坚定的信心能帮助你创造和谐的心理、生理韵律，建立起自己理想的自我形象，体现自己人格行为应该具有的魅力。</p>');
INSERT INTO `news` VALUES (108, '2026-03-01 08:04:39', '有了梦想就不会感到疲惫', '一段时间以前，一位在港的大陆用户，因为学业的压力、前途的渺茫等诸多原因，选择了自杀。在讨论和反思的潮流中，有一位毕业生在校内网匿名发表了自己的故事。他说，自己当年在学校也曾经面临绝境，一文不名。他选择了做“乞丐用户”，坚持着念完了课程。回忆的一些情节让我印象深刻，比如，平时偷偷住电梯间，蓬头垢面如乞丐;实在很饿，学校举办餐会的时候默默进场埋头大吃', '社会招聘动态', '焦雷', 'upload/news_headportrait8.jpg', 10, '2026-05-11 12:44:14', 8, 8, 8, 'upload/1778474663322.JPG', '<p>一段时间以前，一位在港的大陆用户，因为学业的压力、前途的渺茫等诸多原因，选择了自杀。在讨论和反思的潮流中，有一位毕业生在校内网匿名发表了自己的故事。他说，自己当年在学校也曾经面临绝境，一文不名。他选择了做“乞丐用户”，坚持着念完了课程。回忆的一些情节让我印象深刻，比如，平时偷偷住电梯间，蓬头垢面如乞丐;实在很饿，学校举办餐会的时候默默进场埋头大吃。</p><p>“峣峣者易折，皎皎者易污。”能够从内地高校到香港读书的学子，都是一些很优秀的年轻人。不知道曾经高居象牙塔的书生，怎样狠下心，咬牙面对那一个天渊般的落差，以及旁人的目光和议论。</p><p>说到这里，很像一个《读者》式的励志故事。但是这种励志故事从来就不缺乏感动人的力量，因为虽然光明的尾巴不是人人都能够拥有，但是人人都有梦想，面对实现过程中的困难，其奋斗或者说挣扎，却常常和平凡如你我的人们相遇。</p><p>《当幸福来敲门/The Pursuit of Happyness》就是这样偶然被看到，又感动了我的电影。黑人克里斯是一名普普通通的医疗器械推销员，妻子忍受不了经济上的压力离开了他，留下5岁的儿子克里斯托夫和他相依为命。克里斯银行账户里只剩下21块钱，因为没钱付房租，他和儿子被撵出了公寓。费尽周折，克里斯赢得了在一家着名股票投资公司实习的机会，但是实习期间没有薪水，而且最终只有一人可以成功进入公司。</p><p>学妹曾经告诉我一个故事，让我每次想到都觉得莫名恐怖。她说，她硕士毕业去广东求职，一个中学要招几个老师，结果南来北往的硕士博士挤了快有一个礼堂。可想而知，竞争有多么残酷。看来，中外求职者都面临着同样的挑战。但是克里斯和许多“80后”的大学毕业生不同，他更加坚韧:为了节省时间，上班时候不喝水，以避免上厕所。以疯狂的速度给客户打电话，打完一个，直接按挂机键就拨下一个电话。白天，克里斯忍受着一次又一次被拒绝的失望，带着微笑在公司和客户之间穿梭。回家，则要带着儿子穿过污秽的街道，忍受房东的咆哮。</p><p>终于，交不起房租的父子俩流落街头。克里斯和儿子在午夜地铁里相对无言，儿子不能理解为什么不能回家住，爸爸却开始玩游戏:“我们通过时光机，到达古代了!”儿子立刻兴奋地配合起来，环顾左右。父子俩在“恐龙”的追杀下，逃到了一个“山洞”里，“山洞”是什么呢，其实是一间男厕所。克里斯搂着熟睡的儿子，坐靠在厕所的墙面。午夜的灯光很惨白，这个消瘦的、营养不良的父亲，默默地流下了泪水。</p><p>父子俩依旧为了幸福到来而努力。他们开始住收容所，面对有限的床位，这个奔跑起来像猎豹一样的人，有时候得把草原上的爆发力运用到打架上面来。儿子在简陋的收容所床上睡着了，父亲还在埋头修理推销的医疗器械，或者翻那本厚厚的笔试全书。</p><p>钱包磨损得厉害，而且，太瘪了，每张钱都很熟悉。老板要借5块钱，犹豫再三，摩挚着纸币，最终还是把钱送了出去。卖血。鲜血在塑料袋里面渗开，那是一个男人所能奉献的最后。拿着卖血的钱，克里斯仍然去买电子元件。一点点的希望，都要去坚持。</p><p>对于父母，最心酸的事儿是什么呢?就是子女的一点可怜的愿望得不到满足。克里斯托夫的惟一的玩偶“美国英雄”，在一次挤车的过程中掉到了地上。5岁的男孩悲伤欲绝，克里斯坚硬的表情下，读出的是面对困难的凶狠和惨痛。但是，无论多么深切的无望，都没有摧毁父子间的亲情与他们的信念，他们相信幸福总会落到自己的身上。“你是个好爸爸”，克里斯托夫跟着爸爸四处流浪，可是孩子的心灵，衡量的砝码和天使是—样的。</p><p>克里斯最终成为了投资公司的员工，看似冷漠的白人老板们，此时显出他们的些微温情。他忍住了泪水，颤抖着拿起自己的物品，走入了茫茫人海。在熙熙攘攘的人群中间，克里斯举起手，为自己鼓掌，那无声的，一下下重重的掌声，是在为自己喝彩。其实，克里斯托夫的“美国英雄”并没有失落。</p><p>这是一个非常典型的“美国梦”:一个人通过自己的努力，可以实现自己的梦想，幸福，会来敲门。很多人往往会关注对于梦想的树立，而往往忽略过程的艰辛。特别是，当面对一个看似无望的现实的时候，有多少人会坚持，多少人会放弃呢?生活总是在不断地修正，并且提醒我们，顺应大潮的人总是较有可能抵达成功的彼岸。可是，确实是有些人，愿意逆流而上。我相信，这是导演对于逆行者的一点鼓励。</p><p>那个香港的匿名毕业生后来博士毕业，找到了一份不错的工作，有了漂亮的妻子和可爱的孩子。这个强人在帖子里说，有什么坚持不下来的呢?只要有梦想</p>');

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
INSERT INTO `newstype` VALUES (91, '2024-03-23 08:04:39', '热门岗位解析');
INSERT INTO `newstype` VALUES (92, '2024-03-23 08:04:39', '劳动权益科普');
INSERT INTO `newstype` VALUES (93, '2024-03-23 08:04:39', '面试通关指南');
INSERT INTO `newstype` VALUES (95, '2024-03-23 08:04:39', '名企内推专区');
INSERT INTO `newstype` VALUES (96, '2024-03-23 08:04:39', '兼职实习信息');
INSERT INTO `newstype` VALUES (97, '2024-03-23 08:04:39', '社会招聘动态');
INSERT INTO `newstype` VALUES (98, '2024-03-23 08:04:39', '应届生校招资讯');

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
) ENGINE = InnoDB AUTO_INCREMENT = 16 CHARACTER SET = utf8 COLLATE = utf8_general_ci COMMENT = '收藏表' ROW_FORMAT = DYNAMIC;

-- ----------------------------
-- Records of storeup
-- ----------------------------
INSERT INTO `storeup` VALUES (1, '2026-04-27 21:21:24', 1777324817192, 49, 'zhaopinxinxi', '优衣库店员', 'upload/BHHHAIFEIAGDI-hd1z34p1Ik.png', '1', '长期兼职', NULL);
INSERT INTO `storeup` VALUES (2, '2026-04-28 06:59:29', 11, 44, 'zhaopinxinxi', '门店店员', 'upload/BHHHACFJIFIIG-T26wUs9AXv.png', '1', '寒暑假专项', NULL);
INSERT INTO `storeup` VALUES (3, '2026-05-10 17:00:00', 1777324817193, 60, 'zhaopinxinxi', '耐克门店销售兼职', 'upload/BHHHACFJGEHGE-6O5CcdfBKJ.png', '1', '周末节假日兼职', NULL);
INSERT INTO `storeup` VALUES (4, '2026-05-10 17:05:00', 1777324817194, 61, 'zhaopinxinxi', '迪卡侬运动顾问兼职', 'upload/BHHHBJCDDEGCI-QKSc5Cjcy2.png', '1', '长期兼职', NULL);
INSERT INTO `storeup` VALUES (5, '2026-05-10 17:10:00', 1777324817195, 64, 'zhaopinxinxi', '宜家家居导购助理', 'upload/BHHHBJCECCACD-6aV05bCaw4.png', '1', '寒暑假专项', NULL);
INSERT INTO `storeup` VALUES (6, '2026-05-10 17:15:00', 1777324817197, 66, 'zhaopinxinxi', '库迪咖啡吧台兼职', 'upload/BHHHBJCDGAHJE-DDnr3Gm0RY.png', '1', '长期兼职', NULL);
INSERT INTO `storeup` VALUES (7, '2026-05-10 17:20:00', 1777324817198, 65, 'zhaopinxinxi', '顺丰快递员兼职', 'upload/BHHHBJCDGAHJE-DDnr3Gm0RY.png', '1', '日结零活', NULL);
INSERT INTO `storeup` VALUES (8, '2026-05-10 17:25:00', 1777324817199, 67, 'zhaopinxinxi', '名创优品理货员', 'upload/BHHHBJCBBEGGI-BW9YbFO0Sm.png', '1', '周末节假日兼职', NULL);
INSERT INTO `storeup` VALUES (9, '2026-05-10 17:30:00', 1777324817200, 69, 'zhaopinxinxi', '书吧图书管理员助理', 'upload/BHHHBJDAAHEGD-OJXtLbyIqU.png', '1', '寒暑假专项', NULL);
INSERT INTO `storeup` VALUES (10, '2026-05-10 17:35:00', 1777324817201, 68, 'zhaopinxinxi', '瑜伽馆前台接待', 'upload/BHHHBJCEEHIGI-annYBxego4.png', '1', '线上远程兼职', NULL);
INSERT INTO `storeup` VALUES (13, '2026-05-12 15:54:24', 21, 49, 'zhaopinxinxi', '优衣库店员', 'upload/BHHHAIFEIAGDI-hd1z34p1Ik.png', '1', '长期兼职', NULL);
INSERT INTO `storeup` VALUES (15, '2026-05-17 09:00:59', 1778510276339, 63, 'zhaopinxinxi', 'DHL快递分拣员', 'upload/BHHIEAJHABDEE-cA9hZigGmS.png', '1', '短期兼职', NULL);

-- ----------------------------
-- Table structure for students
-- ----------------------------
DROP TABLE IF EXISTS `students`;
CREATE TABLE `students`  (
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
) ENGINE = InnoDB AUTO_INCREMENT = 1777324817203 CHARACTER SET = utf8 COLLATE = utf8_general_ci COMMENT = '用户' ROW_FORMAT = DYNAMIC;

-- ----------------------------
-- Records of students
-- ----------------------------
INSERT INTO `students` VALUES (11, '2024-03-23 08:04:38', 'xyy', 'e10adc3949ba59abbe56e057f20f883e', '赵立峰', '男', 25, '本科', '大连理工大学', 'upload/BHHGFBEJHDDCI-meuDb1j0cZ.png', '17044120066');
INSERT INTO `students` VALUES (12, '2024-03-23 08:04:38', '爆赞', 'e10adc3949ba59abbe56e057f20f883e', '户晨封', '男', 21, '大专', '河南职业学校', 'upload/BHHGFBEGDDIBA-x1kpJJvOCI.jpeg', '13416270979');
INSERT INTO `students` VALUES (13, '2024-03-23 08:04:38', 'asen', 'e10adc3949ba59abbe56e057f20f883e', '艾志恒', '男', 23, '本科', '重庆大学', 'upload/Snipaste_2026-04-18_21-09-07.png', '19025177618');
INSERT INTO `students` VALUES (14, '2024-03-23 08:04:38', 'sunshine', 'e10adc3949ba59abbe56e057f20f883e', '金凯瑞', '男', 24, '博士研究生', '清华大学', 'upload/Snipaste_2026-04-18_21-11-53.png', '18261646244');
INSERT INTO `students` VALUES (15, '2024-03-23 08:04:38', '走走停停', 'e10adc3949ba59abbe56e057f20f883e', '吴迪', '男', 27, '硕士研究生', '武汉大学', 'upload/Snipaste_2026-04-18_21-13-13.png', '18780548454');
INSERT INTO `students` VALUES (16, '2024-03-23 08:04:38', '饮食男女', 'e10adc3949ba59abbe56e057f20f883e', '朱家倩', '女', 26, '博士研究生', '哈尔滨工业大学', 'upload/Snipaste_2026-04-18_21-16-23.png', '17263974148');
INSERT INTO `students` VALUES (17, '2024-03-23 08:04:38', '情书', 'e10adc3949ba59abbe56e057f20f883e', '赵渡边', '女', 27, '博士研究生', '南京大学', 'upload/Snipaste_2026-04-18_21-21-34.png', '17018864729');
INSERT INTO `students` VALUES (18, '2024-03-23 08:04:38', '小武', 'e10adc3949ba59abbe56e057f20f883e', '王小武', '男', 18, '大专', '陕西职业技术学院', 'upload/Snipaste_2026-04-18_21-26-06.png', '17080802902');
INSERT INTO `students` VALUES (19, '2026-04-18 10:58:01', 'wutangforever', 'e10adc3949ba59abbe56e057f20f883e', '李德可', '男', 22, '本科', '深圳大学', 'upload/IMG_3986.JPG', '19270546258');
INSERT INTO `students` VALUES (20, '2026-04-18 12:09:41', 'doom', 'e10adc3949ba59abbe56e057f20f883e', '杜穆', '男', 19, '本科', '湖南大学', 'upload/IMG_6046.JPG', '15033981036');
INSERT INTO `students` VALUES (21, '2026-04-27 21:20:17', '卡力老虎', 'e10adc3949ba59abbe56e057f20f883e', '樊泽', '男', 25, '大专', '河南职业学院', 'upload/1777324815283.png', '16934589310');
INSERT INTO `students` VALUES (22, '2026-05-10 12:00:00', 'liuyang2026', 'e10adc3949ba59abbe56e057f20f883e', '刘洋', '女', 22, '本科', '郑州大学', 'upload/IMG_243891958.jpg', '13837788899');
INSERT INTO `students` VALUES (23, '2026-05-10 12:05:00', 'chenhao2026', 'e10adc3949ba59abbe56e057f20f883e', '陈浩', '男', 21, '本科', '河南大学', 'upload/IMG_8416.JPG', '15937788800');
INSERT INTO `students` VALUES (24, '2026-05-10 12:10:00', 'wangjing2026', 'e10adc3949ba59abbe56e057f20f883e', '王静', '女', 23, '硕士研究生', '华中科技大学', 'upload/IMG_8417.JPG', '18737788811');
INSERT INTO `students` VALUES (25, '2026-05-10 12:15:00', 'zhangwei2026', 'e10adc3949ba59abbe56e057f20f883e', '张伟', '男', 20, '大专', '郑州职业技术学院', 'upload/IMG_8418.JPG', '17637788822');
INSERT INTO `students` VALUES (26, '2026-05-10 12:20:00', 'lixia2026', 'e10adc3949ba59abbe56e057f20f883e', '李霞', '女', 24, '本科', '中南财经政法大学', 'upload/IMG_8419.JPG', '19937788833');
INSERT INTO `students` VALUES (1777324817198, '2026-05-10 12:25:00', 'zhaolei2026', 'e10adc3949ba59abbe56e057f20f883e', '赵磊', '男', 22, '本科', '武汉理工大学', 'upload/IMG_8420.JPG', '15037788844');
INSERT INTO `students` VALUES (1777324817199, '2026-05-10 12:30:00', 'sunyan2026', 'e10adc3949ba59abbe56e057f20f883e', '孙燕', '女', 21, '大专', '河南财政金融学院', 'upload/IMG_8422.JPG', '13337788855');
INSERT INTO `students` VALUES (1777324817200, '2026-05-10 12:35:00', 'zhoujie2026', 'e10adc3949ba59abbe56e057f20f883e', '周杰', '男', 23, '本科', '中国地质大学', 'upload/IMG_2149.JPG', '18837788866');
INSERT INTO `students` VALUES (1777324817201, '2026-05-10 12:40:00', 'wufang2026', 'e10adc3949ba59abbe56e057f20f883e', '吴芳', '女', 22, '硕士研究生', '华中师范大学', 'upload/B695993A-AA7B-4133-8119-B6B2024F5F3A.png', '17737788877');
INSERT INTO `students` VALUES (1777324817202, '2026-05-10 12:45:00', 'huangbo2026', 'e10adc3949ba59abbe56e057f20f883e', '黄波', '男', 20, '本科', '郑州轻工业大学', 'upload/1B9F643C-4513-4043-B7CD-5224231010AA.png', '15537788888');

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
INSERT INTO `systemintro` VALUES (1, '2024-03-23 08:04:39', '系统简介', 'SYSTEM INTRODUCTION', '<p>本平台是一套功能完善、操作便捷的一站式兼职招聘服务系统，采用前后端分离架构设计，界面简洁直观，响应迅速，为求职者和企业提供全流程的线上招聘求职服务，系统主要包含首页、招聘信息、论坛交流、招聘资讯、留言板、我的简历六大核心功能模块，首页整合了平台核心内容，展示热门兼职岗位、最新招聘资讯与平台公告，让用户快速获取关键信息，直观了解平台动态，招聘信息板块汇聚海量真实岗位，支持按兼职类型、工作地点、薪资范围、工作时间等多维度精准筛选，用户可一键查看岗位详情，快速投递简历，论坛交流板块打造了开放的求职交流社区，用户可在此分享求职经验、避坑指南、兼职心得，也可提问求助，与其他求职者互动交流，共同成长，招聘资讯板块实时更新行业动态、求职技巧、劳动权益科普等内容，帮助用户了解市场趋势，提升求职能力，增强维权意识，留言板板块搭建了用户与平台沟通的桥梁，用户可在此反馈问题、提出建议，我们会及时响应并处理，不断优化平台体验，我的简历板块支持在线填写简易简历与上传附件简历双模式，用户可随时编辑、保存、更新个人信息，灵活适配不同岗位的投递需求，整个系统围绕用户体验设计，操作流程简单易懂，无需复杂学习即可快速上手，全方位满足求职者找工作和企业招人才的核心需求。</p>', 'upload/1777300377288.JPG', 'upload/1777300386679.JPG', 'upload/1777300393493.JPG');

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
) ENGINE = InnoDB AUTO_INCREMENT = 24 CHARACTER SET = utf8 COLLATE = utf8_general_ci COMMENT = 'token表' ROW_FORMAT = DYNAMIC;

-- ----------------------------
-- Records of token
-- ----------------------------
INSERT INTO `token` VALUES (1, 1, 'admin', 'users', '管理员', 'dmzka5mreu6xsul3inlokn4zjpraqtq5', '2024-03-23 08:23:15', '2026-05-17 21:23:23');
INSERT INTO `token` VALUES (2, 21, '企业账号1', 'zhaopingongsi', '招聘公司', 'r4tayi7jev565m93tohr25lj58eli94l', '2026-04-17 16:13:36', '2026-04-18 01:13:36');
INSERT INTO `token` VALUES (3, 11, '账号1', 'xuesheng', '用户', 'ywhl0kq8p7pfigp1ey38uxk8fk2g8d0z', '2026-04-17 16:14:09', '2026-05-11 23:36:22');
INSERT INTO `token` VALUES (4, 1776509881846, 'wutangforever', 'xuesheng', '用户', 'uiaxzyrhheu45ycthvul10mb2cosfyiw', '2026-04-18 10:58:39', '2026-04-18 19:58:40');
INSERT INTO `token` VALUES (5, 12, 'baozan', 'xuesheng', '用户', 'kd34893ede79m7ekitv7xxe4h5qikzay', '2026-04-18 12:13:47', '2026-05-17 18:22:14');
INSERT INTO `token` VALUES (6, 18, '小武', 'xuesheng', '用户', 'uuk6zsqrcyotenf7gue8ojkq5x5i6hvd', '2026-04-19 10:33:18', '2026-04-21 22:42:33');
INSERT INTO `token` VALUES (7, 15, '走走停停', 'xuesheng', '用户', 'yo2rtjflnhin3yiu6qpkt5afyd8bq4pg', '2026-04-21 13:38:51', '2026-04-28 06:06:59');
INSERT INTO `token` VALUES (8, 19, 'wutangforever', 'xuesheng', '用户', 'm1884qrh2gd2s1dl4i789fobpbmtdexx', '2026-04-21 13:43:27', '2026-04-24 21:31:08');
INSERT INTO `token` VALUES (9, 24, 'kfc', 'zhaopingongsi', '招聘公司', '01vc5xa5srvmti8f9qayx6hnzziyo6js', '2026-04-24 07:21:06', '2026-04-28 17:18:11');
INSERT INTO `token` VALUES (10, 27, '配送', 'zhaopingongsi', '招聘公司', 'u9nhipudi8n85coqs2ejr0io2l5jm1ur', '2026-04-24 11:33:05', '2026-04-24 21:05:26');
INSERT INTO `token` VALUES (11, 16, '饮食男女', 'xuesheng', '用户', '7ywvpeclpca51tu41mf5ajy6kaeogvgg', '2026-04-24 12:29:45', '2026-04-25 21:07:57');
INSERT INTO `token` VALUES (12, 14, 'sunshine', 'xuesheng', '用户', 'cw61u3yq96wx87t7kmtsu5td7ek2x9s6', '2026-04-24 12:34:19', '2026-04-24 21:34:19');
INSERT INTO `token` VALUES (13, 22, 'adidas', 'zhaopingongsi', '招聘公司', 'tndu6cva5y7ssc3jvfsfwfab8xwzv7u1', '2026-04-24 12:35:49', '2026-04-24 21:35:49');
INSERT INTO `token` VALUES (14, 32, 'uniqlo', 'zhaopingongsi', '招聘公司', 'z3kygz65ac88yj76shxss4zcfhdnqpry', '2026-04-25 02:41:06', '2026-04-25 11:41:07');
INSERT INTO `token` VALUES (15, 30, 'starbuck', 'zhaopingongsi', '招聘公司', 'jfwpidu2dhdf9zlpyuc1npkximjc3nty', '2026-04-25 02:52:35', '2026-04-25 11:52:36');
INSERT INTO `token` VALUES (16, 13, 'asen', 'xuesheng', '用户', 'bsc523qqy0uhbwtrrm2y3olt1wfxpwto', '2026-04-26 09:07:23', '2026-04-28 16:17:45');
INSERT INTO `token` VALUES (17, 20, 'doom', 'xuesheng', '用户', '9rzjg2e7dprzoy5rcfckekbxo1jfttyq', '2026-04-26 12:41:18', '2026-04-26 21:41:18');
INSERT INTO `token` VALUES (18, 29, 'hello', 'zhaopingongsi', '招聘公司', 'qr7g2k231tyrqpucvkw5mln9g3q7hp2q', '2026-04-26 12:43:25', '2026-04-26 21:43:25');
INSERT INTO `token` VALUES (19, 1777324817192, '卡力老虎', 'xuesheng', '用户', '6b164xa4zyfej5pry3nn1r0lt5qp1cjt', '2026-04-27 21:21:12', '2026-05-10 18:08:42');
INSERT INTO `token` VALUES (20, 40, 'xinhua_bookstore', 'zhaopingongsi', '招聘公司', 'qacaeqsrtvui9bb54tbsjblofyvhrdbz', '2026-04-27 21:44:11', '2026-05-17 21:22:17');
INSERT INTO `token` VALUES (21, 21, '卡力老虎', 'xuesheng', '用户', 'gv97p7fzzvw7tgsg0xsk874dh9n91vts', '2026-05-11 04:35:58', '2026-05-17 18:09:06');
INSERT INTO `token` VALUES (22, 48, 'cotti_coffee', 'zhaopingongsi', '招聘公司', 'glq4ebx7umkgy1nn3jidzjjuavghkbbp', '2026-05-11 04:40:19', '2026-05-11 13:40:19');
INSERT INTO `token` VALUES (23, 1778510276339, '1', 'xuesheng', '用户', 'jb9vvfi1utf05knqbxharbpimhrvnjlz', '2026-05-11 14:38:12', '2026-05-17 18:00:13');

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
  `jianlileixing` tinyint(1) NULL DEFAULT 0 COMMENT 'jianlileixing',
  `toudibeizhu` varchar(200) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '投递备注',
  `toudiriqi` date NULL DEFAULT NULL COMMENT '投递日期',
  `sfsh` varchar(200) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT '待审核' COMMENT '是否审核',
  `shhf` longtext CHARACTER SET utf8 COLLATE utf8_general_ci NULL COMMENT '审核回复',
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 123 CHARACTER SET = utf8 COLLATE = utf8_general_ci COMMENT = '投递信息' ROW_FORMAT = DYNAMIC;

-- ----------------------------
-- Records of toudixinxi
-- ----------------------------
INSERT INTO `toudixinxi` VALUES (59, '2026-04-24 11:29:00', '3名日结工/711送零食-一日一结', 'upload/BHHHCJDAGDBIB-a1i9rDLJI4.png', '短期兼职', '配送', '沈阳市蓝胖子配送服务有限公司', '贾淑艳', 1, '性压抑', '赵立峰', '13823888881', '本科', '大连理工大学', '', 0, '', '2026-02-06', '是', NULL);
INSERT INTO `toudixinxi` VALUES (60, '2026-04-24 11:29:23', '蜜雪冰城招聘奶茶店店员', 'upload/BHHHACFEJDGCE-xj9LONwUcJ.png', '长期兼职', 'mixuebingcheng', '蜜雪冰城股份有限公司', '王小曼', 1, '性压抑', '赵立峰', '13823888881', '本科', '大连理工大学', '', 0, '', '2026-04-24', '是', NULL);
INSERT INTO `toudixinxi` VALUES (61, '2026-04-24 11:29:42', '数据运营', 'upload/BHHHACFCJEFHA-n58a5DF1So.png', '短期兼职', 'hello', '上海哈啰普惠科技有限公司', '赵哲会', 1, '性压抑', '赵立峰', '13823888881', '本科', '大连理工大学', '', 0, '', '2026-03-24', '是', NULL);
INSERT INTO `toudixinxi` VALUES (62, '2026-04-24 12:29:59', '3名日结工/711送零食-一日一结', 'upload/BHHHCJDAGDBIB-a1i9rDLJI4.png', '短期兼职', '配送', '沈阳市蓝胖子配送服务有限公司', '贾淑艳', 1, '饮食男女', '朱家倩', '13823888886', '博士研究生', '哈尔滨工业大学', '', 0, '', '2026-04-24', '是', NULL);
INSERT INTO `toudixinxi` VALUES (63, '2026-04-24 12:30:11', '数据运营', 'upload/BHHHACFCJEFHA-n58a5DF1So.png', '短期兼职', 'hello', '上海哈啰普惠科技有限公司', '赵哲会', 1, '饮食男女', '朱家倩', '13823888886', '博士研究生', '哈尔滨工业大学', '', 0, '', '2026-03-10', '是', '');
INSERT INTO `toudixinxi` VALUES (64, '2026-04-24 12:30:29', '阿迪达斯郑州二七杉杉店兼职', 'upload/BHHHACFJGEHGE-6O5CcdfBKJ.png', '周末节假日兼职', 'Adidas', '阿迪达斯体育中国有限公司', '李雪琪', 1, '饮食男女', '朱家倩', '13823888886', '博士研究生', '哈尔滨工业大学', '', 0, '', '2026-04-26', '是', NULL);
INSERT INTO `toudixinxi` VALUES (66, '2026-04-24 12:31:38', '超市配送员，超时无罚款，可日结可就近', 'upload/BHHHACDIAHECJ-Z3OFDdjiPT.png', '日结零活', 'hmxs', '上海盒马科技有限公司', '李先生', 1, 'wutangforever', '李德可', '15635548630', '本科', '深圳大学', '', 0, '', '2026-03-10', '是', NULL);
INSERT INTO `toudixinxi` VALUES (67, '2026-04-24 12:31:53', '数据运营', 'upload/BHHHACFCJEFHA-n58a5DF1So.png', '短期兼职', 'hello', '上海哈啰普惠科技有限公司', '赵哲会', 1, 'wutangforever', '李德可', '15635548630', '本科', '深圳大学', '', 0, '', '2026-02-15', '是', NULL);
INSERT INTO `toudixinxi` VALUES (68, '2026-04-24 12:32:20', '门店店员', 'upload/BHHHACFJIFIIG-T26wUs9AXv.png', '寒暑假专项', '宠物', '郑州乐臣宠物用品有限公司', '刘景赢', 1, 'wutangforever', '李德可', '15635548630', '本科', '深圳大学', '', 0, '', '2026-03-31', '是', NULL);
INSERT INTO `toudixinxi` VALUES (69, '2026-04-24 12:34:27', '每天200元日结小故事电台\r\n读文', 'upload/BHHHACDHEBBJJ-hKlhhIi0k8.png', '	\r\n线上远程兼职', 'feixing', '肃州飞鑫文化传媒有限公司', '朱光薛', 1, 'sunshine', '金凯瑞', '13823888884', '博士研究生', '清华大学', '', 0, '', '2026-03-24', '是', NULL);
INSERT INTO `toudixinxi` VALUES (70, '2026-04-24 12:34:53', '门店店员', 'upload/BHHHACFJIFIIG-T26wUs9AXv.png', '寒暑假专项', '宠物', '郑州乐臣宠物用品有限公司', '刘景赢', 1, 'sunshine', '金凯瑞', '13823888884', '博士研究生', '清华大学', '', 0, '', '2026-04-24', '是', NULL);
INSERT INTO `toudixinxi` VALUES (71, '2026-04-24 12:35:16', '蜜雪冰城招聘奶茶店店员', 'upload/BHHHACFEJDGCE-xj9LONwUcJ.png', '长期兼职', 'mixuebingcheng', '蜜雪冰城股份有限公司', '王小曼', 1, 'sunshine', '金凯瑞', '13823888884', '博士研究生', '清华大学', '', 0, '', '2026-02-06', '是', NULL);
INSERT INTO `toudixinxi` VALUES (74, '2026-04-26 09:06:54', '居家线上远程客服', 'upload/BHHHBJCJGAFCB-uSBJmjTvPu.png', '线上远程兼职', 'ecom_kefu', '郑州云商电商科技有限公司', '张鑫', 1, 'xyy', '赵立峰', '17044120066', '本科', '大连理工大学', '', 0, '', '2026-04-02', '是', NULL);
INSERT INTO `toudixinxi` VALUES (75, '2026-04-26 09:07:35', '兼职咖啡师', 'upload/BHHHAIFFJCIHJ-IPc12j8zrd.png', '短期兼职', 'starbuck', '星巴克企业管理（中国）有限公司', '李先生', 1, 'asen', '艾志恒', '19025177618', '本科', '重庆大学', '', 0, '', '2026-04-02', '是', NULL);
INSERT INTO `toudixinxi` VALUES (76, '2026-04-26 09:07:46', '外卖配送员（日结）', 'upload/BHHHBJDAGGACE-06LFdvlT76.png', '日结零活', 'eleme_delivery', '饿了么郑州城市运营中心', '黄涛', 1, 'asen', '艾志恒', '19025177618', '本科', '重庆大学', '', 0, '', '2026-04-26', '是', NULL);
INSERT INTO `toudixinxi` VALUES (77, '2026-04-26 09:08:18', '超市配送员，超时无罚款，可日结可就近', 'upload/BHHHACDIAHECJ-Z3OFDdjiPT.png', '日结零活', 'hmxs', '上海盒马科技有限公司', '李先生', 1, 'asen', '艾志恒', '19025177618', '本科', '重庆大学', '', 0, '', '2026-04-24', '是', NULL);
INSERT INTO `toudixinxi` VALUES (78, '2026-04-26 09:08:32', '优衣库店员', 'upload/BHHHAIFEIAGDI-hd1z34p1Ik.png', '长期兼职', 'uniqlo', '迅销（中国）商贸有限公司', '张千越', 1, 'asen', '艾志恒', '19025177618', '本科', '重庆大学', '', 0, '', '2026-04-24', '是', NULL);
INSERT INTO `toudixinxi` VALUES (79, '2026-04-27 21:07:39', '蜜雪冰城招聘奶茶店店员', 'upload/BHHHACFEJDGCE-xj9LONwUcJ.png', '长期兼职', 'mixuebingcheng', '蜜雪冰城股份有限公司', '王小曼', 1, '走走停停', '吴迪', '18780548454', '硕士研究生', '武汉大学', '', 0, '', '2026-04-02', '待审核', NULL);
INSERT INTO `toudixinxi` VALUES (80, '2026-04-27 21:21:49', '居家线上远程客服', 'upload/BHHHBJCJGAFCB-uSBJmjTvPu.png', '线上远程兼职', 'ecom_kefu', '郑州云商电商科技有限公司', '张鑫', 1, '卡力老虎', '樊泽', '16934589310', '大专', '河南职业学院', '', 0, '', '2026-04-24', '待审核', NULL);
INSERT INTO `toudixinxi` VALUES (82, '2026-04-27 21:42:25', '寒暑假书店整理员', 'upload/BHHHBJDAAHEGD-OJXtLbyIqU.png', '寒暑假专项', 'xinhua_bookstore', '郑州新华书店有限公司', '刘芳', 1, '卡力老虎', '樊泽', '16934589310', '大专', '河南职业学院', 'upload/1777326092601.docx', 0, '', '2026-04-28', '否', '');
INSERT INTO `toudixinxi` VALUES (83, '2026-04-28 07:18:15', '中牟肯德基服务员直聘J19488', 'upload/BHHHABEIABEID-5JNrWKvyIT.png', '长期兼职', 'kfc', '郑州肯德基有限公司', '王女士', 1, 'asen', '艾志恒', '19025177618', '本科', '重庆大学', '', 0, '', '2026-04-28', '是', '');
INSERT INTO `toudixinxi` VALUES (84, '2026-05-10 06:01:47', '寒暑假书店整理员', 'upload/BHHHBJDAAHEGD-OJXtLbyIqU.png', '寒暑假专项', 'xinhua_bookstore', '郑州新华书店有限公司', '刘芳', 1, 'xyy', '赵立峰', '17044120066', '本科', '大连理工大学', 'upload/1778392905321.docx', 0, '', '2026-05-10', '是', '');
INSERT INTO `toudixinxi` VALUES (85, '2026-05-10 06:40:27', '居家线上远程客服', 'upload/BHHHBJCJGAFCB-uSBJmjTvPu.png', '线上远程兼职', 'ecom_kefu', '郑州云商电商科技有限公司', '张鑫', 1, 'xyy', '赵立峰', '17044120066', '本科', '大连理工大学', '', 1, '', '2026-05-10', '待审核', NULL);
INSERT INTO `toudixinxi` VALUES (86, '2026-05-10 06:41:18', '寒暑假书店整理员', 'upload/BHHHBJDAAHEGD-OJXtLbyIqU.png', '寒暑假专项', 'xinhua_bookstore', '郑州新华书店有限公司', '刘芳', 1, 'xyy', '赵立峰', '17044120066', '本科', '大连理工大学', '', 1, '', '2026-05-10', '是', '');
INSERT INTO `toudixinxi` VALUES (88, '2026-05-10 14:00:00', '耐克门店销售兼职', 'upload/BHHIEAJFFFICB-JdUB7481kq.png', '周末节假日兼职', 'nike_zhengzhou', '耐克体育（中国）有限公司郑州分公司', '周敏', 1, 'liuyang2026', '刘洋', '13837788899', '本科', '郑州大学', '', 1, '有零售兼职经验，周末可全勤', '2026-05-10', '待审核', NULL);
INSERT INTO `toudixinxi` VALUES (89, '2026-05-10 14:05:00', '迪卡侬运动顾问兼职', 'upload/BHHIEAJGADIIJ-OD5jgRkVzp.png', '长期兼职', 'decathlon_zz', '迪卡侬体育用品（郑州）有限公司', '吴刚', 1, 'chenhao2026', '陈浩', '15937788800', '本科', '河南大学', '', 1, '体育学院学生，热爱运动，有销售经验', '2026-05-10', '待审核', NULL);
INSERT INTO `toudixinxi` VALUES (90, '2026-05-10 14:10:00', 'DHL快递分拣员', 'upload/BHHIEAJHABDEE-cA9hZigGmS.png', '短期兼职', 'dhl_express', 'DHL国际快递郑州营业部', '陈伟', 1, 'zhangwei2026', '张伟', '17637788822', '大专', '郑州职业技术学院', '', 0, '能吃苦耐劳，接受夜班', '2026-05-10', '待审核', NULL);
INSERT INTO `toudixinxi` VALUES (91, '2026-05-10 14:15:00', '库迪咖啡吧台兼职', 'upload/BHHIEAJIBFDBB-bRjhOmOzWv.png', '长期兼职', 'cotti_coffee', '库迪咖啡（郑州）连锁有限公司', '赵芳', 1, 'lixia2026', '李霞', '19937788833', '本科', '中南财经政法大学', '', 1, '有星巴克兼职经验，能快速上手', '2026-05-10', '是', '可以');
INSERT INTO `toudixinxi` VALUES (92, '2026-05-10 14:20:00', '顺丰快递员兼职', 'upload/BHHIEAJHHJBIA-cRMGHEgDFm.png', '日结零活', 'sf_express_zz', '顺丰速运郑州金水区分部', '王强', 1, 'zhaolei2026', '赵磊', '15037788844', '本科', '武汉理工大学', '', 0, '自带电动车，熟悉金水区路线', '2026-05-10', '待审核', NULL);
INSERT INTO `toudixinxi` VALUES (93, '2026-05-10 14:25:00', '名创优品理货员', 'upload/BHHIEAJIHBEAA-ENYFOjU6Pp.png', '周末节假日兼职', 'miniso_zz', '名创优品（郑州）商贸有限公司', '刘洋', 1, 'sunyan2026', '孙燕', '13337788855', '大专', '河南财政金融学院', '', 0, '细心有条理，周末可到岗', '2026-05-10', '待审核', NULL);
INSERT INTO `toudixinxi` VALUES (94, '2026-05-10 14:30:00', '书吧图书管理员助理', 'upload/BHHIEAJJEEHCF-wBoxcbu7nx.png', '寒暑假专项', 'bookcafe_zz', '郑州漫咖啡书吧文化传播有限公司', '马文', 1, 'zhoujie2026', '周杰', '18837788866', '本科', '中国地质大学', '', 1, '热爱阅读，文笔好，适合此岗位', '2026-05-10', '待审核', NULL);
INSERT INTO `toudixinxi` VALUES (95, '2026-05-10 14:35:00', '瑜伽馆前台接待', 'upload/BHHIEAJJBEHCA-vy1NfKSzLb.png', '线上远程兼职', 'yoga_studio', '郑州瑜伽时光健身工作室', '张婷', 1, 'wufang2026', '吴芳', '17737788877', '硕士研究生', '华中师范大学', '', 0, '气质优雅，有瑜伽练习基础', '2026-05-10', '待审核', NULL);
INSERT INTO `toudixinxi` VALUES (96, '2026-05-10 14:40:00', '麦当劳餐厅服务员', 'upload/BHHIEAJGFFDAA-c0scrzJVxy.png', '日结零活', 'mcdonalds_zz', '麦当劳（郑州）餐饮管理有限公司', '孙丽', 1, 'huangbo2026', '黄波', '15537788888', '本科', '郑州轻工业大学', '', 0, '时间灵活，能接受早晚班', '2026-05-10', '待审核', NULL);
INSERT INTO `toudixinxi` VALUES (97, '2026-05-10 14:45:00', '宜家家居导购助理', 'upload/BHHIEAJHFDIBH-qJrsezIhXi.png', '寒暑假专项', 'ikea_zhengzhou', '宜家家居（郑州）商场', '李娜', 1, 'wangjing2026', '王静', '18737788811', '硕士研究生', '华中科技大学', '', 1, '对家居装饰有兴趣，形象气质佳', '2026-05-10', '待审核', NULL);
INSERT INTO `toudixinxi` VALUES (98, '2026-02-15 09:30:00', '蜜雪冰城招聘奶茶店店员', 'upload/BHHHACFEJDGCE-xj9LONwUcJ.png', '长期兼职', 'mixuebingcheng', '蜜雪冰城股份有限公司', '王小曼', 1, 'chenhao2026', '陈浩', '15937788800', '本科', '河南大学', '', 0, '热爱饮品制作，有相关经验', '2026-02-15', '待审核', NULL);
INSERT INTO `toudixinxi` VALUES (99, '2026-02-20 14:15:00', '阿迪达斯郑州二七杉杉店兼职', 'upload/BHHHACFJGEHGE-6O5CcdfBKJ.png', '周末节假日兼职', 'Adidas', '阿迪达斯体育中国有限公司', '李雪琪', 1, 'wangjing2026', '王静', '18737788811', '硕士研究生', '华中科技大学', '', 1, '形象气质佳，周末可到岗', '2026-02-20', '是', '面试通过');
INSERT INTO `toudixinxi` VALUES (100, '2026-03-05 10:45:00', '数据运营', 'upload/BHHHACFCJEFHA-n58a5DF1So.png', '短期兼职', 'hello', '上海哈啰普惠科技有限公司', '赵哲会', 1, 'zhangwei2026', '张伟', '17637788822', '大专', '郑州职业技术学院', '', 0, '对数据分析感兴趣', '2026-03-05', '待审核', NULL);
INSERT INTO `toudixinxi` VALUES (101, '2026-03-12 16:20:00', '门店店员', 'upload/BHHHACFJIFIIG-T26wUs9AXv.png', '寒暑假专项', '宠物', '郑州乐臣宠物用品有限公司', '刘景赢', 1, 'lixia2026', '李霞', '19937788833', '本科', '中南财经政法大学', '', 1, '喜欢小动物，有耐心', '2026-03-12', '是', '已录取');
INSERT INTO `toudixinxi` VALUES (102, '2026-03-18 11:00:00', '3名日结工/711送零食-一日一结', 'upload/BHHHCJDAGDBIB-a1i9rDLJI4.png', '短期兼职', '配送', '沈阳市蓝胖子配送服务有限公司', '贾淑艳', 1, 'zhaolei2026', '赵磊', '15037788844', '本科', '武汉理工大学', '', 0, '体力好，能吃苦', '2026-03-18', '否', '岗位已满');
INSERT INTO `toudixinxi` VALUES (103, '2026-03-25 13:30:00', '超市配送员，超时无罚款，可日结可就近', 'upload/BHHHACDIAHECJ-Z3OFDdjiPT.png', '日结零活', 'hmxs', '上海盒马科技有限公司', '李先生', 1, 'sunyan2026', '孙燕', '13337788855', '大专', '河南财政金融学院', '', 0, '自带电动车，熟悉路线', '2026-03-25', '待审核', NULL);
INSERT INTO `toudixinxi` VALUES (104, '2026-04-02 09:15:00', '每天200元日结小故事电台读文', 'upload/BHHHACDHEBBJJ-hKlhhIi0k8.png', '线上远程兼职', 'feixing', '肃州飞鑫文化传媒有限公司', '朱光薛', 1, 'zhoujie2026', '周杰', '18837788866', '本科', '中国地质大学', '', 1, '声音好听，有播音经验', '2026-04-02', '是', '试音通过');
INSERT INTO `toudixinxi` VALUES (105, '2026-04-08 15:45:00', '中牟肯德基服务员直聘J19488', 'upload/BHHHABEIABEID-5JNrWKvyIT.png', '长期兼职', 'kfc', '郑州肯德基有限公司', '王女士', 1, 'wufang2026', '吴芳', '17737788877', '硕士研究生', '华中师范大学', '', 0, '时间灵活，可长期', '2026-04-08', '待审核', NULL);
INSERT INTO `toudixinxi` VALUES (106, '2026-04-15 10:30:00', '优衣库店员', 'upload/BHHHAIFEIAGDI-hd1z34p1Ik.png', '长期兼职', 'uniqlo', '迅销（中国）商贸有限公司', '张千越', 1, 'huangbo2026', '黄波', '15537788888', '本科', '郑州轻工业大学', '', 0, '对服装零售有兴趣', '2026-04-15', '是', '面试待定');
INSERT INTO `toudixinxi` VALUES (107, '2026-04-20 14:00:00', '兼职咖啡师', 'upload/BHHHAIFFJCIHJ-IPc12j8zrd.png', '短期兼职', 'starbuck', '星巴克企业管理（中国）有限公司', '李先生', 1, 'liuyang2026', '刘洋', '13837788899', '本科', '郑州大学', '', 1, '有咖啡师证，经验丰富', '2026-04-20', '是', '已录取');
INSERT INTO `toudixinxi` VALUES (108, '2026-04-22 11:20:00', '瑞幸咖啡门店长期店员', 'upload/BHHHBJCIHEDEF-D53ttmwlFC.png', '长期兼职', 'luckin_coffee', '瑞幸咖啡（郑州）有限公司', '林晓', 1, 'chenhao2026', '陈浩', '15937788800', '本科', '河南大学', '', 0, '学习能力强，能适应快节奏', '2026-04-22', '待审核', NULL);
INSERT INTO `toudixinxi` VALUES (109, '2026-04-25 16:50:00', '外卖配送员（日结）', 'upload/BHHHBJDAGGACE-06LFdvlT76.png', '日结零活', 'eleme_delivery', '饿了么郑州城市运营中心', '黄涛', 1, 'zhangwei2026', '张伟', '17637788822', '大专', '郑州职业技术学院', '', 0, '吃苦耐劳，多劳多得', '2026-04-25', '是', '已通过');
INSERT INTO `toudixinxi` VALUES (111, '2026-05-01 13:10:00', '居家线上远程客服', 'upload/BHHHBJCJGAFCB-uSBJmjTvPu.png', '线上远程兼职', 'ecom_kefu', '郑州云商电商科技有限公司', '张鑫', 1, 'lixia2026', '李霞', '19937788833', '本科', '中南财经政法大学', '', 1, '打字速度快，沟通能力强', '2026-05-01', '是', '培训中');
INSERT INTO `toudixinxi` VALUES (112, '2026-05-03 10:25:00', '耐克门店销售兼职', 'upload/BHHIEAJFFFICB-JdUB7481kq.png', '周末节假日兼职', 'nike_zhengzhou', '耐克体育（中国）有限公司郑州分公司', '周敏', 1, 'zhaolei2026', '赵磊', '15037788844', '本科', '武汉理工大学', '', 0, '热爱运动，有销售经验', '2026-05-03', '待审核', NULL);
INSERT INTO `toudixinxi` VALUES (113, '2026-05-05 15:35:00', '迪卡侬运动顾问兼职', 'upload/BHHIEAJGADIIJ-OD5jgRkVzp.png', '长期兼职', 'decathlon_zz', '迪卡侬体育用品（郑州）有限公司', '吴刚', 1, 'sunyan2026', '孙燕', '13337788855', '大专', '河南财政金融学院', '', 0, '性格开朗，喜欢运动', '2026-05-05', '是', '面试通过');
INSERT INTO `toudixinxi` VALUES (114, '2026-05-06 11:50:00', '麦当劳餐厅服务员', 'upload/BHHIEAJGFFDAA-c0scrzJVxy.png', '日结零活', 'mcdonalds_zz', '麦当劳（郑州）餐饮管理有限公司', '孙丽', 1, 'zhoujie2026', '周杰', '18837788866', '本科', '中国地质大学', '', 0, '时间充裕，能接受夜班', '2026-05-06', '待审核', NULL);
INSERT INTO `toudixinxi` VALUES (115, '2026-05-07 14:15:00', 'DHL快递分拣员', 'upload/BHHIEAJHABDEE-cA9hZigGmS.png', '短期兼职', 'dhl_express', 'DHL国际快递郑州营业部', '陈伟', 1, 'wufang2026', '吴芳', '17737788877', '硕士研究生', '华中师范大学', '', 0, '体力好，能适应夜班', '2026-05-07', '否', '岗位不符');
INSERT INTO `toudixinxi` VALUES (116, '2026-05-08 09:30:00', '宜家家居导购助理', 'upload/BHHIEAJHFDIBH-qJrsezIhXi.png', '寒暑假专项', 'ikea_zhengzhou', '宜家家居（郑州）商场', '李娜', 1, 'huangbo2026', '黄波', '15537788888', '本科', '郑州轻工业大学', '', 0, '形象好，善于沟通', '2026-05-08', '待审核', NULL);
INSERT INTO `toudixinxi` VALUES (117, '2026-05-09 16:45:00', '顺丰快递员兼职', 'upload/BHHIEAJHHJBIA-cRMGHEgDFm.png', '日结零活', 'sf_express_zz', '顺丰速运郑州金水区分部', '王强', 1, 'liuyang2026', '刘洋', '13837788899', '本科', '郑州大学', '', 1, '自带车辆，熟悉片区', '2026-05-09', '是', '已通过');
INSERT INTO `toudixinxi` VALUES (118, '2026-05-11 04:39:26', '库迪咖啡吧台兼职', 'upload/BHHIEAJIBFDBB-bRjhOmOzWv.png', '长期兼职', 'cotti_coffee', '库迪咖啡（郑州）连锁有限公司', '赵芳', 1, '卡力老虎', '樊泽', '16934589310', '大专', '河南职业学院', '', 1, '', '2026-05-11', '是', '可以');
INSERT INTO `toudixinxi` VALUES (119, '2026-05-11 04:39:47', '库迪咖啡吧台兼职', 'upload/BHHIEAJIBFDBB-bRjhOmOzWv.png', '长期兼职', 'cotti_coffee', '库迪咖啡（郑州）连锁有限公司', '赵芳', 1, '卡力老虎', '樊泽', '16934589310', '大专', '河南职业学院', 'upload/1778474380492.docx', 0, '', '2026-05-11', '是', '可以');
INSERT INTO `toudixinxi` VALUES (120, '2026-05-12 15:59:11', '宜家家居导购助理', 'upload/BHHIEAJHFDIBH-qJrsezIhXi.png', '寒暑假专项', 'ikea_zhengzhou', '宜家家居（郑州）商场', '李娜', 1, '卡力老虎', '樊泽', '16934589310', '大专', '河南职业学院', '', 1, '', '2026-05-12', '待审核', NULL);
INSERT INTO `toudixinxi` VALUES (121, '2026-05-12 15:59:45', '迪卡侬运动顾问兼职', 'upload/BHHIEAJGADIIJ-OD5jgRkVzp.png', '长期兼职', 'decathlon_zz', '迪卡侬体育用品（郑州）有限公司', '吴刚', 1, '卡力老虎', '樊泽', '16934589310', '大专', '河南职业学院', '', 1, '', '2026-05-12', '待审核', NULL);
INSERT INTO `toudixinxi` VALUES (122, '2026-05-17 09:11:10', '搬货', 'upload/1778779055016.png', '长期兼职', 'xinhua_bookstore', '郑州新华书店有限公司', '刘芳', 1, '卡力老虎', '樊泽', '16934589310', '大专', '河南职业学院', '', 1, '', '2026-05-17', '待审核', NULL);

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
INSERT INTO `users` VALUES (1, 'admin', 'admin', 'upload/IMG_3903.JPG', '管理员', '2024-03-23 08:04:39');

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
) ENGINE = InnoDB AUTO_INCREMENT = 1779008186197 CHARACTER SET = utf8 COLLATE = utf8_general_ci COMMENT = '用户' ROW_FORMAT = DYNAMIC;

-- ----------------------------
-- Records of xuesheng
-- ----------------------------
INSERT INTO `xuesheng` VALUES (11, '2024-03-23 08:04:38', 'xyy', 'e10adc3949ba59abbe56e057f20f883e', '赵立峰', '男', 25, '本科', '大连理工大学', 'upload/BHHGFBEJHDDCI-meuDb1j0cZ.png', '17044120066');
INSERT INTO `xuesheng` VALUES (12, '2024-03-23 08:04:38', '爆赞', 'e10adc3949ba59abbe56e057f20f883e', '户晨封', '男', 21, '大专', '河南职业学校', 'upload/BHHGFBEGDDIBA-x1kpJJvOCI.jpeg', '13416270979');
INSERT INTO `xuesheng` VALUES (13, '2024-03-23 08:04:38', 'asen', 'e10adc3949ba59abbe56e057f20f883e', '艾志恒', '男', 23, '本科', '重庆大学', 'upload/Snipaste_2026-04-18_21-09-07.png', '19025177618');
INSERT INTO `xuesheng` VALUES (14, '2024-03-23 08:04:38', 'sunshine', 'e10adc3949ba59abbe56e057f20f883e', '金凯瑞', '男', 24, '博士研究生', '清华大学', 'upload/Snipaste_2026-04-18_21-11-53.png', '18261646244');
INSERT INTO `xuesheng` VALUES (15, '2024-03-23 08:04:38', '走走停停', 'e10adc3949ba59abbe56e057f20f883e', '吴迪', '男', 27, '硕士研究生', '武汉大学', 'upload/Snipaste_2026-04-18_21-13-13.png', '18780548454');
INSERT INTO `xuesheng` VALUES (16, '2024-03-23 08:04:38', '饮食男女', 'e10adc3949ba59abbe56e057f20f883e', '朱家倩', '女', 26, '博士研究生', '哈尔滨工业大学', 'upload/Snipaste_2026-04-18_21-16-23.png', '17263974148');
INSERT INTO `xuesheng` VALUES (17, '2024-03-23 08:04:38', '情书', 'e10adc3949ba59abbe56e057f20f883e', '赵渡边', '女', 27, '博士研究生', '南京大学', 'upload/Snipaste_2026-04-18_21-21-34.png', '17018864729');
INSERT INTO `xuesheng` VALUES (18, '2024-03-23 08:04:38', '小武', 'e10adc3949ba59abbe56e057f20f883e', '王小武', '男', 18, '大专', '陕西职业技术学院', 'upload/Snipaste_2026-04-18_21-26-06.png', '17080802902');
INSERT INTO `xuesheng` VALUES (19, '2026-04-18 10:58:01', 'wutangforever', 'e10adc3949ba59abbe56e057f20f883e', '李德可', '男', 22, '本科', '深圳大学', 'upload/IMG_3986.JPG', '19270546258');
INSERT INTO `xuesheng` VALUES (20, '2026-04-18 12:09:41', 'doom', 'e10adc3949ba59abbe56e057f20f883e', '杜穆', '男', 19, '本科', '湖南大学', 'upload/IMG_6046.JPG', '15033981036');
INSERT INTO `xuesheng` VALUES (21, '2026-04-27 21:20:17', '卡力老虎', 'e10adc3949ba59abbe56e057f20f883e', '樊泽', '男', 25, '大专', '河南职业学院', 'upload/1777324815283.png', '16934589310');
INSERT INTO `xuesheng` VALUES (22, '2026-05-10 12:00:00', 'liuyang2026', 'e10adc3949ba59abbe56e057f20f883e', '刘洋', '女', 22, '本科', '郑州大学', 'upload/IMG_243891958.jpg', '13837788899');
INSERT INTO `xuesheng` VALUES (23, '2026-05-10 12:05:00', 'chenhao2026', 'e10adc3949ba59abbe56e057f20f883e', '陈浩', '男', 21, '本科', '河南大学', 'upload/IMG_8416.JPG', '15937788800');
INSERT INTO `xuesheng` VALUES (24, '2026-05-10 12:10:00', 'wangjing2026', 'e10adc3949ba59abbe56e057f20f883e', '王静', '女', 23, '硕士研究生', '华中科技大学', 'upload/IMG_8417.JPG', '18737788811');
INSERT INTO `xuesheng` VALUES (25, '2026-05-10 12:15:00', 'zhangwei2026', 'e10adc3949ba59abbe56e057f20f883e', '张伟', '男', 20, '大专', '郑州职业技术学院', 'upload/IMG_8418.JPG', '17637788822');
INSERT INTO `xuesheng` VALUES (26, '2026-05-10 12:20:00', 'lixia2026', 'e10adc3949ba59abbe56e057f20f883e', '李霞', '女', 24, '本科', '中南财经政法大学', 'upload/IMG_8419.JPG', '19937788833');
INSERT INTO `xuesheng` VALUES (1777324817198, '2026-05-10 12:25:00', 'zhaolei2026', 'e10adc3949ba59abbe56e057f20f883e', '赵磊', '男', 22, '本科', '武汉理工大学', 'upload/IMG_8420.JPG', '15037788844');
INSERT INTO `xuesheng` VALUES (1777324817199, '2026-05-10 12:30:00', 'sunyan2026', 'e10adc3949ba59abbe56e057f20f883e', '孙燕', '女', 21, '大专', '河南财政金融学院', 'upload/IMG_8422.JPG', '13337788855');
INSERT INTO `xuesheng` VALUES (1777324817200, '2026-05-10 12:35:00', 'zhoujie2026', 'e10adc3949ba59abbe56e057f20f883e', '周杰', '男', 23, '本科', '中国地质大学', 'upload/IMG_2149.JPG', '18837788866');
INSERT INTO `xuesheng` VALUES (1777324817201, '2026-05-10 12:40:00', 'wufang2026', 'e10adc3949ba59abbe56e057f20f883e', '吴芳', '女', 22, '硕士研究生', '华中师范大学', 'upload/B695993A-AA7B-4133-8119-B6B2024F5F3A.png', '17737788877');
INSERT INTO `xuesheng` VALUES (1777324817202, '2026-05-10 12:45:00', 'huangbo2026', 'e10adc3949ba59abbe56e057f20f883e', '黄波', '男', 20, '本科', '郑州轻工业大学', 'upload/1B9F643C-4513-4043-B7CD-5224231010AA.png', '15537788888');
INSERT INTO `xuesheng` VALUES (1778510276339, '2026-05-11 14:37:56', '1', 'c4ca4238a0b923820dcc509a6f75849b', '李继红', '女', 18, '博士研究生', '清华大学', 'upload/1778510274717.JPG', '13562248630');
INSERT INTO `xuesheng` VALUES (1779008186196, '2026-05-17 08:56:26', 'hhhhh', 'e10adc3949ba59abbe56e057f20f883e', '杜克', '男', 22, '硕士研究生', '北京电影学院', 'upload/1779008180905.JPG', '13526695060');

-- ----------------------------
-- Table structure for xueshengjianli
-- ----------------------------
DROP TABLE IF EXISTS `xueshengjianli`;
CREATE TABLE `xueshengjianli`  (
  `id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT 'id',
  `addtime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT 'create_time',
  `xuehao` varchar(200) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL COMMENT 'xuehao',
  `gerenyoushi` longtext CHARACTER SET utf8 COLLATE utf8_general_ci NULL COMMENT 'gerenyoushi',
  `waiyushuiping` varchar(200) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT 'waiyushuiping',
  `qiuzhizhuangtai` varchar(200) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT 'qiuzhizhuangtai',
  `shixijingli` longtext CHARACTER SET utf8 COLLATE utf8_general_ci NULL COMMENT 'shixijingli',
  `jiaoyujingli` longtext CHARACTER SET utf8 COLLATE utf8_general_ci NULL COMMENT 'jiaoyujingli',
  PRIMARY KEY (`id`) USING BTREE,
  UNIQUE INDEX `xuehao`(`xuehao`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 1778404192146 CHARACTER SET = utf8 COLLATE = utf8_general_ci COMMENT = 'xueshengjianli' ROW_FORMAT = DYNAMIC;

-- ----------------------------
-- Records of xueshengjianli
-- ----------------------------
INSERT INTO `xueshengjianli` VALUES (1778395216609, '2026-05-10 06:40:16', 'xyy', '熟悉 Java、Spring Boot 等后端开发技术，了解 MySQL 数据库操作，有项目开发经验，逻辑清晰，学习能力强，能快速上手新任务。', '英语四级，能阅读英文技术文档，具备基础听说读写能力。', '在校-月内到岗', '2025.07-2025.09，XX 科技公司，Java 开发实习生，参与项目模块开发，编写接口文档，协助完成数据库设计与维护。', '2022.09-2026.06，大连理工大学，软件工程专业，本科，系统学习 Java、计算机网络、数据库等专业课程。\n');
INSERT INTO `xueshengjianli` VALUES (1778404192138, '2026-05-10 09:09:51', '卡力老虎', '性格沉稳随和，善于沟通协作，动手能力强，\n能够快速适应新环境与工作内容，对待工作认真负责，\n可接受周末、节假日、弹性时间兼职工作。', '英语六级', '在校-考虑机会', '本地商超 临时运营助理\n工作时间：2023.06–2023.09\n1. 负责店内商品陈列整理、库存简单盘点，保证区域整洁；\n2. 配合前台接待顾客，解答基础咨询，维持现场秩序；\n3. 协助完成日常台账记录、简单文件整理，执行力强。\n校园学生会 干事\n工作时间：2022.03–2023.05\n1. 协助组织校园活动布置、人员签到、流程协调；\n2. 负责活动通知发布、信息统计汇总，做事细致有条理。', '河南职业学院  大专\n就读时间：2021.09–2024.06\n主修专业：现代行政管理\n在校认真完成课程学习，具备基础文书整理、沟通对接、日常事务处理能力，\n课余主动参与校园社团活动，锻炼团队协作与待人接物能力。');
INSERT INTO `xueshengjianli` VALUES (1778404192139, '2026-05-10 12:50:00', 'liuyang2026', '性格开朗活泼，具备良好的沟通表达能力和团队协作精神。\n在校期间担任学生会文艺部干事，组织过多场校园文化活动。\n熟练掌握Office办公软件，擅长PPT制作和视频剪辑。\n对零售行业有浓厚兴趣，善于观察消费者需求，服务意识强。', '英语四级', '在校-随时到岗', '郑州丹尼斯百货 促销员\n工作时间：2025.07–2025.08\n1. 负责化妆品区域产品推介和销售，月均销售额达2万元；\n2. 协助布置促销活动展台，吸引顾客参与活动；\n3. 收集顾客反馈意见，及时向主管汇报市场需求变化。\n\n校园歌手大赛 组织者\n工作时间：2024.09–2024.12\n1. 策划并执行校园歌手大赛初赛、复赛、决赛全流程；\n2. 协调场地、音响设备、评委邀请等后勤保障工作；\n3. 通过微信公众号宣传推广，活动参与人数超500人。', '郑州大学 文学院 汉语言文学专业 本科\n就读时间：2023.09–2027.06\n主修课程：现代汉语、古代文学、写作学、传播学概论\nGPA：3.6/4.0，专业排名前20%\n获得校级二等奖学金一次，优秀学生干部称号');
INSERT INTO `xueshengjianli` VALUES (1778404192140, '2026-05-10 12:55:00', 'chenhao2026', '做事认真负责，执行力强，有较强的抗压能力。\n热爱体育运动，尤其擅长篮球和跑步，曾代表学院参加校运会。\n学习能力强，能快速适应新环境和新工作内容。\n希望能在运动品牌行业积累工作经验，未来从事体育营销相关工作。', '英语六级', '在校-月内到岗', '迪卡侬郑州店 暑期兼职销售\n工作时间：2025.06–2025.08\n1. 负责跑步装备区域商品陈列和顾客咨询；\n2. 协助完成门店盘点工作，保证库存数据准确；\n3. 参与门店马拉松主题促销活动，个人销售业绩排名前三。\n\n院篮球队 队长\n工作时间：2024.03–至今\n1. 组织每周三次训练，制定战术安排；\n2. 带队参加校际篮球联赛，获得亚军成绩；\n3. 招募新队员，培养团队凝聚力。', '河南大学 体育学院 社会体育指导与管理专业 本科\n就读时间：2023.09–2027.06\n主修课程：运动生理学、体育管理学、市场营销学\nGPA：3.4/4.0\n获得国家励志奖学金，校级三好学生');
INSERT INTO `xueshengjianli` VALUES (1778404192141, '2026-05-10 13:00:00', 'wangjing2026', '思维缜密，逻辑清晰，具备较强的数据分析能力和问题解决能力。\n研究生期间参与导师横向课题，积累了项目管理经验。\n熟练使用Python、SQL进行数据处理和分析。\n希望在互联网或咨询公司实习，将理论知识应用于实践。', '英语六级（580分）', '在职-考虑机会', '华为技术有限公司 数据分析实习生\n工作时间：2025.07–2025.09\n1. 使用Python清洗和处理用户行为数据，构建用户画像模型；\n2. 协助完成A/B测试方案设计，分析实验结果并输出报告；\n3. 优化数据可视化看板，提升数据呈现效率30%。\n\n研究生课题组 项目助理\n工作时间：2024.09–至今\n1. 负责文献检索和综述撰写，整理国内外研究现状；\n2. 设计问卷调查，收集并分析样本数据；\n3. 协助撰写学术论文，已发表核心期刊论文一篇。', '华中科技大学 管理学院 工商管理硕士（在读）\n就读时间：2024.09–2027.06\n研究方向：消费者行为与数据分析\n本科：武汉大学 经济学学士\nGPA：3.8/4.0，专业排名前10%\n获得研究生一等学业奖学金');
INSERT INTO `xueshengjianli` VALUES (1778404192142, '2026-05-10 13:05:00', 'zhangwei2026', '动手能力强，吃苦耐劳，能适应高强度工作。\n在校期间考取电工证和叉车证，具备一定专业技能。\n性格踏实肯干，服从管理，有良好的职业操守。\n希望通过兼职积累工作经验，为毕业后正式就业做准备。', '无', '在校-随时到岗', '郑州富士康工厂 流水线操作工\n工作时间：2025.01–2025.02（寒假）\n1. 负责电子产品组装线操作，保证产品质量合格率；\n2. 遵守安全生产规范，未发生任何安全事故；\n3. 配合班组完成每日生产任务，工作效率较高。\n\n学校后勤处 勤工助学\n工作时间：2024.09–至今\n1. 负责教学楼教室桌椅维修和电路检查；\n2. 协助搬运教学设备和办公用品；\n3. 响应速度快，服务态度好，得到师生好评。', '郑州职业技术学院 机电一体化技术专业 大专\n就读时间：2024.09–2027.06\n主修课程：机械制图、电工电子技术、PLC编程\n持有电工操作证、叉车驾驶证\n班级学习委员，多次获得优秀学生称号');
INSERT INTO `xueshengjianli` VALUES (1778404192143, '2026-05-10 13:10:00', 'lixia2026', '细心耐心，服务意识强，善于与人沟通交流。\n有咖啡厅和书店兼职经历，熟悉服务行业工作流程。\n喜欢阅读和学习新知识，自我驱动力强。\n希望能在工作环境中不断提升自己的综合素质。', '英语四级', '离职-随时到岗', '星巴克武汉光谷店 兼职咖啡师\n工作时间：2024.06–2024.08\n1. 学习并掌握星巴克标准饮品制作流程，能独立出品；\n2. 负责前台点单收银，保持良好的顾客互动；\n3. 参与门店卫生清洁和设备维护保养。\n\n西西弗书店 图书导购\n工作时间：2023.07–2023.08\n1. 负责文学类图书区域陈列整理和读者咨询；\n2. 协助举办读书分享会，负责现场秩序维护；\n3. 根据销售数据调整图书摆放位置，提升销量。', '中南财经政法大学 外国语学院 英语专业 本科\n就读时间：2023.09–2027.06\n主修课程：综合英语、英语写作、翻译理论与实践\nGPA：3.5/4.0\n通过英语专业四级考试，普通话二级甲等');
INSERT INTO `xueshengjianli` VALUES (1778404192144, '2026-05-10 13:15:00', 'zhaolei2026', '逻辑思维能力强，对数字敏感，擅长Excel数据处理。\n在校期间自学Python和SQL，具备基础编程能力。\n工作认真细致，有责任心，能按时保质完成任务。\n希望进入电商或物流行业，从事运营或数据分析相关工作。', '英语六级', '在校-月内到岗', '京东物流武汉分部 仓储管理实习生\n工作时间：2025.06–2025.08\n1. 负责仓库入库、出库数据录入和核对；\n2. 使用WMS系统进行库存盘点，保证账实相符；\n3. 分析库存周转率，提出优化建议被采纳。\n\n学院学生会 学习部部长\n工作时间：2024.09–2025.06\n1. 组织学术讲座和学习经验分享会10余场；\n2. 建立学院学习资料共享平台，上传资料200+份；\n3. 协调各班学习委员，营造良好学习氛围。', '武汉理工大学 物流管理专业 本科\n就读时间：2023.09–2027.06\n主修课程：供应链管理、仓储与配送管理、运筹学\nGPA：3.7/4.0，专业排名前15%\n获得校级一等奖学金，优秀共青团员');
INSERT INTO `xueshengjianli` VALUES (1778404192145, '2026-05-10 13:20:00', 'zhoujie2026', '创意丰富，审美能力较好，擅长平面设计和文案写作。\n熟练使用PS、AI等设计软件，有自媒体运营经验。\n性格开朗，善于团队合作，能承受工作压力。\n希望在文化传媒或广告行业发展，发挥创意才能。', '英语四级', '在校-考虑机会', '郑州晚报新媒体中心 内容编辑实习生\n工作时间：2025.03–2025.06\n1. 负责微信公众号推文选题策划和文案撰写；\n2. 使用PS制作配图和海报，提升文章视觉效果；\n3. 参与短视频脚本创作，单条视频最高播放量10万+。\n\n校园摄影协会 宣传部部长\n工作时间：2024.03–至今\n1. 负责协会活动海报设计和宣传物料制作；\n2. 运营协会官方微博和抖音账号，粉丝增长50%；\n3. 组织摄影比赛和作品展览，参与人数超300人。', '中国地质大学（武汉） 艺术与传媒学院 视觉传达设计专业 本科\n就读时间：2023.09–2027.06\n主修课程：平面设计、品牌形象设计、数字媒体艺术\nGPA：3.6/4.0\n作品入选湖北省大学生艺术设计展');

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
) ENGINE = InnoDB AUTO_INCREMENT = 52 CHARACTER SET = utf8 COLLATE = utf8_general_ci COMMENT = '招聘公司' ROW_FORMAT = DYNAMIC;

-- ----------------------------
-- Records of zhaopingongsi
-- ----------------------------
INSERT INTO `zhaopingongsi` VALUES (21, '2024-03-23 08:04:38', 'mixuebingcheng', 'e10adc3949ba59abbe56e057f20f883e', '蜜雪冰城', '郑州市金水区兰德中心23楼2313', '王小曼', '2864523695@qq.com', '13836485201', 'upload/BHHGHHHFJDAAF-7PdM14NcxI.png', '是', '');
INSERT INTO `zhaopingongsi` VALUES (22, '2024-03-23 08:04:38', 'Adidas', 'e10adc3949ba59abbe56e057f20f883e', '阿迪达斯', '郑州二七区杉杉奥特莱斯广场', '李雪琪', '65137985623@gmail.com', '18765523080', 'upload/BHHHBJCEEHIGI-annYBxego4.png', '是', '');
INSERT INTO `zhaopingongsi` VALUES (23, '2024-03-23 08:04:38', 'feixing', 'e10adc3949ba59abbe56e057f20f883e', '肃州飞鑫文化传媒有限公司', '郑州金水区文化嘉园写字楼A座', '朱光薛', '6526650003@outlook.com', '19625493202', 'upload/zhaopingongsi_yingyezhizhao3.jpg', '是', '');
INSERT INTO `zhaopingongsi` VALUES (24, '2024-03-23 08:04:38', 'kfc', 'e10adc3949ba59abbe56e057f20f883e', '肯德基', '郑州中牟县八房井购物中心', '王女士', 'kfc66665@gmail.com', '15366698264', 'upload/zhaopingongsi_yingyezhizhao4.jpg', '是', '');
INSERT INTO `zhaopingongsi` VALUES (25, '2024-03-23 08:04:38', 'haidilao', 'e10adc3949ba59abbe56e057f20f883e', '海底捞', '郑州荥阳市海底捞火锅（荥阳吾悦广场店）', '张先生', '6524555@outlook.com', '13823800885', 'upload/zhaopingongsi_yingyezhizhao5.jpg', '是', '');
INSERT INTO `zhaopingongsi` VALUES (26, '2024-03-23 08:04:38', 'hmxs', 'e10adc3949ba59abbe56e057f20f883e', '盒马鲜生', '郑州金水区盒马鲜生（国贸360店）', '李先生', '59655255@outlook.com', '13823641886', 'upload/zhaopingongsi_yingyezhizhao6.jpg', '是', '');
INSERT INTO `zhaopingongsi` VALUES (27, '2024-03-23 08:04:38', '配送', 'e10adc3949ba59abbe56e057f20f883e', '沈阳市蓝胖子配送服务有限公司', '郑州金水区金印现代城', '贾淑艳', '773890007@qq.com', '16932251030', 'upload/zhaopingongsi_yingyezhizhao7.jpg', '是', '');
INSERT INTO `zhaopingongsi` VALUES (28, '2024-03-23 08:04:38', '宠物', 'e10adc3949ba59abbe56e057f20f883e', '郑州乐臣宠物用品有限公司', '郑州中原区中原商贸城4楼A21', '刘景赢', '35165984108@qq.com', '13739908963', 'upload/zhaopingongsi_yingyezhizhao8.jpg', '是', '');
INSERT INTO `zhaopingongsi` VALUES (29, '2026-04-24 10:03:39', 'hello', 'e10adc3949ba59abbe56e057f20f883e', '上海哈啰普惠科技有限公司', '郑州金水区兰德中心27', '赵哲会', '6321526398@outlook.com', '13546662050', 'upload/BHHHACFAAGECA-2WCQQywVnH.png', '是', '');
INSERT INTO `zhaopingongsi` VALUES (30, '2026-04-25 02:35:58', 'starbuck', 'e10adc3949ba59abbe56e057f20f883e', '星巴克企业管理（中国）有限公司', '郑州金水区X•one信万广场（郑州金水店）星巴克', '李先生', '556545215@gmail.com', '16985263000', 'upload/BHHHAIEFDFICC-JBlJkuSZdz.png', '是', '');
INSERT INTO `zhaopingongsi` VALUES (32, '2026-04-25 02:37:47', 'uniqlo', 'e10adc3949ba59abbe56e057f20f883e', '迅销（中国）商贸有限公司', '郑州二七区优衣库（郑州万象城店）1F', '张千越', '03456654@gmail.com', '13864493057', 'upload/BHHHAIEGFBEHI-Mv7GjXPCKd.png', '是', '');
INSERT INTO `zhaopingongsi` VALUES (34, '2026-04-26 07:05:54', 'wanda_cinema', 'e10adc3949ba59abbe56e057f20f883e', '郑州万达电影城有限公司', '郑州市中原区万达广场4楼万达影城', '王磊', 'wanda@163.com', '15838876543', 'upload/BHHHBJCBBEGGI-BW9YbFO0Sm.png', '是', '');
INSERT INTO `zhaopingongsi` VALUES (35, '2026-04-26 07:05:54', 'jd_logistics', 'e10adc3949ba59abbe56e057f20f883e', '京东物流郑州仓储中心', '郑州市中牟县京东亚洲一号仓库', '赵强', 'jxjisxdhcbhnx@163.com', '18537765432', 'upload/BHHHBJCBBEGGI-BW9YbFO0Sm.png', '是', '');
INSERT INTO `zhaopingongsi` VALUES (36, '2026-04-26 07:05:54', 'jiajiao_wuyou', 'e10adc3949ba59abbe56e057f20f883e', '郑州家教无忧教育咨询有限公司', '郑州市金水区花园路国贸中心A座', '陈静', 'jiajiaoyou@163.com', '17737754321', 'upload/BHHHBJCDAHBJA-re5RM2ambI.png', '是', '');
INSERT INTO `zhaopingongsi` VALUES (37, '2026-04-26 07:05:54', 'superfit_gym', 'e10adc3949ba59abbe56e057f20f883e', '郑州超级健身服务有限公司', '郑州市金水区花园路正弘城8楼', '杨阳', 'superfit@163.com', '13637743210', 'upload/BHHHBJCDDEGCI-QKSc5Cjcy2.png', '是', '');
INSERT INTO `zhaopingongsi` VALUES (38, '2026-04-26 07:05:54', 'luckin_coffee', 'e10adc3949ba59abbe56e057f20f883e', '瑞幸咖啡（郑州）有限公司', '郑州市二七区德化街无限城1楼', '林晓', 'luckin@163.com', '13737788776', 'upload/BHHHBJCDGAHJE-DDnr3Gm0RY.png', '是', '');
INSERT INTO `zhaopingongsi` VALUES (39, '2026-04-26 07:05:54', 'eleme_delivery', 'e10adc3949ba59abbe56e057f20f883e', '饿了么郑州城市运营中心', '郑州市管城区银基商贸城配送站', '黄涛', 'eleme@163.com', '15937799887', 'upload/BHHHBJCEAFCFC-aHHoICDjwe.png', '是', '');
INSERT INTO `zhaopingongsi` VALUES (40, '2026-04-26 07:05:54', 'xinhua_bookstore', 'e10adc3949ba59abbe56e057f20f883e', '郑州新华书店有限公司', '郑州市金水区西太康路购书中心', '刘芳', 'xinhua@163.com', '18837777665', 'upload/BHHHBJCECCACD-6aV05bCaw4.png', '是', '');
INSERT INTO `zhaopingongsi` VALUES (41, '2026-04-26 07:05:54', 'ecom_kefu', 'e10adc3949ba59abbe56e057f20f883e', '郑州云商电商科技有限公司', '郑州市高新区大学科技园东区', '张鑫', 'ecom_kefu@163.com', '19937766554', 'upload/BHHHBJCEEHIGI-annYBxego4.png', '是', '');
INSERT INTO `zhaopingongsi` VALUES (42, '2026-05-10 10:00:00', 'nike_zhengzhou', 'e10adc3949ba59abbe56e057f20f883e', '耐克体育（中国）有限公司郑州分公司', '郑州市金水区花园路丹尼斯百货3楼耐克专柜', '周敏', 'nike@163.com', '15838876544', 'upload/BHHHBJCEEHIGI-annYBxego4.png', '是', '');
INSERT INTO `zhaopingongsi` VALUES (43, '2026-05-10 10:05:00', 'decathlon_zz', 'e10adc3949ba59abbe56e057f20f883e', '迪卡侬体育用品（郑州）有限公司', '郑州市郑东新区CBD内环迪卡侬运动超市', '吴刚', 'decathlon@163.com', '13938876545', 'upload/BHHHBJCDDEGCI-QKSc5Cjcy2.png', '是', '');
INSERT INTO `zhaopingongsi` VALUES (44, '2026-05-10 10:10:00', 'mcdonalds_zz', 'e10adc3949ba59abbe56e057f20f883e', '麦当劳（郑州）餐饮管理有限公司', '郑州市二七区火车站广场麦当劳餐厅', '孙丽', 'mcdonalds@163.com', '17738876546', 'upload/BHHHBJCEAFCFC-aHHoICDjwe.png', '是', '');
INSERT INTO `zhaopingongsi` VALUES (45, '2026-05-10 10:15:00', 'dhl_express', 'e10adc3949ba59abbe56e057f20f883e', 'DHL国际快递郑州营业部', '郑州市航空港区DHL物流分拣中心', '陈伟', 'dhl@163.com', '18638876547', 'upload/BHHHBJCBBEGGI-BW9YbFO0Sm.png', '是', '');
INSERT INTO `zhaopingongsi` VALUES (46, '2026-05-10 10:20:00', 'ikea_zhengzhou', 'e10adc3949ba59abbe56e057f20f883e', '宜家家居（郑州）商场', '郑州市惠济区北三环宜家家居商场', '李娜', 'ikea@163.com', '15538876548', 'upload/BHHHBJCECCACD-6aV05bCaw4.png', '是', '');
INSERT INTO `zhaopingongsi` VALUES (47, '2026-05-10 10:25:00', 'sf_express_zz', 'e10adc3949ba59abbe56e057f20f883e', '顺丰速运郑州金水区分部', '郑州市金水区经三路顺丰速运营业点', '王强', 'sf@163.com', '13338876549', 'upload/BHHHBJCDGAHJE-DDnr3Gm0RY.png', '是', '');
INSERT INTO `zhaopingongsi` VALUES (48, '2026-05-10 10:30:00', 'cotti_coffee', 'e10adc3949ba59abbe56e057f20f883e', '库迪咖啡（郑州）连锁有限公司', '郑州市中原区万达广场1楼库迪咖啡', '赵芳', 'cotti@163.com', '19938876550', 'upload/BHHHBJCDAHBJA-re5RM2ambI.png', '是', '');
INSERT INTO `zhaopingongsi` VALUES (49, '2026-05-10 10:35:00', 'miniso_zz', 'e10adc3949ba59abbe56e057f20f883e', '名创优品（郑州）商贸有限公司', '郑州市管城区银基商贸城名创优品门店', '刘洋', 'miniso@163.com', '18838876551', 'upload/BHHHBJCBBEGGI-BW9YbFO0Sm.png', '是', '');
INSERT INTO `zhaopingongsi` VALUES (50, '2026-05-10 10:40:00', 'yoga_studio', 'e10adc3949ba59abbe56e057f20f883e', '郑州瑜伽时光健身工作室', '郑州市金水区文化路正弘城6楼瑜伽馆', '张婷', 'yoga@163.com', '17638876552', 'upload/BHHHBJCEEHIGI-annYBxego4.png', '是', '');
INSERT INTO `zhaopingongsi` VALUES (51, '2026-05-10 10:45:00', 'bookcafe_zz', 'e10adc3949ba59abbe56e057f20f883e', '郑州漫咖啡书吧文化传播有限公司', '郑州市郑东新区龙子湖大学城漫咖啡书吧', '马文', 'bookcafe@163.com', '15038876553', 'upload/BHHHBJCDDEGCI-QKSc5Cjcy2.png', '是', '');

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
  `sfsh` varchar(50) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT '待审核' COMMENT '是否审核',
  `shhf` varchar(200) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '审核回复',
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 72 CHARACTER SET = utf8 COLLATE = utf8_general_ci COMMENT = '招聘信息' ROW_FORMAT = DYNAMIC;

-- ----------------------------
-- Records of zhaopinxinxi
-- ----------------------------
INSERT INTO `zhaopinxinxi` VALUES (41, '2024-03-23 08:04:38', '蜜雪冰城招聘奶茶店店员', 'upload/BHHHACFEJDGCE-xj9LONwUcJ.png', '长期兼职', '大专', 2, '店员', '郑州管城回族区蜜雪冰城（总部旗舰店）蜜雪冰城', 6000, '1、饮品制作：按标准快速出品，保证品质；管理原料，确保新鲜；处理订单，主动推荐新品及优惠。\n2、客户服务：礼貌接待，解答疑问；妥善处理投诉，提升满意度。\n3、店铺清洁：清洁店内区域，维护设备，整理物料与商品。\n4、库存管理：协助盘点，提交补货申请；验收、归位货物，记录库存。\n任职资格：\n1、大专及以上学历，热爱餐饮行业，吃苦耐劳，有团队意识；\n2、身体健康，持有餐饮健康证；\n3、能适应快节奏的工作环境；\n4、亲和力强、善于沟通、具备应变与问题解决能力。\n', 'mixuebingcheng', '蜜雪冰城股份有限公司', '王小曼', '13836485201', '2026-04-23', '2026-04-28 05:07:41', 10, 1, '是', '');
INSERT INTO `zhaopinxinxi` VALUES (42, '2024-03-23 08:04:38', '阿迪达斯郑州二七杉杉店兼职', 'upload/BHHHACFJGEHGE-6O5CcdfBKJ.png', '周末节假日兼职', '本科', 19, '销售', '郑州二七区杉杉奥特莱斯广场', 5400, '岗位要求：性格开朗，能主动进行卖场顾客服务，收银、理货等；有销售经验者优先\n出勤要求：9-22:30之间排班6-8小时，周内可提供出勤3-4天及以上，至少做到五一假期结束，能长期兼职优先考虑\n薪资待遇：180/天，按小时发薪，法定节假日三薪工作地点：河南省郑州市二七区大学南路246号郑州杉杉奥特菜斯购物广场', 'Adidas', '阿迪达斯体育中国有限公司', '李雪琪', '18765523080', '2026-01-02', '2026-04-24 20:30:31', 5, 2, '是', '');
INSERT INTO `zhaopinxinxi` VALUES (43, '2024-03-23 08:04:38', '数据运营', 'upload/BHHHACFCJEFHA-n58a5DF1So.png', '短期兼职', '硕士', 2, '数据统计', '郑州金水区兰德中心27', 3600, '1. 数据采集与处理：负责收集处理大区资保运营数据、产品数据等相关信息，并进行数据清洗和处理，以确保数据质量\n2. 数据分析与挖掘：通过数据分析工具（如SQL、Python、Excel等）对业务数据进行分析，识别关键数据指标和趋势，为运营决策提供支持。\n3. 优化和改进建议：基于分析结果，提出运营策略的优化方案。例如，建议如何改善用户体验或提高资产处理效率。\n4. 产品和活动运营支持：协助数据策略上线、推广及日常运营，追踪活动效果，评估数据表现，并提出改进建议。\n5． 跨部门沟通与协作：与总部，大区部门，城市一线等团队密切合作，确保数据的正确应用，并推动数据驱动的决策。\n此岗位通常适合数据分析基础较好，具有一定沟通协调能力，抗压能力强的在校生或应届毕业生，表现优秀者提供转正机会。', 'hello', '上海哈啰普惠科技有限公司', '赵哲会', '13546662050', '2026-04-27', '2026-04-26 20:44:16', 14, 3, '是', '');
INSERT INTO `zhaopinxinxi` VALUES (44, '2024-03-23 08:04:38', '门店店员', 'upload/BHHHACFJIFIIG-T26wUs9AXv.png', '寒暑假专项', '本科', 18, '柜台销售', '郑州中原区中原商贸城4楼A21', 3000, '工作地点：国基路花卉市场店、郑汴路花卉市场店、棉纺路锦艺城店、中原商贸城店\r\n工作内容：门店日常卫生维护，产品陈列，接待客户，销售产品。不要短期工，\r\n工作时间：早9：00晚18：00每周休息一天\r\n薪资：\r\n1.基本工资2500，全勤200、绩效奖300\r\n2.综合薪资3000+完成3w销售提成3%三万以下1.5%\r\n3.培训期每天80试用期一个月\r\n要求：，能吃苦耐劳，性格开朗，内心敞亮。\r\n4.招聘周六周日兼职每小时12元每天工作一天10小时销售提成1%\r\n5.面试成功后统一到国基路总店培训一个月，以后每个月都有一周时间总店培训（如果接受不了、勿投简历）', '宠物', '郑州乐臣宠物用品有限公司', '刘景赢', '13739908963', '2026-02-23', '2026-05-11 22:36:38', 52, 5, '是', '');
INSERT INTO `zhaopinxinxi` VALUES (45, '2024-03-23 08:04:38', '3名日结工/711送零食-一日一结', 'upload/BHHHCJDAGDBIB-a1i9rDLJI4.png', '短期兼职', '大专', 1, '配送员', '郑州金水区金印现代城', 6000, '工作周期：1个月每周工期：无要求工作时间：不限工作时段：不限结算方式：日结\n招聘截止时间：2026-05-03', '配送', '沈阳市蓝胖子配送服务有限公司', '贾淑艳', '16932251030', '2026-03-23', '2026-04-28 05:15:37', 61, 5, '是', '');
INSERT INTO `zhaopinxinxi` VALUES (46, '2024-03-23 08:04:38', '超市配送员，超时无罚款，可日结可就近', 'upload/BHHHACDIAHECJ-Z3OFDdjiPT.png', '日结零活', '大专', 5, '配送员', '郑州金水区盒马鲜生（国贸360店）', 7200, '【工作内容】\r\nAPP系统指派订单，无需抢单，3公里内短途配送，系统优化配送路线，一趟可送3-8单。\r\n【薪资待遇】\r\n打酱油：日均180~240元\r\n正常做：日均240~300元\r\n认真做：日均300~400元\r\n【配送货物】\r\n水果、生鲜、蔬菜、牛奶、面包、零食饮料、等生活用品。\r\n【工作时间】\r\n全职：长白班，早/中/晚班任选\r\n兼职：周一至周五每天4小时起，或周未全天\r\n【适合人群】\r\n18-48岁，会骑电动车，会用手机导航欢迎肯吃苦、想稳定增收的全职伙伴也适合有空闲时间、想灵活兼职的你我他', 'hmxs', '上海盒马科技有限公司', '李先生', '13823888886', '2026-03-31', '2026-05-17 17:07:06', 68, 6, '是', '');
INSERT INTO `zhaopinxinxi` VALUES (47, '2024-03-23 08:04:38', '每天200元日结小故事电台\r\n读文', 'upload/BHHHACDHEBBJJ-hKlhhIi0k8.png', '	\r\n线上远程兼职', '大专', 1, '音频主播', '郑州金水区文化嘉园写字楼A座', 6000, '居家办公，无需到公司面试或上班，薪资日结绝不拖欠，时间也自由，不管你是待业还是下班找兼职，都可以来试试。\r\n全程不收取任何费用，也不需要你投资一分钱。也没有任何违约金。\r\n工作简单 轻松 无压力新手小白当天上岗，操作简单方便，不需要学历和经验。\r\n音频主播日结133元，不露脸要求声音好听有特色视频主播：每天200元日结算不拖欠，提成50%，要求美颜上镜效果好看', 'feixing', '肃州飞鑫文化传媒有限公司', '朱光薛', '19625493202', '2026-03-23', '2026-04-24 20:34:29', 30, 7, '是', '');
INSERT INTO `zhaopinxinxi` VALUES (48, '2026-04-24 15:21:57', '中牟肯德基服务员直聘J19488', 'upload/BHHHABEIABEID-5JNrWKvyIT.png', '长期兼职', '高中', 1, '服务员', '郑州中牟县八房井购物中心', 3500, '肯德基总部直聘服务员欢迎您的加入！\n【福利待遇】\n1、无试用期，无押金\n2、上班员工享受企业内部专享特惠员工餐\n3、工作时间灵活，根据您的空闲时间和餐厅需求进行排班，5-8小时均可\n4、学生兼职可提供实习证明，体验制度成熟的管理运作模式，有广阔的发展空间，大专学历在毕业前可升迁为楼面经理\n5、享有高颜值的工作环境，免费提供时尚高颜值制服，全方位开放的中央空调，冬暖夏凉，员工休息室内冰箱，饮水机，微波炉，一应俱全。', 'kfc', '郑州肯德基有限公司', '王女士', '15366698264', '2026-04-09', '2026-05-10 17:25:54', 20, 8, '是', '');
INSERT INTO `zhaopinxinxi` VALUES (49, '2026-04-25 02:52:00', '优衣库店员', 'upload/BHHHAIFEIAGDI-hd1z34p1Ik.png', '长期兼职', '大专', 5, '店员', '郑州二七区优衣库（郑州万象城店）1F', 3200, '【全职】\n优衣库（Uniqlo）是迅销集团旗下的世界服装零售业知名品牌，秉承“LifeWear服饰人生”的品牌理念，希望能够用服装的力量让世界各地人们生活更加美好。\n【工作内容】\n1、处理店铺各项基本业务（包括顾客接待、商品整理、收银、试衣间、清扫等）\n2、以优衣库伙伴的角色参与店铺运营\n3、通过自己的努力积极参与店铺团队建设成为店铺的经营者\n岗位福利：五险一金、双休、节假日出勤三薪', 'uniqlo', '迅销（中国）商贸有限公司', '张千越', '13864493057', '2026-04-25', '2026-05-12 23:54:01', 5, 2, '是', '');
INSERT INTO `zhaopinxinxi` VALUES (50, '2026-04-25 02:53:58', '兼职咖啡师', 'upload/BHHHAIFFJCIHJ-IPc12j8zrd.png', '短期兼职', '本科', 9, '咖啡师', '郑州金水区X•one信万广场（郑州金水店）星巴克', 4000, '', 'starbuck', '星巴克企业管理（中国）有限公司', '李先生', '16985263000', '2026-04-25', '2026-04-26 17:07:37', 5, 0, '是', '');
INSERT INTO `zhaopinxinxi` VALUES (56, '2026-04-26 07:06:05', '瑞幸咖啡门店长期店员', 'upload/BHHHBJCIHEDEF-D53ttmwlFC.png', '长期兼职', '大专', 4, '饮品制作与门店运营', '郑州市二七区德化街无限城1楼瑞幸咖啡', 4200, '1. 负责瑞幸咖啡饮品标准化制作、点单收银；2. 管理原料库存，确保食材新鲜合规；3. 入职需办理餐饮健康证，有连锁餐饮经验优先', 'luckin_coffee', '瑞幸咖啡（郑州）有限公司', '林晓', '13737788776', '2026-04-26', '2026-04-26 16:41:31', 16, 3, '是', '');
INSERT INTO `zhaopinxinxi` VALUES (57, '2026-04-26 07:06:05', '外卖配送员（日结）', 'upload/BHHHBJDAGGACE-06LFdvlT76.png', '日结零活', '不限', 8, '订单配送服务', '郑州市管城区银基商贸城配送站', 300, '1. 负责饿了么平台订单配送，3公里内短途单为主；2. 自带电动车，熟悉郑州主城区路线优先；3. 薪资日结，多劳多得，平台提供冲单奖励', 'eleme_delivery', '饿了么郑州城市运营中心', '黄涛', '15937799887', '2026-04-26', '2026-04-26 17:07:49', 33, 6, '是', '');
INSERT INTO `zhaopinxinxi` VALUES (58, '2026-04-26 07:06:05', '寒暑假书店整理员', 'upload/BHHHBJDAAHEGD-OJXtLbyIqU.png', '寒暑假专项', '大专', 2, '图书整理与读者服务', '郑州市金水区西太康路购书中心', 2500, '1. 负责书店图书上架、分类整理、库存盘点；2. 协助读者找书，维护书店安静阅读环境；3. 仅限在校大学生，工作轻松稳定，提供免费工作午餐', 'xinhua_bookstore', '郑州新华书店有限公司', '刘芳', '18837777665', '2026-04-26', '2026-05-17 17:06:56', 27, 2, '是', '');
INSERT INTO `zhaopinxinxi` VALUES (59, '2026-04-26 07:06:05', '居家线上远程客服', 'upload/BHHHBJCJGAFCB-uSBJmjTvPu.png', '线上远程兼职', '大专', 4, '客户咨询与售后处理', '线上居家办公', 1500, '1. 负责电商平台客户咨询、订单跟进、售后问题处理；2. 需有安静居家办公环境，普通话标准，打字速度≥40字/分钟；3. 时间灵活，每天在线4小时即可，薪资周结', 'ecom_kefu', '郑州云商电商科技有限公司', '张鑫', '19937766554', '2026-04-26', '2026-05-10 17:26:26', 33, 4, '是', '');
INSERT INTO `zhaopinxinxi` VALUES (60, '2026-05-10 11:00:00', '耐克门店销售兼职', 'upload/BHHIEAJFFFICB-JdUB7481kq.png', '周末节假日兼职', '大专', 6, '商品销售与顾客服务', '郑州市金水区花园路丹尼斯百货3楼耐克专柜', 3800, '1. 负责耐克运动鞋服商品陈列、整理及库存管理；2. 接待顾客，提供专业产品推荐和尺码建议；3. 协助收银、打包及会员信息登记；4. 每周至少出勤2天，节假日优先排班，有零售经验者优先', 'nike_zhengzhou', '耐克体育（中国）有限公司郑州分公司', '周敏', '15838876544', '2026-05-10', NULL, 0, 0, '是', '');
INSERT INTO `zhaopinxinxi` VALUES (61, '2026-05-10 11:05:00', '迪卡侬运动顾问兼职', 'upload/BHHIEAJGADIIJ-OD5jgRkVzp.png', '长期兼职', '本科', 5, '运动产品咨询与销售', '郑州市郑东新区CBD内环迪卡侬运动超市', 4000, '1. 为顾客提供专业的运动装备选购建议；2. 负责对应品类区域的商品陈列和补货；3. 参与门店促销活动执行；4. 热爱运动，有篮球、跑步、游泳等专项特长者优先，可提供内部员工折扣', 'decathlon_zz', '迪卡侬体育用品（郑州）有限公司', '吴刚', '13938876545', '2026-05-10', '2026-05-12 23:59:47', 3, 0, '是', '');
INSERT INTO `zhaopinxinxi` VALUES (62, '2026-05-10 11:10:00', '麦当劳餐厅服务员', 'upload/BHHIEAJGFFDAA-c0scrzJVxy.png', '日结零活', '不限', 10, '餐饮服务与清洁维护', '郑州市二七区火车站广场麦当劳餐厅', 2800, '1. 负责前台点餐收银、配餐出餐；2. 保持用餐区域清洁卫生；3. 协助后厨备料、炸制食品；4. 弹性排班，每天4-8小时可选，学生可提供实习证明，免费工作餐', 'mcdonalds_zz', '麦当劳（郑州）餐饮管理有限公司', '孙丽', '17738876546', '2026-05-10', NULL, 0, 0, '是', '');
INSERT INTO `zhaopinxinxi` VALUES (63, '2026-05-10 11:15:00', 'DHL快递分拣员', 'upload/BHHIEAJHABDEE-cA9hZigGmS.png', '短期兼职', '不限', 8, '包裹分拣与装卸', '郑州市航空港区DHL物流分拣中心', 3200, '1. 负责快递包裹的分类、扫描、装车；2. 按区域码放货物，确保无破损；3. 夜班为主，晚8点至早6点，提供夜宵补贴；4. 身体健康，能适应体力劳动，吃苦耐劳', 'dhl_express', 'DHL国际快递郑州营业部', '陈伟', '18638876547', '2026-05-10', '2026-05-17 17:01:41', 2, 1, '是', '');
INSERT INTO `zhaopinxinxi` VALUES (64, '2026-05-10 11:20:00', '宜家家居导购助理', 'upload/BHHIEAJHFDIBH-qJrsezIhXi.png', '寒暑假专项', '大专', 4, '家具展示与顾客引导', '郑州市惠济区北三环宜家家居商场', 3500, '1. 协助顾客了解宜家产品功能和搭配方案；2. 维护展厅样品整洁，补充价签和宣传册；3. 引导顾客至相应区域，解答基础咨询；4. 形象气质佳，有家居装饰兴趣者优先，可享受员工购物优惠', 'ikea_zhengzhou', '宜家家居（郑州）商场', '李娜', '15538876548', '2026-05-10', '2026-05-12 23:59:14', 2, 0, '是', '');
INSERT INTO `zhaopinxinxi` VALUES (65, '2026-05-10 11:25:00', '顺丰快递员兼职', 'upload/BHHIEAJHHJBIA-cRMGHEgDFm.png', '日结零活', '不限', 6, '快件收派服务', '郑州市金水区经三路顺丰速运营业点', 350, '1. 负责指定片区快件派送和上门取件；2. 使用巴枪扫描录入，确保信息准确；3. 自带电动车或摩托车，熟悉金水区路线；4. 薪资按件计酬，多劳多得，日均150-250元，可日结', 'sf_express_zz', '顺丰速运郑州金水区分部', '王强', '13338876549', '2026-05-10', NULL, 0, 0, '是', '');
INSERT INTO `zhaopinxinxi` VALUES (66, '2026-05-10 11:30:00', '库迪咖啡吧台兼职', 'upload/BHHIEAJIBFDBB-bRjhOmOzWv.png', '长期兼职', '大专', 5, '咖啡制作与门店运营', '郑州市中原区万达广场1楼库迪咖啡', 3600, '1. 学习并掌握库迪咖啡饮品标准化制作流程；2. 负责点单收银、原料管理和设备清洁；3. 配合店长完成日常运营任务；4. 有咖啡师证或奶茶店工作经验者优先，提供免费技能培训', 'cotti_coffee', '库迪咖啡（郑州）连锁有限公司', '赵芳', '19938876550', '2026-05-10', '2026-05-11 12:39:49', 3, 0, '是', '');
INSERT INTO `zhaopinxinxi` VALUES (67, '2026-05-10 11:35:00', '名创优品理货员', 'upload/BHHIEAJIHBEAA-ENYFOjU6Pp.png', '周末节假日兼职', '高中', 7, '商品陈列与库存管理', '郑州市管城区银基商贸城名创优品门店', 2600, '1. 负责店内商品上架、补货、整理陈列；2. 检查商品保质期，及时下架临期产品；3. 协助收银台包装商品；4. 工作轻松，环境舒适，适合细心有条理的同学，周末必须到岗', 'miniso_zz', '名创优品（郑州）商贸有限公司', '刘洋', '18838876551', '2026-05-10', NULL, 0, 0, '是', '');
INSERT INTO `zhaopinxinxi` VALUES (68, '2026-05-10 11:40:00', '瑜伽馆前台接待', 'upload/BHHIEAJJBEHCA-vy1NfKSzLb.png', '线上远程兼职', '大专', 3, '会员接待与课程预约', '郑州市金水区文化路正弘城6楼瑜伽馆', 3000, '1. 负责瑜伽馆前台接待、会员签到；2. 协助会员预约课程，解答咨询；3. 维护前台区域整洁，管理瑜伽用品销售；4. 气质优雅，沟通能力好，有瑜伽练习经验者加分，可免费参加瑜伽课程', 'yoga_studio', '郑州瑜伽时光健身工作室', '张婷', '17638876552', '2026-05-10', NULL, 0, 0, '是', '');
INSERT INTO `zhaopinxinxi` VALUES (69, '2026-05-10 11:45:00', '书吧图书管理员助理', 'upload/BHHIEAJJEEHCF-wBoxcbu7nx.png', '寒暑假专项', '本科', 2, '图书整理与读者服务', '郑州市郑东新区龙子湖大学城漫咖啡书吧', 2800, '1. 负责图书分类上架、借阅登记；2. 维护书吧安静阅读环境，引导读者文明阅读；3. 协助举办读书分享会、文化沙龙活动；4. 热爱阅读，文笔好，中文、图书馆学专业优先，工作环境安静舒适', 'bookcafe_zz', '郑州漫咖啡书吧文化传播有限公司', '马文', '15038876553', '2026-05-10', '2026-05-11 22:38:21', 1, 0, '是', '');
INSERT INTO `zhaopinxinxi` VALUES (70, '2026-05-14 17:18:36', '搬货', 'upload/1778779055016.png', '长期兼职', '大专', 3, '进货工人', '郑州市金水区西太康路购书中心', 1500, '', 'xinhua_bookstore', '郑州新华书店有限公司', '刘芳', '18837777665', '2026-05-15', '2026-05-17 17:11:12', 2, 0, '是', '');
INSERT INTO `zhaopinxinxi` VALUES (71, '2026-05-17 10:38:46', '书店会计', 'upload/1779014248712.png', '长期兼职', '本科', 1, '会计', '郑州新华书店有限公司', 5000, '至少具备一级会计证', 'xinhua_bookstore', '郑州新华书店有限公司', '刘芳', '18837777665', '2026-05-17', NULL, 0, 0, '待审核', NULL);

SET FOREIGN_KEY_CHECKS = 1;
