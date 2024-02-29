/*
 Navicat Premium Data Transfer

 Source Server         : mysql
 Source Server Type    : MySQL
 Source Server Version : 80023 (8.0.23)
 Source Host           : localhost:3306
 Source Schema         : rongxiaotong

 Target Server Type    : MySQL
 Target Server Version : 80023 (8.0.23)
 File Encoding         : 65001

 Date: 21/02/2024 22:46:32
*/

SET NAMES utf8mb4;
SET FOREIGN_KEY_CHECKS = 0;

-- ----------------------------
-- Table structure for tb_address
-- ----------------------------
DROP TABLE IF EXISTS `tb_address`;
CREATE TABLE `tb_address`  (
  `id` int NOT NULL AUTO_INCREMENT,
  `own_name` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL COMMENT '属于哪个用户的地址',
  `consignee` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL COMMENT '收货人',
  `phone` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `address_detail` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL COMMENT '收货地址',
  `is_default` tinyint NULL DEFAULT 0 COMMENT '是否默认，0，不是，默认是1',
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 192 CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = COMPACT;

-- ----------------------------
-- Records of tb_address
-- ----------------------------
INSERT INTO `tb_address` VALUES (121, 'zwr', '张文瑞', '15030589961', '青岛市即墨区青岛湾琴湾C区', 1);
INSERT INTO `tb_address` VALUES (129, 'zhangxukun', '张绪昆', '18354648787', '17-412', 0);
INSERT INTO `tb_address` VALUES (146, 'zhangxu', '张绪昆', '18396833008', '山东省青岛市', 0);
INSERT INTO `tb_address` VALUES (147, 'zhangxukun', '张绪昆', '18354648787', '山东省济南市', 1);
INSERT INTO `tb_address` VALUES (153, 'gaoge', '高歌', '18977771439', '山东省枣庄市', 0);
INSERT INTO `tb_address` VALUES (154, 'gaoge', '高歌', '18977771439', '山东省德州市夏津县', 1);
INSERT INTO `tb_address` VALUES (171, 'gaoge', '高歌', '18977771439', '山东省德州市夏津县', 0);
INSERT INTO `tb_address` VALUES (172, 'admin', '成吉思汗', '18766661438', '山东青岛市崂山区', 1);
INSERT INTO `tb_address` VALUES (173, 'admin', '不朽大帝', '18766661438', '山东青岛市崂山区', 0);
INSERT INTO `tb_address` VALUES (178, 'lzh', '11', '11', '17-412', 1);
INSERT INTO `tb_address` VALUES (184, 'wyn3', '李增虎', '11111111111', '海信财智谷', 0);
INSERT INTO `tb_address` VALUES (186, 'lisi', '李四', '15623652365', '山东省临沂市河东区', 1);
INSERT INTO `tb_address` VALUES (187, 'lisi', '李四', '15623652365', '山东省青岛市崂山区', 0);
INSERT INTO `tb_address` VALUES (188, 'lisi', '李四', '15662352365', '山东省青岛市黄岛区', 0);
INSERT INTO `tb_address` VALUES (189, 'wangya', '王娅', '13792449255', '青岛市李沧区', 0);
INSERT INTO `tb_address` VALUES (190, 'aaa', '张三', '13411223344', '湖南', 0);
INSERT INTO `tb_address` VALUES (191, 'zqy', '张茜颖', '15198007251', '17-412', 1);

-- ----------------------------
-- Table structure for tb_bank
-- ----------------------------
DROP TABLE IF EXISTS `tb_bank`;
CREATE TABLE `tb_bank`  (
  `bank_id` int NOT NULL AUTO_INCREMENT,
  `bank_name` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `introduce` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `bank_phone` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `money` decimal(65, 2) NOT NULL,
  `rate` decimal(65, 2) NOT NULL,
  `repayment` int NOT NULL,
  PRIMARY KEY (`bank_id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 1011 CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = COMPACT;

-- ----------------------------
-- Records of tb_bank
-- ----------------------------
INSERT INTO `tb_bank` VALUES (1001, '青岛银行', '“青易贷”，是青岛银行小微企业融资产品服务品牌。为助力小微企业成长发展，青岛银行为广大小微企业打造全面金融服务品牌体系——“青易贷”，紧贴小微企业融资需求特点，紧跟市场经济发展变化，不断创新完善融资产品，形成特色产品体系，力争全方位地满足不同行业、不同成长阶段的小微企业各类融资需求。', '96588', 100000.00, 1.10, 24);
INSERT INTO `tb_bank` VALUES (1002, '中国银行', '中国银行金融市场业务，包括国内、国际本外币金融市场相关交易、投资、理财、托管等业务，为公司、个人以及金融同业提供全面、完善、专业的各项金融市场服务。', '95566', 100000.00, 1.20, 36);
INSERT INTO `tb_bank` VALUES (1004, '中国工商银行', '工商银行向小微企业主发放的，用于满足其生产经营资金需求或置换生产经营过程中产生的负债性资金的人民币贷款。', '95588', 150000.00, 1.10, 30);
INSERT INTO `tb_bank` VALUES (1005, '日照银行', '“阳光”系列个人消费贷款业务是日照银行向符合规定条件的自然人发放的用于个人消费用途的人民币贷款业务，旨在以快捷方便的审批流程和优质的服务满足客户在大件商品或服务消费等个人资金需求，如住房装修、购家具家电、购车、婚庆、学习进修、旅游等。“阳光”系列个人消费贷款业务包含“阳光贷”、“金领贷”、“阳光·房易贷”、“阳光·保易贷”、“阳光·车易贷”“阳光·出国贷”等。', '96588', 100000.00, 2.00, 24);
INSERT INTO `tb_bank` VALUES (1006, '华夏银行', '华夏银行作为债务融资工具全国首批主承销商之一，已从业十余载，连续十三年获“全国银行间同业拆借中心优秀交易成员”称号，承销团队经验丰富，专业高效，竭诚为广大企业服务。', '95577', 160000.00, 1.80, 36);
INSERT INTO `tb_bank` VALUES (1007, '中国建设银行', '“诚贷通”小额无抵押贷款“诚贷通”小额无抵押贷款是建设银行为小企业客户发放，由企业主或企业实际控制人提供个人连带责任保证，无需抵（质）押物，用于小企业客户生产经营资金周转的人民币循环额度贷款。', '95533', 200000.00, 3.60, 36);
INSERT INTO `tb_bank` VALUES (1008, '浦发银行', '点贷是我行面向符合条件的客户通过互联网在线受理、在线签约，并即时发放贷款的业务模式。', '95528', 150000.00, 1.10, 24);
INSERT INTO `tb_bank` VALUES (1009, '中国平安银行', '“数保贷”平安银行与担保公司、担保基金、保险公司等联合开发的面向诚信纳税的中小企业法人或企业主的互联网信用贷款', '95511', 160000.00, 1.20, 36);
INSERT INTO `tb_bank` VALUES (1010, '中国民生银行', '为进一步丰富金融服务乡村振兴的内涵，民生银行在持续迭代“农贷通”产品的基础上，通过与中国银联强强联合，将借记卡产品与贷款产品相融合，以科技赋能，将现代金融服务延伸到广大农村区域。“农贷通”卡满载10项特色涉农权益，为农户提供多样化增值服务。', '95568', 200000.00, 1.60, 24);

-- ----------------------------
-- Table structure for tb_bank_user
-- ----------------------------
DROP TABLE IF EXISTS `tb_bank_user`;
CREATE TABLE `tb_bank_user`  (
  `user_name` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `bank_id` int NOT NULL,
  `password` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `real_name` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `phone` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `role` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `create_time` datetime NOT NULL,
  `update_time` datetime NOT NULL,
  PRIMARY KEY (`user_name`) USING BTREE,
  INDEX `bank_id`(`bank_id` ASC) USING BTREE
) ENGINE = InnoDB CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = COMPACT;

-- ----------------------------
-- Records of tb_bank_user
-- ----------------------------
INSERT INTO `tb_bank_user` VALUES ('buser01', 1001, '$2a$10$AC1gCsk1V5Ov7n.zvkxxvuMM4f3BnWmJqr4jNNYtVAm8j4nBdxIUq', '王家明', '13236963696', 'user', '2022-04-02 16:19:10', '2022-04-02 16:19:13');
INSERT INTO `tb_bank_user` VALUES ('buser02', 1006, '$2a$10$AC1gCsk1V5Ov7n.zvkxxvuMM4f3BnWmJqr4jNNYtVAm8j4nBdxIUq', '刘璐', '13236963696', 'user', '2022-04-02 16:19:10', '2022-04-02 16:19:13');
INSERT INTO `tb_bank_user` VALUES ('buser03', 1001, '$2a$10$AC1gCsk1V5Ov7n.zvkxxvuMM4f3BnWmJqr4jNNYtVAm8j4nBdxIUq', '李涵', '13236963696', 'user', '2022-04-02 16:19:10', '2022-04-02 16:19:13');

-- ----------------------------
-- Table structure for tb_collect
-- ----------------------------
DROP TABLE IF EXISTS `tb_collect`;
CREATE TABLE `tb_collect`  (
  `collect_id` int NOT NULL AUTO_INCREMENT,
  `own_name` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `collect_type` int NOT NULL,
  `total_price` decimal(65, 2) NOT NULL,
  `address` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL COMMENT '订单收货地址',
  `collect_status` int NOT NULL,
  `create_time` datetime NOT NULL,
  `update_time` datetime NOT NULL,
  `order_id` int NOT NULL,
  PRIMARY KEY (`collect_id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 121 CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of tb_collect
-- ----------------------------
INSERT INTO `tb_collect` VALUES (120, 'aaa', 1, 22.81, '190', 1, '2023-07-21 14:23:46', '2023-07-21 14:23:53', 71);

-- ----------------------------
-- Table structure for tb_discuss
-- ----------------------------
DROP TABLE IF EXISTS `tb_discuss`;
CREATE TABLE `tb_discuss`  (
  `discuss_id` int NOT NULL AUTO_INCREMENT,
  `knowledge_id` int NOT NULL,
  `own_name` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `content` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `create_time` datetime NOT NULL,
  PRIMARY KEY (`discuss_id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 109 CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = COMPACT;

-- ----------------------------
-- Records of tb_discuss
-- ----------------------------
INSERT INTO `tb_discuss` VALUES (100, 30, 'wyn', '评论内容123', '2022-03-29 14:35:06');
INSERT INTO `tb_discuss` VALUES (101, 30, 'zhangxukun', '1111', '2022-07-22 09:56:49');
INSERT INTO `tb_discuss` VALUES (102, 30, 'admin', '22', '2022-07-29 14:59:21');
INSERT INTO `tb_discuss` VALUES (103, 30, 'admin', '44444444', '2022-07-29 15:31:06');
INSERT INTO `tb_discuss` VALUES (104, 30, 'wyn3', '22', '2022-08-19 16:09:12');
INSERT INTO `tb_discuss` VALUES (105, 33, 'gaoge', '不错不错', '2022-08-31 16:24:10');
INSERT INTO `tb_discuss` VALUES (106, 33, 'gaoge', '学到了，感谢！', '2022-08-31 16:24:18');
INSERT INTO `tb_discuss` VALUES (107, 33, 'gaoge', '长知识了', '2022-08-31 16:26:02');
INSERT INTO `tb_discuss` VALUES (108, 22, 'wyn3', '太简单', '2022-09-06 16:19:37');

-- ----------------------------
-- Table structure for tb_expert
-- ----------------------------
DROP TABLE IF EXISTS `tb_expert`;
CREATE TABLE `tb_expert`  (
  `user_name` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `real_name` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `phone` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `profession` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `position` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `belong` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  PRIMARY KEY (`user_name`) USING BTREE
) ENGINE = InnoDB CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = COMPACT;

-- ----------------------------
-- Records of tb_expert
-- ----------------------------
INSERT INTO `tb_expert` VALUES ('exp', '王壹', '13698746532', '生物化学', '高级工程师', '青岛生物研究所');
INSERT INTO `tb_expert` VALUES ('gaoge', '高歌', '15649599256', '生物学', '高级职称', '山东省农科院');
INSERT INTO `tb_expert` VALUES ('wyn', '王玉娜', '17892322499', '生物化学', '高级工程师', '青岛生物研究所');
INSERT INTO `tb_expert` VALUES ('wyn2', '王艳安', '13192924932', '生物化学', '高级工程师', '青岛生物研究所');
INSERT INTO `tb_expert` VALUES ('zhangxu', '张旭', '18224995956', '生物学', '中级职称', '山东省农科院');

-- ----------------------------
-- Table structure for tb_finance
-- ----------------------------
DROP TABLE IF EXISTS `tb_finance`;
CREATE TABLE `tb_finance`  (
  `finance_id` int NOT NULL AUTO_INCREMENT,
  `bank_id` int NOT NULL,
  `own_name` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `real_name` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `phone` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `id_num` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `status` int NOT NULL,
  `remark` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `money` decimal(65, 2) NOT NULL,
  `rate` decimal(65, 2) NOT NULL,
  `repayment` int NOT NULL,
  `create_time` datetime NOT NULL,
  `update_time` datetime NOT NULL,
  `combination_name1` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `combination_phone1` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `combination_idnum1` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `combination_name2` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `combination_phone2` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `combination_idnum2` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `file_info` text CHARACTER SET utf8 COLLATE utf8_general_ci NULL,
  PRIMARY KEY (`finance_id`) USING BTREE,
  INDEX `bank_id`(`bank_id` ASC) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 142 CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = COMPACT;

-- ----------------------------
-- Records of tb_finance
-- ----------------------------
INSERT INTO `tb_finance` VALUES (100, 1001, 'wyn', '王亚楠', '22222222222', '222222222222222222', 1, 're', 100.00, 12.00, 1, '2022-03-28 17:14:32', '2022-03-28 17:14:36', NULL, NULL, NULL, NULL, '', '', 'dd4f92b790dc4f36964888c98169ce66.jpg');
INSERT INTO `tb_finance` VALUES (102, 1001, 'wyn', '王亚楠', '22222222222', '222222222222222222', 2, 're', 109.00, 12.00, 1, '2022-03-28 17:14:32', '2022-03-28 17:14:36', NULL, NULL, NULL, NULL, '', '', 'dd4f92b790dc4f36964888c98169ce66.jpg');
INSERT INTO `tb_finance` VALUES (103, 1004, 'zhangxukun', '张旭坤', '22222222222', '222222222222222222', 0, NULL, 160000.00, 1.80, 36, '2022-07-22 09:59:12', '2022-07-22 09:59:12', '张龙', NULL, NULL, '赵虎', '22222222222', '222222222222222222', 'dd4f92b790dc4f36964888c98169ce66.jpg');
INSERT INTO `tb_finance` VALUES (104, 1006, 'zhangxukun', '张旭坤', '13176879739', '370827199001142213', 2, NULL, 150000.00, 1.10, 30, '2022-07-22 10:02:04', '2022-07-22 10:02:04', NULL, NULL, NULL, NULL, '', '', 'dd4f92b790dc4f36964888c98169ce66.jpg 45f9675d11a34dd3a6df296b8bc4b7e5.jpg dd4f92b790dc4f36964888c98169ce66.jpg dd4f92b790dc4f36964888c98169ce66.jpg dd4f92b790dc4f36964888c98169ce66.jpg');
INSERT INTO `tb_finance` VALUES (105, 1005, 'zhangxukun', '张旭坤', '22222222222', '222222222222222222', 0, NULL, 100000.00, 2.00, 24, '2022-07-22 10:02:29', '2022-07-22 10:02:29', NULL, NULL, NULL, NULL, '', '', 'dd4f92b790dc4f36964888c98169ce66.jpg');
INSERT INTO `tb_finance` VALUES (106, 1004, 'zhangxukun', '张旭坤', '22222222222', '222222222222222222', 0, NULL, 150000.00, 1.10, 30, '2022-07-22 10:26:02', '2022-07-22 10:26:02', NULL, NULL, NULL, NULL, '', '', 'dd4f92b790dc4f36964888c98169ce66.jpg');
INSERT INTO `tb_finance` VALUES (133, 1006, 'lzh', '李增虎', '15621367568', '373312199801032719', 2, NULL, 60000.00, 1.00, 6, '2022-08-17 17:18:14', '2022-08-17 17:18:14', '冯德林', '22222222222', '222222222222222222', '李思', '22222222222', '222222222222222222', 'dd4f92b790dc4f36964888c98169ce66.jpg');
INSERT INTO `tb_finance` VALUES (137, 1007, 'lisi', '李思', '15623652365', '371323199601062719', 0, NULL, 100000.00, 1.20, 6, '2022-08-29 14:38:27', '2022-08-29 14:38:27', '李增虎', '17814382372', '372823199005162816', '何海涵', '13176852739', '373833198910073526', 'dd4f92b790dc4f36964888c98169ce66.jpg');
INSERT INTO `tb_finance` VALUES (141, 1006, 'wyn3', '王亚楠', '13696859685', '370201196501026352', 2, NULL, 120000.00, 1.80, 36, '2022-09-08 10:12:35', '2022-09-08 10:12:35', '沙发', '13754125623', '370203199802036513', '的撒', '13895212195', '370213199009160203', '47fc92e1068d4c20833e4e197aec0b0d.jpg 20e7a0d77ecf4731b28ebc1d6ca22587.jpg ');

-- ----------------------------
-- Table structure for tb_financing_intention
-- ----------------------------
DROP TABLE IF EXISTS `tb_financing_intention`;
CREATE TABLE `tb_financing_intention`  (
  `id` int NOT NULL AUTO_INCREMENT,
  `user_name` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NOT NULL,
  `real_name` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NOT NULL,
  `address` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NOT NULL,
  `amount` int NOT NULL,
  `application` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NOT NULL,
  `item` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NOT NULL,
  `repayment_period` int NOT NULL,
  `area` int NOT NULL,
  `phone` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NOT NULL,
  `create_time` datetime NOT NULL,
  `update_time` datetime NOT NULL,
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 7 CHARACTER SET = utf8mb4 COLLATE = utf8mb4_general_ci ROW_FORMAT = DYNAMIC;

-- ----------------------------
-- Records of tb_financing_intention
-- ----------------------------
INSERT INTO `tb_financing_intention` VALUES (5, 'zhangxukun', '张旭坤', '山东省菏泽市', 80000, '种植农作物', '苹果', 60, 90, '13176879739', '2022-08-09 14:56:31', '2022-08-10 14:56:35');
INSERT INTO `tb_financing_intention` VALUES (6, 'wyn3', '王亚楠', '威海市', 1000000, '芒果种植', '芒果', 36, 1, '13792499256', '2022-09-08 09:58:14', '2022-09-08 10:01:15');

-- ----------------------------
-- Table structure for tb_knowledge
-- ----------------------------
DROP TABLE IF EXISTS `tb_knowledge`;
CREATE TABLE `tb_knowledge`  (
  `knowledge_id` int NOT NULL AUTO_INCREMENT,
  `title` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `content` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `pic_path` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `own_name` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL COMMENT '发布者名字',
  `create_time` time NOT NULL,
  `update_time` datetime NOT NULL,
  PRIMARY KEY (`knowledge_id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 34 CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = COMPACT;

-- ----------------------------
-- Records of tb_knowledge
-- ----------------------------
INSERT INTO `tb_knowledge` VALUES (30, '猫是否喜欢吃食物', '猫咪喜欢食物的表现：\r\n\r\n在给予猫咪喜欢的食物时，猫咪出现舔唇（猫慢慢地舔嘴的两边，嘴至少半张着，舌头伸得远远的）的次数更多。吃到不喜欢的东西时，猫咪出现了向后飞耳朵', 'tian.webp', 'zhangxukun', '10:00:02', '2021-08-30 10:00:02');
INSERT INTO `tb_knowledge` VALUES (33, '猫咪呕吐物', '猫咪呕吐物严重程度参考', 'VIDEO1708266131882.mp4', 'gaoge', '16:21:54', '2022-09-07 16:21:54');

-- ----------------------------
-- Table structure for tb_order
-- ----------------------------
DROP TABLE IF EXISTS `tb_order`;
CREATE TABLE `tb_order`  (
  `order_id` int NOT NULL AUTO_INCREMENT COMMENT '订单id',
  `title` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL COMMENT '需求标题',
  `price` decimal(65, 2) NULL DEFAULT NULL COMMENT '期望价格',
  `content` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL COMMENT '内容',
  `order_status` int NOT NULL DEFAULT 0 COMMENT '订单状态，0表示待合作，1表示待发货，2表示完成，3表示完成但未评价',
  `type` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL COMMENT '1销售订单，2需求订单',
  `picture` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `own_name` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL COMMENT '发起订单人',
  `cooperation_name` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '合作人名字',
  `create_time` datetime NOT NULL,
  `update_time` datetime NOT NULL,
  `address` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '订单收货地址',
  PRIMARY KEY (`order_id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 147 CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = COMPACT;

-- ----------------------------
-- Records of tb_order
-- ----------------------------
INSERT INTO `tb_order` VALUES (1, '肥梨', NULL, '胆小谨慎，小心摸 ', 0, 'goods', '1.jpg', 'akane', NULL, '2024-02-18 23:25:09', '2024-02-18 23:25:12', '四川省');
INSERT INTO `tb_order` VALUES (2, '鳌拜', NULL, '活泼好动，可摸', 0, 'goods', '2.jpg', 'akane', NULL, '2024-02-18 23:30:39', '2024-02-18 23:30:42', NULL);
INSERT INTO `tb_order` VALUES (3, '小金', NULL, '活泼亲人，未知', 0, 'goods', '3.jpg', 'akane', NULL, '2024-02-18 23:27:12', '2024-02-18 23:27:17', NULL);
INSERT INTO `tb_order` VALUES (4, '蓝胖子', NULL, '亲人安静，大胆摸', 0, 'goods', '4.jpg', 'akane', NULL, '2024-02-18 23:28:06', '2024-02-18 23:28:13', NULL);
INSERT INTO `tb_order` VALUES (5, '八嘎', NULL, '奶牛猫，亲人', 0, 'goods', 'baga.jpg', 'aaa', NULL, '2023-07-21 09:49:52', '2023-07-21 09:49:52', '湖南省');
INSERT INTO `tb_order` VALUES (6, '小白花', NULL, '十分安静，可摸 ，有皮肤病，瘦弱', 0, 'goods', '6.jpg', 'akane', NULL, '2024-02-18 23:37:25', '2024-02-18 23:37:30', NULL);
INSERT INTO `tb_order` VALUES (7, '小田', NULL, '安静，小心摸', 0, 'goods', '7.jpg', 'akane', NULL, '2024-02-18 23:41:38', '2024-02-18 23:41:41', NULL);
INSERT INTO `tb_order` VALUES (8, '美女', NULL, '小心谨慎，小心摸', 0, 'goods', '8.jpg', 'akane', NULL, '2024-02-18 23:43:28', '2024-02-18 23:43:32', NULL);
INSERT INTO `tb_order` VALUES (9, '橘子', NULL, '安静爱晒太阳，小心摸', 0, 'goods', '9.jpg', 'akane', NULL, '2024-02-18 23:44:25', '2024-02-18 23:44:28', NULL);
INSERT INTO `tb_order` VALUES (10, '狗子', NULL, '活泼自律，可摸', 0, 'goods', '10.jpg', 'akane', NULL, '2024-02-18 23:46:00', '2024-02-18 23:46:03', NULL);
INSERT INTO `tb_order` VALUES (11, '威猛梨 ', NULL, '易怒彪悍，最好不摸', 0, 'goods', '11.jpg', 'akane', NULL, '2024-02-18 23:47:08', '2024-02-18 23:47:14', NULL);
INSERT INTO `tb_order` VALUES (12, '学姐', NULL, '安静不爱动，大胆摸', 0, 'goods', '12.jpg', 'akane', NULL, '2024-02-18 23:48:08', '2024-02-18 23:48:11', NULL);
INSERT INTO `tb_order` VALUES (13, '胖胖', NULL, '爱睡觉，可摸', 0, 'goods', '13.jpg', 'akane', NULL, '2024-02-18 23:49:03', '2024-02-18 23:49:06', NULL);
INSERT INTO `tb_order` VALUES (14, '小帽', NULL, '活泼爱吓人，小心摸', 0, 'goods', NULL, 'akane', NULL, '2024-02-18 23:49:41', '2024-02-18 23:49:44', NULL);
INSERT INTO `tb_order` VALUES (90, '投喂志愿者', NULL, '负责投喂校园的猫咪', 0, 'needs', '35b21d2ca3b1402f9ca67f917ce006c1.gif', 'lzh', NULL, '2024-02-19 19:18:00', '2024-02-19 19:18:06', '17-412');
INSERT INTO `tb_order` VALUES (92, '后台管理志愿者', NULL, '管理后台数据', 0, 'needs', '', 'zhangxukun', NULL, '2024-02-19 19:18:10', '2024-02-19 19:18:14', '17-412');

-- ----------------------------
-- Table structure for tb_purchase
-- ----------------------------
DROP TABLE IF EXISTS `tb_purchase`;
CREATE TABLE `tb_purchase`  (
  `purchase_id` int NOT NULL AUTO_INCREMENT,
  `own_name` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `purchase_type` int NOT NULL,
  `total_price` decimal(65, 2) NOT NULL,
  `address` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL COMMENT '订单收货地址',
  `purchase_status` int NOT NULL,
  `create_time` datetime NOT NULL,
  `update_time` datetime NOT NULL,
  PRIMARY KEY (`purchase_id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 126 CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = COMPACT;

-- ----------------------------
-- Records of tb_purchase
-- ----------------------------
INSERT INTO `tb_purchase` VALUES (120, 'wyn3', 1, 15.80, '184', 1, '2022-09-07 16:09:34', '2022-09-07 16:09:34');
INSERT INTO `tb_purchase` VALUES (121, 'wyn3', 1, 265.00, '184', 1, '2022-09-07 16:09:55', '2022-09-07 16:09:55');
INSERT INTO `tb_purchase` VALUES (122, 'zhangxukun', 1, 324.00, '147', 1, '2022-09-08 10:13:44', '2022-09-08 10:13:44');
INSERT INTO `tb_purchase` VALUES (123, 'aaa', 1, 22.81, '190', 1, '2023-07-18 10:55:51', '2023-07-18 10:55:51');
INSERT INTO `tb_purchase` VALUES (124, 'zqy', 1, 0.00, '191', 1, '2024-02-19 18:52:28', '2024-02-19 18:52:28');
INSERT INTO `tb_purchase` VALUES (125, 'zqy', 1, 0.00, '191', 1, '2024-02-19 18:52:41', '2024-02-19 18:52:41');

-- ----------------------------
-- Table structure for tb_purchase_detail
-- ----------------------------
DROP TABLE IF EXISTS `tb_purchase_detail`;
CREATE TABLE `tb_purchase_detail`  (
  `detail_id` int NOT NULL AUTO_INCREMENT,
  `purchase_id` int NOT NULL,
  `order_id` int NOT NULL,
  `unin_price` decimal(65, 2) NOT NULL,
  `sum_price` decimal(65, 2) NOT NULL,
  `count` int NOT NULL,
  PRIMARY KEY (`detail_id`) USING BTREE,
  INDEX `purchase_id`(`purchase_id` ASC) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 129 CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = COMPACT;

-- ----------------------------
-- Records of tb_purchase_detail
-- ----------------------------
INSERT INTO `tb_purchase_detail` VALUES (123, 120, 78, 15.80, 15.80, 1);
INSERT INTO `tb_purchase_detail` VALUES (124, 121, 97, 69.00, 69.00, 1);
INSERT INTO `tb_purchase_detail` VALUES (125, 121, 89, 98.00, 196.00, 2);
INSERT INTO `tb_purchase_detail` VALUES (126, 122, 80, 324.00, 324.00, 1);
INSERT INTO `tb_purchase_detail` VALUES (127, 123, 71, 22.81, 22.81, 1);
INSERT INTO `tb_purchase_detail` VALUES (128, 124, 2, 0.00, 0.00, 1);

-- ----------------------------
-- Table structure for tb_question
-- ----------------------------
DROP TABLE IF EXISTS `tb_question`;
CREATE TABLE `tb_question`  (
  `id` int NOT NULL AUTO_INCREMENT COMMENT 'id',
  `expert_name` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL COMMENT '专家',
  `questioner` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL COMMENT '手机号',
  `phone` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL COMMENT '作物详细信息',
  `plant_name` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL COMMENT '农作物名称',
  `title` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL COMMENT '问题标题',
  `question` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '问题',
  `answer` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '回答',
  `status` int NOT NULL,
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 114 CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = COMPACT;

-- ----------------------------
-- Records of tb_question
-- ----------------------------
INSERT INTO `tb_question` VALUES (101, 'zhangxu', 'wyn3', '13792499999', '玉米', '玉米苗灌溉', '专家您好，我想请问玉米苗新技术灌溉，对玉米苗有没有影响', '', 0);
INSERT INTO `tb_question` VALUES (103, 'zhangxu', 'wyn3', '13792499999', '新疆哈密瓜', '新疆哈密瓜甜度控制', '新疆哈密瓜甜度是否跟日晒有关', '哈密瓜性喜充足的阳光和较大的昼夜温差,白天可以充分发挥光合作用,而夜晚的呼吸消耗较小,有利于养分沉淀', 0);
INSERT INTO `tb_question` VALUES (108, 'gaoge', 'lzh', '15621367568', '苹果树', '苹果果树种植方法', '苹果果树种植多久浇一次水比较好呀', NULL, 0);
INSERT INTO `tb_question` VALUES (110, 'gaoge', 'wyn3', '13596488256', '这是测试提问', '这是测试提问', '这是测试提问', NULL, 0);
INSERT INTO `tb_question` VALUES (111, 'gaoge', 'wyn3', '13792499275', '草莓', '北方草莓种植品种', '北方草莓种植品种有哪些', '红颜，甜宝', 1);
INSERT INTO `tb_question` VALUES (112, 'gaoge', 'aaa', '13411223344', '水稻', '水稻产量低', '今年虫害使得水稻产量低，怎么有效防虫，治虫', NULL, 0);
INSERT INTO `tb_question` VALUES (113, 'exp', 'aaa', '13411223344', '辣椒', '辣椒种植', '辣椒种植时间', NULL, 0);

-- ----------------------------
-- Table structure for tb_reserve
-- ----------------------------
DROP TABLE IF EXISTS `tb_reserve`;
CREATE TABLE `tb_reserve`  (
  `id` int NOT NULL AUTO_INCREMENT COMMENT 'id',
  `expert_name` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL COMMENT '专家',
  `questioner` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL COMMENT '咨询者',
  `area` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL COMMENT '面积',
  `address` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL COMMENT '土地地址',
  `plant_name` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL COMMENT '农作物名称',
  `soil_condition` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL COMMENT '土壤条件',
  `plant_condition` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL COMMENT '作物条件',
  `plant_detail` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL COMMENT '作物详细信息',
  `phone` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL COMMENT '作物详细信息',
  `message` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '留言',
  `answer` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '回答',
  `status` int NOT NULL,
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 212 CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = COMPACT;

-- ----------------------------
-- Records of tb_reserve
-- ----------------------------
INSERT INTO `tb_reserve` VALUES (210, 'gaoge', 'wyn3', '2', '青岛崂山区北宅', '草莓', '沙地', '越冬植物', '红颜草莓', '13785964152', NULL, '已处理', 1);
INSERT INTO `tb_reserve` VALUES (211, 'exp', 'aaa', '5亩', '湖南省', '辣椒', '肥沃', '良好', '青椒', '13411223344', NULL, NULL, 0);

-- ----------------------------
-- Table structure for tb_sell_purchase
-- ----------------------------
DROP TABLE IF EXISTS `tb_sell_purchase`;
CREATE TABLE `tb_sell_purchase`  (
  `sell_purchase_id` int NOT NULL AUTO_INCREMENT,
  `purchase_id` int NOT NULL,
  `own_name` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `purchase_type` int NOT NULL,
  `unin_pricee` decimal(65, 2) NOT NULL,
  `sum_price` decimal(65, 2) NOT NULL,
  `address` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL COMMENT '订单收货地址',
  `purchase_status` int NOT NULL,
  `create_time` datetime NOT NULL,
  `update_time` datetime NOT NULL,
  `order_id` int NOT NULL,
  PRIMARY KEY (`sell_purchase_id`) USING BTREE,
  INDEX `purchase_id`(`purchase_id` ASC) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 20 CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = COMPACT;

-- ----------------------------
-- Records of tb_sell_purchase
-- ----------------------------
INSERT INTO `tb_sell_purchase` VALUES (15, 120, 'zhangxukun', 2, 15.80, 15.80, '184', 1, '2022-09-07 16:09:34', '2022-09-07 16:09:34', 78);
INSERT INTO `tb_sell_purchase` VALUES (16, 121, 'zwr', 2, 69.00, 69.00, '184', 1, '2022-09-07 16:09:55', '2022-09-07 16:09:55', 97);
INSERT INTO `tb_sell_purchase` VALUES (17, 121, 'zwr', 2, 98.00, 196.00, '184', 1, '2022-09-07 16:09:55', '2022-09-07 16:09:55', 89);
INSERT INTO `tb_sell_purchase` VALUES (18, 122, 'wyn3', 2, 324.00, 324.00, '147', 1, '2022-09-08 10:13:44', '2022-09-08 10:13:44', 80);
INSERT INTO `tb_sell_purchase` VALUES (19, 123, 'wyn3', 2, 22.81, 22.81, '190', 1, '2023-07-18 10:55:51', '2023-07-18 10:55:51', 71);

-- ----------------------------
-- Table structure for tb_shoppingcart
-- ----------------------------
DROP TABLE IF EXISTS `tb_shoppingcart`;
CREATE TABLE `tb_shoppingcart`  (
  `shopping_id` int NOT NULL AUTO_INCREMENT,
  `order_id` int NOT NULL,
  `count` int NOT NULL,
  `own_name` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `create_time` datetime NOT NULL,
  `update_time` datetime NOT NULL,
  PRIMARY KEY (`shopping_id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 9 CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = COMPACT;

-- ----------------------------
-- Records of tb_shoppingcart
-- ----------------------------
INSERT INTO `tb_shoppingcart` VALUES (2, 82, 1, 'aaa', '2023-07-18 10:23:31', '2023-07-18 16:20:58');
INSERT INTO `tb_shoppingcart` VALUES (4, 71, 1, 'aaa', '2023-07-18 16:51:19', '2023-07-22 15:28:45');
INSERT INTO `tb_shoppingcart` VALUES (5, 71, 1, 'akane', '2024-02-18 21:55:27', '2024-02-18 21:55:27');
INSERT INTO `tb_shoppingcart` VALUES (6, 146, 2, 'akane', '2024-02-18 23:04:27', '2024-02-18 23:04:27');
INSERT INTO `tb_shoppingcart` VALUES (8, 1, 1, 'zqy', '2024-02-19 18:34:16', '2024-02-19 18:34:16');

-- ----------------------------
-- Table structure for tb_user
-- ----------------------------
DROP TABLE IF EXISTS `tb_user`;
CREATE TABLE `tb_user`  (
  `user_name` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `password` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `stu_id` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `phone` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `identity_num` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `address` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '地址',
  `role` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL DEFAULT 'user' COMMENT 'user普通用户，expert专家，admin管理员',
  `create_time` datetime NOT NULL,
  `update_time` datetime NOT NULL,
  `integral` int NULL DEFAULT 500 COMMENT '积分500',
  `credit` int NULL DEFAULT 5 COMMENT '信誉1，2，3，4，5',
  `avatar` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '头像',
  `real_name` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  PRIMARY KEY (`user_name`) USING BTREE
) ENGINE = InnoDB CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = COMPACT;

-- ----------------------------
-- Records of tb_user
-- ----------------------------
INSERT INTO `tb_user` VALUES ('admin', '$2a$10$AC1gCsk1V5Ov7n.zvkxxvuMM4f3BnWmJqr4jNNYtVAm8j4nBdxIUq', '管理员', '17894286579', '370343199612012718', '17-401', 'admin', '2021-09-01 09:00:51', '2022-09-01 16:35:24', 0, 0, '2ae82e5cf7ca47c9ab516d37dccab5dd.jpg', '');
INSERT INTO `tb_user` VALUES ('akane', '$2a$10$5hwc.N4FoaiaZ46GclR7meIo/TAv3eR3/PfzhCCGbajgTWcAuu53W', '1234', NULL, NULL, NULL, 'admin', '2024-02-10 21:56:39', '2024-02-10 21:56:39', 0, 0, 'rongxiaotong.gif', NULL);
INSERT INTO `tb_user` VALUES ('bbb', '$2a$10$V/bSZSKdDGYPxvxaG29a/eNE3eXh8F.UPaWjYvVhoWOx5ItZm9Gy.', '202131090011', NULL, NULL, NULL, 'admin', '2023-07-17 11:44:01', '2023-07-17 11:44:01', 0, 0, 'rongxiaotong.gif', NULL);
INSERT INTO `tb_user` VALUES ('exp', '$2a$10$rHBj8v/t0gm1V0G2e5.oHOQDF0LtLI0TAMk4k7rGJCFILiSuO1rb2', '3234', '13698746532', '431121200003010820', '17-401', 'expert', '2023-07-24 10:44:59', '2023-07-24 10:47:54', 0, 0, '785ed5ff66c144db9c7e7132ca4291b0.jpg', '王壹');
INSERT INTO `tb_user` VALUES ('gaoge', '$2a$10$AC1gCsk1V5Ov7n.zvkxxvuMM4f3BnWmJqr4jNNYtVAm8j4nBdxIUq', '4234', '18766661439', '370343199612016352', '17-401', 'expert', '2021-08-27 16:05:20', '2022-09-01 11:21:11', 0, 0, 'f1bd96ecafba46cca7a0c6af92d84fbd.jpg', '高歌');
INSERT INTO `tb_user` VALUES ('lisi', '$2a$10$AC1gCsk1V5Ov7n.zvkxxvuMM4f3BnWmJqr4jNNYtVAm8j4nBdxIUq', '5234', '15623652365', '371323199601062719', '17-401', 'user', '2022-08-19 16:39:11', '2022-09-01 17:20:04', 0, 0, '2ae82e5cf7ca47c9ab516d37dccab5d2.jpg', '李思');
INSERT INTO `tb_user` VALUES ('lzh', '$2a$10$AC1gCsk1V5Ov7n.zvkxxvuMM4f3BnWmJqr4jNNYtVAm8j4nBdxIUq', '6234', '15621367568', '373312199801032719', '17-401', 'user', '2022-07-22 11:05:54', '2022-09-07 16:45:53', 0, 0, 'ac10c6dc98d14afda5f09ba81f286197.jpg', '李增虎');
INSERT INTO `tb_user` VALUES ('tyy', '$2a$10$AC1gCsk1V5Ov7n.zvkxxvuMM4f3BnWmJqr4jNNYtVAm8j4nBdxIUq', '7234', '15236983695', '370343199613652415', '17-412', 'user', '2021-08-30 09:59:50', '2022-08-10 15:44:36', 0, 0, '39557b8fb7a54f81833c8d4a7309b05c.jpg', '唐艳艳');
INSERT INTO `tb_user` VALUES ('wangya', '$2a$10$nLKfTbJqrA5IoRdY.PsZBOACe2s4H3k2NPKLy5LdWL0wKWno0.oDG', '8234', '13792449255', '370213198911120506', '17-412', 'user', '2022-09-08 10:14:22', '2022-09-08 10:19:34', 0, 0, 'rongxiaotong.gif', '王娅');
INSERT INTO `tb_user` VALUES ('wyn', '$2a$10$AC1gCsk1V5Ov7n.zvkxxvuMM4f3BnWmJqr4jNNYtVAm8j4nBdxIUq', '202131090010', '18711236658', '370123200008123456', '17-412', 'expert', '2021-08-27 16:05:20', '2022-09-01 11:21:11', 0, 0, 'f1bd96ecafba46cca7a0c6af92d84fbd.jpg', '李玉娜');
INSERT INTO `tb_user` VALUES ('wyn3', '$2a$10$AC1gCsk1V5Ov7n.zvkxxvuMM4f3BnWmJqr4jNNYtVAm8j4nBdxIUq', '9234', '15630429628', '324624861233056852', '17-412', 'user', '2022-04-11 11:36:03', '2022-08-18 15:04:18', 0, 0, 'bd12eba3a9a24d89845ebbdb7fbff448.jpg', '王亚楠');
INSERT INTO `tb_user` VALUES ('zhangsan', '$2a$10$AC1gCsk1V5Ov7n.zvkxxvuMM4f3BnWmJqr4jNNYtVAm8j4nBdxIUq', '2345', '13792499274', '370343199609176060', '17-412', 'user', '2022-08-19 16:37:10', '2022-08-19 16:37:10', 0, 0, 'bd12eba3a9a24d89845ebbdb7fbff448.jpg', '张三');
INSERT INTO `tb_user` VALUES ('zhangxu', '$2a$10$AC1gCsk1V5Ov7n.zvkxxvuMM4f3BnWmJqr4jNNYtVAm8j4nBdxIUq', '3345', '13456567878', '370123200001012233', '17-412', 'expert', '2021-08-31 10:13:42', '2022-08-10 15:43:58', 0, 0, '2ae82e5cf7ca47c9ab516d37dccab5dd.jpg', '张旭');
INSERT INTO `tb_user` VALUES ('zhangxukun', '$2a$10$AC1gCsk1V5Ov7n.zvkxxvuMM4f3BnWmJqr4jNNYtVAm8j4nBdxIUq', '4345', '13544545454', '370123200008083422', '17-412', 'user', '2021-08-27 16:05:25', '2022-08-23 15:19:28', 0, 0, '2ae82e5cf7ca47c9ab516d37dccab5dd.jpg', '张旭坤');
INSERT INTO `tb_user` VALUES ('zqy', '$2a$10$aJr8xIhnI4MsXQC14qRTTejo6rj4BH03FnEJqlOosCFfB4lrpvXM6', '202131090010', NULL, NULL, '17_412', 'user', '2024-02-19 17:55:06', '2024-02-19 18:28:12', 0, 0, 'rongxiaotong.gif', '张茜颖');
INSERT INTO `tb_user` VALUES ('zwr', '$2a$10$AC1gCsk1V5Ov7n.zvkxxvuMM4f3BnWmJqr4jNNYtVAm8j4nBdxIUq', '5345', '15623652222', '111111111111111111', '17-412', 'user', '2021-08-30 09:20:24', '2022-08-23 15:23:34', 0, 0, 'bd12eba3a9a24d89845ebbdb7fbff449.jpg', '张文瑞');

SET FOREIGN_KEY_CHECKS = 1;
