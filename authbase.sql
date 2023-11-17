/*
Navicat MySQL Data Transfer

Source Server         : chenhai
Source Server Version : 80015
Source Host           : 192.168.3.165:3306
Source Database       : authbase

Target Server Type    : MYSQL
Target Server Version : 80015
File Encoding         : 65001

Date: 2023-11-17 17:07:37
*/

SET FOREIGN_KEY_CHECKS=0;

-- ----------------------------
-- Table structure for appparams
-- ----------------------------
DROP TABLE IF EXISTS `appparams`;
CREATE TABLE `appparams` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `params` varchar(500) NOT NULL,
  `result` varchar(255) NOT NULL,
  `app_id` int(11) NOT NULL,
  `train_time` datetime DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `app_id` (`app_id`),
  CONSTRAINT `appparams_ibfk_1` FOREIGN KEY (`app_id`) REFERENCES `model_application` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=67 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

-- ----------------------------
-- Records of appparams
-- ----------------------------
INSERT INTO `appparams` VALUES ('30', '{\'input_size\': \'12\', \'output_size\': \'1\', \'hidden_size\': \'100\', \'num_layers\': \'3\', \'learning_rate\': \'0.01\', \'batch_size\': \'32\', \'epochs\': \'100\'}', 'hpfOZ', '1', null);
INSERT INTO `appparams` VALUES ('31', '{\'input_size\': \'12\', \'output_size\': \'1\', \'hidden_size\': \'100\', \'num_layers\': \'3\', \'learning_rate\': \'0.01\', \'batch_size\': \'32\', \'epochs\': \'100\'}', 'xttok', '1', null);
INSERT INTO `appparams` VALUES ('32', '{\'input_size\': \'12\', \'output_size\': \'1\', \'hidden_size\': \'10\', \'num_layers\': \'3\', \'learning_rate\': \'0.01\', \'batch_size\': \'32\', \'epochs\': \'100\'}', '5rwIO', '1', null);
INSERT INTO `appparams` VALUES ('33', '{\'input_size\': \'12\', \'output_size\': \'1\', \'hidden_size\': \'10\', \'num_layers\': \'3\', \'learning_rate\': \'0.01\', \'batch_size\': \'32\', \'epochs\': \'100\'}', '54khb', '1', null);
INSERT INTO `appparams` VALUES ('34', '{\'input_size\': \'12\', \'output_size\': \'1\', \'hidden_size\': \'10\', \'num_layers\': \'3\', \'learning_rate\': \'0.01\', \'batch_size\': \'32\', \'epochs\': \'100\'}', '2yfm9', '1', null);
INSERT INTO `appparams` VALUES ('35', '{\'input_size\': \'12\', \'output_size\': \'1\', \'hidden_size\': \'10\', \'num_layers\': \'3\', \'learning_rate\': \'0.01\', \'batch_size\': \'32\', \'epochs\': \'10\'}', 'nuubZ', '1', null);
INSERT INTO `appparams` VALUES ('36', '{\'input_size\': \'12\', \'output_size\': \'1\', \'hidden_size\': \'10\', \'num_layers\': \'3\', \'learning_rate\': \'0.01\', \'batch_size\': \'32\', \'epochs\': \'10\'}', 'zwm7t', '1', null);
INSERT INTO `appparams` VALUES ('37', '{\'input_size\': \'12\', \'output_size\': \'1\', \'hidden_size\': \'10\', \'num_layers\': \'3\', \'learning_rate\': \'0.01\', \'batch_size\': \'32\', \'epochs\': \'10\'}', 'xdn0h', '1', null);
INSERT INTO `appparams` VALUES ('38', '{\'input_size\': \'12\', \'output_size\': \'1\', \'hidden_size\': \'70\', \'num_layers\': \'3\', \'learning_rate\': \'0.01\', \'batch_size\': \'32\', \'epochs\': \'10\'}', 'MGLdP', '1', null);
INSERT INTO `appparams` VALUES ('39', '{\'input_size\': \'12\', \'output_size\': \'1\', \'hidden_size\': \'70\', \'num_layers\': \'3\', \'learning_rate\': \'0.01\', \'batch_size\': \'32\', \'epochs\': \'10\'}', '8PWWo', '1', null);
INSERT INTO `appparams` VALUES ('40', '{\'alpha\': \'2000\', \'tau\': \'0\', \'K\': \'3\', \'DC\': \'0\', \'init\': \'1\', \'tol\': 1e-07}', 'QYQOB', '2', null);
INSERT INTO `appparams` VALUES ('41', '{\'input_size\': \'12\', \'output_size\': \'1\', \'hidden_size\': \'70\', \'num_layers\': \'3\', \'learning_rate\': \'0.01\', \'batch_size\': \'32\', \'epochs\': \'11\'}', 'qBvFS', '1', null);
INSERT INTO `appparams` VALUES ('42', '{\'input_size\': \'12\', \'output_size\': \'1\', \'hidden_size\': \'70\', \'num_layers\': \'3\', \'learning_rate\': \'0.01\', \'batch_size\': \'32\', \'epochs\': \'12\'}', 'DkU0x', '1', null);
INSERT INTO `appparams` VALUES ('43', '{\'input_size\': \'12\', \'output_size\': \'1\', \'hidden_size\': \'70\', \'num_layers\': \'3\', \'learning_rate\': \'0.01\', \'batch_size\': \'32\', \'epochs\': \'11\'}', 'OGb4U', '1', null);
INSERT INTO `appparams` VALUES ('44', '{\'input_size\': \'12\', \'output_size\': \'1\', \'hidden_size\': \'70\', \'num_layers\': \'3\', \'learning_rate\': \'0.01\', \'batch_size\': \'32\', \'epochs\': \'12\'}', 'J3jGA', '1', null);
INSERT INTO `appparams` VALUES ('45', '{\'input_size\': \'12\', \'output_size\': \'1\', \'hidden_size\': \'70\', \'num_layers\': \'3\', \'learning_rate\': \'0.01\', \'batch_size\': \'32\', \'epochs\': \'11\'}', 'J6Ifa', '1', null);
INSERT INTO `appparams` VALUES ('46', '{\'input_size\': \'12\', \'output_size\': \'1\', \'hidden_size\': \'70\', \'num_layers\': \'3\', \'learning_rate\': \'0.01\', \'batch_size\': \'32\', \'epochs\': \'11\'}', 'XLqGS', '1', null);
INSERT INTO `appparams` VALUES ('47', '{\'alpha\': \'2000\', \'tau\': \'0\', \'K\': \'3\', \'DC\': \'0\', \'init\': \'1\', \'tol\': 1e-07}', 'Fe932', '2', null);
INSERT INTO `appparams` VALUES ('48', '{\'input_size\': \'12\', \'output_size\': \'1\', \'hidden_size\': \'70\', \'num_layers\': \'3\', \'learning_rate\': \'0.01\', \'batch_size\': \'32\', \'epochs\': \'10\'}', 'joXnn', '1', null);
INSERT INTO `appparams` VALUES ('49', '{\'input_size\': \'12\', \'output_size\': \'1\', \'hidden_size\': \'70\', \'num_layers\': \'3\', \'learning_rate\': \'0.01\', \'batch_size\': \'32\', \'epochs\': \'10\'}', '0lfVV', '1', null);
INSERT INTO `appparams` VALUES ('50', '{\'input_size\': \'12\', \'output_size\': \'1\', \'hidden_size\': \'70\', \'num_layers\': \'3\', \'learning_rate\': \'0.01\', \'batch_size\': \'32\', \'epochs\': \'22\'}', 'pHfa8', '1', null);
INSERT INTO `appparams` VALUES ('51', '{\'input_size\': \'12\', \'output_size\': \'1\', \'hidden_size\': \'70\', \'num_layers\': \'3\', \'learning_rate\': \'0.01\', \'batch_size\': \'32\', \'epochs\': \'11\'}', 'Ahmyw', '1', null);
INSERT INTO `appparams` VALUES ('52', '{\'input_size\': \'12\', \'output_size\': \'1\', \'hidden_size\': \'70\', \'num_layers\': \'3\', \'learning_rate\': \'0.01\', \'batch_size\': \'32\', \'epochs\': \'11\'}', 'ffPAc', '1', null);
INSERT INTO `appparams` VALUES ('53', '{\'alpha\': \'2000\', \'tau\': \'0\', \'K\': \'3\', \'DC\': \'0\', \'init\': \'1\', \'tol\': 1e-07}', 'PBRMd', '2', null);
INSERT INTO `appparams` VALUES ('54', '{\'input_size\': \'12\', \'output_size\': \'1\', \'hidden_size\': \'70\', \'num_layers\': \'3\', \'learning_rate\': \'0.01\', \'batch_size\': \'32\', \'epochs\': \'11\'}', 'yVYSN', '1', null);
INSERT INTO `appparams` VALUES ('55', '{\'input_size\': \'12\', \'output_size\': \'1\', \'hidden_size\': \'70\', \'num_layers\': \'3\', \'learning_rate\': \'0.01\', \'batch_size\': \'32\', \'epochs\': \'11\'}', 'QTNNV', '1', null);
INSERT INTO `appparams` VALUES ('56', '{\'input_size\': \'12\', \'output_size\': \'1\', \'hidden_size\': \'70\', \'num_layers\': \'3\', \'learning_rate\': \'0.01\', \'batch_size\': \'32\', \'epochs\': \'2\'}', '36NQj', '1', null);
INSERT INTO `appparams` VALUES ('57', '{\'input_size\': \'12\', \'output_size\': \'1\', \'hidden_size\': \'70\', \'num_layers\': \'3\', \'learning_rate\': \'0.01\', \'batch_size\': \'32\', \'epochs\': \'21\'}', 'TbXVL', '1', null);
INSERT INTO `appparams` VALUES ('58', '{\'input_size\': \'12\', \'output_size\': \'1\', \'hidden_size\': \'70\', \'num_layers\': \'3\', \'learning_rate\': \'0.01\', \'batch_size\': \'32\', \'epochs\': \'10\'}', 'ZKGeC', '1', null);
INSERT INTO `appparams` VALUES ('59', '{\'input_size\': \'12\', \'output_size\': \'1\', \'hidden_size\': \'70\', \'num_layers\': \'3\', \'learning_rate\': \'0.01\', \'batch_size\': \'32\', \'epochs\': \'11\'}', 'T1TH7', '1', null);
INSERT INTO `appparams` VALUES ('60', '{\'input_size\': \'12\', \'output_size\': \'1\', \'hidden_size\': \'70\', \'num_layers\': \'3\', \'learning_rate\': \'0.01\', \'batch_size\': \'32\', \'epochs\': \'10\'}', 'gJ1tA', '1', null);
INSERT INTO `appparams` VALUES ('61', '{\'alpha\': \'2000\', \'tau\': \'0\', \'K\': \'3\', \'DC\': \'0\', \'init\': \'1\', \'tol\': 1e-07}', 'X2Rg3', '2', null);
INSERT INTO `appparams` VALUES ('62', '{\'input_size\': \'12\', \'output_size\': \'1\', \'hidden_size\': \'70\', \'num_layers\': \'3\', \'learning_rate\': \'0.01\', \'batch_size\': \'32\', \'epochs\': \'11\'}', 'GLGl0', '1', null);
INSERT INTO `appparams` VALUES ('63', '{\'alpha\': \'2000\', \'tau\': \'0\', \'K\': \'3\', \'DC\': \'0\', \'init\': \'1\', \'tol\': 1e-07}', 'app/model_and_data/results/633fbe60-4028-4266-be3c-5b862729209e.png', '2', '2023-11-17 16:31:19');
INSERT INTO `appparams` VALUES ('64', '{\'input_size\': \'12\', \'output_size\': \'1\', \'hidden_size\': \'5\', \'num_layers\': \'3\', \'learning_rate\': \'0.01\', \'batch_size\': \'32\', \'epochs\': \'20\'}', 'app/model_and_data/results/479a0c9c-b4e7-432f-9cb0-9d126a6a10c1.png', '1', '2023-11-17 16:48:14');
INSERT INTO `appparams` VALUES ('65', '{\'alpha\': \'2000\', \'tau\': \'0\', \'K\': \'3\', \'DC\': \'0\', \'init\': \'1\', \'tol\': 1e-07}', 'app/model_and_data/results/ecb1d7eb-aeeb-4f3a-b3de-a6dbc46f1e15.png', '2', '2023-11-17 16:49:46');
INSERT INTO `appparams` VALUES ('66', '{\'input_size\': \'12\', \'output_size\': \'1\', \'hidden_size\': \'5\', \'num_layers\': \'3\', \'learning_rate\': \'0.01\', \'batch_size\': \'32\', \'epochs\': \'20\'}', 'app/model_and_data/results/c57284ed-2cd0-4ff7-ab5c-d931f3b5a433.png', '1', '2023-11-17 16:49:53');

-- ----------------------------
-- Table structure for datasets
-- ----------------------------
DROP TABLE IF EXISTS `datasets`;
CREATE TABLE `datasets` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(100) NOT NULL,
  `data_description` text CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `path` varchar(100) NOT NULL,
  `upload_date` datetime DEFAULT NULL,
  `created_username` varchar(100) NOT NULL,
  `created_userrole` varchar(100) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=23 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of datasets
-- ----------------------------
INSERT INTO `datasets` VALUES ('1', 'data.csv', '12个特征预测1个输出', 'app/model_and_data/datasets\\data.csv', '2023-11-17 11:36:48', 'admin', 'admin');
INSERT INTO `datasets` VALUES ('2', 'signal.csv', '信号处理，只有一个特征', 'app/model_and_data/datasets\\signal.csv', '2023-11-17 11:41:33', 'admin', 'admin');
INSERT INTO `datasets` VALUES ('20', '1www', ' asdfga', 'app/model_and_data/datasets\\dataset.sql', '2023-11-16 20:37:50', 'zhangsan', 'zhangsan');
INSERT INTO `datasets` VALUES ('21', '1', '1', 'app/model_and_data/datasets\\data.csv', '2023-11-16 20:46:36', 'zhangsan', 'zhangsan');
INSERT INTO `datasets` VALUES ('22', 'chenhai', 'chenhaid', 'app/model_and_data/datasets\\test.csv', '2023-11-16 20:47:09', 'zhangsan', 'zhangsan');

-- ----------------------------
-- Table structure for model_application
-- ----------------------------
DROP TABLE IF EXISTS `model_application`;
CREATE TABLE `model_application` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `model_name` varchar(100) NOT NULL,
  `model_description` text NOT NULL,
  `data_id` int(11) NOT NULL,
  `params` varchar(500) NOT NULL,
  `network_id` int(11) NOT NULL,
  `status` int(10) unsigned zerofill DEFAULT NULL,
  `created_username` varchar(100) CHARACTER SET gbk COLLATE gbk_chinese_ci DEFAULT NULL,
  `create_time` datetime DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `network_id` (`network_id`),
  KEY `data_id` (`data_id`) USING BTREE,
  CONSTRAINT `model_application_ibfk_1` FOREIGN KEY (`network_id`) REFERENCES `network` (`id`),
  CONSTRAINT `model_application_ibfk_2` FOREIGN KEY (`data_id`) REFERENCES `testdata` (`id`) ON DELETE RESTRICT ON UPDATE RESTRICT
) ENGINE=InnoDB AUTO_INCREMENT=58 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

-- ----------------------------
-- Records of model_application
-- ----------------------------
INSERT INTO `model_application` VALUES ('1', 'nb', '11111111', '1', '{\'input_size\': \'12\', \'output_size\': \'1\', \'hidden_size\': \'5\', \'num_layers\': \'3\', \'learning_rate\': \'0.01\', \'batch_size\': \'32\', \'epochs\': \'20\'}', '1', '0000000001', 'admin', null);
INSERT INTO `model_application` VALUES ('2', '信号分解', '用vmd对信号分解', '5', '{\'alpha\': \'2000\', \'tau\': \'0\', \'K\': \'3\', \'DC\': \'0\', \'init\': \'1\', \'tol\': 1e-07}', '2', '0000000001', 'admin', null);
INSERT INTO `model_application` VALUES ('3', 'mlp测试', '用mlp对data.csv操作', '5', '{\'input_size\': \'12\', \'output_size\': \'1\', \'hidden_size\': \'20\', \'num_layers\': \'3\', \'learning_rate\': \'0.01\', \'batch_size\': \'32\', \'epochs\': \'11\'}', '1', '0000000000', 'admin', '2023-11-17 11:38:22');
INSERT INTO `model_application` VALUES ('37', 'CNN', 'chenhai', '5', '{\'input_size\': \'22\', \'output_size\': \'44\', \'hidden_size\': \'1\', \'num_layers\': \'3\'}', '31', '0000000000', 'admin', null);
INSERT INTO `model_application` VALUES ('45', 'CNN', 'chenhai', '5', '{\'input_size\': \'1\', \'output_size\': \'1\', \'hidden_size\': \'10\', \'num_layers\': \'1\'}', '31', '0000000000', 'admin', null);
INSERT INTO `model_application` VALUES ('57', 'CNN', 'chenhai', '5', '{\'input_size\': \'12\', \'output_size\': \'1\', \'hidden_size\': \'12\', \'num_layers\': \'2\', \'learning_rate\': \'0.01\', \'batch_size\': \'100\', \'epochs\': \'32\'}', '1', '0000000000', 'zhangsan', null);

-- ----------------------------
-- Table structure for netcat
-- ----------------------------
DROP TABLE IF EXISTS `netcat`;
CREATE TABLE `netcat` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(100) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=7 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

-- ----------------------------
-- Records of netcat
-- ----------------------------
INSERT INTO `netcat` VALUES ('1', '信号处理');
INSERT INTO `netcat` VALUES ('2', '聚类');
INSERT INTO `netcat` VALUES ('3', '分类');
INSERT INTO `netcat` VALUES ('4', '回归');
INSERT INTO `netcat` VALUES ('5', '优化');
INSERT INTO `netcat` VALUES ('6', '异常点');

-- ----------------------------
-- Table structure for network
-- ----------------------------
DROP TABLE IF EXISTS `network`;
CREATE TABLE `network` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(100) NOT NULL,
  `path` varchar(255) NOT NULL,
  `network_params` varchar(500) NOT NULL,
  `category_id` int(11) NOT NULL,
  `is_deep` int(11) DEFAULT NULL,
  `created_username` varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NOT NULL,
  `create_time` datetime DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `category_id` (`category_id`),
  CONSTRAINT `network_ibfk_1` FOREIGN KEY (`category_id`) REFERENCES `netcat` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=38 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

-- ----------------------------
-- Records of network
-- ----------------------------
INSERT INTO `network` VALUES ('1', 'MLP', 'app/model_and_data/models\\mlp.py', '{\'input_size\': \'输入大小\', \'output_size\': \'输出大小\', \'hidden_size\': \'隐藏层大小\', \'num_layers\': \'隐藏层层数\', \'learning_rate\': \'学习率大小\', \'batch_size\': \'批大小\', \'epochs\': \'多少轮\'}', '1', '1', 'admin', null);
INSERT INTO `network` VALUES ('2', 'VMDS', 'app/model_and_data/models\\vmds.py', '{\'alpha\': \'数据保真度约束的平衡参数\', \'K\': \'要分解模态的数量\', \'tau\': \'噪声容量\', \'DC\': \'合成的信号\', \'init\': \'初始化值\', \'tol\': \'收敛准则的容忍度\'}', '1', '0', 'admin', null);
INSERT INTO `network` VALUES ('3', 'mlp', 'model_and_data/models\\mlp.py', '{\'input_size\': \'输入大小\', \'output_size\': \'输出大小\', \'hidden_size\': \'隐藏层大小\', \'num_layers\': \'隐藏层层数\'}', '4', '1', 'admin', null);
INSERT INTO `network` VALUES ('22', 'mlp11', 'model_and_data/models\\化工安全案例问答系统架构.doc', '{\'input_size\': \'输入大小\', \'batch_size\': \'批\', \'epoch\': \'伦茨\'}', '1', '0', 'admin', null);
INSERT INTO `network` VALUES ('28', '1', 'D:/Users/601backedge/app/model_and_data/models\\output1.json', '{\'1\': \'2\'}', '1', '0', 'admin', null);
INSERT INTO `network` VALUES ('30', 'cnn', 'D:/Users/601backedge/app/model_and_data/models\\cnn.py', '{\'kernel_size\': \'卷积核大小\', \'padding\': \'填充\', \'stride\': \'步幅\', \'epoch\': \'多少轮\', \'learning_rate\': \'学习率\'}', '3', '1', 'zhangsan', null);
INSERT INTO `network` VALUES ('31', '1', 'D:/Users/601backedge/app/model_and_data/models\\a.csv', '{\'1\': \'2\'}', '1', '0', 'admin', null);
INSERT INTO `network` VALUES ('34', '1', 'D:/desktop/601backedge/app/model_and_data/models\\.condarc', '{\'1\': \'2\'}', '1', '0', 'admin', null);
INSERT INTO `network` VALUES ('36', 'test', 'D:/desktop/601backedge/app/model_and_data/models\\.gitconfig', '{\'输入\': \'input\'}', '4', '0', 'admin', null);
INSERT INTO `network` VALUES ('37', '1', 'D:/desktop/601backedge/app/model_and_data/models\\sft.sh', '{\'1\': \'2\'}', '1', '0', 'admin', null);

-- ----------------------------
-- Table structure for syonline
-- ----------------------------
DROP TABLE IF EXISTS `syonline`;
CREATE TABLE `syonline` (
  `ID` varchar(36) CHARACTER SET gbk COLLATE gbk_chinese_ci NOT NULL,
  `CREATEDATETIME` datetime DEFAULT NULL,
  `IP` varchar(100) CHARACTER SET gbk COLLATE gbk_chinese_ci DEFAULT NULL,
  `LOGINNAME` varchar(100) CHARACTER SET gbk COLLATE gbk_chinese_ci DEFAULT NULL,
  `TYPE` varchar(1) CHARACTER SET gbk COLLATE gbk_chinese_ci DEFAULT NULL,
  PRIMARY KEY (`ID`) USING BTREE
) ENGINE=InnoDB DEFAULT CHARSET=gbk ROW_FORMAT=DYNAMIC;

-- ----------------------------
-- Records of syonline
-- ----------------------------
INSERT INTO `syonline` VALUES ('0563a8f2-d912-41ed-ae47-f1360e4d6dc0', '2023-11-07 09:11:03', '192.168.3.215', 'zhangsan', '1');
INSERT INTO `syonline` VALUES ('095f29f8-0a05-46b7-9425-4612064d91fa', '2023-11-06 13:56:31', '192.168.3.215', 'admin', '1');
INSERT INTO `syonline` VALUES ('0c69d762-af59-4f12-bd36-ea7b8af99e78', '2022-05-22 12:00:43', '127.0.0.1', 'admin', '1');
INSERT INTO `syonline` VALUES ('1045e70e-ec71-4dc6-bf14-d19f93e1bb6f', '2023-11-03 10:30:16', '127.0.0.1', 'admin', '1');
INSERT INTO `syonline` VALUES ('13be07b1-6372-4edc-9f5d-d311ee40dac9', '2023-11-07 20:18:20', '192.168.3.215', 'test', '1');
INSERT INTO `syonline` VALUES ('1895cf4b-8c03-4908-8064-1d065ccb1ed0', '2023-11-14 11:29:00', '127.0.0.1', 'admin', '1');
INSERT INTO `syonline` VALUES ('1b300611-1606-4de7-9ed7-8566220d915c', '2023-11-08 12:03:00', '127.0.0.1', 'admin', '1');
INSERT INTO `syonline` VALUES ('206100cc-3ebe-45ed-a951-3cba5094509b', '2023-11-07 21:19:50', '192.168.3.165', 'admin', '1');
INSERT INTO `syonline` VALUES ('29302cf4-eb2d-46c3-b1e8-7e7889b9aff1', '2023-11-17 10:20:52', '192.168.3.215', 'admin', '1');
INSERT INTO `syonline` VALUES ('2d414009-db4f-4acd-9c17-00cd81e6b676', '2023-11-15 15:13:34', '192.168.3.215', 'admin', '1');
INSERT INTO `syonline` VALUES ('34a5c3dd-b6c8-4875-a308-44671bf8e5ee', '2023-11-08 17:29:54', '127.0.0.1', 'admin', '1');
INSERT INTO `syonline` VALUES ('3ae7a7a3-834d-416c-8a6c-ceeff274c033', '2023-11-15 16:54:22', '192.168.3.215', 'zhangsan', '1');
INSERT INTO `syonline` VALUES ('468713d6-7f08-4346-b075-68ac24dc0cb8', '2023-11-07 20:18:39', '192.168.3.215', 'zhangsan', '1');
INSERT INTO `syonline` VALUES ('48c530fa-0a73-4c1c-b0de-adec5c4a3447', '2023-05-16 19:49:12', '127.0.0.1', 'admin', '1');
INSERT INTO `syonline` VALUES ('4ef22581-16da-432b-bbbd-62bd7b6b5a12', '2023-11-08 13:02:19', '127.0.0.1', 'admin', '1');
INSERT INTO `syonline` VALUES ('4ff8bdac-1ad0-4ad2-9c1b-68b17426c368', '2023-11-14 17:31:56', '127.0.0.1', 'admin', '1');
INSERT INTO `syonline` VALUES ('5004a0c4-f305-4b6e-8677-a7f3682746fe', '2023-11-06 11:42:55', '192.168.3.215', 'admin', '1');
INSERT INTO `syonline` VALUES ('5b1de2cc-e837-4848-b564-6ab73ed172e1', '2023-11-07 21:17:46', '192.168.3.165', 'admin', '1');
INSERT INTO `syonline` VALUES ('5dd92f45-a84f-441b-bba1-fbc150d2ae67', '2023-11-03 11:23:54', '127.0.0.1', 'admin', '1');
INSERT INTO `syonline` VALUES ('5eed3910-398b-4f89-ae3d-0457dfb85b8a', '2023-11-17 10:27:20', '192.168.3.215', 'admin', '1');
INSERT INTO `syonline` VALUES ('6044e177-523d-4242-a774-bdfa0409a5cd', '2023-11-07 16:04:25', '192.168.3.215', 'zhangsan', '1');
INSERT INTO `syonline` VALUES ('61ce9d5c-c616-4586-bb65-a460719c1045', '2023-11-07 20:18:03', '192.168.3.215', 'admin', '0');
INSERT INTO `syonline` VALUES ('6326b243-d8cf-40d0-be4b-0ed823e1ce56', '2023-11-06 10:03:58', '192.168.3.215', 'admin', '1');
INSERT INTO `syonline` VALUES ('66533e99-a3bc-47db-9538-61ea6de023be', '2023-11-08 11:57:36', '192.168.3.165', 'admin', '1');
INSERT INTO `syonline` VALUES ('728487b2-dbe7-482c-9bce-b3c3198b9e46', '2023-11-07 20:19:07', '192.168.3.215', 'admin', '1');
INSERT INTO `syonline` VALUES ('74d2c979-18fc-4a69-9c40-739bca874c1c', '2023-11-16 16:01:47', '192.168.3.215', 'admin', '1');
INSERT INTO `syonline` VALUES ('8c7f4b3b-9c4b-4352-ae3c-78b38c0923a3', '2023-11-07 20:18:34', '192.168.3.215', 'test', '0');
INSERT INTO `syonline` VALUES ('8d60e58b-eccf-49db-a729-3257ce57889f', '2023-11-15 20:04:17', '127.0.0.1', 'admin', '1');
INSERT INTO `syonline` VALUES ('8de7548a-c0bd-4f31-99f1-16d0f26cea8b', '2023-11-16 15:37:40', '192.168.3.165', 'admin', '1');
INSERT INTO `syonline` VALUES ('8f1c94ba-3017-4908-b404-80af9eae900e', '2023-11-08 12:10:12', '222.199.225.75', 'admin', '1');
INSERT INTO `syonline` VALUES ('8f9ed187-579b-45bf-beb5-9dfc8166ba13', '2023-11-07 16:04:05', '192.168.3.215', 'zhangsan', '0');
INSERT INTO `syonline` VALUES ('a07b05c0-f66e-496b-ba06-93c33c558194', '2023-11-16 15:08:24', '127.0.0.1', 'admin', '1');
INSERT INTO `syonline` VALUES ('a8fc0060-5e40-4264-beba-ce3682dc5c4f', '2023-11-06 10:15:54', '192.168.3.215', 'zhangsan', '1');
INSERT INTO `syonline` VALUES ('b218fb28-0d44-443e-97db-b0be722fff22', '2023-11-06 10:11:42', '192.168.3.215', 'admin', '1');
INSERT INTO `syonline` VALUES ('bebb6568-6703-41e2-b582-79f9446ab381', '2023-11-06 10:15:40', '192.168.3.215', 'admin', '0');
INSERT INTO `syonline` VALUES ('cb376b8d-dd4a-46ee-a330-e173f0fc7a7d', '2023-11-06 11:42:53', '192.168.3.215', 'zhangsan', '0');
INSERT INTO `syonline` VALUES ('e90f8c5a-cc33-4fb1-9e15-a5e3c230c855', '2023-11-07 20:18:57', '192.168.3.215', 'zhangsan', '0');
INSERT INTO `syonline` VALUES ('eda23488-496e-41c7-bf53-b583836ccad2', '2023-11-07 09:10:52', '192.168.3.215', 'admin', '0');
INSERT INTO `syonline` VALUES ('fd3907ee-8ab6-4d92-ac0c-3d84eba73e42', '2023-11-08 11:56:51', '192.168.3.165', 'admin', '1');

-- ----------------------------
-- Table structure for syorganization
-- ----------------------------
DROP TABLE IF EXISTS `syorganization`;
CREATE TABLE `syorganization` (
  `ID` varchar(36) CHARACTER SET gbk COLLATE gbk_chinese_ci NOT NULL,
  `ADDRESS` varchar(200) CHARACTER SET gbk COLLATE gbk_chinese_ci DEFAULT NULL,
  `CODE` varchar(200) CHARACTER SET gbk COLLATE gbk_chinese_ci DEFAULT NULL,
  `CREATEDATETIME` datetime DEFAULT NULL,
  `ICONCLS` varchar(100) CHARACTER SET gbk COLLATE gbk_chinese_ci DEFAULT NULL,
  `NAME` varchar(200) CHARACTER SET gbk COLLATE gbk_chinese_ci DEFAULT NULL,
  `SEQ` int(11) DEFAULT NULL,
  `UPDATEDATETIME` datetime DEFAULT NULL,
  `SYORGANIZATION_ID` varchar(36) CHARACTER SET gbk COLLATE gbk_chinese_ci DEFAULT NULL,
  `LEADER` varchar(20) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci DEFAULT NULL COMMENT '负责人',
  `PHONE` varchar(11) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci DEFAULT NULL COMMENT '联系电话',
  `EMAIL` varchar(50) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci DEFAULT NULL COMMENT '邮箱',
  `STATUS` varchar(10) CHARACTER SET gbk COLLATE gbk_chinese_ci DEFAULT '0',
  PRIMARY KEY (`ID`) USING BTREE,
  KEY `FK_acf7qlb04quthktalwx8c7q69` (`SYORGANIZATION_ID`) USING BTREE,
  CONSTRAINT `FK_acf7qlb04quthktalwx8c7q69` FOREIGN KEY (`SYORGANIZATION_ID`) REFERENCES `syorganization` (`ID`) ON DELETE RESTRICT ON UPDATE RESTRICT
) ENGINE=InnoDB DEFAULT CHARSET=gbk ROW_FORMAT=DYNAMIC;

-- ----------------------------
-- Records of syorganization
-- ----------------------------
INSERT INTO `syorganization` VALUES ('0', null, null, '2036-11-28 10:34:54', 'ext-icon-bricks', 'BUCT', '100', '2016-11-28 10:35:12', null, null, null, null, '0');
INSERT INTO `syorganization` VALUES ('5477d9a9-e41e-485f-bb08-697e8facef88', null, null, '2022-05-22 09:59:33', null, '601', '1', '2023-05-16 19:52:10', '0', 'dd', '18905189016', 'ss@ada.com', '0');
INSERT INTO `syorganization` VALUES ('ce627e90-57d6-4ed4-a789-1f3dd467ae7d', null, null, '2022-05-24 23:54:10', null, '602', '2', '2022-05-24 23:56:21', '0', 'jack', null, null, '0');

-- ----------------------------
-- Table structure for syorganization_syresource
-- ----------------------------
DROP TABLE IF EXISTS `syorganization_syresource`;
CREATE TABLE `syorganization_syresource` (
  `SYRESOURCE_ID` varchar(36) CHARACTER SET gbk COLLATE gbk_chinese_ci NOT NULL,
  `SYORGANIZATION_ID` varchar(36) CHARACTER SET gbk COLLATE gbk_chinese_ci NOT NULL,
  PRIMARY KEY (`SYORGANIZATION_ID`,`SYRESOURCE_ID`) USING BTREE,
  KEY `FK_acpjp8a7fjo0cnn02eb0ia6uf` (`SYORGANIZATION_ID`) USING BTREE,
  KEY `FK_m4mfglk7odi78d8pk9pif44vc` (`SYRESOURCE_ID`) USING BTREE,
  CONSTRAINT `FK_acpjp8a7fjo0cnn02eb0ia6uf` FOREIGN KEY (`SYORGANIZATION_ID`) REFERENCES `syorganization` (`ID`) ON DELETE RESTRICT ON UPDATE RESTRICT,
  CONSTRAINT `FK_m4mfglk7odi78d8pk9pif44vc` FOREIGN KEY (`SYRESOURCE_ID`) REFERENCES `syresource` (`ID`) ON DELETE RESTRICT ON UPDATE RESTRICT
) ENGINE=InnoDB DEFAULT CHARSET=gbk ROW_FORMAT=DYNAMIC;

-- ----------------------------
-- Records of syorganization_syresource
-- ----------------------------

-- ----------------------------
-- Table structure for syresource
-- ----------------------------
DROP TABLE IF EXISTS `syresource`;
CREATE TABLE `syresource` (
  `ID` varchar(36) CHARACTER SET gbk COLLATE gbk_chinese_ci NOT NULL,
  `CREATEDATETIME` datetime DEFAULT NULL,
  `DESCRIPTION` varchar(200) CHARACTER SET gbk COLLATE gbk_chinese_ci DEFAULT NULL,
  `ICONCLS` varchar(100) CHARACTER SET gbk COLLATE gbk_chinese_ci DEFAULT NULL,
  `NAME` varchar(100) CHARACTER SET gbk COLLATE gbk_chinese_ci NOT NULL,
  `SEQ` int(11) DEFAULT NULL,
  `TARGET` varchar(100) CHARACTER SET gbk COLLATE gbk_chinese_ci DEFAULT NULL,
  `UPDATEDATETIME` datetime DEFAULT NULL,
  `PATH` varchar(200) CHARACTER SET gbk COLLATE gbk_chinese_ci DEFAULT NULL,
  `URL` varchar(200) CHARACTER SET gbk COLLATE gbk_chinese_ci DEFAULT NULL,
  `PERMS` varchar(100) CHARACTER SET gbk COLLATE gbk_chinese_ci DEFAULT NULL COMMENT '权限标识',
  `SYRESOURCE_ID` varchar(36) CHARACTER SET gbk COLLATE gbk_chinese_ci DEFAULT NULL,
  `SYRESOURCETYPE_ID` varchar(36) CHARACTER SET gbk COLLATE gbk_chinese_ci DEFAULT NULL,
  `STATUS` varchar(10) CHARACTER SET gbk COLLATE gbk_chinese_ci DEFAULT '0',
  PRIMARY KEY (`ID`) USING BTREE,
  KEY `FK_n8kk2inhw4y4gax3nra2etfup` (`SYRESOURCE_ID`) USING BTREE,
  KEY `FK_93qfpiiuk3rwb32gc5mcmmlgh` (`SYRESOURCETYPE_ID`) USING BTREE,
  CONSTRAINT `FK_93qfpiiuk3rwb32gc5mcmmlgh` FOREIGN KEY (`SYRESOURCETYPE_ID`) REFERENCES `syresourcetype` (`ID`) ON DELETE RESTRICT ON UPDATE RESTRICT,
  CONSTRAINT `FK_n8kk2inhw4y4gax3nra2etfup` FOREIGN KEY (`SYRESOURCE_ID`) REFERENCES `syresource` (`ID`) ON DELETE RESTRICT ON UPDATE RESTRICT
) ENGINE=InnoDB DEFAULT CHARSET=gbk ROW_FORMAT=DYNAMIC;

-- ----------------------------
-- Records of syresource
-- ----------------------------
INSERT INTO `syresource` VALUES ('094ad9f6-a253-4782-9b3c-fdd86ed229a0', '2023-11-02 19:13:35', null, 'clipboard', '模型存储', '2', null, '2023-11-08 15:31:19', 'save', 'model/save/index', null, 'mxbc', '0', '0');
INSERT INTO `syresource` VALUES ('11052667-b53e-40b5-8604-61250da687bf', '2023-11-03 23:45:29', null, 'button', '网络管理', '7', null, '2023-11-03 23:45:43', '/net', null, null, null, '3', '0');
INSERT INTO `syresource` VALUES ('1c53bdb2-fd9e-43a3-89ee-81d0787fe2c9', '2023-11-03 09:17:45', null, '404', 'train1', '3', null, '2023-11-03 09:17:45', 'train1', null, null, 'mxxl', '3', '0');
INSERT INTO `syresource` VALUES ('21898689-1745-4249-b4fb-e40c3b3e253d', '2023-11-03 15:44:02', null, 'documentation', '数据管理', '2', null, '2023-11-03 17:21:58', '/dataset', '', null, null, '3', '0');
INSERT INTO `syresource` VALUES ('27fda67f-61d1-4fe6-8eea-d796a848ab67', '2022-05-28 12:54:39', null, 'edit', '参数设置', '6', '', '2022-05-28 12:54:39', 'config', 'system/config/index', 'system:config:list', 'xtgl', '0', '0');
INSERT INTO `syresource` VALUES ('2b968189-a2b1-4840-a9c4-c77b0410134b', '2023-11-08 13:44:07', null, 'upload', '模型上传', '0', null, '2023-11-08 15:31:11', 'upload', 'model/upload/index', null, 'mxbc', '0', '0');
INSERT INTO `syresource` VALUES ('2c3b8e07-e038-4ddb-88ad-4ce5e3d69163', '2023-11-03 17:19:50', null, 'checkbox', '样本集', '1', null, '2023-11-03 20:42:50', 'sample', 'dataset/sample/index', null, '21898689-1745-4249-b4fb-e40c3b3e253d', '0', '0');
INSERT INTO `syresource` VALUES ('37ac3cd3-560b-49b3-ae86-96d1963e9db6', '2022-05-28 12:55:59', null, null, '参数修改', '3', null, '2022-05-28 12:55:59', null, null, 'system:config:edit', '27fda67f-61d1-4fe6-8eea-d796a848ab67', '1', '0');
INSERT INTO `syresource` VALUES ('4155d118-f9ef-4c21-acc3-839e6fe6dfd5', '2023-11-02 19:09:38', null, 'swagger', '模型配置', '1', null, '2023-11-08 15:31:25', 'config', 'model/config/index', null, 'mxbc', '0', '0');
INSERT INTO `syresource` VALUES ('4621e9f8-e7c6-4c2b-8172-3d8c8ea75371', '2022-05-28 12:55:24', null, null, '参数新增', '2', null, '2022-05-28 12:55:24', null, null, 'system:config:add', '27fda67f-61d1-4fe6-8eea-d796a848ab67', '1', '0');
INSERT INTO `syresource` VALUES ('6270f1cb-e9fe-4c7f-900e-1a880a0d9772', '2023-11-02 20:18:29', null, 'documentation', '项目管理', '1', null, '2023-11-07 21:21:23', 'project', 'model/project/index', null, 'mxgl', '0', '0');
INSERT INTO `syresource` VALUES ('726c7c1e-06f8-4c3e-b9e1-95778a430c07', '2022-05-28 12:51:16', null, null, '字典查询', '1', null, '2022-05-28 12:51:16', null, null, 'system:dict:query', 'ffb8cf26-1049-43ee-9dd5-16e5742ce9d5', '1', '0');
INSERT INTO `syresource` VALUES ('9d4277a9-b0b4-45ff-b37d-dcc5b636028f', '2023-11-03 23:46:08', null, 'checkbox', '网络', '1', null, '2023-11-08 15:13:07', 'net', 'net/net/index', null, '11052667-b53e-40b5-8604-61250da687bf', '3', '1');
INSERT INTO `syresource` VALUES ('b5f9885f-9c1a-49c9-8c27-ace55fe8d2ed', '2023-11-02 20:19:06', null, 'dict', '业务模型', '2', null, '2023-11-02 20:19:06', 'business', 'model/business/index', null, 'mxgl', '0', '0');
INSERT INTO `syresource` VALUES ('b95cae69-6389-4ebc-b613-bee7aac5f730', '2022-05-28 12:52:26', null, null, '字典修改', '3', null, '2022-05-28 12:52:26', null, null, 'system:dict:edit', 'ffb8cf26-1049-43ee-9dd5-16e5742ce9d5', '1', '0');
INSERT INTO `syresource` VALUES ('c473a2c3-f647-4498-95b2-7f5111e79101', '2023-11-02 15:59:38', null, 'job', '岗位管理', '5', null, '2023-11-02 20:08:00', 'post', 'system/post/index', 'system:post:list', 'xtgl', '0', '1');
INSERT INTO `syresource` VALUES ('cc51db1a-88e3-44bb-9e22-5f6fa9b37453', '2023-11-03 17:20:24', null, 'clipboard', '自定义数据集', '2', null, '2023-11-15 23:23:47', 'userdata', 'dataset/userdata/index', null, '21898689-1745-4249-b4fb-e40c3b3e253d', '0', '0');
INSERT INTO `syresource` VALUES ('cc7ff599-a588-40b3-951d-ce9dd2490482', '2022-05-28 12:53:26', null, null, '字典导出', '5', null, '2022-05-28 12:53:26', null, null, 'system:dict:export', 'ffb8cf26-1049-43ee-9dd5-16e5742ce9d5', '1', '0');
INSERT INTO `syresource` VALUES ('cssc', '2022-05-28 12:56:23', null, null, '参数删除', '4', null, '2022-05-28 12:56:23', null, null, 'system:config:remove', '27fda67f-61d1-4fe6-8eea-d796a848ab67', '1', '0');
INSERT INTO `syresource` VALUES ('d60df8ae-86ee-4879-b9b9-2fe79f146d31', '2022-05-28 12:55:02', null, null, '参数查询', '1', null, '2022-05-28 12:55:02', null, null, 'system:config:query', '27fda67f-61d1-4fe6-8eea-d796a848ab67', '1', '0');
INSERT INTO `syresource` VALUES ('dd41b52b-272c-49ac-b045-b05392890a8d', '2022-05-28 12:56:49', null, null, '参数导出', '5', null, '2022-05-28 12:56:49', null, null, 'system:config:export', '27fda67f-61d1-4fe6-8eea-d796a848ab67', '1', '0');
INSERT INTO `syresource` VALUES ('edc3358e-b9c5-462f-8a70-7b1c7d7f2c26', '2022-05-28 12:51:53', null, null, '字典新增', '2', null, '2022-05-28 12:51:53', null, null, 'system:dict:add', 'ffb8cf26-1049-43ee-9dd5-16e5742ce9d5', '1', '0');
INSERT INTO `syresource` VALUES ('f1ca0e97-e0d7-4aef-87cd-1199d46d44d3', '2023-11-02 15:56:28', null, 'form', '操作日志', '2', null, '2023-11-02 20:08:58', 'operlog', 'monitor/operlog/index', 'monitor:operlog:list', 'xtjk', '0', '1');
INSERT INTO `syresource` VALUES ('ffb8cf26-1049-43ee-9dd5-16e5742ce9d5', '2022-05-28 12:50:37', null, 'dict', '字典管理', '5', '', '2022-05-28 12:50:37', 'dict', 'system/dict/index', 'system:dict:list', 'xtgl', '3', '0');
INSERT INTO `syresource` VALUES ('jgbj', '2015-08-25 10:34:53', '编辑机构', 'ext-icon-bullet_wrench', '编辑机构', '2', '', '2022-05-25 00:39:56', null, '/base/syorganization!update', 'system:dept:edit', 'jggl', '1', '0');
INSERT INTO `syresource` VALUES ('jgck', '2015-08-25 10:34:53', '查看机构', 'ext-icon-bullet_wrench', '查看机构', '4', '', '2015-08-25 10:34:53', null, '/base/syorganization!getById', 'system:dept:query', 'jggl', '1', '0');
INSERT INTO `syresource` VALUES ('jggl', '2015-08-25 10:34:53', '管理系统中用户的机构', 'tree', '机构管理', '4', '', '2022-05-25 00:40:04', 'dept', 'system/dept/index', 'system:dept:list', 'xtgl', '0', '0');
INSERT INTO `syresource` VALUES ('jglb', '2015-08-25 10:34:53', '查询机构列表', 'ext-icon-bullet_wrench', '机构列表', '0', '', '2016-11-28 14:09:52', null, '/base/syorganization!treeGrid', 'system:dept:list', 'jggl', '1', '0');
INSERT INTO `syresource` VALUES ('jgsc', '2015-08-25 10:34:53', '删除机构', 'ext-icon-bullet_wrench', '删除机构', '3', '', '2015-08-25 10:34:53', null, '/base/syorganization!delete', 'system:dept:remove', 'jggl', '1', '0');
INSERT INTO `syresource` VALUES ('jgsq', '2015-08-25 10:34:53', '机构授权', 'ext-icon-bullet_wrench', '机构授权', '5', '', '2015-08-25 10:34:53', null, '/base/syorganization!grant', null, 'jggl', '1', '0');
INSERT INTO `syresource` VALUES ('jgtj', '2015-08-25 10:34:53', '添加机构', 'ext-icon-bullet_wrench', '添加机构', '1', '', '2015-08-25 10:34:53', null, '/base/syorganization!save', 'system:dept:add', 'jggl', '1', '0');
INSERT INTO `syresource` VALUES ('jsbj', '2015-08-25 10:34:53', '编辑角色', 'ext-icon-bullet_wrench', '编辑角色', '2', '', '2015-08-25 10:34:53', null, '/base/syrole!update', 'system:role:edit', 'jsgl', '1', '0');
INSERT INTO `syresource` VALUES ('jsck', '2015-08-25 10:34:53', '查看角色', 'ext-icon-bullet_wrench', '查看角色', '4', '', '2015-08-25 10:34:53', null, '/base/syrole!getById', 'system:role:query', 'jsgl', '1', '0');
INSERT INTO `syresource` VALUES ('jsgl', '2015-08-25 10:34:53', '管理系统中用户的角色', 'peoples', '角色管理', '2', '', '2015-08-25 10:34:53', 'role', 'system/role/index', 'system:role:list', 'xtgl', '0', '0');
INSERT INTO `syresource` VALUES ('jslb', '2015-08-25 10:34:53', '查询角色列表', 'ext-icon-bullet_wrench', '角色列表', '0', '', '2015-08-25 10:34:53', null, '/base/syrole!grid', 'system:role:list', 'jsgl', '1', '0');
INSERT INTO `syresource` VALUES ('jssc', '2015-08-25 10:34:53', '删除角色', 'ext-icon-bullet_wrench', '删除角色', '3', '', '2015-08-25 10:34:53', null, '/base/syrole!delete', 'system:role:remove', 'jsgl', '1', '0');
INSERT INTO `syresource` VALUES ('jssq', '2015-08-25 10:34:53', '角色授权', 'ext-icon-bullet_wrench', '角色授权', '5', '', '2015-08-25 10:34:53', null, '/base/syrole!grant', null, 'jsgl', '1', '0');
INSERT INTO `syresource` VALUES ('jstj', '2015-08-25 10:34:53', '添加角色', 'ext-icon-bullet_wrench', '添加角色', '1', '', '2015-08-25 10:34:53', null, '/base/syrole!save', 'system:role:add', 'jsgl', '1', '0');
INSERT INTO `syresource` VALUES ('mxbc', '2023-11-02 19:07:34', '模型保存', 'post', '模型管理', '3', null, '2023-11-08 15:31:05', '/model', null, null, null, '3', '0');
INSERT INTO `syresource` VALUES ('mxgl', '2023-11-02 20:16:02', '模型管理', 'build', '项目管理', '4', null, '2023-11-08 15:51:13', '/model1', null, null, null, '3', '0');
INSERT INTO `syresource` VALUES ('mxxl', '2023-11-02 20:15:25', '模型训练', 'dashboard', '模型训练', '5', null, '2023-11-03 10:31:05', '/train', null, null, null, '3', '1');
INSERT INTO `syresource` VALUES ('online', '2015-08-25 10:34:53', '监控用户登录、注销', 'date-range', '登录历史', '1', '', '2023-11-02 15:57:00', 'logininfor', 'monitor/logininfor/index', 'monitor:logininfor:list', 'xtjk', '0', '0');
INSERT INTO `syresource` VALUES ('onlineGrid', '2015-08-25 10:34:53', '用户登录、注销历史记录列表', 'ext-icon-bullet_wrench', '用户登录历史列表', '1', '', '2022-05-28 13:16:37', null, '/base/syonline!grid', 'monitor:logininfor:list', 'online', '1', '0');
INSERT INTO `syresource` VALUES ('xtgl', '2015-08-25 10:34:53', '管理系统的资源、角色、机构、用户等信息', 'system', '系统管理', '1', '', '2023-11-02 20:28:50', '/system', null, null, null, '3', '0');
INSERT INTO `syresource` VALUES ('xtjk', '2015-08-25 10:34:53', '监控系统运行情况等信息', 'monitor', '日志管理', '6', '', '2023-11-03 16:09:55', '/system/log', '', '', null, '0', '0');
INSERT INTO `syresource` VALUES ('yhbj', '2015-08-25 10:34:53', '编辑用户', 'ext-icon-bullet_wrench', '编辑用户', '2', '', '2015-08-25 10:34:53', null, '/base/syuser!update', 'system:user:edit', 'yhgl', '1', '0');
INSERT INTO `syresource` VALUES ('yhck', '2015-08-25 10:34:53', '查看用户', 'ext-icon-bullet_wrench', '查看用户', '4', '', '2015-08-25 10:34:53', null, '/base/syuser!getById', 'system:user:query', 'yhgl', '1', '0');
INSERT INTO `syresource` VALUES ('yhgl', '2015-08-25 10:34:53', '管理系统中用户的用户', 'user', '用户管理', '1', '', '2023-05-16 20:08:40', 'user', 'system/user/index', 'system:user:list', 'xtgl', '0', '0');
INSERT INTO `syresource` VALUES ('yhjg', '2015-08-25 10:34:53', '编辑用户机构', 'ext-icon-bullet_wrench', '用户机构', '6', '', '2015-08-25 10:34:53', null, '/base/syuser!grantOrganization', 'system:dept:edit', 'yhgl', '1', '0');
INSERT INTO `syresource` VALUES ('yhjs', '2015-08-25 10:34:53', '编辑用户角色', 'ext-icon-bullet_wrench', '用户角色', '5', '', '2015-08-25 10:34:53', null, '/base/syuser!grantRole', 'system:role:edit', 'yhgl', '1', '0');
INSERT INTO `syresource` VALUES ('yhlb', '2015-08-25 10:34:53', '查询用户列表', 'ext-icon-bullet_wrench', '用户列表', '0', '', '2015-08-25 10:34:53', null, '/base/syuser!grid', 'system:user:list', 'yhgl', '1', '0');
INSERT INTO `syresource` VALUES ('yhsc', '2015-08-25 10:34:53', '删除用户', 'ext-icon-bullet_wrench', '删除用户', '3', '', '2015-08-25 10:34:53', null, '/base/syuser!delete', 'system:user:remove', 'yhgl', '1', '0');
INSERT INTO `syresource` VALUES ('yhtj', '2015-08-25 10:34:53', '添加用户', 'ext-icon-bullet_wrench', '添加用户', '1', '', '2015-08-25 10:34:53', null, '/base/syuser!save', 'system:user:add', 'yhgl', '1', '0');
INSERT INTO `syresource` VALUES ('zdsc', '2022-05-28 12:52:58', null, null, '字典删除', '4', null, '2022-05-28 12:52:58', null, null, 'system:dict:remove', 'ffb8cf26-1049-43ee-9dd5-16e5742ce9d5', '1', '0');
INSERT INTO `syresource` VALUES ('zybj', '2015-08-25 10:34:53', '编辑资源', 'ext-icon-bullet_wrench', '编辑资源', '2', '', '2015-08-25 10:34:53', null, '/base/syresource!update', 'system:menu:edit', 'zygl', '1', '0');
INSERT INTO `syresource` VALUES ('zyck', '2015-08-25 10:34:53', '查看资源', 'ext-icon-bullet_wrench', '查看资源', '4', '', '2015-08-25 10:34:53', null, '/base/syresource!getById', 'system:menu:query', 'zygl', '1', '0');
INSERT INTO `syresource` VALUES ('zygl', '2015-08-25 10:34:53', '管理系统的资源', 'tree-table', '菜单管理', '3', '', '2023-11-02 15:57:55', 'menu', 'system/menu/index', 'system:menu:list', 'xtgl', '0', '0');
INSERT INTO `syresource` VALUES ('zylb', '2015-08-25 10:34:53', '查询资源', 'ext-icon-bullet_wrench', '资源列表', '0', '', '2015-08-25 10:34:53', null, '/base/syresource!treeGrid', 'system:menu:query', 'zygl', '1', '0');
INSERT INTO `syresource` VALUES ('zysc', '2015-08-25 10:34:53', '删除资源', 'ext-icon-bullet_wrench', '删除资源', '3', '', '2015-08-25 10:34:53', null, '/base/syresource!delete', 'system:menu:remove', 'zygl', '1', '0');
INSERT INTO `syresource` VALUES ('zytj', '2015-08-25 10:34:53', '添加资源', 'ext-icon-bullet_wrench', '添加资源', '1', '', '2015-08-25 10:34:53', null, '/base/syresource!save', 'system:menu:add', 'zygl', '1', '0');

-- ----------------------------
-- Table structure for syresourcetype
-- ----------------------------
DROP TABLE IF EXISTS `syresourcetype`;
CREATE TABLE `syresourcetype` (
  `ID` varchar(36) CHARACTER SET gbk COLLATE gbk_chinese_ci NOT NULL,
  `CREATEDATETIME` datetime DEFAULT NULL,
  `DESCRIPTION` varchar(200) CHARACTER SET gbk COLLATE gbk_chinese_ci DEFAULT NULL,
  `NAME` varchar(100) CHARACTER SET gbk COLLATE gbk_chinese_ci NOT NULL,
  `UPDATEDATETIME` datetime DEFAULT NULL,
  PRIMARY KEY (`ID`) USING BTREE
) ENGINE=InnoDB DEFAULT CHARSET=gbk ROW_FORMAT=DYNAMIC;

-- ----------------------------
-- Records of syresourcetype
-- ----------------------------
INSERT INTO `syresourcetype` VALUES ('0', '2015-08-25 10:34:53', '菜单类型会显示在系统首页左侧菜单中', '菜单', '2015-08-25 10:34:53');
INSERT INTO `syresourcetype` VALUES ('1', '2015-08-25 10:34:53', '功能类型不会显示在系统首页左侧菜单中', '功能', '2015-08-25 10:34:53');
INSERT INTO `syresourcetype` VALUES ('3', '2022-05-15 10:27:08', null, '目录', '2022-05-15 10:27:18');

-- ----------------------------
-- Table structure for syrole
-- ----------------------------
DROP TABLE IF EXISTS `syrole`;
CREATE TABLE `syrole` (
  `ID` varchar(36) CHARACTER SET gbk COLLATE gbk_chinese_ci NOT NULL,
  `CREATEDATETIME` datetime DEFAULT NULL,
  `DESCRIPTION` varchar(200) CHARACTER SET gbk COLLATE gbk_chinese_ci DEFAULT NULL,
  `ICONCLS` varchar(100) CHARACTER SET gbk COLLATE gbk_chinese_ci DEFAULT NULL,
  `NAME` varchar(100) CHARACTER SET gbk COLLATE gbk_chinese_ci NOT NULL,
  `SEQ` int(11) DEFAULT NULL,
  `UPDATEDATETIME` datetime DEFAULT NULL,
  `ROLEKEY` varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NOT NULL COMMENT '角色权限字符串',
  `DATASCOPE` char(1) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci DEFAULT '1' COMMENT '数据范围（1：全部数据权限 2：自定数据权限 3：本部门数据权限 4：本部门及以下数据权限）',
  `STATUS` varchar(10) CHARACTER SET gbk COLLATE gbk_chinese_ci DEFAULT '0',
  PRIMARY KEY (`ID`) USING BTREE
) ENGINE=InnoDB DEFAULT CHARSET=gbk ROW_FORMAT=DYNAMIC;

-- ----------------------------
-- Records of syrole
-- ----------------------------
INSERT INTO `syrole` VALUES ('0', '2015-08-25 10:34:53', '拥有系统所有权限', null, '超管', '0', '2022-06-10 00:27:23', 'superadmin', '1', '0');
INSERT INTO `syrole` VALUES ('19f00d46-8f1b-45b5-b7b7-6197d7b8cb33', '2016-11-28 14:24:00', null, null, '管理员', '100', '2022-06-10 00:27:41', 'admin', '1', '0');
INSERT INTO `syrole` VALUES ('f4e1b151-a171-4705-9154-503a046cb72a', '2022-05-29 13:29:38', null, null, '只读用户', '1', '2022-06-10 00:13:55', 'readonly', '2', '0');

-- ----------------------------
-- Table structure for syrole_syorganization
-- ----------------------------
DROP TABLE IF EXISTS `syrole_syorganization`;
CREATE TABLE `syrole_syorganization` (
  `SYROLE_ID` varchar(36) CHARACTER SET gbk COLLATE gbk_chinese_ci NOT NULL,
  `SYORGANIZATION_ID` varchar(36) CHARACTER SET gbk COLLATE gbk_chinese_ci NOT NULL,
  PRIMARY KEY (`SYORGANIZATION_ID`,`SYROLE_ID`) USING BTREE,
  KEY `FK_kkrartsovl2frhfvriqdi7jwl` (`SYORGANIZATION_ID`) USING BTREE,
  KEY `FK_r139h669pg4ts6mbvn3ip5472` (`SYROLE_ID`) USING BTREE,
  CONSTRAINT `SYROLE_SYORGANIZATION_ibfk_1` FOREIGN KEY (`SYORGANIZATION_ID`) REFERENCES `syorganization` (`ID`) ON DELETE RESTRICT ON UPDATE RESTRICT,
  CONSTRAINT `SYROLE_SYORGANIZATION_ibfk_2` FOREIGN KEY (`SYROLE_ID`) REFERENCES `syrole` (`ID`) ON DELETE RESTRICT ON UPDATE RESTRICT
) ENGINE=InnoDB DEFAULT CHARSET=gbk ROW_FORMAT=DYNAMIC;

-- ----------------------------
-- Records of syrole_syorganization
-- ----------------------------
INSERT INTO `syrole_syorganization` VALUES ('f4e1b151-a171-4705-9154-503a046cb72a', '5477d9a9-e41e-485f-bb08-697e8facef88');

-- ----------------------------
-- Table structure for syrole_syresource
-- ----------------------------
DROP TABLE IF EXISTS `syrole_syresource`;
CREATE TABLE `syrole_syresource` (
  `SYROLE_ID` varchar(36) CHARACTER SET gbk COLLATE gbk_chinese_ci NOT NULL,
  `SYRESOURCE_ID` varchar(36) CHARACTER SET gbk COLLATE gbk_chinese_ci NOT NULL,
  PRIMARY KEY (`SYRESOURCE_ID`,`SYROLE_ID`) USING BTREE,
  KEY `FK_kkrartsovl2frhfvriqdi7jwl` (`SYRESOURCE_ID`) USING BTREE,
  KEY `FK_r139h669pg4ts6mbvn3ip5472` (`SYROLE_ID`) USING BTREE,
  CONSTRAINT `FK_kkrartsovl2frhfvriqdi7jwl` FOREIGN KEY (`SYRESOURCE_ID`) REFERENCES `syresource` (`ID`) ON DELETE RESTRICT ON UPDATE RESTRICT,
  CONSTRAINT `FK_r139h669pg4ts6mbvn3ip5472` FOREIGN KEY (`SYROLE_ID`) REFERENCES `syrole` (`ID`) ON DELETE RESTRICT ON UPDATE RESTRICT
) ENGINE=InnoDB DEFAULT CHARSET=gbk ROW_FORMAT=DYNAMIC;

-- ----------------------------
-- Records of syrole_syresource
-- ----------------------------
INSERT INTO `syrole_syresource` VALUES ('0', '27fda67f-61d1-4fe6-8eea-d796a848ab67');
INSERT INTO `syrole_syresource` VALUES ('f4e1b151-a171-4705-9154-503a046cb72a', '27fda67f-61d1-4fe6-8eea-d796a848ab67');
INSERT INTO `syrole_syresource` VALUES ('0', '37ac3cd3-560b-49b3-ae86-96d1963e9db6');
INSERT INTO `syrole_syresource` VALUES ('0', '4621e9f8-e7c6-4c2b-8172-3d8c8ea75371');
INSERT INTO `syrole_syresource` VALUES ('0', '726c7c1e-06f8-4c3e-b9e1-95778a430c07');
INSERT INTO `syrole_syresource` VALUES ('f4e1b151-a171-4705-9154-503a046cb72a', '726c7c1e-06f8-4c3e-b9e1-95778a430c07');
INSERT INTO `syrole_syresource` VALUES ('0', 'b95cae69-6389-4ebc-b613-bee7aac5f730');
INSERT INTO `syrole_syresource` VALUES ('0', 'cc7ff599-a588-40b3-951d-ce9dd2490482');
INSERT INTO `syrole_syresource` VALUES ('0', 'cssc');
INSERT INTO `syrole_syresource` VALUES ('0', 'd60df8ae-86ee-4879-b9b9-2fe79f146d31');
INSERT INTO `syrole_syresource` VALUES ('f4e1b151-a171-4705-9154-503a046cb72a', 'd60df8ae-86ee-4879-b9b9-2fe79f146d31');
INSERT INTO `syrole_syresource` VALUES ('0', 'dd41b52b-272c-49ac-b045-b05392890a8d');
INSERT INTO `syrole_syresource` VALUES ('0', 'edc3358e-b9c5-462f-8a70-7b1c7d7f2c26');
INSERT INTO `syrole_syresource` VALUES ('0', 'ffb8cf26-1049-43ee-9dd5-16e5742ce9d5');
INSERT INTO `syrole_syresource` VALUES ('f4e1b151-a171-4705-9154-503a046cb72a', 'ffb8cf26-1049-43ee-9dd5-16e5742ce9d5');
INSERT INTO `syrole_syresource` VALUES ('0', 'jgbj');
INSERT INTO `syrole_syresource` VALUES ('0', 'jgck');
INSERT INTO `syrole_syresource` VALUES ('0', 'jggl');
INSERT INTO `syrole_syresource` VALUES ('f4e1b151-a171-4705-9154-503a046cb72a', 'jggl');
INSERT INTO `syrole_syresource` VALUES ('0', 'jglb');
INSERT INTO `syrole_syresource` VALUES ('f4e1b151-a171-4705-9154-503a046cb72a', 'jglb');
INSERT INTO `syrole_syresource` VALUES ('0', 'jgsc');
INSERT INTO `syrole_syresource` VALUES ('0', 'jgsq');
INSERT INTO `syrole_syresource` VALUES ('0', 'jgtj');
INSERT INTO `syrole_syresource` VALUES ('0', 'jsbj');
INSERT INTO `syrole_syresource` VALUES ('0', 'jsck');
INSERT INTO `syrole_syresource` VALUES ('0', 'jsgl');
INSERT INTO `syrole_syresource` VALUES ('f4e1b151-a171-4705-9154-503a046cb72a', 'jsgl');
INSERT INTO `syrole_syresource` VALUES ('0', 'jslb');
INSERT INTO `syrole_syresource` VALUES ('f4e1b151-a171-4705-9154-503a046cb72a', 'jslb');
INSERT INTO `syrole_syresource` VALUES ('0', 'jssc');
INSERT INTO `syrole_syresource` VALUES ('0', 'jssq');
INSERT INTO `syrole_syresource` VALUES ('0', 'jstj');
INSERT INTO `syrole_syresource` VALUES ('0', 'online');
INSERT INTO `syrole_syresource` VALUES ('0', 'onlineGrid');
INSERT INTO `syrole_syresource` VALUES ('0', 'xtgl');
INSERT INTO `syrole_syresource` VALUES ('f4e1b151-a171-4705-9154-503a046cb72a', 'xtgl');
INSERT INTO `syrole_syresource` VALUES ('0', 'xtjk');
INSERT INTO `syrole_syresource` VALUES ('0', 'yhbj');
INSERT INTO `syrole_syresource` VALUES ('0', 'yhck');
INSERT INTO `syrole_syresource` VALUES ('0', 'yhgl');
INSERT INTO `syrole_syresource` VALUES ('f4e1b151-a171-4705-9154-503a046cb72a', 'yhgl');
INSERT INTO `syrole_syresource` VALUES ('0', 'yhjg');
INSERT INTO `syrole_syresource` VALUES ('0', 'yhjs');
INSERT INTO `syrole_syresource` VALUES ('0', 'yhlb');
INSERT INTO `syrole_syresource` VALUES ('f4e1b151-a171-4705-9154-503a046cb72a', 'yhlb');
INSERT INTO `syrole_syresource` VALUES ('0', 'yhsc');
INSERT INTO `syrole_syresource` VALUES ('0', 'yhtj');
INSERT INTO `syrole_syresource` VALUES ('0', 'zdsc');
INSERT INTO `syrole_syresource` VALUES ('0', 'zybj');
INSERT INTO `syrole_syresource` VALUES ('0', 'zyck');
INSERT INTO `syrole_syresource` VALUES ('0', 'zygl');
INSERT INTO `syrole_syresource` VALUES ('f4e1b151-a171-4705-9154-503a046cb72a', 'zygl');
INSERT INTO `syrole_syresource` VALUES ('0', 'zylb');
INSERT INTO `syrole_syresource` VALUES ('f4e1b151-a171-4705-9154-503a046cb72a', 'zylb');
INSERT INTO `syrole_syresource` VALUES ('0', 'zysc');
INSERT INTO `syrole_syresource` VALUES ('0', 'zytj');

-- ----------------------------
-- Table structure for sys_config
-- ----------------------------
DROP TABLE IF EXISTS `sys_config`;
CREATE TABLE `sys_config` (
  `config_id` int(11) NOT NULL AUTO_INCREMENT COMMENT '参数主键',
  `config_name` varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci DEFAULT '' COMMENT '参数名称',
  `config_key` varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci DEFAULT '' COMMENT '参数键名',
  `config_value` varchar(500) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci DEFAULT '' COMMENT '参数键值',
  `config_type` char(1) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci DEFAULT 'N' COMMENT '系统内置（Y是 N否）',
  `create_by` varchar(64) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci DEFAULT '' COMMENT '创建者',
  `create_time` datetime DEFAULT NULL COMMENT '创建时间',
  `update_by` varchar(64) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci DEFAULT '' COMMENT '更新者',
  `update_time` datetime DEFAULT NULL COMMENT '更新时间',
  `remark` varchar(500) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci DEFAULT NULL COMMENT '备注',
  PRIMARY KEY (`config_id`) USING BTREE
) ENGINE=InnoDB AUTO_INCREMENT=100 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci ROW_FORMAT=DYNAMIC COMMENT='参数配置表';

-- ----------------------------
-- Records of sys_config
-- ----------------------------
INSERT INTO `sys_config` VALUES ('1', '主框架页-默认皮肤样式名称', 'sys.index.skinName', 'skin-blue', 'Y', 'admin', '2022-05-14 14:04:21', '', null, '蓝色 skin-blue、绿色 skin-green、紫色 skin-purple、红色 skin-red、黄色 skin-yellow');
INSERT INTO `sys_config` VALUES ('2', '用户管理-账号初始密码', 'sys.user.initPassword', '123456', 'Y', 'admin', '2022-05-14 14:04:21', '', null, '初始化密码 123456');
INSERT INTO `sys_config` VALUES ('3', '主框架页-侧边栏主题', 'sys.index.sideTheme', 'theme-dark', 'Y', 'admin', '2022-05-14 14:04:21', '', null, '深色主题theme-dark，浅色主题theme-light');
INSERT INTO `sys_config` VALUES ('4', '账号自助-验证码开关', 'sys.account.captchaOnOff', 'true', 'Y', 'admin', '2022-05-14 14:04:21', '', null, '是否开启验证码功能（true开启，false关闭）');
INSERT INTO `sys_config` VALUES ('5', '账号自助-是否开启用户注册功能', 'sys.account.registerUser', 'false', 'Y', 'admin', '2022-05-14 14:04:21', '', null, '是否开启注册用户功能（true开启，false关闭）');

-- ----------------------------
-- Table structure for sys_dict_data
-- ----------------------------
DROP TABLE IF EXISTS `sys_dict_data`;
CREATE TABLE `sys_dict_data` (
  `dict_code` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '字典编码',
  `dict_sort` int(11) DEFAULT '0' COMMENT '字典排序',
  `dict_label` varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci DEFAULT '' COMMENT '字典标签',
  `dict_value` varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci DEFAULT '' COMMENT '字典键值',
  `dict_type` varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci DEFAULT '' COMMENT '字典类型',
  `css_class` varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci DEFAULT NULL COMMENT '样式属性（其他样式扩展）',
  `list_class` varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci DEFAULT NULL COMMENT '表格回显样式',
  `is_default` char(1) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci DEFAULT 'N' COMMENT '是否默认（Y是 N否）',
  `status` char(1) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci DEFAULT '0' COMMENT '状态（0正常 1停用）',
  `create_by` varchar(64) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci DEFAULT '' COMMENT '创建者',
  `create_time` datetime DEFAULT NULL COMMENT '创建时间',
  `update_by` varchar(64) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci DEFAULT '' COMMENT '更新者',
  `update_time` datetime DEFAULT NULL COMMENT '更新时间',
  `remark` varchar(500) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci DEFAULT NULL COMMENT '备注',
  PRIMARY KEY (`dict_code`) USING BTREE,
  KEY `dict_type` (`dict_type`) USING BTREE,
  CONSTRAINT `SYS_DICT_DATA_ibfk_1` FOREIGN KEY (`dict_type`) REFERENCES `sys_dict_type` (`dict_type`) ON DELETE RESTRICT ON UPDATE RESTRICT
) ENGINE=InnoDB AUTO_INCREMENT=107 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci ROW_FORMAT=DYNAMIC COMMENT='字典数据表';

-- ----------------------------
-- Records of sys_dict_data
-- ----------------------------
INSERT INTO `sys_dict_data` VALUES ('1', '1', '男', '0', 'sys_user_sex', '', '', 'Y', '0', 'admin', '2022-05-14 14:04:20', '', null, '性别男');
INSERT INTO `sys_dict_data` VALUES ('2', '2', '女', '1', 'sys_user_sex', '', '', 'N', '0', 'admin', '2022-05-14 14:04:20', '', null, '性别女');
INSERT INTO `sys_dict_data` VALUES ('3', '3', '未知', '2', 'sys_user_sex', '', '', 'N', '0', 'admin', '2022-05-14 14:04:20', '', null, '性别未知');
INSERT INTO `sys_dict_data` VALUES ('4', '1', '显示', '0', 'sys_show_hide', '', 'primary', 'Y', '0', 'admin', '2022-05-14 14:04:20', '', null, '显示菜单');
INSERT INTO `sys_dict_data` VALUES ('5', '2', '隐藏', '1', 'sys_show_hide', '', 'danger', 'N', '0', 'admin', '2022-05-14 14:04:20', '', null, '隐藏菜单');
INSERT INTO `sys_dict_data` VALUES ('6', '1', '正常', '0', 'sys_normal_disable', '', 'primary', 'Y', '0', 'admin', '2022-05-14 14:04:20', '', null, '正常状态');
INSERT INTO `sys_dict_data` VALUES ('7', '2', '停用', '1', 'sys_normal_disable', '', 'danger', 'N', '0', 'admin', '2022-05-14 14:04:20', '', null, '停用状态');
INSERT INTO `sys_dict_data` VALUES ('8', '1', '正常', '0', 'sys_job_status', '', 'primary', 'Y', '0', 'admin', '2022-05-14 14:04:20', '', null, '正常状态');
INSERT INTO `sys_dict_data` VALUES ('9', '2', '暂停', '1', 'sys_job_status', '', 'danger', 'N', '0', 'admin', '2022-05-14 14:04:20', '', null, '停用状态');
INSERT INTO `sys_dict_data` VALUES ('10', '1', '默认', 'DEFAULT', 'sys_job_group', '', '', 'Y', '0', 'admin', '2022-05-14 14:04:20', '', null, '默认分组');
INSERT INTO `sys_dict_data` VALUES ('11', '2', '系统', 'SYSTEM', 'sys_job_group', '', '', 'N', '0', 'admin', '2022-05-14 14:04:20', '', null, '系统分组');
INSERT INTO `sys_dict_data` VALUES ('12', '1', '是', 'Y', 'sys_yes_no', '', 'primary', 'Y', '0', 'admin', '2022-05-14 14:04:20', '', null, '系统默认是');
INSERT INTO `sys_dict_data` VALUES ('13', '2', '否', 'N', 'sys_yes_no', '', 'danger', 'N', '0', 'admin', '2022-05-14 14:04:20', '', null, '系统默认否');
INSERT INTO `sys_dict_data` VALUES ('14', '1', '通知', '1', 'sys_notice_type', '', 'warning', 'Y', '0', 'admin', '2022-05-14 14:04:20', '', null, '通知');
INSERT INTO `sys_dict_data` VALUES ('15', '2', '公告', '2', 'sys_notice_type', '', 'success', 'N', '0', 'admin', '2022-05-14 14:04:20', '', null, '公告');
INSERT INTO `sys_dict_data` VALUES ('16', '1', '正常', '0', 'sys_notice_status', '', 'primary', 'Y', '0', 'admin', '2022-05-14 14:04:20', '', null, '正常状态');
INSERT INTO `sys_dict_data` VALUES ('17', '2', '关闭', '1', 'sys_notice_status', '', 'danger', 'N', '0', 'admin', '2022-05-14 14:04:20', '', null, '关闭状态');
INSERT INTO `sys_dict_data` VALUES ('18', '1', '新增', '1', 'sys_oper_type', '', 'info', 'N', '0', 'admin', '2022-05-14 14:04:21', '', null, '新增操作');
INSERT INTO `sys_dict_data` VALUES ('19', '2', '修改', '2', 'sys_oper_type', '', 'info', 'N', '0', 'admin', '2022-05-14 14:04:21', '', null, '修改操作');
INSERT INTO `sys_dict_data` VALUES ('20', '3', '删除', '3', 'sys_oper_type', '', 'danger', 'N', '0', 'admin', '2022-05-14 14:04:21', '', null, '删除操作');
INSERT INTO `sys_dict_data` VALUES ('21', '4', '授权', '4', 'sys_oper_type', '', 'primary', 'N', '0', 'admin', '2022-05-14 14:04:21', '', null, '授权操作');
INSERT INTO `sys_dict_data` VALUES ('22', '5', '导出', '5', 'sys_oper_type', '', 'warning', 'N', '0', 'admin', '2022-05-14 14:04:21', '', null, '导出操作');
INSERT INTO `sys_dict_data` VALUES ('23', '6', '导入', '6', 'sys_oper_type', '', 'warning', 'N', '0', 'admin', '2022-05-14 14:04:21', '', null, '导入操作');
INSERT INTO `sys_dict_data` VALUES ('24', '7', '强退', '7', 'sys_oper_type', '', 'danger', 'N', '0', 'admin', '2022-05-14 14:04:21', '', null, '强退操作');
INSERT INTO `sys_dict_data` VALUES ('25', '8', '生成代码', '8', 'sys_oper_type', '', 'warning', 'N', '0', 'admin', '2022-05-14 14:04:21', '', null, '生成操作');
INSERT INTO `sys_dict_data` VALUES ('26', '9', '清空数据', '9', 'sys_oper_type', '', 'danger', 'N', '0', 'admin', '2022-05-14 14:04:21', '', null, '清空操作');
INSERT INTO `sys_dict_data` VALUES ('27', '1', '成功', '0', 'sys_common_status', '', 'primary', 'N', '0', 'admin', '2022-05-14 14:04:21', '', null, '正常状态');
INSERT INTO `sys_dict_data` VALUES ('28', '2', '失败', '1', 'sys_common_status', '', 'danger', 'N', '0', 'admin', '2022-05-14 14:04:21', '', null, '停用状态');
INSERT INTO `sys_dict_data` VALUES ('100', '0', '登录', '1', 'sys_login_type', null, 'default', null, '0', 'admin', '2022-06-10 00:29:31', 'admin', '2022-06-10 00:29:58', null);
INSERT INTO `sys_dict_data` VALUES ('101', '1', '注销', '0', 'sys_login_type', null, 'default', null, '0', 'admin', '2022-06-10 00:29:48', null, '2022-06-10 00:29:48', null);
INSERT INTO `sys_dict_data` VALUES ('102', '1', '已完成', '1', 'train_status', null, 'success', null, '0', 'admin', '2023-11-04 00:17:41', 'admin', '2023-11-07 14:57:00', null);
INSERT INTO `sys_dict_data` VALUES ('103', '2', '训练中', '2', 'train_status', null, 'primary', null, '0', 'admin', '2023-11-06 21:31:49', 'admin', '2023-11-07 14:57:19', null);
INSERT INTO `sys_dict_data` VALUES ('104', '0', '未开始', '0', 'train_status', null, 'info', null, '0', 'admin', '2023-11-06 21:32:03', 'admin', '2023-11-07 14:56:51', null);
INSERT INTO `sys_dict_data` VALUES ('105', '3', '训练出错', '3', 'train_status', null, 'danger', null, '0', 'admin', '2023-11-06 21:32:34', null, '2023-11-06 21:32:34', null);
INSERT INTO `sys_dict_data` VALUES ('106', '4', '训练中止', '4', 'train_status', null, 'warning', null, '0', 'admin', '2023-11-07 14:47:57', 'admin', '2023-11-07 14:57:27', null);

-- ----------------------------
-- Table structure for sys_dict_type
-- ----------------------------
DROP TABLE IF EXISTS `sys_dict_type`;
CREATE TABLE `sys_dict_type` (
  `dict_id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '字典主键',
  `dict_name` varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci DEFAULT '' COMMENT '字典名称',
  `dict_type` varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci DEFAULT '' COMMENT '字典类型',
  `status` char(1) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci DEFAULT '0' COMMENT '状态（0正常 1停用）',
  `create_by` varchar(64) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci DEFAULT '' COMMENT '创建者',
  `create_time` datetime DEFAULT NULL COMMENT '创建时间',
  `update_by` varchar(64) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci DEFAULT '' COMMENT '更新者',
  `update_time` datetime DEFAULT NULL COMMENT '更新时间',
  `remark` varchar(500) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci DEFAULT NULL COMMENT '备注',
  PRIMARY KEY (`dict_id`) USING BTREE,
  UNIQUE KEY `dict_type` (`dict_type`) USING BTREE
) ENGINE=InnoDB AUTO_INCREMENT=13 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci ROW_FORMAT=DYNAMIC COMMENT='字典类型表';

-- ----------------------------
-- Records of sys_dict_type
-- ----------------------------
INSERT INTO `sys_dict_type` VALUES ('1', '用户性别', 'sys_user_sex', '0', 'admin', '2022-05-14 14:04:20', '', null, '用户性别列表');
INSERT INTO `sys_dict_type` VALUES ('2', '菜单状态', 'sys_show_hide', '0', 'admin', '2022-05-14 14:04:20', '', null, '菜单状态列表');
INSERT INTO `sys_dict_type` VALUES ('3', '系统开关', 'sys_normal_disable', '0', 'admin', '2022-05-14 14:04:20', '', null, '系统开关列表');
INSERT INTO `sys_dict_type` VALUES ('4', '任务状态', 'sys_job_status', '0', 'admin', '2022-05-14 14:04:20', '', null, '任务状态列表');
INSERT INTO `sys_dict_type` VALUES ('5', '任务分组', 'sys_job_group', '0', 'admin', '2022-05-14 14:04:20', '', null, '任务分组列表');
INSERT INTO `sys_dict_type` VALUES ('6', '系统是否', 'sys_yes_no', '0', 'admin', '2022-05-14 14:04:20', '', null, '系统是否列表');
INSERT INTO `sys_dict_type` VALUES ('7', '通知类型', 'sys_notice_type', '0', 'admin', '2022-05-14 14:04:20', '', null, '通知类型列表');
INSERT INTO `sys_dict_type` VALUES ('8', '通知状态', 'sys_notice_status', '0', 'admin', '2022-05-14 14:04:20', '', null, '通知状态列表');
INSERT INTO `sys_dict_type` VALUES ('9', '操作类型', 'sys_oper_type', '0', 'admin', '2022-05-14 14:04:20', '', null, '操作类型列表');
INSERT INTO `sys_dict_type` VALUES ('10', '系统状态', 'sys_common_status', '0', 'admin', '2022-05-14 14:04:20', '', null, '登录状态列表');
INSERT INTO `sys_dict_type` VALUES ('11', '登录日志类型', 'sys_login_type', '0', 'admin', '2022-06-10 00:28:26', 'admin', '2022-06-10 00:28:26', null);
INSERT INTO `sys_dict_type` VALUES ('12', '训练状态', 'train_status', '0', 'admin', '2023-11-04 00:16:58', 'admin', '2023-11-04 00:17:09', null);

-- ----------------------------
-- Table structure for syuser
-- ----------------------------
DROP TABLE IF EXISTS `syuser`;
CREATE TABLE `syuser` (
  `ID` varchar(36) CHARACTER SET gbk COLLATE gbk_chinese_ci NOT NULL,
  `AGE` int(11) DEFAULT NULL,
  `CREATEDATETIME` datetime DEFAULT NULL,
  `LOGINNAME` varchar(100) CHARACTER SET gbk COLLATE gbk_chinese_ci NOT NULL,
  `NAME` varchar(100) CHARACTER SET gbk COLLATE gbk_chinese_ci DEFAULT NULL,
  `PHOTO` varchar(200) CHARACTER SET gbk COLLATE gbk_chinese_ci DEFAULT NULL,
  `PWD` varchar(100) CHARACTER SET gbk COLLATE gbk_chinese_ci DEFAULT NULL,
  `SEX` varchar(1) CHARACTER SET gbk COLLATE gbk_chinese_ci DEFAULT NULL,
  `UPDATEDATETIME` datetime DEFAULT NULL,
  `EMPLOYDATE` datetime DEFAULT NULL,
  `EMAIL` varchar(50) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci DEFAULT '' COMMENT '用户邮箱',
  `PHONENUMBER` varchar(11) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci DEFAULT '' COMMENT '手机号码',
  `STATUS` varchar(10) CHARACTER SET gbk COLLATE gbk_chinese_ci DEFAULT '0',
  PRIMARY KEY (`ID`) USING BTREE,
  UNIQUE KEY `UK_eiov1gsncrds3rean3dmu822p` (`LOGINNAME`) USING BTREE
) ENGINE=InnoDB DEFAULT CHARSET=gbk ROW_FORMAT=DYNAMIC;

-- ----------------------------
-- Records of syuser
-- ----------------------------
INSERT INTO `syuser` VALUES ('0', '30', '2015-08-25 10:34:54', 'admin', 'admin', '', 'e10adc3949ba59abbe56e057f20f883e', '1', '2022-06-08 11:04:52', null, 'test@test.com', '18988888888', '0');
INSERT INTO `syuser` VALUES ('0f21b40c-5323-46e5-9200-0364eab3481e', null, '2022-05-29 09:28:57', 'test', 'test', null, 'e10adc3949ba59abbe56e057f20f883e', '0', '2022-06-10 09:19:56', '2022-05-29 09:28:57', 'test@test.com', '18988888888', '0');
INSERT INTO `syuser` VALUES ('3d40cbf0-feff-4a51-9a0a-a163502bb68b', null, '2023-11-06 10:14:41', 'zhangsan', 'zhangsan', null, 'e10adc3949ba59abbe56e057f20f883e', '0', '2023-11-06 10:15:30', '2023-11-06 10:14:41', null, '', '0');

-- ----------------------------
-- Table structure for syuser_syorganization
-- ----------------------------
DROP TABLE IF EXISTS `syuser_syorganization`;
CREATE TABLE `syuser_syorganization` (
  `SYUSER_ID` varchar(36) CHARACTER SET gbk COLLATE gbk_chinese_ci NOT NULL,
  `SYORGANIZATION_ID` varchar(36) CHARACTER SET gbk COLLATE gbk_chinese_ci NOT NULL,
  PRIMARY KEY (`SYORGANIZATION_ID`,`SYUSER_ID`) USING BTREE,
  KEY `FK_14ewqc5wtscac0dd5rswrm5j2` (`SYORGANIZATION_ID`) USING BTREE,
  KEY `FK_63bdmtxwlk259id13rp4iryy` (`SYUSER_ID`) USING BTREE,
  CONSTRAINT `FK_14ewqc5wtscac0dd5rswrm5j2` FOREIGN KEY (`SYORGANIZATION_ID`) REFERENCES `syorganization` (`ID`) ON DELETE RESTRICT ON UPDATE RESTRICT,
  CONSTRAINT `FK_63bdmtxwlk259id13rp4iryy` FOREIGN KEY (`SYUSER_ID`) REFERENCES `syuser` (`ID`) ON DELETE RESTRICT ON UPDATE RESTRICT
) ENGINE=InnoDB DEFAULT CHARSET=gbk ROW_FORMAT=DYNAMIC;

-- ----------------------------
-- Records of syuser_syorganization
-- ----------------------------
INSERT INTO `syuser_syorganization` VALUES ('0', '0');
INSERT INTO `syuser_syorganization` VALUES ('346e8333-b644-4939-8b06-f23654963c6a', '0');
INSERT INTO `syuser_syorganization` VALUES ('3d40cbf0-feff-4a51-9a0a-a163502bb68b', '0');
INSERT INTO `syuser_syorganization` VALUES ('0f21b40c-5323-46e5-9200-0364eab3481e', '5477d9a9-e41e-485f-bb08-697e8facef88');

-- ----------------------------
-- Table structure for syuser_syrole
-- ----------------------------
DROP TABLE IF EXISTS `syuser_syrole`;
CREATE TABLE `syuser_syrole` (
  `SYUSER_ID` varchar(36) CHARACTER SET gbk COLLATE gbk_chinese_ci NOT NULL,
  `SYROLE_ID` varchar(36) CHARACTER SET gbk COLLATE gbk_chinese_ci NOT NULL,
  PRIMARY KEY (`SYROLE_ID`,`SYUSER_ID`) USING BTREE,
  KEY `FK_j7iwtgslc2esrjx0ptieleoko` (`SYROLE_ID`) USING BTREE,
  KEY `FK_1pi4p5h4y5ghbs5f4gdlgn620` (`SYUSER_ID`) USING BTREE,
  CONSTRAINT `FK_1pi4p5h4y5ghbs5f4gdlgn620` FOREIGN KEY (`SYUSER_ID`) REFERENCES `syuser` (`ID`) ON DELETE RESTRICT ON UPDATE RESTRICT,
  CONSTRAINT `FK_j7iwtgslc2esrjx0ptieleoko` FOREIGN KEY (`SYROLE_ID`) REFERENCES `syrole` (`ID`) ON DELETE RESTRICT ON UPDATE RESTRICT
) ENGINE=InnoDB DEFAULT CHARSET=gbk ROW_FORMAT=DYNAMIC;

-- ----------------------------
-- Records of syuser_syrole
-- ----------------------------
INSERT INTO `syuser_syrole` VALUES ('0', '0');
INSERT INTO `syuser_syrole` VALUES ('0', '19f00d46-8f1b-45b5-b7b7-6197d7b8cb33');
INSERT INTO `syuser_syrole` VALUES ('346e8333-b644-4939-8b06-f23654963c6a', '19f00d46-8f1b-45b5-b7b7-6197d7b8cb33');
INSERT INTO `syuser_syrole` VALUES ('3d40cbf0-feff-4a51-9a0a-a163502bb68b', '19f00d46-8f1b-45b5-b7b7-6197d7b8cb33');
INSERT INTO `syuser_syrole` VALUES ('0', 'f4e1b151-a171-4705-9154-503a046cb72a');

-- ----------------------------
-- Table structure for testdata
-- ----------------------------
DROP TABLE IF EXISTS `testdata`;
CREATE TABLE `testdata` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(100) NOT NULL,
  `input` varchar(500) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `output` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `origin_dataset` int(11) NOT NULL,
  `create_date` datetime DEFAULT NULL,
  `created_username` varchar(100) NOT NULL,
  `created_userrole` varchar(100) NOT NULL,
  PRIMARY KEY (`id`),
  KEY `origin_dataset` (`origin_dataset`),
  CONSTRAINT `testdata_ibfk_1` FOREIGN KEY (`origin_dataset`) REFERENCES `datasets` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=9 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of testdata
-- ----------------------------
INSERT INTO `testdata` VALUES ('1', 'test1_data.csv', '[\'a\',\'b\']', '[\'c\']', '1', '2023-11-17 11:35:26', 'admin', 'admin');
INSERT INTO `testdata` VALUES ('5', 'test2', '[\'a\'', '[]', '2', '2023-11-16 20:49:00', 'zhangsan', 'zhangsan');
INSERT INTO `testdata` VALUES ('6', 'test2', '[\'b\']', '[\'b\', \'c\']', '22', '2023-11-16 20:49:34', 'admin', 'admin');
INSERT INTO `testdata` VALUES ('7', 'testkkp', '[\'a\', \'b\']', '[\'c\', \'d\', \'e\']', '22', '2023-11-16 20:50:29', 'admin', 'admin');
INSERT INTO `testdata` VALUES ('8', 'test3', '[\'Time\', \'FCC_TIC1303_PV_csv\', \'FCC_PI1301_PV_csv\', \'FCC_FIC1311_PV_csv\', \'FCC_TIC1402_PV_csv\', \'FCC_TIC1402-1_PV_csv\', \'FCC_FI1400_PV_csv\', \'FCC_FIC1402-1_PV_csv\', \'FCC_FVC1402_PV_csv\', \'FCC_TI1419_PV_csv\', \'FCC_LIC1404_PV_csv\', \'FCC_TI1418_PV_csv\', \'FCC_PDI1414_PV_csv\']', '[\'wdqy\']', '21', '2023-11-16 21:01:58', 'zhangsan', 'zhangsan');
