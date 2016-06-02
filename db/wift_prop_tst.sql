-- MySQL dump 10.13  Distrib 5.7.12, for Linux (x86_64)
--
-- Host: localhost    Database: wift_prop_tst
-- ------------------------------------------------------
-- Server version	5.7.12-log

/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8 */;
/*!40103 SET @OLD_TIME_ZONE=@@TIME_ZONE */;
/*!40103 SET TIME_ZONE='+00:00' */;
/*!40014 SET @OLD_UNIQUE_CHECKS=@@UNIQUE_CHECKS, UNIQUE_CHECKS=0 */;
/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;
/*!40111 SET @OLD_SQL_NOTES=@@SQL_NOTES, SQL_NOTES=0 */;

--
-- Table structure for table `d_prop_status`
--

DROP TABLE IF EXISTS `d_prop_status`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `d_prop_status` (
  `CODE` varchar(30) DEFAULT NULL,
  `NAME` varchar(600) DEFAULT NULL,
  `PINYIN` varchar(30) DEFAULT NULL,
  `PARENT_CODE` varchar(30) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `d_prop_status`
--

LOCK TABLES `d_prop_status` WRITE;
/*!40000 ALTER TABLE `d_prop_status` DISABLE KEYS */;
/*!40000 ALTER TABLE `d_prop_status` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `t_b_arap`
--

DROP TABLE IF EXISTS `t_b_arap`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `t_b_arap` (
  `arap_id` varchar(40) NOT NULL COMMENT '主键ID',
  `BRANCH_ID` bigint(20) DEFAULT NULL COMMENT '分公司ID-claim为caseid',
  `ORGAN_ID` bigint(20) DEFAULT NULL COMMENT '机构id',
  `BUSINESS_NO` varchar(40) DEFAULT NULL COMMENT '业务主键',
  `POLICY_NO` varchar(40) DEFAULT NULL COMMENT '保单号',
  `PROD_ITEM_ID` varchar(40) DEFAULT NULL COMMENT '保单险种ID',
  `PRODUCT_ID` bigint(20) DEFAULT NULL COMMENT '产品id',
  `liab_id` bigint(20) DEFAULT NULL COMMENT '责任ID',
  `fee_amount` decimal(16,2) DEFAULT NULL COMMENT '金额',
  `charge_type` varchar(10) DEFAULT NULL,
  `policy_year` int(4) DEFAULT NULL COMMENT '保单年度',
  `policy_period` int(4) DEFAULT NULL,
  `premium_year` int(4) DEFAULT NULL,
  `benefit_type` varchar(10) DEFAULT NULL,
  `PAY_MODE` varchar(10) DEFAULT NULL,
  `fee_type` varchar(10) DEFAULT NULL COMMENT '费用类型',
  `FEE_STATUS` varchar(10) DEFAULT NULL COMMENT '费用状态',
  `OFFSET_STATUS` varchar(10) DEFAULT NULL COMMENT '冲销状态',
  `OFFSET_TIME` datetime DEFAULT NULL COMMENT '冲销时间',
  `FINISH_TIME` datetime DEFAULT NULL,
  `payee_id` bigint(20) DEFAULT NULL COMMENT '领款人ID',
  `account_id` varchar(40) DEFAULT NULL,
  `REVERSAL_ID` varchar(40) DEFAULT NULL,
  `RELATED_ID` varchar(40) DEFAULT NULL,
  `PA_CHG_ID` varchar(40) DEFAULT NULL,
  `SERVICE_ID` varchar(10) DEFAULT NULL,
  `CLAIM_TYPE` varchar(10) DEFAULT NULL,
  `ENTITY_FUND` varchar(10) DEFAULT NULL,
  `WITHDRAW_TYPE` varchar(10) DEFAULT NULL,
  `CASHIER_ID` bigint(20) DEFAULT NULL,
  `DUE_TIME` datetime DEFAULT NULL,
  `PAY_BALANCE` decimal(16,2) DEFAULT NULL,
  `posted` varchar(2) DEFAULT NULL,
  `GROUP_PROPOSAL_ID` varchar(40) DEFAULT NULL COMMENT '总投保单ID',
  `CREATE_BY` bigint(20) DEFAULT NULL COMMENT '创建人',
  `CREATE_TIME` datetime NOT NULL COMMENT '创建用户时间',
  `UPDATE_BY` bigint(20) DEFAULT NULL COMMENT '更新记录人',
  `UPDATE_TIME` datetime NOT NULL COMMENT '更新用户时间',
  `CREATE_TIMESTAMP` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '创建系统时间',
  `UPDATE_TIMESTAMP` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP COMMENT '更新系统时间',
  `PARTITION_INDI` bigint(20) NOT NULL COMMENT '分库标记字段',
  PRIMARY KEY (`arap_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='理赔应收应付表';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `t_b_arap`
--

LOCK TABLES `t_b_arap` WRITE;
/*!40000 ALTER TABLE `t_b_arap` DISABLE KEYS */;
INSERT INTO `t_b_arap` VALUES ('046e8899f8384316b6ece3407867f45e',NULL,400,'160525212308ffb','160525121265a','111574107445589186',132,NULL,3.00,NULL,NULL,NULL,NULL,NULL,NULL,'41','1','1',NULL,NULL,NULL,NULL,NULL,NULL,NULL,'1',NULL,NULL,NULL,NULL,'2016-05-26 00:00:00',NULL,NULL,NULL,NULL,'2016-05-29 14:13:51',NULL,'2016-05-29 14:13:51','2016-05-29 14:13:51','2016-05-29 14:13:51',720);
/*!40000 ALTER TABLE `t_b_arap` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `t_b_arap_list`
--

DROP TABLE IF EXISTS `t_b_arap_list`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `t_b_arap_list` (
  `list_id` varchar(40) NOT NULL COMMENT '主键Id',
  `ARAP_ID` varchar(40) DEFAULT NULL COMMENT '应收应付费用ID',
  `BUSINESS_NO` varchar(40) DEFAULT NULL COMMENT '业务主键',
  `POLICY_NO` varchar(40) DEFAULT NULL COMMENT '保单号',
  `PRODUCT_ID` bigint(20) DEFAULT NULL COMMENT '产品ID',
  `liab_id` bigint(20) DEFAULT NULL COMMENT '责任ID',
  `PROD_ITEM_ID` varchar(40) DEFAULT NULL COMMENT '投保单险种ID',
  `BRANCH_ID` bigint(20) DEFAULT NULL COMMENT '分公司ID',
  `ORGAN_ID` bigint(20) DEFAULT NULL COMMENT '机构ID',
  `fee_type` varchar(10) DEFAULT NULL COMMENT '支付费用类型 与adjust_type一致',
  `fee_amount` decimal(16,2) DEFAULT NULL COMMENT '费用',
  `payee_id` bigint(20) DEFAULT NULL COMMENT '领款人ID',
  `pay_mode` varchar(10) DEFAULT NULL COMMENT '支付方式',
  `account_id` varchar(40) DEFAULT NULL COMMENT '账号ID',
  `FINISH_TIME` datetime DEFAULT NULL,
  `DUE_TIME` datetime DEFAULT NULL,
  `FEE_STATUS` varchar(10) DEFAULT NULL,
  `OFFSET_STATUS` varchar(10) DEFAULT NULL,
  `OFFSET_TIME` datetime DEFAULT NULL,
  `CREATE_BY` bigint(20) DEFAULT NULL COMMENT '创建人',
  `CREATE_TIME` datetime DEFAULT NULL COMMENT '创建时间',
  `UPDATE_BY` bigint(20) DEFAULT NULL COMMENT '更新人',
  `UPDATE_TIME` datetime DEFAULT NULL COMMENT '更新时间',
  `CREATE_TIMESTAMP` datetime DEFAULT CURRENT_TIMESTAMP COMMENT '创建系统时间',
  `UPDATE_TIMESTAMP` datetime DEFAULT CURRENT_TIMESTAMP COMMENT '更新系统时间',
  `PARTITION_INDI` bigint(20) DEFAULT NULL COMMENT '分库字段',
  PRIMARY KEY (`list_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='财务结算';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `t_b_arap_list`
--

LOCK TABLES `t_b_arap_list` WRITE;
/*!40000 ALTER TABLE `t_b_arap_list` DISABLE KEYS */;
INSERT INTO `t_b_arap_list` VALUES ('251bb1d537c44393a314d63266572109','046e8899f8384316b6ece3407867f45e','160525212308ffb','160525121265a',132,NULL,'111574107445589186',NULL,400,'41',1.73,NULL,NULL,NULL,NULL,'2016-05-26 00:00:00','1','1',NULL,400,NULL,400,'2016-05-29 14:13:51',NULL,'2016-05-29 14:13:51',720),('597dfc8c7a8442d1b4e5fc88a50f8895','046e8899f8384316b6ece3407867f45e','160525212308ffb','160525121265a',134,NULL,'111574107579014330',NULL,400,'41',1.21,NULL,NULL,NULL,NULL,'2016-05-26 00:00:00','1','1',NULL,400,NULL,400,'2016-05-29 14:13:51',NULL,'2016-05-29 14:13:51',720),('b33533f42db0411091ae78fa3b31536c','046e8899f8384316b6ece3407867f45e','160525212308ffb','160525121265a',133,NULL,'111574109401145115',NULL,400,'41',0.06,NULL,NULL,NULL,NULL,'2016-05-26 00:00:00','1','1',NULL,400,NULL,400,'2016-05-29 14:13:51',NULL,'2016-05-29 14:13:51',720);
/*!40000 ALTER TABLE `t_b_arap_list` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `t_b_payment`
--

DROP TABLE IF EXISTS `t_b_payment`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `t_b_payment` (
  `PAYMENT_ID` varchar(40) NOT NULL COMMENT '支付ID',
  `arap_id` varchar(40) DEFAULT NULL COMMENT 'T_B_ARAP主键',
  `ORGAN_ID` bigint(20) DEFAULT NULL COMMENT '机构id',
  `BUSINESS_NO` varchar(40) DEFAULT NULL COMMENT '案件ID',
  `POLICY_NO` varchar(40) DEFAULT NULL COMMENT '投保单ID',
  `apply_code` varchar(20) DEFAULT NULL,
  `fee_amount` decimal(12,2) DEFAULT NULL COMMENT '金额',
  `PAY_MODE` varchar(10) DEFAULT NULL COMMENT '支付方式',
  `fee_type` varchar(10) DEFAULT NULL,
  `fee_status` varchar(10) DEFAULT NULL COMMENT '是否付款',
  `offset_status` varchar(10) DEFAULT NULL,
  `finish_time` datetime DEFAULT NULL,
  `cashier_id` bigint(20) DEFAULT NULL,
  `posted` varchar(2) DEFAULT NULL,
  `pay_amount` decimal(12,2) DEFAULT NULL,
  `WITHDRAW_TYPE` varchar(10) DEFAULT NULL,
  `RELATED_ID` varchar(40) DEFAULT NULL,
  `PAY_BALANCE` decimal(12,2) DEFAULT NULL,
  `account_id` varchar(40) DEFAULT NULL,
  `internal_account_id` varchar(40) DEFAULT NULL,
  `internal_bank_name` varchar(40) DEFAULT NULL,
  `internal_bank_code` varchar(10) DEFAULT NULL,
  `internal_bank_account` varchar(40) DEFAULT NULL,
  `apply_time` date DEFAULT NULL,
  `payee_id` bigint(20) DEFAULT NULL,
  `due_time` date DEFAULT NULL,
  `payment_voucher` varchar(40) DEFAULT NULL COMMENT '支付流水号',
  `fails_counter` int(11) DEFAULT '0' COMMENT '失败次数',
  `OFFSET_GLOBAL_ID` varchar(40) DEFAULT NULL COMMENT 'UUID',
  `PARTITION_INDI` bigint(20) NOT NULL COMMENT '分库标记字段',
  `CREATE_BY` bigint(20) DEFAULT NULL COMMENT '创建人',
  `CREATE_TIME` datetime NOT NULL COMMENT '创建用户时间',
  `UPDATE_BY` bigint(20) DEFAULT NULL COMMENT '更新记录人',
  `UPDATE_TIME` datetime NOT NULL COMMENT '更新用户时间',
  `CREATE_TIMESTAMP` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '创建系统时间',
  `UPDATE_TIMESTAMP` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP COMMENT '更新系统时间',
  PRIMARY KEY (`PAYMENT_ID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='支付表';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `t_b_payment`
--

LOCK TABLES `t_b_payment` WRITE;
/*!40000 ALTER TABLE `t_b_payment` DISABLE KEYS */;
INSERT INTO `t_b_payment` VALUES ('5fcb4849998944d4b91f3c06c4564aa8','046e8899f8384316b6ece3407867f45e',400,'160525212308ffb','160525121265a',NULL,3.00,NULL,'41','1','1',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'2016-05-26',NULL,0,NULL,720,400,'2016-05-29 14:13:51',400,'2016-05-29 14:13:51','2016-05-29 14:13:51','2016-05-29 14:13:51');
/*!40000 ALTER TABLE `t_b_payment` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `t_b_payment_list`
--

DROP TABLE IF EXISTS `t_b_payment_list`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `t_b_payment_list` (
  `fee_id` varchar(40) NOT NULL COMMENT '费用主键',
  `arap_id` varchar(40) DEFAULT NULL COMMENT 'T_B_ARAP主键',
  `ORGAN_ID` bigint(20) DEFAULT NULL COMMENT '公式机构代码',
  `BUSINESS_NO` varchar(40) DEFAULT NULL COMMENT '业务主键 理赔为caseID',
  `POLICY_NO` varchar(40) DEFAULT NULL COMMENT '保单ID',
  `PRODUCT_ID` bigint(20) DEFAULT NULL,
  `liab_id` bigint(20) DEFAULT NULL,
  `apply_code` varchar(20) DEFAULT NULL COMMENT '投保单号',
  `fee_amount` decimal(12,2) DEFAULT NULL COMMENT '费用',
  `PAY_MODE` varchar(10) DEFAULT NULL COMMENT '支付方式',
  `fee_type` varchar(10) DEFAULT NULL COMMENT '费用类型',
  `fee_status` varchar(10) DEFAULT NULL COMMENT '费用状态',
  `offset_status` varchar(10) DEFAULT NULL COMMENT '冲销状态',
  `finish_time` datetime DEFAULT NULL COMMENT '完成时间',
  `cashier_id` bigint(20) DEFAULT NULL COMMENT '费用操作人代码',
  `posted` varchar(2) DEFAULT NULL,
  `pay_amount` decimal(12,2) DEFAULT NULL COMMENT '收付费金额',
  `WITHDRAW_TYPE` varchar(10) DEFAULT NULL COMMENT '领取类型',
  `RELATED_ID` varchar(40) DEFAULT NULL COMMENT '回退id',
  `PAY_BALANCE` decimal(12,2) DEFAULT NULL,
  `account_id` varchar(40) DEFAULT NULL COMMENT '客户账户ID',
  `internal_account_id` varchar(40) DEFAULT NULL COMMENT '公司账户ID',
  `internal_bank_name` varchar(40) DEFAULT NULL COMMENT '公司账户名称',
  `internal_bank_code` varchar(10) DEFAULT NULL COMMENT '公司银行代码',
  `internal_bank_account` varchar(40) DEFAULT NULL COMMENT '公司银行账户',
  `apply_time` date DEFAULT NULL COMMENT '交易时间',
  `payee_id` bigint(20) DEFAULT NULL COMMENT '领款人id',
  `due_time` date DEFAULT NULL COMMENT '应缴日',
  `payment_voucher` varchar(40) DEFAULT NULL COMMENT '支付流水号',
  `OFFSET_GLOBAL_ID` varchar(40) DEFAULT NULL,
  `PARTITION_INDI` bigint(20) DEFAULT NULL,
  `CREATE_BY` bigint(20) DEFAULT NULL,
  `CREATE_TIME` datetime DEFAULT NULL,
  `UPDATE_BY` bigint(20) DEFAULT NULL,
  `UPDATE_TIME` datetime DEFAULT NULL,
  `CREATE_TIMESTAMP` datetime DEFAULT CURRENT_TIMESTAMP,
  `UPDATE_TIMESTAMP` datetime DEFAULT CURRENT_TIMESTAMP,
  PRIMARY KEY (`fee_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='应收已收应付已付表';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `t_b_payment_list`
--

LOCK TABLES `t_b_payment_list` WRITE;
/*!40000 ALTER TABLE `t_b_payment_list` DISABLE KEYS */;
INSERT INTO `t_b_payment_list` VALUES ('109c6be1451f4326968a15dc3a2fdd87','046e8899f8384316b6ece3407867f45e',400,'160525212308ffb','160525121265a',133,NULL,NULL,0.06,NULL,'41','1','1',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'2016-05-26',NULL,NULL,720,400,'2016-05-29 14:13:51',400,'2016-05-29 14:13:51','2016-05-29 14:13:51','2016-05-29 14:13:51'),('c12fdf2f5afa47cbb2032d1dc13fce16','046e8899f8384316b6ece3407867f45e',400,'160525212308ffb','160525121265a',134,NULL,NULL,1.21,NULL,'41','1','1',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'2016-05-26',NULL,NULL,720,400,'2016-05-29 14:13:51',400,'2016-05-29 14:13:51','2016-05-29 14:13:51','2016-05-29 14:13:51'),('ef027bb16d4d493383cd8dd9d98adc80','046e8899f8384316b6ece3407867f45e',400,'160525212308ffb','160525121265a',132,NULL,NULL,1.73,NULL,'41','1','1',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'2016-05-26',NULL,NULL,720,400,'2016-05-29 14:13:51',400,'2016-05-29 14:13:51','2016-05-29 14:13:51','2016-05-29 14:13:51');
/*!40000 ALTER TABLE `t_b_payment_list` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `t_deformity_grade`
--

DROP TABLE IF EXISTS `t_deformity_grade`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `t_deformity_grade` (
  `LIST_ID` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '记录ID',
  `STD_CODE` varchar(10) COLLATE utf8_bin DEFAULT NULL COMMENT '残疾标准',
  `ITEM_CODE` varchar(10) COLLATE utf8_bin DEFAULT NULL COMMENT '残疾代码',
  `GRADE_CODE` varchar(10) COLLATE utf8_bin DEFAULT NULL COMMENT '残疾等级',
  PRIMARY KEY (`LIST_ID`)
) ENGINE=InnoDB AUTO_INCREMENT=960 DEFAULT CHARSET=utf8 COLLATE=utf8_bin COMMENT='残疾标准、残疾代码与残疾等级配置表';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `t_deformity_grade`
--

LOCK TABLES `t_deformity_grade` WRITE;
/*!40000 ALTER TABLE `t_deformity_grade` DISABLE KEYS */;
/*!40000 ALTER TABLE `t_deformity_grade` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `t_group_proposal`
--

DROP TABLE IF EXISTS `t_group_proposal`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `t_group_proposal` (
  `GROUP_PROPOSAL_ID` varchar(40) COLLATE utf8_bin NOT NULL DEFAULT '',
  `GROUP_PROPOSAL_NO` varchar(30) COLLATE utf8_bin DEFAULT NULL COMMENT '总投保单号',
  `PROPOSAL_STATUS` char(3) COLLATE utf8_bin NOT NULL DEFAULT '0' COMMENT '投保单状态',
  `ORGAN_ID` bigint(20) DEFAULT NULL COMMENT '机构id',
  `CREATE_TIME` datetime NOT NULL COMMENT '创建用户时间',
  `UPDATE_BY` bigint(20) DEFAULT NULL COMMENT '更新记录人',
  `UPDATE_TIME` datetime NOT NULL COMMENT '更新用户时间',
  `PARTITION_INDI` bigint(20) NOT NULL,
  `CREATE_BY` bigint(20) DEFAULT NULL COMMENT '创建人',
  `CREATE_TIMESTAMP` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '创建系统时间',
  `UPDATE_TIMESTAMP` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP COMMENT '更新系统时间',
  `entry_id` bigint(20) DEFAULT NULL COMMENT '投保单录入人',
  `verify_id` bigint(20) DEFAULT NULL COMMENT '投保单复核人',
  `underwriter_id` bigint(20) DEFAULT NULL COMMENT '投保单核保人',
  `uw_finish_date` bigint(20) DEFAULT NULL COMMENT '核保完成时间',
  PRIMARY KEY (`GROUP_PROPOSAL_ID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin COMMENT='总投保单';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `t_group_proposal`
--

LOCK TABLES `t_group_proposal` WRITE;
/*!40000 ALTER TABLE `t_group_proposal` DISABLE KEYS */;
/*!40000 ALTER TABLE `t_group_proposal` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `t_lf_product`
--

DROP TABLE IF EXISTS `t_lf_product`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `t_lf_product` (
  `PRODUCT_ID` bigint(20) NOT NULL COMMENT '寿险产品id',
  `HESITATION_PERIOD` int(11) DEFAULT '10' COMMENT '犹豫期',
  `GRACE_PERIOD` int(11) DEFAULT '60' COMMENT '宽限期',
  `HOBBY_ADDFEE_UNIT` decimal(10,0) DEFAULT NULL COMMENT '爱好加费单位',
  `OCCUPATION_ADDFEE_UNIT` decimal(10,0) DEFAULT NULL COMMENT '职业加费单位',
  `SCHEDULE_RATE` decimal(6,2) DEFAULT NULL COMMENT '计算利差的预定利率',
  `HEALTH_ADDFEE_UNIT` decimal(10,0) DEFAULT NULL COMMENT '健康加费单位',
  `CASHVALUE_UNIT` decimal(10,0) DEFAULT NULL COMMENT '现价单位',
  `SA_UNIT` decimal(10,0) DEFAULT NULL COMMENT '单位保额',
  `PREMIUM_UNIT` decimal(10,0) DEFAULT NULL COMMENT '单位保费',
  `COUNTER_WAY` char(1) COLLATE utf8_bin DEFAULT NULL,
  `INSERT_BY` bigint(20) DEFAULT NULL COMMENT '记录插入人',
  `UPDATE_BY` bigint(20) DEFAULT NULL COMMENT '记录更新人',
  `INSERT_TIME` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '记录插入时间',
  `UPDATE_TIME` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '记录更新时间',
  `INSERT_TIMESTAMP` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '记录插入时间戳',
  `UPDATE_TIMESTAMP` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '记录更新时间戳',
  PRIMARY KEY (`PRODUCT_ID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `t_lf_product`
--

LOCK TABLES `t_lf_product` WRITE;
/*!40000 ALTER TABLE `t_lf_product` DISABLE KEYS */;
/*!40000 ALTER TABLE `t_lf_product` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `t_liab_clause_param`
--

DROP TABLE IF EXISTS `t_liab_clause_param`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `t_liab_clause_param` (
  `PARAM_ID` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '参数id',
  `PARAM_CODE` char(40) COLLATE utf8_bin DEFAULT NULL,
  `DEFAULT_VALUE` varchar(40) COLLATE utf8_bin DEFAULT NULL,
  `PARAM_FORMAT` varchar(40) COLLATE utf8_bin DEFAULT NULL,
  `PARAM_DATA_TYPE` char(5) COLLATE utf8_bin DEFAULT NULL,
  `LIAB_ID` bigint(20) NOT NULL COMMENT 'Benefit ID',
  PRIMARY KEY (`PARAM_ID`),
  KEY `FK_LIAB_CLAUSE_PARAM__LIAB_ID` (`LIAB_ID`)
) ENGINE=InnoDB AUTO_INCREMENT=155 DEFAULT CHARSET=utf8 COLLATE=utf8_bin;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `t_liab_clause_param`
--

LOCK TABLES `t_liab_clause_param` WRITE;
/*!40000 ALTER TABLE `t_liab_clause_param` DISABLE KEYS */;
/*!40000 ALTER TABLE `t_liab_clause_param` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `t_liability`
--

DROP TABLE IF EXISTS `t_liability`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `t_liability` (
  `LIAB_ID` bigint(20) NOT NULL COMMENT 'Benefit ID',
  `PRODUCT_ID` bigint(20) DEFAULT NULL,
  `LIAB_CATEGORY` decimal(2,0) NOT NULL COMMENT 'Benefit Category ID',
  `LIABILITY_TYPE` varchar(5) COLLATE utf8_bin DEFAULT NULL COMMENT '责任设计大类\n                         CLM 理赔  surv 生存责任  bonus 红利  prem 缴费责任',
  `LIAB_NAME` varchar(100) COLLATE utf8_bin DEFAULT NULL,
  `CLAUSE` varchar(2000) COLLATE utf8_bin DEFAULT NULL,
  PRIMARY KEY (`LIAB_ID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `t_liability`
--

LOCK TABLES `t_liability` WRITE;
/*!40000 ALTER TABLE `t_liability` DISABLE KEYS */;
/*!40000 ALTER TABLE `t_liability` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `t_liability_category`
--

DROP TABLE IF EXISTS `t_liability_category`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `t_liability_category` (
  `category_id` decimal(2,0) NOT NULL COMMENT '责任分类',
  `category_name` varchar(100) COLLATE utf8_bin DEFAULT NULL COMMENT '责任分类',
  `LIABILITY_TYPE` varchar(5) COLLATE utf8_bin DEFAULT NULL COMMENT '责任设计大类  CLM 理赔  surv 生存责任  bonus 红利  prem 缴费责任',
  PRIMARY KEY (`category_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin COMMENT='责任分类';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `t_liability_category`
--

LOCK TABLES `t_liability_category` WRITE;
/*!40000 ALTER TABLE `t_liability_category` DISABLE KEYS */;
/*!40000 ALTER TABLE `t_liability_category` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `t_product`
--

DROP TABLE IF EXISTS `t_product`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `t_product` (
  `PRODUCT_ID` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '产品id',
  `PRODUCT_CODE` varchar(40) COLLATE utf8_bin DEFAULT NULL,
  `PROD_LINE_CODE` char(2) COLLATE utf8_bin DEFAULT NULL,
  `PRODUCT_NAME` varchar(240) COLLATE utf8_bin DEFAULT NULL,
  `PRODUCT_ABBR_NAME` varchar(240) COLLATE utf8_bin DEFAULT NULL,
  `PRODUCT_DESC` varchar(1000) COLLATE utf8_bin DEFAULT NULL,
  `MAIN_RIDER` char(1) COLLATE utf8_bin DEFAULT NULL,
  `PRODUCT_CATEGORY1` varchar(8) COLLATE utf8_bin DEFAULT NULL,
  `PRODUCT_CATEGORY2` varchar(8) COLLATE utf8_bin DEFAULT NULL,
  `PRODUCT_CATEGORY3` varchar(8) COLLATE utf8_bin DEFAULT NULL,
  `PRODUCT_CATEGORY4` varchar(8) COLLATE utf8_bin DEFAULT NULL,
  `COVER_PERIOD_TYPE` decimal(1,0) DEFAULT NULL COMMENT '保障期间类型\n            一年期以上\n            一年期\n            一年期以内\n            一年期以及一年期以内',
  `PREMIUM_CURRENCY` char(3) COLLATE utf8_bin DEFAULT NULL,
  `RELEASE_DATE` datetime DEFAULT CURRENT_TIMESTAMP COMMENT '产品发布时间',
  `INSERT_TIMESTAMP` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP COMMENT '插入时间戳',
  `LOCKED_BY` bigint(20) DEFAULT NULL COMMENT '当前锁定人',
  `LOCKED_WHY` char(3) COLLATE utf8_bin DEFAULT NULL,
  `CREATED_BY` bigint(20) DEFAULT NULL COMMENT '创建人',
  `CREATE_TIME` datetime DEFAULT CURRENT_TIMESTAMP COMMENT '创建时间',
  `UPDATE_BY` bigint(20) DEFAULT NULL COMMENT '更新记录人',
  `UPDATE_TIME` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP COMMENT '更新记录时间',
  PRIMARY KEY (`PRODUCT_ID`)
) ENGINE=InnoDB AUTO_INCREMENT=76 DEFAULT CHARSET=utf8 COLLATE=utf8_bin COMMENT='保险产品';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `t_product`
--

LOCK TABLES `t_product` WRITE;
/*!40000 ALTER TABLE `t_product` DISABLE KEYS */;
/*!40000 ALTER TABLE `t_product` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `t_prop_aggr_risk_list`
--

DROP TABLE IF EXISTS `t_prop_aggr_risk_list`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `t_prop_aggr_risk_list` (
  `LIST_ID` varchar(40) CHARACTER SET utf8 COLLATE utf8_bin NOT NULL,
  `PROPOSAL_ID` varchar(40) CHARACTER SET utf8 COLLATE utf8_bin NOT NULL COMMENT '投保单ID',
  `ITEM_ID` varchar(40) CHARACTER SET utf8 COLLATE utf8_bin NOT NULL,
  `RISK_CATE` varchar(10) CHARACTER SET utf8 COLLATE utf8_bin NOT NULL COMMENT '风险类别',
  `CUST_ID` varchar(40) CHARACTER SET utf8 COLLATE utf8_bin NOT NULL COMMENT '客户ID',
  `PRODUCT_ID` bigint(20) NOT NULL COMMENT '产品ID',
  `RISK_AMOUNT` decimal(16,2) NOT NULL COMMENT '产品ID',
  `CREATE_BY` bigint(20) DEFAULT NULL COMMENT '创建人',
  `CREATE_TIME` datetime NOT NULL COMMENT '创建用户时间',
  `UPDATE_BY` bigint(20) DEFAULT NULL COMMENT '更新记录人',
  `UPDATE_TIME` datetime NOT NULL COMMENT '更新用户时间',
  `PARTITION_INDI` bigint(20) NOT NULL,
  `CREATE_TIMESTAMP` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '创建系统时间',
  `UPDATE_TIMESTAMP` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP COMMENT '更新系统时间',
  PRIMARY KEY (`LIST_ID`),
  KEY `FK_PROP__ARL_CUSTID` (`CUST_ID`),
  KEY `FK_PROP__ARL_PROP_ID` (`PROPOSAL_ID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='投保单风险累计明细表';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `t_prop_aggr_risk_list`
--

LOCK TABLES `t_prop_aggr_risk_list` WRITE;
/*!40000 ALTER TABLE `t_prop_aggr_risk_list` DISABLE KEYS */;
/*!40000 ALTER TABLE `t_prop_aggr_risk_list` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `t_prop_beneficiary`
--

DROP TABLE IF EXISTS `t_prop_beneficiary`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `t_prop_beneficiary` (
  `BENEFICIARY_ID` varchar(40) COLLATE utf8_bin NOT NULL DEFAULT '',
  `PROPOSAL_ID` varchar(40) COLLATE utf8_bin DEFAULT NULL,
  `PROP_INSURANT` varchar(40) COLLATE utf8_bin DEFAULT NULL,
  `BEN_TYPE` varchar(10) COLLATE utf8_bin DEFAULT NULL,
  `BEN_ORDER` bigint(20) DEFAULT NULL,
  `BENE_CUST_ID` varchar(40) COLLATE utf8_bin DEFAULT NULL,
  `BENE_PERCENT` decimal(3,2) DEFAULT NULL,
  `IS_LEGAL` char(1) COLLATE utf8_bin DEFAULT NULL,
  `PARTITION_INDI` bigint(20) NOT NULL,
  `CREATE_BY` bigint(20) DEFAULT NULL COMMENT '创建人',
  `UPDATE_BY` bigint(20) DEFAULT NULL COMMENT '更新人',
  `CREATE_TIME` datetime NOT NULL COMMENT '创建用户时间',
  `UPDATE_TIME` datetime NOT NULL COMMENT '更新用户时间',
  `CREATE_TIMESTAMP` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '创建系统时间',
  `UPDATE_TIMESTAMP` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP COMMENT '更新系统时间',
  PRIMARY KEY (`BENEFICIARY_ID`),
  KEY `FK_PROP_BEN__PROP_ID` (`PROPOSAL_ID`),
  KEY `FK_PROP_BEN__PROP_INS` (`PROP_INSURANT`),
  KEY `FK_PROP_BEN__CUST_ID` (`BENE_CUST_ID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `t_prop_beneficiary`
--

LOCK TABLES `t_prop_beneficiary` WRITE;
/*!40000 ALTER TABLE `t_prop_beneficiary` DISABLE KEYS */;
/*!40000 ALTER TABLE `t_prop_beneficiary` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `t_prop_coverage`
--

DROP TABLE IF EXISTS `t_prop_coverage`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `t_prop_coverage` (
  `ITEM_ID` varchar(40) COLLATE utf8_bin NOT NULL DEFAULT '',
  `LIST_ORDER` int(3) DEFAULT NULL COMMENT '序号\n              两个00结尾是主险\n              一个0结尾是附加险\n             没有零结尾是豁免险',
  `SUM_ASSURED` decimal(16,2) DEFAULT NULL COMMENT '保额',
  `UNITS` decimal(3,2) DEFAULT NULL COMMENT '份数',
  `BENEFIT_LEVEL` int(11) DEFAULT NULL COMMENT '投保档次',
  `COVER_PERIOD_TYPE` varchar(10) COLLATE utf8_bin DEFAULT NULL,
  `COVERAGE_PERIOD` int(11) DEFAULT NULL COMMENT '保障期间',
  `CHARGE_PERIOD` int(11) DEFAULT NULL COMMENT '缴费期间',
  `CHARGE_MODE` varchar(10) COLLATE utf8_bin DEFAULT NULL,
  `APPLICATION_DATE` date DEFAULT NULL COMMENT '投保时间',
  `EFFECTIVE_DATE` date DEFAULT NULL COMMENT '生效日',
  `EXPIRY_DATE` date DEFAULT NULL COMMENT '过期日',
  `MAIN_ITEM_ID` varchar(40) COLLATE utf8_bin DEFAULT NULL,
  `PROPOSAL_ID` varchar(40) COLLATE utf8_bin DEFAULT NULL,
  `INSURANT_ID` varchar(40) COLLATE utf8_bin DEFAULT NULL,
  `ORGAN_ID` bigint(20) DEFAULT NULL COMMENT '机构id',
  `PRODUCT_ID` bigint(20) DEFAULT NULL COMMENT '产品id',
  `JOINT_LIFE_YN` char(1) COLLATE utf8_bin DEFAULT NULL COMMENT '连生险标记',
  `CREATE_TIME` datetime NOT NULL COMMENT '创建用户时间',
  `UPDATE_BY` bigint(20) DEFAULT NULL COMMENT '更新记录人',
  `UPDATE_TIME` datetime NOT NULL COMMENT '更新用户时间',
  `PARTITION_INDI` bigint(20) NOT NULL,
  `CREATE_BY` bigint(20) DEFAULT NULL COMMENT '创建人',
  `CREATE_TIMESTAMP` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '创建系统时间',
  `UPDATE_TIMESTAMP` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP COMMENT '更新系统时间',
  `STD_PREM_BF` decimal(16,2) DEFAULT NULL COMMENT '当期标准保费',
  `DISCNTED_RATE` decimal(7,6) DEFAULT NULL COMMENT '当期折扣率',
  `DISCNTED_STD_PREM_BF` decimal(16,2) DEFAULT NULL COMMENT '当期标准折扣保费',
  `EXTRA_STD_PREM_BF` decimal(16,2) DEFAULT NULL COMMENT '当期标准加费金额',
  `STD_PREM_AF` decimal(16,2) DEFAULT NULL COMMENT '当期缴别标准保费',
  `DISCNTED_STD_PREM_AF` decimal(16,2) DEFAULT NULL COMMENT '当期缴别标准折扣保费',
  `EXTRA_PREM_AF` decimal(16,2) DEFAULT NULL COMMENT '当期缴别标准加费金额',
  `TOTAL_PREM_AF` decimal(16,2) DEFAULT NULL COMMENT '当期缴别总保费',
  `STD_PREM_AN` decimal(16,2) DEFAULT NULL COMMENT '当期标准年保费',
  `DISCNTED_STD_PREM_AN` decimal(16,2) DEFAULT NULL COMMENT '当期标准折扣年保费',
  `EXTRA_STD_PREM_AN` decimal(16,2) DEFAULT NULL COMMENT '当期标准年加费金额',
  `CHARGE_PERIOD_TYPE` varchar(10) COLLATE utf8_bin DEFAULT NULL COMMENT '缴费期间类型',
  PRIMARY KEY (`ITEM_ID`),
  KEY `FK_PROP_COV__PROP_ID` (`PROPOSAL_ID`),
  KEY `FK_PROP_COV__INS_ID` (`INSURANT_ID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin COMMENT='投保单险种表';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `t_prop_coverage`
--

LOCK TABLES `t_prop_coverage` WRITE;
/*!40000 ALTER TABLE `t_prop_coverage` DISABLE KEYS */;
INSERT INTO `t_prop_coverage` VALUES ('111574107445589186',100,200000.00,NULL,NULL,'D',1,1,'1','2016-05-25',NULL,NULL,NULL,'11157426127945','09fd85ae86d24b7ca609e3bd476c08d9',400,132,NULL,'2016-05-29 14:13:51',400,'2016-05-29 14:13:51',720,400,'2016-05-29 14:13:51','2016-05-29 14:13:51',0.79,2.190000,1.73,0.00,0.79,1.73,0.00,1.73,0.00,0.00,0.00,NULL),('111574107579014330',200,200000.00,NULL,NULL,'D',1,1,'1','2016-05-25',NULL,NULL,NULL,'11157426127945','09fd85ae86d24b7ca609e3bd476c08d9',400,134,NULL,'2016-05-29 14:13:51',400,'2016-05-29 14:13:51',720,400,'2016-05-29 14:13:51','2016-05-29 14:13:51',0.55,2.200000,1.21,0.00,0.55,1.21,0.00,1.21,0.00,0.00,0.00,NULL),('111574109401145115',101,10000.00,NULL,NULL,'D',1,1,'1','2016-05-25',NULL,NULL,'111574107445589186','11157426127945','09fd85ae86d24b7ca609e3bd476c08d9',400,133,NULL,'2016-05-29 14:13:51',400,'2016-05-29 14:13:51',720,400,'2016-05-29 14:13:51','2016-05-29 14:13:51',0.03,2.000000,0.06,0.00,0.03,0.06,0.00,0.06,0.00,0.00,0.00,NULL);
/*!40000 ALTER TABLE `t_prop_coverage` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `t_prop_cust_addr`
--

DROP TABLE IF EXISTS `t_prop_cust_addr`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `t_prop_cust_addr` (
  `CUST_ADDR_ID` varchar(40) COLLATE utf8_bin NOT NULL DEFAULT '',
  `CUSTOMER_ID` varchar(40) COLLATE utf8_bin DEFAULT NULL,
  `PROVINCE_CODE` varchar(6) COLLATE utf8_bin DEFAULT NULL,
  `CITY_CODE` varchar(6) COLLATE utf8_bin DEFAULT NULL,
  `DISTRICT_CODE` varchar(6) COLLATE utf8_bin DEFAULT NULL,
  `ORGAN_ID` bigint(20) DEFAULT NULL COMMENT '机构id',
  `ADDR_DETAIL` varchar(300) COLLATE utf8_bin DEFAULT NULL COMMENT '具体地址',
  `POSTAL_CODE` varchar(10) COLLATE utf8_bin DEFAULT NULL COMMENT '邮编',
  `LINKMAN` varchar(30) COLLATE utf8_bin DEFAULT NULL COMMENT '联系人',
  `CONTACT_NUMBER` varchar(30) COLLATE utf8_bin DEFAULT NULL COMMENT '联系人电话',
  `PARTITION_INDI` bigint(20) NOT NULL,
  `CREATE_BY` bigint(20) DEFAULT NULL COMMENT '创建人',
  `CREATE_TIME` datetime NOT NULL COMMENT '创建用户时间',
  `UPDATE_BY` bigint(20) DEFAULT NULL COMMENT '更新人',
  `UPDATE_TIME` datetime NOT NULL COMMENT '更新用户时间',
  `CREATE_TIMESTAMP` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '创建系统时间',
  `UPDATE_TIMESTAMP` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP COMMENT '更新系统时间',
  PRIMARY KEY (`CUST_ADDR_ID`),
  KEY `FK_REFERENCE_34` (`ORGAN_ID`),
  KEY `FK_PROP_CUST_A__C_ID` (`CUSTOMER_ID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin COMMENT='客户地址表';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `t_prop_cust_addr`
--

LOCK TABLES `t_prop_cust_addr` WRITE;
/*!40000 ALTER TABLE `t_prop_cust_addr` DISABLE KEYS */;
INSERT INTO `t_prop_cust_addr` VALUES ('382d6f754c6e4b75996b34e431c0ff63','6fc672d186d34111b2fd1bf4a369a734','110000','110100','110102',400,'西环广场T1',NULL,NULL,NULL,720,400,'2016-05-29 14:13:51',400,'2016-05-29 14:13:51','2016-05-29 14:13:51','2016-05-29 14:13:51');
/*!40000 ALTER TABLE `t_prop_cust_addr` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `t_prop_customer`
--

DROP TABLE IF EXISTS `t_prop_customer`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `t_prop_customer` (
  `CUSTOMER_ID` varchar(40) COLLATE utf8_bin NOT NULL DEFAULT '',
  `ORGAN_ID` bigint(20) DEFAULT NULL COMMENT '机构id',
  `GLOBAL_CUST_ID` bigint(20) DEFAULT NULL,
  `PINYIN_NAME` varchar(40) COLLATE utf8_bin DEFAULT NULL COMMENT '拼音',
  `GENDER` varchar(10) COLLATE utf8_bin DEFAULT NULL COMMENT '性别',
  `BIRTHDAY` date NOT NULL COMMENT '生日',
  `CERTI_TYPE` varchar(10) COLLATE utf8_bin DEFAULT NULL COMMENT '证件类型',
  `CERTI_CODE` varchar(40) COLLATE utf8_bin DEFAULT NULL COMMENT '证件号码',
  `STATUS` varchar(10) COLLATE utf8_bin DEFAULT NULL COMMENT '状态',
  `NATIONALITY` varchar(10) COLLATE utf8_bin DEFAULT NULL COMMENT '国籍',
  `MOBILE_PHONE` varchar(40) COLLATE utf8_bin DEFAULT NULL COMMENT '移动电话',
  `IS_MARRIED` varchar(10) COLLATE utf8_bin DEFAULT NULL COMMENT '婚姻状态',
  `IS_SOCIALCARE` varchar(10) COLLATE utf8_bin DEFAULT NULL COMMENT '社保状态',
  `INDUSTRY` varchar(10) COLLATE utf8_bin DEFAULT NULL COMMENT '行业',
  `JOB_CODE` varchar(10) COLLATE utf8_bin DEFAULT NULL COMMENT '职业代码',
  `DEATH_DATE` date DEFAULT NULL COMMENT '死亡日期',
  `WORK_COMPANY` varchar(200) COLLATE utf8_bin DEFAULT NULL COMMENT '工作单位',
  `HEALTH_STATUS` varchar(20) COLLATE utf8_bin DEFAULT NULL COMMENT '健康状态',
  `HEIGHT` decimal(4,1) DEFAULT NULL COMMENT '身高(CM)',
  `WEIGHT` decimal(5,2) DEFAULT NULL COMMENT '体重(KG)',
  `ANNUAL_INCOME` decimal(6,2) DEFAULT NULL COMMENT '年收入(万元）',
  `PARTITION_INDI` bigint(20) NOT NULL,
  `CREATE_TIME` datetime NOT NULL COMMENT '创建用户时间',
  `UPDATE_BY` bigint(20) DEFAULT NULL COMMENT '更新记录人',
  `UPDATE_TIME` datetime NOT NULL COMMENT '更新用户时间',
  `EMAIL` varchar(60) COLLATE utf8_bin DEFAULT NULL COMMENT '电子邮件',
  `CREATE_BY` bigint(20) DEFAULT NULL COMMENT '创建人',
  `CREATE_TIMESTAMP` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '创建系统时间',
  `UPDATE_TIMESTAMP` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP COMMENT '更新系统时间',
  `name` varchar(100) COLLATE utf8_bin DEFAULT NULL COMMENT '姓名',
  PRIMARY KEY (`CUSTOMER_ID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin COMMENT='投保单客户';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `t_prop_customer`
--

LOCK TABLES `t_prop_customer` WRITE;
/*!40000 ALTER TABLE `t_prop_customer` DISABLE KEYS */;
INSERT INTO `t_prop_customer` VALUES ('09fd85ae86d24b7ca609e3bd476c08d9',400,720,NULL,'1','1991-05-23','111','370705199105232516',NULL,NULL,NULL,NULL,NULL,NULL,'0101005',NULL,NULL,NULL,NULL,NULL,NULL,720,'2016-05-29 14:13:51',400,'2016-05-29 14:13:51',NULL,400,'2016-05-29 14:13:51','2016-05-29 14:13:51','豆腐干豆腐'),('6fc672d186d34111b2fd1bf4a369a734',400,720,NULL,'1','1991-05-23','111','370705199105232516',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,720,'2016-05-29 14:13:51',400,'2016-05-29 14:13:51',NULL,400,'2016-05-29 14:13:51','2016-05-29 14:13:51','豆腐干豆腐');
/*!40000 ALTER TABLE `t_prop_customer` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `t_prop_insurant`
--

DROP TABLE IF EXISTS `t_prop_insurant`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `t_prop_insurant` (
  `PROP_INSURANT_ID` varchar(40) COLLATE utf8_bin NOT NULL DEFAULT '',
  `PROPOSAL_ID` varchar(40) COLLATE utf8_bin DEFAULT NULL,
  `CUSTOMER_ID` varchar(40) COLLATE utf8_bin DEFAULT NULL,
  `RELATION_TO_HOLDER` varchar(10) COLLATE utf8_bin DEFAULT NULL,
  `ORGAN_ID` bigint(20) DEFAULT NULL COMMENT '机构id',
  `PARTITION_INDI` bigint(20) NOT NULL,
  `CREATE_BY` bigint(20) DEFAULT NULL COMMENT '创建人',
  `UPDATE_BY` bigint(20) DEFAULT NULL COMMENT '更新人',
  `CREATE_TIME` datetime NOT NULL COMMENT '创建用户时间',
  `UPDATE_TIME` datetime NOT NULL COMMENT '更新用户时间',
  `CREATE_TIMESTAMP` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '创建系统时间',
  `UPDATE_TIMESTAMP` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP COMMENT '更新系统时间',
  PRIMARY KEY (`PROP_INSURANT_ID`),
  KEY `FK_PROP_INS__CUST_ID` (`CUSTOMER_ID`),
  KEY `FK_PROP_INS__PROP_ID` (`PROPOSAL_ID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin COMMENT='投保单被保人表';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `t_prop_insurant`
--

LOCK TABLES `t_prop_insurant` WRITE;
/*!40000 ALTER TABLE `t_prop_insurant` DISABLE KEYS */;
INSERT INTO `t_prop_insurant` VALUES ('d1e22b5b3e834f0ca302592a2ea5b45f','11157426127945','09fd85ae86d24b7ca609e3bd476c08d9','2',400,720,NULL,400,'2016-05-29 14:13:51','2016-05-29 14:13:51','2016-05-29 14:13:51','2016-05-29 14:13:51');
/*!40000 ALTER TABLE `t_prop_insurant` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `t_prop_order`
--

DROP TABLE IF EXISTS `t_prop_order`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `t_prop_order` (
  `ORDER_ID` varchar(40) CHARACTER SET utf8 COLLATE utf8_bin NOT NULL COMMENT '订单ID',
  `CHANNEL_ORDER_NO` varchar(100) CHARACTER SET utf8 COLLATE utf8_bin DEFAULT NULL COMMENT '订单号',
  `CHANNEL_ID` bigint(20) DEFAULT NULL COMMENT '渠道ID',
  `ORDER_STATUS` varchar(2) CHARACTER SET utf8 COLLATE utf8_bin DEFAULT NULL COMMENT '订单状态',
  `PREUW_STATUS` varchar(2) CHARACTER SET utf8 COLLATE utf8_bin DEFAULT NULL COMMENT '预核结果',
  `PREUW_FAILED_CAUSE` varchar(100) CHARACTER SET utf8 COLLATE utf8_bin DEFAULT NULL COMMENT '预核失败原因',
  `PROPOSAL_NO` varchar(20) CHARACTER SET utf8 COLLATE utf8_bin DEFAULT NULL COMMENT '投保单号',
  `PARTITION_INDI` bigint(20) NOT NULL,
  `CREATE_TIME` datetime NOT NULL COMMENT '创建用户时间',
  `UPDATE_TIME` datetime NOT NULL COMMENT '更新用户时间',
  `CREATE_TIMESTAMP` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '创建系统时间',
  `UPDATE_TIMESTAMP` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP COMMENT '更新系统时间',
  `MKT_PROD_INFO` varchar(4000) DEFAULT NULL COMMENT '营销活动信息',
  PRIMARY KEY (`ORDER_ID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='投保单订单记录表';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `t_prop_order`
--

LOCK TABLES `t_prop_order` WRITE;
/*!40000 ALTER TABLE `t_prop_order` DISABLE KEYS */;
/*!40000 ALTER TABLE `t_prop_order` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `t_prop_order_coverage`
--

DROP TABLE IF EXISTS `t_prop_order_coverage`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `t_prop_order_coverage` (
  `ITEM_ID` varchar(40) CHARACTER SET utf8 COLLATE utf8_bin NOT NULL DEFAULT '',
  `ORDER_ID` varchar(40) NOT NULL,
  `CUST_ID` bigint(20) DEFAULT NULL COMMENT '客户id',
  `SUM_ASSURED` decimal(16,2) DEFAULT NULL COMMENT '保额',
  `UNITS` decimal(3,2) DEFAULT NULL COMMENT '份数',
  `BENEFIT_LEVEL` int(11) DEFAULT NULL COMMENT '投保档次',
  `COVER_PERIOD_TYPE` varchar(10) CHARACTER SET utf8 COLLATE utf8_bin DEFAULT NULL,
  `COVERAGE_PERIOD` int(11) DEFAULT NULL COMMENT '保障期间',
  `CHARGE_PERIOD` int(11) DEFAULT NULL COMMENT '缴费期间',
  `CHARGE_MODE` varchar(10) CHARACTER SET utf8 COLLATE utf8_bin DEFAULT NULL,
  `APPLICATION_DATE` date DEFAULT NULL COMMENT '投保时间',
  `EFFECTIVE_DATE` date DEFAULT NULL COMMENT '生效日',
  `EXPIRY_DATE` date DEFAULT NULL COMMENT '过期日',
  `MAIN_ITEM_ID` varchar(40) CHARACTER SET utf8 COLLATE utf8_bin DEFAULT NULL,
  `ORGAN_ID` bigint(20) DEFAULT NULL COMMENT '机构id',
  `PRODUCT_ID` bigint(20) DEFAULT NULL COMMENT '产品id',
  `JOINT_LIFE_YN` char(1) CHARACTER SET utf8 COLLATE utf8_bin DEFAULT NULL COMMENT '连生险标记',
  `CREATE_TIME` datetime NOT NULL COMMENT '创建用户时间',
  `UPDATE_BY` bigint(20) DEFAULT NULL COMMENT '更新记录人',
  `UPDATE_TIME` datetime NOT NULL COMMENT '更新用户时间',
  `PARTITION_INDI` bigint(20) NOT NULL,
  `CREATE_BY` bigint(20) DEFAULT NULL COMMENT '创建人',
  `CREATE_TIMESTAMP` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '创建系统时间',
  `UPDATE_TIMESTAMP` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP COMMENT '更新系统时间',
  `STD_PREM_BF` decimal(16,2) DEFAULT NULL COMMENT '当期标准保费',
  `DISCNTED_RATE` decimal(7,6) DEFAULT NULL COMMENT '当期折扣率',
  `DISCNTED_STD_PREM_BF` decimal(16,2) DEFAULT NULL COMMENT '当期标准折扣保费',
  `EXTRA_STD_PREM_BF` decimal(16,2) DEFAULT NULL COMMENT '当期标准加费金额',
  `STD_PREM_AF` decimal(16,2) DEFAULT NULL COMMENT '当期缴别标准保费',
  `DISCNTED_STD_PREM_AF` decimal(16,2) DEFAULT NULL COMMENT '当期缴别标准折扣保费',
  `EXTRA_PREM_AF` decimal(16,2) DEFAULT NULL COMMENT '当期缴别标准加费金额',
  `TOTAL_PREM_AF` decimal(16,2) DEFAULT NULL COMMENT '当期缴别总保费',
  `STD_PREM_AN` decimal(16,2) DEFAULT NULL COMMENT '当期标准年保费',
  `DISCNTED_STD_PREM_AN` decimal(16,2) DEFAULT NULL COMMENT '当期标准折扣年保费',
  `EXTRA_STD_PREM_AN` decimal(16,2) DEFAULT NULL COMMENT '当期标准年加费金额',
  `is_gift` varchar(10) DEFAULT NULL COMMENT '是否赠险',
  `order_prop_id` varchar(40) DEFAULT NULL COMMENT '订单投保单编号',
  PRIMARY KEY (`ITEM_ID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='订单营销产品表';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `t_prop_order_coverage`
--

LOCK TABLES `t_prop_order_coverage` WRITE;
/*!40000 ALTER TABLE `t_prop_order_coverage` DISABLE KEYS */;
/*!40000 ALTER TABLE `t_prop_order_coverage` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `t_prop_order_proposal`
--

DROP TABLE IF EXISTS `t_prop_order_proposal`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `t_prop_order_proposal` (
  `order_prop_id` varchar(40) NOT NULL COMMENT '主键',
  `order_id` varchar(40) NOT NULL COMMENT '订单ID',
  `proposal_no` varchar(40) DEFAULT NULL COMMENT '投保单号',
  `policy_no` varchar(40) DEFAULT NULL COMMENT '保单号',
  `is_gift` varchar(10) NOT NULL COMMENT '是否赠险',
  `PARTITION_INDI` bigint(20) NOT NULL,
  `CREATE_BY` bigint(20) DEFAULT NULL COMMENT '创建人',
  `CREATE_TIME` datetime NOT NULL COMMENT '创建用户时间',
  `UPDATE_BY` bigint(20) DEFAULT NULL COMMENT '更新记录人',
  `UPDATE_TIME` datetime NOT NULL COMMENT '更新用户时间',
  `CREATE_TIMESTAMP` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '创建系统时间',
  `UPDATE_TIMESTAMP` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP COMMENT '更新系统时间',
  PRIMARY KEY (`order_prop_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='订单投保单信息表';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `t_prop_order_proposal`
--

LOCK TABLES `t_prop_order_proposal` WRITE;
/*!40000 ALTER TABLE `t_prop_order_proposal` DISABLE KEYS */;
/*!40000 ALTER TABLE `t_prop_order_proposal` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `t_prop_outsrv_trans`
--

DROP TABLE IF EXISTS `t_prop_outsrv_trans`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `t_prop_outsrv_trans` (
  `TRANS_ID` varchar(100) NOT NULL COMMENT '主键',
  `global_ID` varchar(40) DEFAULT NULL COMMENT '上次log 交易ID（例如prop调用PA的承保接口需要传递自己的transID）',
  `TRANS_TYPE` varchar(20) DEFAULT NULL COMMENT '交易类型',
  `SYSCHANNEL` varchar(10) DEFAULT NULL COMMENT '接收系统',
  `TRANS_SYS` varchar(40) DEFAULT NULL COMMENT '请求系统',
  `Integration_ID` varchar(40) DEFAULT NULL COMMENT '集成服务ID',
  `POLICY_NO` varchar(40) DEFAULT NULL COMMENT '保单号码',
  `POLICY_ID` varchar(40) DEFAULT NULL COMMENT '保单编号',
  `PROPOSAL_NO` varchar(40) DEFAULT NULL COMMENT '投保单号码',
  `PROPOSAL_ID` varchar(40) DEFAULT NULL COMMENT '投保单编号',
  `START_TIME` varchar(40) DEFAULT NULL COMMENT '开始时间',
  `END_TIME` varchar(40) DEFAULT NULL COMMENT '结束时间',
  `RUN_TIME` bigint(20) DEFAULT NULL COMMENT '处理耗时',
  `STATUS` varchar(2) DEFAULT '0' COMMENT '0，处理中 1，成功，2失败 3部分成功',
  `TIMELY` varchar(10) DEFAULT '1' COMMENT '1:实时 2:非实时',
  `REQUEST` text COMMENT '请求对象',
  `INNER_REQUEST` text COMMENT '内部请求对象',
  `INNER_RESPONSE` text COMMENT '内部响应对象',
  `RESPONSE_JSON` text COMMENT '响应对象json',
  `operator` bigint(20) DEFAULT NULL COMMENT '操作者',
  `FAILED_REASON` text COMMENT '失败原因',
  `IS_SYN` varchar(3) DEFAULT 'N' COMMENT '是否同步到log系统（Y 是 N 否）',
  `PARTITION_INDI` bigint(40) DEFAULT NULL COMMENT '分库字段',
  `BUSI_PRAMERY` varchar(40) DEFAULT NULL COMMENT '业务主键',
  `BUSI_TYPE` varchar(2) DEFAULT NULL COMMENT '业务类型（1.policyno 2 proposalno 3 changeId 4 caseNo ）',
  PRIMARY KEY (`TRANS_ID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `t_prop_outsrv_trans`
--

LOCK TABLES `t_prop_outsrv_trans` WRITE;
/*!40000 ALTER TABLE `t_prop_outsrv_trans` DISABLE KEYS */;
/*!40000 ALTER TABLE `t_prop_outsrv_trans` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `t_prop_payer_account`
--

DROP TABLE IF EXISTS `t_prop_payer_account`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `t_prop_payer_account` (
  `ACCOUNT_ID` varchar(40) CHARACTER SET utf8 COLLATE utf8_bin NOT NULL,
  `PROPOSAL_ID` varchar(40) CHARACTER SET utf8 COLLATE utf8_bin DEFAULT NULL,
  `PAYER_CUST_ID` varchar(40) CHARACTER SET utf8 COLLATE utf8_bin DEFAULT NULL,
  `ACCOUNT_NAME` varchar(40) CHARACTER SET utf8 COLLATE utf8_bin DEFAULT NULL,
  `PAY_MODE` varchar(10) CHARACTER SET utf8 COLLATE utf8_bin DEFAULT NULL,
  `WECHAT_ACCOUNT` varchar(40) CHARACTER SET utf8 COLLATE utf8_bin DEFAULT NULL,
  `ALIPAY_ACCOUNT` varchar(40) CHARACTER SET utf8 COLLATE utf8_bin DEFAULT NULL,
  `BANK_CODE` varchar(10) CHARACTER SET utf8 COLLATE utf8_bin DEFAULT NULL,
  `BANK_BRANCH` varchar(10) CHARACTER SET utf8 COLLATE utf8_bin DEFAULT NULL,
  `BANK_ACCOUNT` varchar(40) CHARACTER SET utf8 COLLATE utf8_bin DEFAULT NULL,
  `PARTITION_INDI` bigint(20) NOT NULL,
  `CREATE_TIME` datetime NOT NULL COMMENT '创建用户时间',
  `UPDATE_BY` bigint(20) DEFAULT NULL COMMENT '更新记录人',
  `UPDATE_TIME` datetime NOT NULL COMMENT '更新用户时间',
  `CREATE_BY` bigint(20) DEFAULT NULL COMMENT '创建人',
  `CREATE_TIMESTAMP` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '创建系统时间',
  `UPDATE_TIMESTAMP` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP COMMENT '更新系统时间',
  PRIMARY KEY (`ACCOUNT_ID`),
  KEY `FK_PROP_PAY__CUST_ID` (`PAYER_CUST_ID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='投保单支付账户表';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `t_prop_payer_account`
--

LOCK TABLES `t_prop_payer_account` WRITE;
/*!40000 ALTER TABLE `t_prop_payer_account` DISABLE KEYS */;
/*!40000 ALTER TABLE `t_prop_payer_account` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `t_prop_payment`
--

DROP TABLE IF EXISTS `t_prop_payment`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `t_prop_payment` (
  `PAYMENT_ID` varchar(40) COLLATE utf8_bin NOT NULL COMMENT '支付信息ID',
  `PROPOSAL_ID` varchar(40) COLLATE utf8_bin DEFAULT NULL COMMENT '投保单ID',
  `ORGAN_ID` bigint(20) DEFAULT NULL COMMENT '机构id',
  `PAYMENT_VOUCHER` varchar(40) COLLATE utf8_bin DEFAULT NULL COMMENT '支付流水号',
  `AMOUNT` decimal(12,2) DEFAULT NULL COMMENT '金额',
  `CURRENCY` varchar(10) COLLATE utf8_bin DEFAULT NULL,
  `PAYMENT_APPLY_TIME` date DEFAULT NULL COMMENT '支付发起时间',
  `PAYMENT_FINISH_TIME` date DEFAULT NULL COMMENT '支付完成时间',
  `FAILS_COUNTER` int(11) DEFAULT '0' COMMENT '失败次数',
  `PAYMENT_STATUS` int(11) DEFAULT NULL COMMENT '支付状态',
  `OFFSET_GLOBAL_ID` varchar(40) COLLATE utf8_bin NOT NULL COMMENT 'UUID',
  `CREATE_TIME` datetime NOT NULL COMMENT '创建用户时间',
  `UPDATE_BY` bigint(20) DEFAULT NULL COMMENT '更新记录人',
  `UPDATE_TIME` datetime NOT NULL COMMENT '更新用户时间',
  `PARTITION_INDI` bigint(20) NOT NULL,
  `account_name` varchar(40) COLLATE utf8_bin DEFAULT NULL,
  `PAY_MODE` varchar(10) COLLATE utf8_bin DEFAULT NULL,
  `WECHAT_ACCOUNT` varchar(40) COLLATE utf8_bin DEFAULT NULL,
  `ALIPAY_ACCOUNT` varchar(40) COLLATE utf8_bin DEFAULT NULL,
  `BANK_CODE` varchar(10) COLLATE utf8_bin DEFAULT NULL,
  `BANK_BRANCH` varchar(10) COLLATE utf8_bin DEFAULT NULL,
  `BANK_ACCOUNT` varchar(40) COLLATE utf8_bin DEFAULT NULL,
  `CREATE_BY` bigint(20) DEFAULT NULL COMMENT '创建人',
  `CREATE_TIMESTAMP` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '创建系统时间',
  `UPDATE_TIMESTAMP` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP COMMENT '更新系统时间',
  PRIMARY KEY (`PAYMENT_ID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin COMMENT='支付信息表';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `t_prop_payment`
--

LOCK TABLES `t_prop_payment` WRITE;
/*!40000 ALTER TABLE `t_prop_payment` DISABLE KEYS */;
/*!40000 ALTER TABLE `t_prop_payment` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `t_prop_premium`
--

DROP TABLE IF EXISTS `t_prop_premium`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `t_prop_premium` (
  `PREMIUM_ID` varchar(40) COLLATE utf8_bin NOT NULL COMMENT '应收费用ID',
  `FEE_TYPE` varchar(10) COLLATE utf8_bin DEFAULT NULL,
  `PROPOSAL_ID` varchar(40) COLLATE utf8_bin DEFAULT NULL COMMENT '投保单ID',
  `PROP_ITEM_ID` varchar(40) COLLATE utf8_bin DEFAULT NULL COMMENT '险种ID',
  `ORGAN_ID` bigint(20) DEFAULT NULL COMMENT '机构id',
  `BRANCH_ID` bigint(20) DEFAULT NULL COMMENT '分公司ID',
  `HOLDER_CUST_ID` varchar(40) COLLATE utf8_bin DEFAULT NULL,
  `GROUP_PROPOSAL_ID` varchar(40) COLLATE utf8_bin DEFAULT NULL COMMENT '总投保单ID',
  `CURRENCY` varchar(10) COLLATE utf8_bin DEFAULT NULL,
  `AMOUNT` decimal(12,2) DEFAULT NULL COMMENT '金额',
  `DUE_DATE` date DEFAULT NULL COMMENT '到期日',
  `COVER_PERIOD_TYPE` varchar(10) COLLATE utf8_bin DEFAULT NULL,
  `COVERAGE_PERIOD` int(11) DEFAULT NULL COMMENT '保障期间',
  `CHARGE_PERIOD` int(11) DEFAULT NULL COMMENT '缴费期间',
  `CHARGE_MODE` varchar(10) COLLATE utf8_bin DEFAULT NULL,
  `CUSTOMER_ID` varchar(40) COLLATE utf8_bin DEFAULT NULL,
  `PRODUCT_ID` bigint(20) DEFAULT NULL COMMENT '产品id',
  `PREMIUM_STATUS` int(11) DEFAULT NULL COMMENT '状态',
  `PARTITION_INDI` bigint(20) NOT NULL,
  `CREATE_TIME` datetime NOT NULL COMMENT '创建用户时间',
  `UPDATE_BY` bigint(20) DEFAULT NULL COMMENT '更新记录人',
  `UPDATE_TIME` datetime NOT NULL COMMENT '更新用户时间',
  `offset_status` varchar(10) COLLATE utf8_bin DEFAULT NULL COMMENT '冲销状态',
  `offset_time` datetime DEFAULT NULL COMMENT '冲销时间',
  `CREATE_BY` bigint(20) DEFAULT NULL COMMENT '创建人',
  `CREATE_TIMESTAMP` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '创建系统时间',
  `UPDATE_TIMESTAMP` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP COMMENT '更新系统时间',
  PRIMARY KEY (`PREMIUM_ID`),
  KEY `FK_PROP_PREM__CUSTID` (`CUSTOMER_ID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin COMMENT='应收信息';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `t_prop_premium`
--

LOCK TABLES `t_prop_premium` WRITE;
/*!40000 ALTER TABLE `t_prop_premium` DISABLE KEYS */;
/*!40000 ALTER TABLE `t_prop_premium` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `t_prop_premium_offset`
--

DROP TABLE IF EXISTS `t_prop_premium_offset`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `t_prop_premium_offset` (
  `OFFSET_GLOBAL_ID` varchar(40) COLLATE utf8_bin NOT NULL,
  `OFFSET_ID` varchar(40) COLLATE utf8_bin NOT NULL,
  `PREMIUM_ID` varchar(40) COLLATE utf8_bin DEFAULT NULL COMMENT '应收费用ID',
  `PREMIUM_AMOUNT` decimal(12,2) NOT NULL COMMENT '保费金额',
  `PAYMENT_ID` varchar(40) COLLATE utf8_bin NOT NULL COMMENT '支付信息ID',
  `ORGAN_ID` bigint(20) DEFAULT NULL COMMENT '租户ID',
  `PREM_CURRENCY` varchar(10) COLLATE utf8_bin DEFAULT NULL,
  `PAYMENT_AMOUNT` decimal(12,2) NOT NULL COMMENT '支付金额',
  `PAYMENT_CURRENCY` varchar(10) COLLATE utf8_bin DEFAULT NULL,
  `offset_type` varchar(10) COLLATE utf8_bin DEFAULT NULL,
  `CREATE_TIME` datetime NOT NULL COMMENT '创建用户时间',
  `UPDATE_BY` bigint(20) DEFAULT NULL COMMENT '更新记录人',
  `UPDATE_TIME` datetime NOT NULL COMMENT '更新用户时间',
  `PARTITION_INDI` bigint(20) NOT NULL,
  `CREATE_BY` bigint(20) DEFAULT NULL COMMENT '创建人',
  `CREATE_TIMESTAMP` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '创建系统时间',
  `UPDATE_TIMESTAMP` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP COMMENT '更新系统时间',
  PRIMARY KEY (`OFFSET_ID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin COMMENT='费用冲销表';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `t_prop_premium_offset`
--

LOCK TABLES `t_prop_premium_offset` WRITE;
/*!40000 ALTER TABLE `t_prop_premium_offset` DISABLE KEYS */;
/*!40000 ALTER TABLE `t_prop_premium_offset` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `t_proposal`
--

DROP TABLE IF EXISTS `t_proposal`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `t_proposal` (
  `PROPOSAL_ID` varchar(40) CHARACTER SET utf8 COLLATE utf8_bin NOT NULL DEFAULT '',
  `PROPOSAL_NO` varchar(20) CHARACTER SET utf8 COLLATE utf8_bin NOT NULL COMMENT '投保单号码',
  `PROPOSAL_TYPE` varchar(10) DEFAULT NULL COMMENT '投保单类型',
  `DATA_TEMPLATE_ID` bigint(20) DEFAULT NULL COMMENT '投保单模板',
  `APPLICATION_DATE` date DEFAULT NULL COMMENT '投保时间',
  `PAY_MODE` varchar(10) DEFAULT NULL COMMENT '保单首期收费方式：现金、支付宝、微信、银行转账',
  `EFFECTIVE_DATE` date DEFAULT NULL COMMENT '生效日',
  `EXPIRY_DATE` date DEFAULT NULL COMMENT '过期日',
  `sales_channel` varchar(10) DEFAULT NULL,
  `SALES_AREA` varchar(10) DEFAULT NULL,
  `HOLDER_CUST_ID` varchar(40) CHARACTER SET utf8 COLLATE utf8_bin DEFAULT NULL,
  `PA_CHG_ID` varchar(40) DEFAULT NULL COMMENT 'PA变更ID',
  `GROUP_PROPOSAL_ID` varchar(40) CHARACTER SET utf8 COLLATE utf8_bin DEFAULT NULL,
  `PROPOSAL_STATUS` varchar(10) DEFAULT NULL COMMENT '投保单状态',
  `ORGAN_ID` bigint(20) DEFAULT NULL COMMENT '机构id',
  `POLICY_NO` varchar(20) CHARACTER SET utf8 COLLATE utf8_bin DEFAULT NULL COMMENT '保单号码',
  `CREATE_TIME` datetime NOT NULL COMMENT '创建用户时间',
  `UPDATE_BY` bigint(20) DEFAULT NULL COMMENT '更新记录人',
  `UPDATE_TIME` datetime NOT NULL COMMENT '更新用户时间',
  `PARTITION_INDI` bigint(20) NOT NULL,
  `verify_return_notes` longtext CHARACTER SET utf8 COLLATE utf8_bin COMMENT '复核回退说明',
  `uw_return_notes` longtext CHARACTER SET utf8 COLLATE utf8_bin COMMENT '核保回退说明',
  `policy_channel` varchar(10) DEFAULT NULL COMMENT '保单渠道ID',
  `CREATE_BY` bigint(20) DEFAULT NULL COMMENT '创建人',
  `uw_finish_date` date DEFAULT NULL,
  `CREATE_TIMESTAMP` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '创建系统时间',
  `UPDATE_TIMESTAMP` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP COMMENT '更新系统时间',
  `entry_id` bigint(20) DEFAULT NULL COMMENT '投保单录入人',
  `verify_id` bigint(20) DEFAULT NULL COMMENT '投保单复核人',
  `underwriter_id` bigint(20) DEFAULT NULL COMMENT '投保单核保人',
  `MKT_PROD_INFO` varchar(4000) DEFAULT NULL,
  `trans_no` varchar(40) DEFAULT NULL COMMENT '跨系统交易编号',
  PRIMARY KEY (`PROPOSAL_ID`),
  KEY `FK_PROP__HO_CUSTID` (`HOLDER_CUST_ID`),
  KEY `FK_PROP__GLS_PROP_ID` (`GROUP_PROPOSAL_ID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='投保单表';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `t_proposal`
--

LOCK TABLES `t_proposal` WRITE;
/*!40000 ALTER TABLE `t_proposal` DISABLE KEYS */;
INSERT INTO `t_proposal` VALUES ('11157426127945','160525212308ffb','02',NULL,'2016-05-25',NULL,'2016-05-26',NULL,NULL,NULL,'6fc672d186d34111b2fd1bf4a369a734',NULL,NULL,'01',400,'160525121265a','2016-05-29 14:13:51',400,'2016-05-29 14:13:52',720,NULL,NULL,NULL,400,NULL,'2016-05-29 14:13:51','2016-05-29 14:13:52',NULL,NULL,NULL,'{\"mktPolicyInfo\":{\"mktPolicyId\":null,\"mktProdId\":12,\"planName\":\"计划1\",\"insuredGender\":null,\"insuredArea\":null,\"propCopies\":null,\"propLevel\":null,\"amount\":null,\"insuredSocial\":null,\"insuredAge\":null,\"coveragePeriodType\":null,\"coveragePeriod\":\"1D\",\"chargePeriodType\":null,\"chargePeriod\":null,\"chargeFreq\":null,\"premium\":\"3\",\"mktCoverageInfo\":null}}',NULL);
/*!40000 ALTER TABLE `t_proposal` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `t_proposal_type`
--

DROP TABLE IF EXISTS `t_proposal_type`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `t_proposal_type` (
  `TYPE` int(11) NOT NULL,
  `NAME` varchar(30) COLLATE utf8_bin DEFAULT NULL,
  PRIMARY KEY (`TYPE`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin COMMENT='投保单类型';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `t_proposal_type`
--

LOCK TABLES `t_proposal_type` WRITE;
/*!40000 ALTER TABLE `t_proposal_type` DISABLE KEYS */;
/*!40000 ALTER TABLE `t_proposal_type` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2016-06-01 15:15:06
