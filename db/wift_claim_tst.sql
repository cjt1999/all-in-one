-- MySQL dump 10.13  Distrib 5.7.12, for Linux (x86_64)
--
-- Host: localhost    Database: wift_claim_tst
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
/*!40000 ALTER TABLE `t_b_payment_list` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `t_claim_accident`
--

DROP TABLE IF EXISTS `t_claim_accident`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `t_claim_accident` (
  `ACCIDENT_ID` varchar(40) NOT NULL COMMENT '事件ID',
  `REPORT_NO` varchar(40) DEFAULT NULL COMMENT '报案号',
  `ACC_CUST_ID` bigint(20) DEFAULT NULL COMMENT '出险人',
  `ACC_STATUS` varchar(2) DEFAULT NULL COMMENT '案件状态',
  `ACC_DATE` date DEFAULT NULL COMMENT '事故日期',
  `ACC_REASON` varchar(10) DEFAULT NULL COMMENT '出险原因',
  `ACC_PROVINCE` varchar(10) DEFAULT NULL COMMENT '事故地点省',
  `ACC_CITY` varchar(10) DEFAULT NULL COMMENT '事故地点市',
  `ACC_DISTREACT` varchar(10) DEFAULT NULL COMMENT '事故地点区/县',
  `ACC_STREET` varchar(100) DEFAULT NULL COMMENT '事故地点街道',
  `ACC_DESC` varchar(1000) DEFAULT NULL COMMENT '事故描述',
  `APPLY_TYPE` varchar(10) DEFAULT NULL COMMENT '理赔申请类型',
  `CLIAM_REQUEST_AMT` decimal(16,2) DEFAULT NULL COMMENT '索赔金额',
  `IS_DEATH` varchar(1) DEFAULT NULL COMMENT '出险人是否死亡',
  `IS_HOSPITAL` varchar(1) DEFAULT NULL COMMENT '出险人是否住院',
  `IS_COMPENSATION` varchar(1) DEFAULT NULL COMMENT '是否正在申请或已经从其他保险公司、社保或第三方机构获得补偿',
  `PARTITION_INDI` bigint(20) DEFAULT NULL,
  `CREATE_BY` bigint(20) DEFAULT NULL COMMENT '创建人',
  `CREATE_TIME` datetime DEFAULT NULL COMMENT '创建用户时间',
  `UPDATE_BY` bigint(20) DEFAULT NULL COMMENT '更新记录人',
  `UPDATE_TIME` datetime DEFAULT NULL COMMENT '更新用户时间',
  `CREATE_TIMESTAMP` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '创建系统时间',
  `UPDATE_TIMESTAMP` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP COMMENT '更新系统时间',
  PRIMARY KEY (`ACCIDENT_ID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `t_claim_accident`
--

LOCK TABLES `t_claim_accident` WRITE;
/*!40000 ALTER TABLE `t_claim_accident` DISABLE KEYS */;
INSERT INTO `t_claim_accident` VALUES ('ac5cbc81c9eb4b1680e187a4e0aab943','32eb79af8a13406f862bc739a3f6013c',720,NULL,'2016-05-30','1',NULL,NULL,NULL,'','','01',NULL,'0',NULL,NULL,745,400,'2016-05-30 17:00:04',400,'2016-05-30 17:26:25','2016-05-30 17:00:04','2016-05-30 17:26:44');
/*!40000 ALTER TABLE `t_claim_accident` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `t_claim_accutor`
--

DROP TABLE IF EXISTS `t_claim_accutor`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `t_claim_accutor` (
  `accutor_id` varchar(20) NOT NULL COMMENT '主键Id',
  `case_id` varchar(40) DEFAULT NULL COMMENT '案件ID',
  `policy_id` varchar(40) DEFAULT NULL COMMENT '保单ID',
  `policy_no` varchar(40) DEFAULT NULL,
  `product_id` bigint(20) DEFAULT NULL COMMENT '产品ID',
  `liab_id` bigint(20) DEFAULT NULL COMMENT '责任ID',
  `insurant_id` bigint(20) DEFAULT NULL COMMENT '出险人、被保人客户ID',
  `accumu_type` varchar(10) DEFAULT NULL COMMENT '免赔、其他',
  `accumu_amount` decimal(16,2) DEFAULT NULL COMMENT '免赔金额、限额',
  `accumu_day` int(4) DEFAULT NULL COMMENT '天数',
  `start_date` date DEFAULT NULL COMMENT '有效开始时间',
  `end_date` date DEFAULT NULL COMMENT '有效结束时间',
  `accumu_freq` int(4) DEFAULT NULL COMMENT '频率期间（第几个保单年度）',
  `CREATE_BY` bigint(20) DEFAULT NULL COMMENT '创建人',
  `CREATE_TIME` datetime DEFAULT NULL COMMENT '创建时间',
  `UPDATE_BY` bigint(20) DEFAULT NULL COMMENT '更新人',
  `UPDATE_TIME` datetime DEFAULT CURRENT_TIMESTAMP COMMENT '更新时间',
  `CREATE_TIMESTAMP` datetime DEFAULT CURRENT_TIMESTAMP COMMENT '创建人',
  `UPDATE_TIMESTAMP` datetime DEFAULT CURRENT_TIMESTAMP,
  `PARTITION_INDI` bigint(20) DEFAULT NULL,
  PRIMARY KEY (`accutor_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='累加器表';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `t_claim_accutor`
--

LOCK TABLES `t_claim_accutor` WRITE;
/*!40000 ALTER TABLE `t_claim_accutor` DISABLE KEYS */;
/*!40000 ALTER TABLE `t_claim_accutor` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `t_claim_adjust`
--

DROP TABLE IF EXISTS `t_claim_adjust`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `t_claim_adjust` (
  `adjust_id` varchar(40) NOT NULL COMMENT '受益分配ID',
  `case_id` varchar(40) DEFAULT NULL COMMENT '赔案ID',
  `policy_id` varchar(40) DEFAULT NULL COMMENT '保单ID',
  `policy_no` varchar(40) DEFAULT NULL,
  `PROD_ITEM_ID` varchar(40) DEFAULT NULL COMMENT '保单险种ID',
  `product_id` bigint(20) DEFAULT NULL COMMENT '险种ID',
  `liab_id` bigint(20) DEFAULT NULL COMMENT '责任ID',
  `adjust_type` varchar(10) DEFAULT NULL,
  `adjust_amount` decimal(16,2) DEFAULT NULL COMMENT '调整金额',
  `pay_amount` decimal(16,2) DEFAULT NULL COMMENT '支付金额',
  `PARTITION_INDI` bigint(20) DEFAULT NULL COMMENT '分库标记字段',
  `CREATE_BY` bigint(20) DEFAULT NULL COMMENT '创建人',
  `CREATE_TIME` datetime DEFAULT NULL COMMENT '创建用户时间',
  `UPDATE_BY` bigint(20) DEFAULT NULL COMMENT '更新记录人',
  `UPDATE_TIME` datetime DEFAULT NULL COMMENT '更新用户时间',
  `CREATE_TIMESTAMP` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '创建系统时间',
  `UPDATE_TIMESTAMP` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP COMMENT '更新系统时间',
  PRIMARY KEY (`adjust_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `t_claim_adjust`
--

LOCK TABLES `t_claim_adjust` WRITE;
/*!40000 ALTER TABLE `t_claim_adjust` DISABLE KEYS */;
/*!40000 ALTER TABLE `t_claim_adjust` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `t_claim_arap_offset`
--

DROP TABLE IF EXISTS `t_claim_arap_offset`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `t_claim_arap_offset` (
  `OFFSET_GLOBAL_ID` varchar(40) NOT NULL,
  `OFFSET_ID` varchar(40) NOT NULL,
  `arap_id` varchar(40) DEFAULT NULL COMMENT '应收应付ID',
  `premium_amount` decimal(12,2) NOT NULL COMMENT '费用金额',
  `PAYMENT_ID` varchar(40) NOT NULL COMMENT '支付信息ID',
  `ORGAN_ID` bigint(20) DEFAULT NULL COMMENT '机构id',
  `prem_currency` varchar(10) NOT NULL COMMENT '费用币种',
  `payment_amount` decimal(12,2) NOT NULL COMMENT '支付金额',
  `payment_currency` varchar(10) NOT NULL COMMENT '支付币种',
  `OFFSET_TYPE` varchar(10) NOT NULL COMMENT '冲销类型',
  `PARTITION_INDI` bigint(20) NOT NULL COMMENT '分库标记字段',
  `CREATE_BY` bigint(20) DEFAULT NULL COMMENT '创建人',
  `CREATE_TIME` datetime NOT NULL COMMENT '创建用户时间',
  `UPDATE_BY` bigint(20) DEFAULT NULL COMMENT '更新记录人',
  `UPDATE_TIME` datetime NOT NULL COMMENT '更新用户时间',
  `CREATE_TIMESTAMP` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '创建系统时间',
  `UPDATE_TIMESTAMP` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP COMMENT '更新系统时间',
  PRIMARY KEY (`OFFSET_ID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `t_claim_arap_offset`
--

LOCK TABLES `t_claim_arap_offset` WRITE;
/*!40000 ALTER TABLE `t_claim_arap_offset` DISABLE KEYS */;
/*!40000 ALTER TABLE `t_claim_arap_offset` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `t_claim_arouse`
--

DROP TABLE IF EXISTS `t_claim_arouse`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `t_claim_arouse` (
  `AROUSE_ID` varchar(40) NOT NULL COMMENT '出险人ID',
  `report_no` varchar(40) NOT NULL COMMENT '报案号',
  `ACC_CUST_ID` bigint(20) DEFAULT NULL COMMENT '出险人客户ID',
  `AROUSE_NAME` varchar(100) DEFAULT NULL COMMENT '出险人姓名',
  `AROUSE_SEX` varchar(10) DEFAULT NULL COMMENT '出险人性别',
  `AROUSE_CERTI_TYPE` varchar(10) DEFAULT NULL COMMENT '出险人证件类型',
  `AROUSE_CERTI_NO` varchar(40) DEFAULT NULL COMMENT '出险人证件号码',
  `AROUSE_CERTI_START` date DEFAULT NULL COMMENT '出现人证件有效开始时间',
  `AROUSE_CERTI_END` date DEFAULT NULL COMMENT '出现人证件有效结束时间',
  `AROUSE_BIRTH` date DEFAULT NULL COMMENT '出现人出生日期',
  `mobile_phone` varchar(40) DEFAULT NULL,
  `PARTITION_INDI` bigint(20) NOT NULL COMMENT '分库标识',
  `CREATE_BY` bigint(20) DEFAULT NULL COMMENT '创建人',
  `CREATE_TIME` datetime DEFAULT NULL COMMENT '创建时间',
  `UPDATE_BY` bigint(20) DEFAULT NULL COMMENT '更新人',
  `UPDATE_TIME` datetime DEFAULT NULL COMMENT '更新时间',
  `CREATE_TIMESTAMP` datetime DEFAULT NULL COMMENT '创建系统时间',
  `UPDATE_TIMESTAMP` datetime DEFAULT NULL COMMENT '更新系统时间',
  PRIMARY KEY (`AROUSE_ID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='出险人信息表';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `t_claim_arouse`
--

LOCK TABLES `t_claim_arouse` WRITE;
/*!40000 ALTER TABLE `t_claim_arouse` DISABLE KEYS */;
INSERT INTO `t_claim_arouse` VALUES ('d5b4ffda22f7452bac806469af5ee6cd','32eb79af8a13406f862bc739a3f6013c',720,'豆腐干豆腐','1','01','370705199105232516',NULL,NULL,'1991-05-22',NULL,745,400,'2016-05-30 17:00:04',400,'2016-05-30 17:26:25','2016-05-30 17:00:04','2016-05-30 17:26:25');
/*!40000 ALTER TABLE `t_claim_arouse` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `t_claim_beneficiary`
--

DROP TABLE IF EXISTS `t_claim_beneficiary`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `t_claim_beneficiary` (
  `BENE_ID` varchar(40) NOT NULL COMMENT '受益人ID',
  `CASE_ID` varchar(40) DEFAULT NULL COMMENT '案件ID',
  `POLICY_ID` varchar(40) DEFAULT NULL,
  `policy_no` varchar(40) DEFAULT NULL,
  `PRODUCT_ID` bigint(20) DEFAULT NULL COMMENT '险种ID',
  `BENE_CUST_ID` bigint(20) DEFAULT NULL COMMENT '受益人客户ID',
  `BENE_NAME` varchar(100) DEFAULT NULL COMMENT '受益人姓名',
  `BENE_RELATION` varchar(10) DEFAULT NULL COMMENT '受益人与被保人关系',
  `BENE_SEX` varchar(10) DEFAULT NULL COMMENT '受益人性别',
  `BENE_CERTI_TYPE` varchar(10) DEFAULT NULL COMMENT '受益人证件类型',
  `BENE_CERTI_NO` varchar(40) DEFAULT NULL COMMENT '受益人证件号码',
  `BENE_BIRTH` date DEFAULT NULL COMMENT '受益人出生日期',
  `BENE_CERTI_START` date DEFAULT NULL COMMENT '证件有效起始日期',
  `BENE_CERTI_END` date DEFAULT NULL COMMENT '证件有效终止日期',
  `BENE_RATE` decimal(7,4) DEFAULT NULL COMMENT '收益比例',
  `PAY_AMOUNT` decimal(16,2) DEFAULT NULL COMMENT '受益金额',
  `PARTITION_INDI` bigint(20) NOT NULL COMMENT '分库标记字段',
  `CREATE_BY` bigint(20) DEFAULT NULL COMMENT '创建人',
  `CREATE_TIME` datetime NOT NULL COMMENT '创建用户时间',
  `UPDATE_BY` bigint(20) DEFAULT NULL COMMENT '更新记录人',
  `UPDATE_TIME` datetime DEFAULT NULL COMMENT '更新用户时间',
  `CREATE_TIMESTAMP` datetime DEFAULT CURRENT_TIMESTAMP COMMENT '创建系统时间',
  `UPDATE_TIMESTAMP` datetime DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP COMMENT '更新系统时间',
  PRIMARY KEY (`BENE_ID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `t_claim_beneficiary`
--

LOCK TABLES `t_claim_beneficiary` WRITE;
/*!40000 ALTER TABLE `t_claim_beneficiary` DISABLE KEYS */;
/*!40000 ALTER TABLE `t_claim_beneficiary` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `t_claim_case`
--

DROP TABLE IF EXISTS `t_claim_case`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `t_claim_case` (
  `case_id` varchar(40) NOT NULL COMMENT '案件ID',
  `ACCIDENT_ID` varchar(40) NOT NULL COMMENT '事件ID',
  `case_no` varchar(40) DEFAULT NULL COMMENT '案件编号',
  `case_status` varchar(10) DEFAULT NULL COMMENT '案件状态',
  `claim_type` varchar(10) DEFAULT NULL COMMENT '案件类型',
  `CLAIM_NATURE` varchar(10) DEFAULT NULL COMMENT '索赔性质',
  `organ_id` bigint(20) DEFAULT NULL COMMENT '机构ID',
  `report_date` date DEFAULT NULL COMMENT '报案日',
  `accident_date` date DEFAULT NULL COMMENT '事故日',
  `accident_status` varchar(10) DEFAULT NULL COMMENT '出险人状态',
  `disease` varchar(10) DEFAULT NULL COMMENT '疾病代码',
  `hospital_code` varchar(10) DEFAULT NULL COMMENT '医院代码',
  `death_date` date DEFAULT NULL COMMENT '死亡时间',
  `cust_id` bigint(20) DEFAULT NULL COMMENT '出险人客户ID',
  `case_level` varchar(10) DEFAULT NULL COMMENT '案件等级',
  `operator_id` bigint(20) DEFAULT NULL COMMENT '操作人ID',
  `registrar_id` bigint(20) DEFAULT NULL COMMENT '报案受理人ID',
  `ACCEPTOR_ID` bigint(20) DEFAULT NULL COMMENT '立案受理人ID',
  `APPROVER_ID` bigint(20) DEFAULT NULL COMMENT '案件审核人ID',
  `register_time` datetime DEFAULT NULL COMMENT '报案时间',
  `accept_time` datetime DEFAULT NULL COMMENT '立案时间',
  `materia_approve_time` datetime DEFAULT NULL COMMENT '材料审核时间',
  `approve_time` datetime DEFAULT NULL COMMENT '审核时间',
  `ACCEPT_DECISION` varchar(10) DEFAULT NULL COMMENT '立案决定',
  `ACCEPT_REMARK` varchar(1000) DEFAULT NULL,
  `REJECT_REASON` varchar(10) DEFAULT NULL COMMENT '拒绝原因',
  `APPROVE_DECISION` varchar(10) DEFAULT NULL COMMENT '审核决定',
  `APPROVE_REMARK` varchar(1000) DEFAULT NULL COMMENT '审核说明',
  `CALSIGN_DECISION` varchar(10) DEFAULT NULL,
  `CALSIGN_REMARK` varchar(1000) DEFAULT NULL,
  `CALSIGN_TIME` datetime DEFAULT NULL,
  `PARTITION_INDI` bigint(20) DEFAULT NULL,
  `CREATE_BY` bigint(20) DEFAULT NULL COMMENT '创建人',
  `CREATE_TIME` datetime NOT NULL COMMENT '创建用户时间',
  `UPDATE_BY` bigint(20) DEFAULT NULL COMMENT '更新记录人',
  `UPDATE_TIME` datetime NOT NULL COMMENT '更新用户时间',
  `CREATE_TIMESTAMP` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '创建系统时间',
  `UPDATE_TIMESTAMP` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP COMMENT '更新系统时间',
  PRIMARY KEY (`case_id`),
  KEY `FK_CLAIM_CASE__ACCIDENT_ID` (`ACCIDENT_ID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `t_claim_case`
--

LOCK TABLES `t_claim_case` WRITE;
/*!40000 ALTER TABLE `t_claim_case` DISABLE KEYS */;
INSERT INTO `t_claim_case` VALUES ('b541dd13c14d4fd2b86371f19c212380','ac5cbc81c9eb4b1680e187a4e0aab943','ad752c1add964e22b2d48bf2c91c453c','30','01','1',400,'2016-05-20','2016-05-30','01','C11.0','0000011','2016-05-05',720,'2',NULL,400,NULL,NULL,'2016-05-30 17:00:04','2016-06-01 08:00:00','2016-06-01 10:18:07',NULL,'0',NULL,'','0','韩国国会','1','',NULL,745,NULL,'2016-05-30 17:00:04',NULL,'2016-06-01 15:09:44','2016-05-30 17:00:04','2016-06-01 15:09:44');
/*!40000 ALTER TABLE `t_claim_case` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `t_claim_checklist`
--

DROP TABLE IF EXISTS `t_claim_checklist`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `t_claim_checklist` (
  `list_id` varchar(40) NOT NULL COMMENT '主键ID',
  `REPORT_NO` varchar(40) DEFAULT NULL COMMENT '报案号',
  `acc_cust_id` bigint(20) DEFAULT NULL COMMENT '出险人',
  `MATERIAL_CATE` varchar(10) DEFAULT NULL COMMENT '材料类别（复印|原件）',
  `checklist_item` varchar(10) DEFAULT NULL COMMENT '审核材料',
  `STATUS` varchar(10) DEFAULT NULL COMMENT '审核材料状态',
  `received_date` datetime DEFAULT NULL COMMENT '审核材料接收时间',
  `reject_reason` varchar(4000) DEFAULT NULL COMMENT '拒绝原因',
  `APPLY_AMOUNT` decimal(16,2) DEFAULT NULL COMMENT '理赔申请金额',
  `ACTUAL_AMOUNT` decimal(16,2) DEFAULT NULL COMMENT '理赔审核金额',
  `PAGE_TOTAL` int(11) DEFAULT NULL COMMENT '总页数',
  `PARTITION_INDI` bigint(20) DEFAULT NULL,
  `CREATE_BY` bigint(20) DEFAULT NULL COMMENT '创建人',
  `CREATE_TIME` datetime NOT NULL COMMENT '创建用户时间',
  `UPDATE_BY` bigint(20) DEFAULT NULL COMMENT '更新记录人',
  `UPDATE_TIME` datetime NOT NULL COMMENT '更新用户时间',
  `CREATE_TIMESTAMP` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '创建系统时间',
  `UPDATE_TIMESTAMP` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP COMMENT '更新系统时间',
  PRIMARY KEY (`list_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='理赔材料审核项目表';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `t_claim_checklist`
--

LOCK TABLES `t_claim_checklist` WRITE;
/*!40000 ALTER TABLE `t_claim_checklist` DISABLE KEYS */;
INSERT INTO `t_claim_checklist` VALUES ('5e7f7aca5106493da6f7828161632302','32eb79af8a13406f862bc739a3f6013c',NULL,'1','1','1',NULL,'        11        ',8888.10,8888.00,2,745,NULL,'2016-05-30 17:00:04',NULL,'2016-06-01 10:18:06','2016-05-30 17:00:04','2016-06-01 10:18:06'),('a6b73a657a074c92a26b9a5d4aad1c32','32eb79af8a13406f862bc739a3f6013c',NULL,'2','2','1',NULL,'        111        ',9999.34,9999.00,1,745,NULL,'2016-05-30 17:00:04',NULL,'2016-06-01 10:18:06','2016-05-30 17:00:04','2016-06-01 10:18:06');
/*!40000 ALTER TABLE `t_claim_checklist` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `t_claim_checklist_audit`
--

DROP TABLE IF EXISTS `t_claim_checklist_audit`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `t_claim_checklist_audit` (
  `audit_id` varchar(40) NOT NULL COMMENT '审核主键ID',
  `case_id` varchar(40) DEFAULT NULL COMMENT '案件ID',
  `audit_status` varchar(10) DEFAULT NULL COMMENT '审核状态',
  `material_received_date` date DEFAULT NULL COMMENT '材料接收时间',
  `audit_date` date DEFAULT NULL COMMENT '审核时间',
  `audit_notes` varchar(4000) DEFAULT NULL COMMENT '审核备注',
  `audit_operator` bigint(20) DEFAULT NULL COMMENT '审核人',
  `PARTITION_INDI` bigint(20) DEFAULT NULL,
  `CREATE_BY` bigint(20) DEFAULT NULL COMMENT '创建人',
  `CREATE_TIME` datetime NOT NULL COMMENT '创建用户时间',
  `UPDATE_BY` bigint(20) DEFAULT NULL COMMENT '更新记录人',
  `UPDATE_TIME` datetime NOT NULL COMMENT '更新用户时间',
  `CREATE_TIMESTAMP` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '创建系统时间',
  `UPDATE_TIMESTAMP` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP COMMENT '更新系统时间',
  PRIMARY KEY (`audit_id`),
  KEY `FK_CLAIM_CHECKLIST_AUDIT__CASEID` (`case_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='理赔材料审核表';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `t_claim_checklist_audit`
--

LOCK TABLES `t_claim_checklist_audit` WRITE;
/*!40000 ALTER TABLE `t_claim_checklist_audit` DISABLE KEYS */;
/*!40000 ALTER TABLE `t_claim_checklist_audit` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `t_claim_checklist_detail`
--

DROP TABLE IF EXISTS `t_claim_checklist_detail`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `t_claim_checklist_detail` (
  `detail_id` varchar(40) NOT NULL COMMENT '主键ID',
  `list_id` varchar(40) DEFAULT NULL,
  `file_id` varchar(40) DEFAULT NULL COMMENT '文件ID',
  `is_delete` varchar(10) DEFAULT NULL COMMENT '删除标记',
  `PARTITION_INDI` bigint(20) DEFAULT NULL,
  `CREATE_BY` bigint(20) DEFAULT NULL COMMENT '创建人',
  `CREATE_TIME` datetime NOT NULL COMMENT '创建用户时间',
  `UPDATE_BY` bigint(20) DEFAULT NULL COMMENT '更新记录人',
  `UPDATE_TIME` datetime NOT NULL COMMENT '更新用户时间',
  `CREATE_TIMESTAMP` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '创建系统时间',
  `UPDATE_TIMESTAMP` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP COMMENT '更新系统时间',
  PRIMARY KEY (`detail_id`),
  KEY `FK_CLAIM_CHECKLIST_DETAIL__LISTID` (`list_id`),
  KEY `FK_CLAIM_CHECKLIST_DETAIL__FILEID` (`file_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='理赔材料审核明细表';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `t_claim_checklist_detail`
--

LOCK TABLES `t_claim_checklist_detail` WRITE;
/*!40000 ALTER TABLE `t_claim_checklist_detail` DISABLE KEYS */;
/*!40000 ALTER TABLE `t_claim_checklist_detail` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `t_claim_disability`
--

DROP TABLE IF EXISTS `t_claim_disability`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `t_claim_disability` (
  `DISABILITY_ID` varchar(40) NOT NULL COMMENT '序列号',
  `case_id` varchar(40) NOT NULL COMMENT '案件ID',
  `DISABILITY_TYPE` varchar(10) NOT NULL COMMENT '失能类型',
  `DISABILITY_GRADE` varchar(10) NOT NULL COMMENT '失能等级',
  `DISABILITY_DETAIL` varchar(10) NOT NULL COMMENT '失能程度',
  `PARTITION_INDI` bigint(20) DEFAULT NULL,
  `CREATE_BY` bigint(20) DEFAULT NULL COMMENT '创建人',
  `CREATE_TIME` datetime NOT NULL COMMENT '创建用户时间',
  `UPDATE_BY` bigint(20) DEFAULT NULL COMMENT '更新记录人',
  `UPDATE_TIME` datetime NOT NULL COMMENT '更新用户时间',
  `CREATE_TIMESTAMP` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '创建系统时间',
  `UPDATE_TIMESTAMP` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP COMMENT '更新系统时间',
  PRIMARY KEY (`DISABILITY_ID`),
  KEY `FK_CLAIM_DISABILITY__CASEID` (`case_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='理赔失能信息表';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `t_claim_disability`
--

LOCK TABLES `t_claim_disability` WRITE;
/*!40000 ALTER TABLE `t_claim_disability` DISABLE KEYS */;
/*!40000 ALTER TABLE `t_claim_disability` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `t_claim_endorsement`
--

DROP TABLE IF EXISTS `t_claim_endorsement`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `t_claim_endorsement` (
  `endorse_id` varchar(40) NOT NULL COMMENT '批单ID',
  `case_Id` varchar(40) DEFAULT NULL COMMENT '案件ID',
  `report_No` varchar(40) DEFAULT NULL COMMENT '报案号',
  `Context` varchar(1000) DEFAULT NULL COMMENT '批单内容',
  `PARTITION_INDI` bigint(20) DEFAULT NULL COMMENT '分库字段',
  `CREATE_BY` bigint(20) DEFAULT NULL COMMENT '创建人',
  `CREATE_TIME` datetime DEFAULT NULL COMMENT '创建时间',
  `UPDATE_BY` bigint(20) DEFAULT NULL COMMENT '更新人',
  `UPDATE_TIME` datetime DEFAULT NULL COMMENT '更新时间',
  `CREATE_TIMESTAMP` datetime DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP COMMENT '创建系统时间',
  `UPDATE_TIMESTAMP` datetime DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP COMMENT '更新系统时间',
  PRIMARY KEY (`endorse_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='理赔批单表';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `t_claim_endorsement`
--

LOCK TABLES `t_claim_endorsement` WRITE;
/*!40000 ALTER TABLE `t_claim_endorsement` DISABLE KEYS */;
/*!40000 ALTER TABLE `t_claim_endorsement` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `t_claim_files`
--

DROP TABLE IF EXISTS `t_claim_files`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `t_claim_files` (
  `file_id` varchar(40) NOT NULL COMMENT '文件ID',
  `REPORT_NO` varchar(40) DEFAULT NULL COMMENT '报案号',
  `acc_cust_id` bigint(20) DEFAULT NULL COMMENT '出险人',
  `file_category` varchar(10) DEFAULT NULL COMMENT '文件资料类型',
  `checklist_item` varchar(10) DEFAULT NULL,
  `file_name` varchar(200) DEFAULT NULL COMMENT '文件名',
  `file_type` varchar(10) DEFAULT NULL COMMENT '文件类型',
  `file_size` varchar(20) DEFAULT NULL COMMENT '文件大小',
  `file_path` varchar(200) DEFAULT NULL COMMENT '文件路径',
  `page_no` int(11) DEFAULT NULL COMMENT '页码',
  `PARTITION_INDI` bigint(20) DEFAULT NULL,
  `CREATE_BY` bigint(20) DEFAULT NULL COMMENT '创建人',
  `CREATE_TIME` datetime NOT NULL COMMENT '创建用户时间',
  `UPDATE_BY` bigint(20) DEFAULT NULL COMMENT '更新记录人',
  `UPDATE_TIME` datetime NOT NULL COMMENT '更新用户时间',
  `CREATE_TIMESTAMP` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '创建系统时间',
  `UPDATE_TIMESTAMP` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP COMMENT '更新系统时间',
  PRIMARY KEY (`file_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `t_claim_files`
--

LOCK TABLES `t_claim_files` WRITE;
/*!40000 ALTER TABLE `t_claim_files` DISABLE KEYS */;
INSERT INTO `t_claim_files` VALUES ('46726c2d01b14c2d90507b9e3c2b76db','32eb79af8a13406f862bc739a3f6013c',NULL,NULL,'1','a','png',NULL,'/opt/appdata/claim',1,745,NULL,'2016-05-30 17:00:04',NULL,'2016-05-30 17:00:04','2016-05-30 17:00:04','2016-05-30 17:31:33'),('b0d52d9044b24e1b814eb280b52304e0','32eb79af8a13406f862bc739a3f6013c',NULL,NULL,'1','a','png',NULL,'/opt/appdata/claim',2,745,NULL,'2016-05-30 17:00:04',NULL,'2016-05-30 17:00:04','2016-05-30 17:00:04','2016-05-30 17:31:33');
/*!40000 ALTER TABLE `t_claim_files` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `t_claim_hospital`
--

DROP TABLE IF EXISTS `t_claim_hospital`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `t_claim_hospital` (
  `claim_hospital` varchar(40) NOT NULL COMMENT '案件医院ID',
  `case_id` varchar(40) DEFAULT NULL COMMENT '案件ID',
  `hospital_code` varchar(10) DEFAULT NULL COMMENT '医院代码',
  `cure_type` varchar(10) DEFAULT NULL COMMENT '治疗类型',
  `start_date` date DEFAULT NULL COMMENT '住院开始时间',
  `end_date` date DEFAULT NULL COMMENT '住院结束时间',
  `icu_days` int(4) DEFAULT NULL COMMENT 'ICU天数',
  `rb_days` int(4) DEFAULT NULL COMMENT '普通病房天数',
  `total_amount` decimal(16,2) DEFAULT NULL COMMENT '总金额',
  `PARTITION_INDI` bigint(20) DEFAULT NULL,
  `CREATE_BY` bigint(20) DEFAULT NULL COMMENT '创建人',
  `CREATE_TIME` datetime NOT NULL COMMENT '创建用户时间',
  `UPDATE_BY` bigint(20) DEFAULT NULL COMMENT '更新记录人',
  `UPDATE_TIME` datetime NOT NULL COMMENT '更新用户时间',
  `CREATE_TIMESTAMP` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '创建系统时间',
  `UPDATE_TIMESTAMP` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP COMMENT '更新系统时间',
  PRIMARY KEY (`claim_hospital`),
  KEY `FK_CLAIM_HOSPITAL__CASE_ID` (`case_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `t_claim_hospital`
--

LOCK TABLES `t_claim_hospital` WRITE;
/*!40000 ALTER TABLE `t_claim_hospital` DISABLE KEYS */;
INSERT INTO `t_claim_hospital` VALUES ('bdbc9c37ff054215b9532c10de7fe79c','b541dd13c14d4fd2b86371f19c212380','0000018','03','2016-05-03','2016-05-17',7,5,20000.00,745,NULL,'2016-05-31 16:18:41',NULL,'2016-05-31 16:18:41','2016-05-31 16:18:41','2016-05-31 16:18:41');
/*!40000 ALTER TABLE `t_claim_hospital` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `t_claim_injury`
--

DROP TABLE IF EXISTS `t_claim_injury`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `t_claim_injury` (
  `injury_id` varchar(40) NOT NULL COMMENT '主键ID',
  `case_id` varchar(40) DEFAULT NULL COMMENT '案件ID',
  `DEFORMITY_TYPE` varchar(10) DEFAULT NULL COMMENT '伤残类型',
  `DEFORMITY_GRADE` varchar(10) DEFAULT NULL COMMENT '伤残等级',
  `INJURY_CODE` varchar(10) DEFAULT NULL COMMENT '伤残代码',
  `ASSESS_ORGAN` varchar(120) DEFAULT NULL COMMENT '鉴定机构',
  `ASSESS_DATE` date DEFAULT NULL COMMENT '鉴定日期',
  `REMARK` varchar(4000) DEFAULT NULL COMMENT '备注',
  `PARTITION_INDI` bigint(20) DEFAULT NULL,
  `CREATE_BY` bigint(20) DEFAULT NULL COMMENT '创建人',
  `CREATE_TIME` datetime NOT NULL COMMENT '创建用户时间',
  `UPDATE_BY` bigint(20) DEFAULT NULL COMMENT '更新记录人',
  `UPDATE_TIME` datetime NOT NULL COMMENT '更新用户时间',
  `CREATE_TIMESTAMP` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '创建系统时间',
  `UPDATE_TIMESTAMP` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP COMMENT '更新系统时间',
  PRIMARY KEY (`injury_id`),
  KEY `FK_CLAIM_INJURY__CASE_ID` (`case_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='理赔伤残信息表';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `t_claim_injury`
--

LOCK TABLES `t_claim_injury` WRITE;
/*!40000 ALTER TABLE `t_claim_injury` DISABLE KEYS */;
INSERT INTO `t_claim_injury` VALUES ('1df20b72ddc04245bc458aa97cd5df13','b541dd13c14d4fd2b86371f19c212380','3','8','30444','1112','2016-05-05','111',745,NULL,'2016-05-31 16:06:20',NULL,'2016-05-31 16:06:20','2016-05-31 16:06:20','2016-05-31 16:06:20');
/*!40000 ALTER TABLE `t_claim_injury` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `t_claim_medical_item`
--

DROP TABLE IF EXISTS `t_claim_medical_item`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `t_claim_medical_item` (
  `item_id` varchar(40) NOT NULL COMMENT '主键ID',
  `receipt_id` varchar(40) DEFAULT NULL COMMENT '收据ID',
  `medical_item` varchar(10) DEFAULT NULL COMMENT '医疗项目',
  `operator_type` varchar(20) DEFAULT NULL COMMENT '手术类别',
  `amount` decimal(16,2) DEFAULT NULL COMMENT '金额',
  `medical_item_date` datetime DEFAULT NULL COMMENT '医疗项目时间',
  `PARTITION_INDI` bigint(20) DEFAULT NULL,
  `CREATE_BY` bigint(20) DEFAULT NULL COMMENT '创建人',
  `CREATE_TIME` datetime NOT NULL COMMENT '创建用户时间',
  `UPDATE_BY` bigint(20) DEFAULT NULL COMMENT '更新记录人',
  `UPDATE_TIME` datetime NOT NULL COMMENT '更新用户时间',
  `CREATE_TIMESTAMP` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '创建系统时间',
  `UPDATE_TIMESTAMP` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP COMMENT '更新系统时间',
  PRIMARY KEY (`item_id`),
  KEY `FK_CLAIM_MEDICAL_ITEM__RECEIPT_ID` (`receipt_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `t_claim_medical_item`
--

LOCK TABLES `t_claim_medical_item` WRITE;
/*!40000 ALTER TABLE `t_claim_medical_item` DISABLE KEYS */;
INSERT INTO `t_claim_medical_item` VALUES ('890efed6678f49889257122f0b03dbe4','b4141602c294434aa48d4d003cf75ed0','02',NULL,18000.00,'2016-05-05 00:00:00',745,NULL,'2016-05-31 16:37:24',NULL,'2016-05-31 16:37:24','2016-05-31 16:37:24','2016-05-31 16:37:24'),('8dc09e69093048c29a1eadd92da5ecda','b4141602c294434aa48d4d003cf75ed0','02',NULL,2000.00,'2016-05-18 00:00:00',745,NULL,'2016-05-31 16:37:01',NULL,'2016-05-31 16:37:01','2016-05-31 16:37:01','2016-05-31 16:37:01');
/*!40000 ALTER TABLE `t_claim_medical_item` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `t_claim_pa_customer`
--

DROP TABLE IF EXISTS `t_claim_pa_customer`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `t_claim_pa_customer` (
  `CHANGE_ITEM_ID` varchar(40) NOT NULL COMMENT '主键',
  `DATA_FLAG` varchar(10) DEFAULT NULL COMMENT '数据类型',
  `CASE_ID` varchar(40) NOT NULL COMMENT '案件ID',
  `CUSTOMER_ID` bigint(20) NOT NULL COMMENT '客户ID',
  `NAME` varchar(100) NOT NULL COMMENT '姓名',
  `GENDER` varchar(10) NOT NULL COMMENT '性别',
  `BIRTHDAY` date NOT NULL COMMENT '生日',
  `CERTI_TYPE` varchar(10) NOT NULL COMMENT '证件类型',
  `CERTI_CODE` varchar(40) NOT NULL COMMENT '证件号码',
  `CERTI_VALID_START_DATE` date DEFAULT NULL COMMENT '证件有效开始日期',
  `CERTI_VALID_END_DATE` date DEFAULT NULL COMMENT '证件有效结束日期',
  `MARRIAGE_ID` varchar(10) DEFAULT NULL COMMENT '婚姻状况',
  `EDUCATION_ID` varchar(10) DEFAULT NULL COMMENT '教育学历',
  `HEIGHT` decimal(4,1) DEFAULT NULL COMMENT '身高(Cm)',
  `WEIGHT` decimal(5,2) DEFAULT NULL COMMENT '体重(Kg)',
  `INCOME` decimal(10,0) DEFAULT NULL COMMENT '年收入（人民币）',
  `NATIONALITY` varchar(10) DEFAULT NULL COMMENT '民族',
  `COMPANY_NAME` varchar(100) DEFAULT NULL COMMENT '单位名称',
  `JOB_NAME` varchar(100) DEFAULT NULL COMMENT '当前职业名称',
  `INDUSTRY_ID` varchar(10) DEFAULT NULL COMMENT '行业代码表',
  `JOB_CATE_ID` varchar(10) DEFAULT NULL COMMENT '当前职业类别',
  `COMPANY_KIND` varchar(10) DEFAULT NULL COMMENT '企业性质',
  `ACADEMIC_TITLE` varchar(10) DEFAULT NULL COMMENT '职称',
  `SMOKING` varchar(10) DEFAULT NULL COMMENT '是否吸烟',
  `Social_Security_Number` varchar(30) DEFAULT NULL COMMENT '社保号码',
  `IS_RETIRED` varchar(10) DEFAULT NULL COMMENT '是否退休',
  `level` varchar(2) DEFAULT NULL COMMENT '客户等级',
  `ADDRESS_ID` bigint(20) DEFAULT NULL COMMENT '默认地址ID',
  `MOBILE` varchar(20) DEFAULT NULL COMMENT '默认手机号码',
  `OFFICE_TEL` varchar(40) DEFAULT NULL COMMENT '公司联系电话',
  `HOME_TEL` varchar(40) DEFAULT NULL COMMENT '家庭联系电话',
  `FAX` varchar(40) DEFAULT NULL COMMENT '传真号码',
  `FIRST_NAME` varchar(100) DEFAULT NULL COMMENT 'First Name',
  `MID_NAME` varchar(40) DEFAULT NULL COMMENT 'Mid Name',
  `LAST_NAME` varchar(40) DEFAULT NULL COMMENT 'Last Name',
  `ALIAS_NAME` varchar(100) DEFAULT NULL COMMENT '别名',
  `RELIGION_CODE` varchar(10) DEFAULT NULL COMMENT '宗教信仰',
  `CHILD_COUNT` decimal(2,0) DEFAULT NULL COMMENT '子女情况',
  `STATUS` varchar(10) DEFAULT NULL COMMENT '客户状态',
  `DEATH_DATE` date DEFAULT NULL COMMENT '死亡日期',
  `EMAIL_1` varchar(100) DEFAULT NULL COMMENT 'Email1',
  `EMAIL_2` varchar(100) DEFAULT NULL COMMENT 'Email2',
  `QQ` varchar(50) DEFAULT NULL COMMENT 'QQ号码',
  `WEIXIN` varchar(50) DEFAULT NULL COMMENT '微信号码',
  `WeiBo` varchar(100) DEFAULT NULL COMMENT '微博',
  `Web` varchar(200) DEFAULT NULL COMMENT '网址',
  `pa_chg_id` bigint(20) DEFAULT NULL COMMENT 'PA系统变更ID',
  `PARTITION_INDI` bigint(20) DEFAULT NULL COMMENT '分库标记字段',
  `CREATE_BY` bigint(20) DEFAULT NULL COMMENT '创建人',
  `CREATE_TIME` datetime NOT NULL COMMENT '创建用户时间',
  `UPDATE_BY` bigint(20) DEFAULT NULL COMMENT '更新记录人',
  `UPDATE_TIME` datetime NOT NULL COMMENT '更新用户时间',
  `CREATE_TIMESTAMP` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '创建系统时间',
  `UPDATE_TIMESTAMP` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP COMMENT '更新系统时间',
  PRIMARY KEY (`CHANGE_ITEM_ID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='理赔客户基本信息表';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `t_claim_pa_customer`
--

LOCK TABLES `t_claim_pa_customer` WRITE;
/*!40000 ALTER TABLE `t_claim_pa_customer` DISABLE KEYS */;
INSERT INTO `t_claim_pa_customer` VALUES ('495409149901466b85a05d30a4224ed2',NULL,'b541dd13c14d4fd2b86371f19c212380',720,'豆腐干豆腐','1','1991-05-23','111','370705199105232516',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,745,400,'2016-06-01 10:18:07',400,'2016-06-01 10:18:07','2016-06-01 10:18:28','2016-06-01 10:18:28');
/*!40000 ALTER TABLE `t_claim_pa_customer` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `t_claim_pa_policy`
--

DROP TABLE IF EXISTS `t_claim_pa_policy`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `t_claim_pa_policy` (
  `CHANGE_ITEM_ID` varchar(40) NOT NULL COMMENT '主键',
  `DATA_FLAG` varchar(10) DEFAULT NULL COMMENT '数据类型',
  `CASE_ID` varchar(40) DEFAULT NULL COMMENT '案件ID',
  `POLICY_ID` varchar(40) DEFAULT NULL COMMENT '保单ID 主键',
  `POLICY_NO` varchar(20) DEFAULT NULL COMMENT '保单号码',
  `PROPOSAL_ID` varchar(40) DEFAULT NULL COMMENT '投保单ID',
  `PROPOSAL_NO` varchar(20) DEFAULT NULL COMMENT '投保单号码',
  `ORGAN_ID` bigint(20) DEFAULT NULL COMMENT '保单机构ID',
  `POLICY_CHANNEL` varchar(10) DEFAULT NULL COMMENT '保单所属渠道:团险、个人渠道、银保、电商',
  `SALES_CHANNEL` varchar(10) DEFAULT NULL COMMENT '销售渠道：直销渠道、专业代理、兼业代理',
  `SUB_SALES_CHANNEL` varchar(10) DEFAULT NULL COMMENT '销售渠道：网银、柜面、微信、京东、官网、APP、去哪儿、携程、艺龙',
  `CAMPAIGN_CODE` varchar(4000) DEFAULT NULL,
  `INTRODUCER_ID` bigint(20) DEFAULT NULL COMMENT '保单推荐人',
  `APPLICATION_DATE` datetime DEFAULT NULL COMMENT '保单投保时间',
  `EFFECTIVE_DATE` datetime DEFAULT NULL COMMENT '保单生效时间',
  `ISSUE_DATE` datetime DEFAULT NULL COMMENT '保单承保时间',
  `EXPIRY_DATE` datetime DEFAULT NULL COMMENT '保单满期时间',
  `HOLDER_CUST_ID` bigint(20) DEFAULT NULL COMMENT '投保人客户ID',
  `POLICY_STATUS` varchar(10) DEFAULT NULL COMMENT '保单状态：承保、失效、终止',
  `PAY_STATUS` varchar(10) DEFAULT NULL COMMENT '缴费状态',
  `POLICY_YEAR` int(11) DEFAULT NULL COMMENT '保单年度',
  `STATUS_CHANGE_REASON` varchar(10) DEFAULT NULL COMMENT '保单状态变更原因：承保后撤销、自动冲正、犹豫期回退、满期终止、逾期未交失效、贷款超现价失效、退保终止、理赔终止…',
  `PAY_FREQUENCY` varchar(10) DEFAULT NULL COMMENT '缴费频率代码表：趸缴、月缴、年缴、季缴、半年缴、按天缴',
  `PAY_MODE` varchar(10) DEFAULT NULL COMMENT '保单首期收费方式：现金、支付宝、微信、银行转账',
  `PAY_BANK_CODE` varchar(10) DEFAULT NULL COMMENT '保单首期收费银行代码',
  `PAY_ACCOUNT` varchar(20) DEFAULT NULL COMMENT '保单首期收费账号',
  `PAY_MODE_RENEW` varchar(10) DEFAULT NULL COMMENT '保单续期收费方式：现金、支付宝、微信、银行转账',
  `PAY_BANK_CODE_RENEW` varchar(10) DEFAULT NULL COMMENT '保单续期收费银行代码',
  `PAY_ACCOUNT_RENEW` varchar(20) DEFAULT NULL COMMENT '保单续期收费账号',
  `SUBMIT_SYSTEM` varchar(10) DEFAULT NULL COMMENT '提交系统：出单系统、理赔系统、保全系统',
  `SUBMIT_CHANNEL` varchar(10) DEFAULT NULL COMMENT '提交系统：官网、APP、手工、第三方渠道、银保通、外包录入',
  `ISSUE_USER_ID` bigint(20) DEFAULT NULL COMMENT '保单承保人员',
  `POLICY_DELIVERY_MODE` varchar(10) DEFAULT NULL COMMENT '保险单领取方式：email、官网下载、纸质保单',
  `PRINT_TIMES` int(11) DEFAULT NULL COMMENT '保单打印次数',
  `LASTEST_PRINT_TIME` datetime DEFAULT NULL COMMENT '最近打印时间',
  `ENDORSEMENT` varchar(2000) DEFAULT NULL COMMENT '保单特别约定',
  `CALLBACK_DATE` datetime DEFAULT NULL COMMENT '保单回访时间',
  `CALLBACK_TYPE` varchar(10) DEFAULT NULL COMMENT '保单回访方式：电话，在线提交回访',
  `RECORD_TIME` datetime DEFAULT NULL COMMENT '当前信息更新时间',
  `pa_chg_id` varchar(40) DEFAULT NULL COMMENT 'PA系统变更ID',
  `CREATE_BY` bigint(20) DEFAULT NULL COMMENT '创建人',
  `CREATE_TIME` datetime DEFAULT CURRENT_TIMESTAMP COMMENT '创建用户时间',
  `UPDATE_BY` bigint(20) DEFAULT NULL COMMENT '更新记录人',
  `UPDATE_TIME` datetime DEFAULT CURRENT_TIMESTAMP COMMENT '更新用户时间',
  `CREATE_TIMESTAMP` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '创建系统时间',
  `UPDATE_TIMESTAMP` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP COMMENT '更新系统时间',
  `PARTITION_INDI` bigint(20) NOT NULL,
  PRIMARY KEY (`CHANGE_ITEM_ID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='理赔保单基本信息表';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `t_claim_pa_policy`
--

LOCK TABLES `t_claim_pa_policy` WRITE;
/*!40000 ALTER TABLE `t_claim_pa_policy` DISABLE KEYS */;
INSERT INTO `t_claim_pa_policy` VALUES ('c501af10b14f4d4286ae2b70efd12c7a','03','b541dd13c14d4fd2b86371f19c212380','931378233760819660','160525121265a','11157426127945','160525212308ffb',400,NULL,NULL,NULL,'{\"mktPolicyInfo\":{\"mktPolicyId\":null,\"mktProdId\":12,\"planName\":\"计划1\",\"insuredGender\":null,\"insuredArea\":null,\"propCopies\":null,\"propLevel\":null,\"amount\":null,\"insuredSocial\":null,\"insuredAge\":null,\"coveragePeriodType\":null,\"coveragePeriod\":\"1D\",\"chargePeriodType\":null,\"chargePeriod\":null,\"chargeFreq\":null,\"premium\":\"3\",\"mktCoverageInfo\":null}}',NULL,'2016-05-25 08:00:00','2016-05-26 08:00:00',NULL,NULL,720,'01',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'931378278361159661',NULL,'2016-06-01 10:18:07',NULL,'2016-06-01 10:18:07','2016-06-01 10:18:07','2016-06-01 10:18:07',745);
/*!40000 ALTER TABLE `t_claim_pa_policy` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `t_claim_pa_policy_product`
--

DROP TABLE IF EXISTS `t_claim_pa_policy_product`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `t_claim_pa_policy_product` (
  `CHANGE_ITEM_ID` varchar(40) NOT NULL COMMENT '主键',
  `DATA_FLAG` varchar(10) DEFAULT NULL COMMENT '数据类型',
  `CASE_ID` varchar(40) DEFAULT NULL COMMENT '案件ID',
  `ITEM_ID` varchar(40) DEFAULT NULL COMMENT '险种主键ID',
  `PROP_ITEM_ID` varchar(40) DEFAULT NULL COMMENT '投保险种ID',
  `MAIN_ITEM_ID` varchar(40) DEFAULT NULL COMMENT '搭配主险ID',
  `POLICY_ID` varchar(40) DEFAULT NULL COMMENT '保单ID 主键',
  `PRODUCT_ID` bigint(20) DEFAULT NULL COMMENT '产品主键',
  `INSURANT_ID` bigint(20) DEFAULT NULL COMMENT '被保人ID',
  `benefit_level` int(11) DEFAULT NULL,
  `ORGAN_ID` bigint(20) DEFAULT NULL COMMENT '机构ID',
  `SUM_ASSURED` decimal(16,2) DEFAULT NULL COMMENT '保额',
  `UNITS` decimal(3,2) DEFAULT NULL COMMENT '份数',
  `APPLICATION_DATE` datetime DEFAULT NULL COMMENT '险种投保时间',
  `EFFECTIVE_DATE` datetime DEFAULT NULL COMMENT '险种生效时间',
  `ISSUE_DATE` datetime DEFAULT NULL COMMENT '险种承保时间',
  `EXPIRY_DATE` datetime DEFAULT NULL COMMENT '险种满期时间',
  `PAY_MODE` varchar(10) DEFAULT NULL COMMENT '保单首期收费方式：现金、支付宝、微信、银行转账、豁免、账户扣除….',
  `PAY_MODE_RENEW` varchar(10) DEFAULT NULL COMMENT '保单续期收费方式：现金、支付宝、微信、银行转账、豁免、账户扣除….',
  `PAY_DUE_DATE` date DEFAULT NULL COMMENT '应缴日期',
  `POLICY_YEAR` int(3) DEFAULT NULL COMMENT '险种年度',
  `LIABILITY_STATE` varchar(10) DEFAULT NULL COMMENT '险种状态代码表',
  `STATUS_CHANGE_REASON` varchar(10) DEFAULT NULL COMMENT '险种状态变更原因：承保后撤销、自动冲正、犹豫期回退、满期终止、逾期未交失效、贷款超现价失效、退保终止、险种转换、理赔终止…',
  `PAY_STATUS` varchar(10) DEFAULT NULL COMMENT '缴费状态',
  `PAY_PERIOD` varchar(10) DEFAULT NULL COMMENT '缴费期限：一次性缴清、年期缴费、缴止某年龄、终身缴费',
  `PAY_YEAR` int(11) DEFAULT NULL COMMENT '缴费年期',
  `PAY_UP_DATE` date DEFAULT NULL COMMENT '费用交至日期',
  `COVER_PERIOD_TYPE` varchar(10) DEFAULT NULL COMMENT '保障类型：按年限、终身、保障某年龄',
  `COVERAGE_PERIOD` int(11) DEFAULT NULL COMMENT '保障期限',
  `PREM_CALC_WAY` varchar(10) DEFAULT NULL COMMENT '保费计算方式：保额算保费、保费算保额、约定费率',
  `STD_PREM_BF` decimal(16,2) DEFAULT NULL COMMENT '当期标准保费',
  `DISCNTED_STD_PREM_BF` decimal(16,2) DEFAULT NULL COMMENT '当期标准折扣保费',
  `EXTRA_STD_PREM_BF` decimal(16,2) DEFAULT NULL COMMENT '当期标准加费金额',
  `STD_PREM_AF` decimal(16,2) DEFAULT NULL COMMENT '当期缴别标准保费',
  `DISCNTED_STD_PREM_AF` decimal(16,2) DEFAULT NULL COMMENT '当期缴别标准折扣保费',
  `EXTRA_PREM_AF` decimal(16,2) DEFAULT NULL COMMENT '当期缴别标准加费金额',
  `TOTAL_PREM_AF` decimal(16,2) DEFAULT NULL COMMENT '当期缴别总保费',
  `STD_PREM_AN` decimal(16,2) DEFAULT NULL COMMENT '当期标准年保费',
  `DISCNTED_STD_PREM_AN` decimal(16,2) DEFAULT NULL COMMENT '当期标准折扣年保费',
  `EXTRA_STD_PREM_AN` decimal(16,2) DEFAULT NULL COMMENT '当期标准年加费金额',
  `NEXT_STD_PREM_BF` decimal(16,2) DEFAULT NULL COMMENT '下期标准保费',
  `NEXT_DISCNTED_STD_PREM_BF` decimal(16,2) DEFAULT NULL COMMENT '下期标准折扣保费',
  `NEXT_EXTRA_STD_PREM_BF` decimal(16,2) DEFAULT NULL COMMENT '下期标准加费金额',
  `NEXT_STD_PREM_AF` decimal(16,2) DEFAULT NULL COMMENT '下期缴别标准保费',
  `NEXT_DISCNTED_STD_PREM_AF` decimal(16,2) DEFAULT NULL COMMENT '下期缴别当期标准折扣保费',
  `NEXT_EXTRA_PREM_AF` decimal(16,2) DEFAULT NULL COMMENT '下期缴别当期标准加费金额',
  `NEXT_TOTAL_PREM_AF` decimal(16,2) DEFAULT NULL COMMENT '下期缴别当期总保费',
  `NEXT_STD_PREM_AN` decimal(16,2) DEFAULT NULL COMMENT '下期标准年保费',
  `NEXT_DISCNTED_STD_PREM_AN` decimal(16,2) DEFAULT NULL COMMENT '下期标准折扣年保费',
  `NEXT_EXTRA_STD_PREM_AN` decimal(16,2) DEFAULT NULL COMMENT '下期标准年加费金额',
  `DERIVATION_TYPE` varchar(10) DEFAULT NULL COMMENT '险种来源：新契约、续保、保单变更',
  `NEWBIZ_DECISION` varchar(10) DEFAULT NULL COMMENT '新契约核保决定',
  `RENEW_DECISION` varchar(10) DEFAULT NULL COMMENT '续保决定',
  `UW_DECISION` varchar(10) DEFAULT NULL COMMENT '保全核保决定',
  `POLICY_ASSUMPSIT` varchar(4000) DEFAULT NULL COMMENT '特别约定',
  `JOINT_LIFE_YN` char(1) DEFAULT NULL COMMENT '连生险险标记',
  `WAIVER_ID` bigint(20) DEFAULT NULL COMMENT '被豁免ID',
  `WAIVER_START` date DEFAULT NULL COMMENT '豁免开始日期',
  `WAIVER_END` date DEFAULT NULL COMMENT '豁免结束日期',
  `PARTITION_INDI` bigint(20) DEFAULT NULL COMMENT '分库标记字段',
  `RECORD_TIME` datetime DEFAULT NULL COMMENT '当前息更新时间',
  `pa_chg_id` bigint(20) DEFAULT NULL COMMENT 'PA系统变更ID',
  `is_end_product` varchar(10) DEFAULT NULL COMMENT '是否终止险种',
  `CREATE_BY` bigint(20) DEFAULT NULL COMMENT '创建人',
  `CREATE_TIME` datetime DEFAULT NULL COMMENT '创建用户时间',
  `UPDATE_BY` bigint(20) DEFAULT NULL COMMENT '更新记录人',
  `UPDATE_TIME` datetime DEFAULT NULL COMMENT '更新用户时间',
  `CREATE_TIMESTAMP` datetime DEFAULT CURRENT_TIMESTAMP COMMENT '创建系统时间',
  `UPDATE_TIMESTAMP` datetime DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP COMMENT '更新系统时间',
  PRIMARY KEY (`CHANGE_ITEM_ID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='理赔险种基本信息表';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `t_claim_pa_policy_product`
--

LOCK TABLES `t_claim_pa_policy_product` WRITE;
/*!40000 ALTER TABLE `t_claim_pa_policy_product` DISABLE KEYS */;
INSERT INTO `t_claim_pa_policy_product` VALUES ('476bdf7ec328464c983df15db02d5492','03','b541dd13c14d4fd2b86371f19c212380','111574109401145115','111574109401145115','111574107445589186','931378233760819660',133,NULL,NULL,400,10000.00,NULL,'2016-05-25 08:00:00',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'D',1,NULL,0.03,0.06,0.00,0.03,0.06,0.00,0.06,0.00,0.00,0.00,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,745,NULL,NULL,NULL,NULL,'2016-06-01 10:18:07',NULL,'2016-06-01 10:18:07','2016-06-01 10:18:07','2016-06-01 10:18:07'),('b78ef6192eec4ba1893b878a6c76270e','03','b541dd13c14d4fd2b86371f19c212380','111574107579014330','111574107579014330',NULL,'931378233760819660',134,NULL,NULL,400,200000.00,NULL,'2016-05-25 08:00:00',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'D',1,NULL,0.55,1.21,0.00,0.55,1.21,0.00,1.21,0.00,0.00,0.00,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,745,NULL,NULL,NULL,NULL,'2016-06-01 10:18:07',NULL,'2016-06-01 10:18:07','2016-06-01 10:18:07','2016-06-01 10:18:07'),('d19fd911eb3649fe935b0b0c8cc6fce4','03','b541dd13c14d4fd2b86371f19c212380','111574107445589186','111574107445589186',NULL,'931378233760819660',132,NULL,NULL,400,200000.00,NULL,'2016-05-25 08:00:00',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'D',1,NULL,0.79,1.73,0.00,0.79,1.73,0.00,1.73,0.00,0.00,0.00,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,745,NULL,NULL,NULL,NULL,'2016-06-01 10:18:07',NULL,'2016-06-01 10:18:07','2016-06-01 10:18:07','2016-06-01 10:18:07');
/*!40000 ALTER TABLE `t_claim_pa_policy_product` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `t_claim_pay`
--

DROP TABLE IF EXISTS `t_claim_pay`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `t_claim_pay` (
  `CLAIM_PAY_ID` varchar(40) NOT NULL COMMENT '受益分配ID',
  `case_id` varchar(40) DEFAULT NULL COMMENT '赔案ID',
  `POLICY_ID` varchar(40) NOT NULL COMMENT '保单ID',
  `policy_no` varchar(40) DEFAULT NULL,
  `PROD_ITEM_ID` varchar(40) DEFAULT NULL COMMENT '保单险种ID',
  `product_id` bigint(20) DEFAULT NULL COMMENT '险种ID',
  `BENE_ID` varchar(40) DEFAULT NULL COMMENT '受益人ID',
  `PAYEE_ID` varchar(40) DEFAULT NULL COMMENT '领款人客户ID',
  `PAYEE_RELATION` varchar(10) DEFAULT NULL COMMENT '领款人与受益人关系',
  `PAYEE_RATE` decimal(7,4) DEFAULT NULL COMMENT '领款人比例',
  `PAYEE_AMOUNT` decimal(16,2) DEFAULT NULL COMMENT '支付金额',
  `REMARK` varchar(4000) DEFAULT NULL COMMENT '备注',
  `PARTITION_INDI` bigint(20) NOT NULL COMMENT '分库标记字段',
  `CREATE_BY` bigint(20) DEFAULT NULL COMMENT '创建人',
  `CREATE_TIME` datetime NOT NULL COMMENT '创建用户时间',
  `UPDATE_BY` bigint(20) DEFAULT NULL COMMENT '更新记录人',
  `UPDATE_TIME` datetime NOT NULL COMMENT '更新用户时间',
  `CREATE_TIMESTAMP` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '创建系统时间',
  `UPDATE_TIMESTAMP` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP COMMENT '更新系统时间',
  PRIMARY KEY (`CLAIM_PAY_ID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `t_claim_pay`
--

LOCK TABLES `t_claim_pay` WRITE;
/*!40000 ALTER TABLE `t_claim_pay` DISABLE KEYS */;
/*!40000 ALTER TABLE `t_claim_pay` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `t_claim_payee`
--

DROP TABLE IF EXISTS `t_claim_payee`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `t_claim_payee` (
  `PAYEE_ID` varchar(40) NOT NULL COMMENT '领款人ID',
  `PAYEE_CUST_ID` bigint(20) DEFAULT NULL COMMENT '领款人客户ID',
  `PAYEE_NAME` varchar(100) DEFAULT NULL COMMENT '领款人名字',
  `PAYEE_SEX` varchar(10) DEFAULT NULL COMMENT '领款人性别',
  `PAYEE_CERTI_TYPE` varchar(10) DEFAULT NULL COMMENT '领款人证件类型',
  `PAYEE_CERTI_NO` varchar(40) DEFAULT NULL COMMENT '领款人证件号码',
  `PAYEE_CERTI_START` date DEFAULT NULL COMMENT '证件生效开始日',
  `PAYEE_CERTI_END` date DEFAULT NULL COMMENT '证件失效日',
  `PAYEE_BIRTH` date DEFAULT NULL COMMENT '领款人出生日期',
  `PARTITION_INDI` bigint(20) NOT NULL,
  `CREATE_BY` bigint(20) DEFAULT NULL COMMENT '创建人',
  `CREATE_TIME` datetime NOT NULL COMMENT '更新时间',
  `UPDATE_BY` bigint(20) DEFAULT NULL COMMENT '更新人',
  `UPDATE_TIME` datetime NOT NULL COMMENT '更新时间',
  `CREATE_TIMESTAMP` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '创建系统时间',
  `UPDATE_TIMESTAMP` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '更新系统时间',
  PRIMARY KEY (`PAYEE_ID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='领款人信息表';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `t_claim_payee`
--

LOCK TABLES `t_claim_payee` WRITE;
/*!40000 ALTER TABLE `t_claim_payee` DISABLE KEYS */;
/*!40000 ALTER TABLE `t_claim_payee` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `t_claim_payer_account`
--

DROP TABLE IF EXISTS `t_claim_payer_account`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `t_claim_payer_account` (
  `account_id` varchar(40) NOT NULL COMMENT '主键ID',
  `PAYEE_ID` varchar(40) NOT NULL COMMENT '领款人客户ID',
  `account_name` varchar(40) DEFAULT NULL COMMENT '账户名',
  `pay_mode` varchar(10) DEFAULT NULL COMMENT '支付方式',
  `bank_code` varchar(10) DEFAULT NULL COMMENT '银行代码',
  `bank_account` varchar(40) DEFAULT NULL COMMENT '银行账号',
  `PARTITION_INDI` bigint(20) NOT NULL COMMENT '分库标记字段',
  `CREATE_BY` bigint(20) DEFAULT NULL COMMENT '创建人',
  `CREATE_TIME` datetime NOT NULL COMMENT '创建用户时间',
  `UPDATE_BY` bigint(20) DEFAULT NULL COMMENT '更新记录人',
  `UPDATE_TIME` datetime NOT NULL COMMENT '更新用户时间',
  `CREATE_TIMESTAMP` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '创建系统时间',
  `UPDATE_TIMESTAMP` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP COMMENT '更新系统时间',
  PRIMARY KEY (`account_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `t_claim_payer_account`
--

LOCK TABLES `t_claim_payer_account` WRITE;
/*!40000 ALTER TABLE `t_claim_payer_account` DISABLE KEYS */;
/*!40000 ALTER TABLE `t_claim_payer_account` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `t_claim_policy`
--

DROP TABLE IF EXISTS `t_claim_policy`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `t_claim_policy` (
  `id` varchar(40) NOT NULL,
  `CASE_ID` varchar(40) DEFAULT NULL COMMENT '案件ID',
  `POLICY_ID` varchar(40) DEFAULT NULL COMMENT '保单ID',
  `policy_no` varchar(20) DEFAULT NULL COMMENT '保单code',
  `ORGAN_ID` bigint(20) DEFAULT NULL COMMENT '机构ID',
  `POLICY_STATUS` varchar(10) DEFAULT NULL COMMENT '保单状态',
  `CLAIM_CHG_ID` varchar(40) DEFAULT NULL COMMENT '理赔变更ID',
  `EXPIRY_DATE` datetime DEFAULT NULL COMMENT '期满时间',
  `POLICY_CHANNEL` varchar(10) DEFAULT NULL,
  `EFFECTIVE_DATE` datetime DEFAULT NULL,
  `SALES_CHANNEL` varchar(10) DEFAULT NULL,
  `SUB_SALES_CHANNEL` varchar(10) DEFAULT NULL,
  `PREM_FREQUENCE` varchar(10) DEFAULT NULL COMMENT '缴费频率',
  `CREATE_BY` bigint(20) DEFAULT NULL COMMENT '创建者',
  `CREATE_TIME` datetime DEFAULT CURRENT_TIMESTAMP COMMENT '创建时间',
  `UPDATE_BY` bigint(20) DEFAULT NULL COMMENT '更新者',
  `UPDATE_TIME` datetime DEFAULT CURRENT_TIMESTAMP COMMENT '更新时间',
  `UPDATE_TIMESTAMP` datetime DEFAULT CURRENT_TIMESTAMP COMMENT '更新系统时间',
  `CREATE_TIMESTAMP` datetime DEFAULT CURRENT_TIMESTAMP COMMENT '创建系统时间',
  `PARTITION_INDI` bigint(20) DEFAULT NULL COMMENT '分库标识',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='理算保单表';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `t_claim_policy`
--

LOCK TABLES `t_claim_policy` WRITE;
/*!40000 ALTER TABLE `t_claim_policy` DISABLE KEYS */;
INSERT INTO `t_claim_policy` VALUES ('84a5b96d752d438cb72b5a489da007dc','b541dd13c14d4fd2b86371f19c212380','931378233760819660','160525121265a',400,'01','931378278361159661',NULL,NULL,'2016-05-26 08:00:00',NULL,NULL,NULL,NULL,'2016-06-01 15:00:42',NULL,'2016-06-01 15:00:42','2016-06-01 15:00:42','2016-06-01 15:00:42',745);
/*!40000 ALTER TABLE `t_claim_policy` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `t_claim_product`
--

DROP TABLE IF EXISTS `t_claim_product`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `t_claim_product` (
  `id` varchar(40) NOT NULL,
  `CASE_ID` varchar(40) DEFAULT NULL COMMENT '案件ID',
  `ITEM_ID` varchar(40) DEFAULT NULL COMMENT '险种itemID',
  `POLICY_ID` varchar(40) DEFAULT NULL COMMENT '保单ID',
  `policy_no` varchar(40) DEFAULT NULL,
  `PRODUCT_ID` bigint(20) DEFAULT NULL COMMENT '产品ID',
  `INSURANT_ID` bigint(20) DEFAULT NULL COMMENT '被保人ID',
  `ORGAN_ID` bigint(20) DEFAULT NULL COMMENT '机构ID',
  `units` decimal(3,2) DEFAULT NULL COMMENT '分数',
  `benefit_level` int(11) DEFAULT NULL,
  `RENEW_DECISION` varchar(10) DEFAULT NULL,
  `SUM_ASSURED` decimal(16,2) DEFAULT NULL COMMENT '保额',
  `NEXT_STD_PREM_BF` decimal(16,2) DEFAULT NULL,
  `EFFECTIVE_DATE` datetime DEFAULT NULL COMMENT '生效日',
  `EXPIRY_DATE` datetime DEFAULT NULL COMMENT '保障结束日期',
  `LIABILITY_STATE` varchar(10) DEFAULT NULL COMMENT '险种状态',
  `AUDIT_DECISION` varchar(10) DEFAULT NULL COMMENT '决议',
  `REJECT_REASON` varchar(10) DEFAULT NULL COMMENT '拒绝原因',
  `AUDIT_REMARK` varchar(1000) DEFAULT NULL COMMENT '备注',
  `BASIC_PAY` decimal(16,2) DEFAULT NULL COMMENT '理算金额',
  `ACTUAL_PAY` decimal(16,2) DEFAULT NULL COMMENT '实际金额',
  `CREATE_TIME` datetime DEFAULT NULL COMMENT '创建时间',
  `UPDATE_BY` bigint(20) DEFAULT NULL COMMENT '更新人',
  `UPDATE_TIME` datetime DEFAULT CURRENT_TIMESTAMP COMMENT '更新时间',
  `UPDATE_TIMESTAMP` datetime DEFAULT CURRENT_TIMESTAMP COMMENT '更新系统时间',
  `CREATE_TIMESTAMP` datetime DEFAULT CURRENT_TIMESTAMP COMMENT '创建系统时间',
  `PARTITION_INDI` bigint(20) DEFAULT NULL COMMENT '分库',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='理算险种记录表';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `t_claim_product`
--

LOCK TABLES `t_claim_product` WRITE;
/*!40000 ALTER TABLE `t_claim_product` DISABLE KEYS */;
INSERT INTO `t_claim_product` VALUES ('267007fefcdf4819bea9011739ee6932','b541dd13c14d4fd2b86371f19c212380','111574109401145115','931378233760819660','160525121265a',133,NULL,400,NULL,NULL,NULL,10000.00,NULL,NULL,NULL,NULL,NULL,NULL,NULL,0.00,0.00,'2016-06-01 15:00:42',NULL,'2016-06-01 15:00:42','2016-06-01 15:00:42','2016-06-01 15:00:42',745),('32bbab988d5f442b816ef41c372b1205','b541dd13c14d4fd2b86371f19c212380','111574107445589186','931378233760819660','160525121265a',132,NULL,400,NULL,NULL,NULL,200000.00,NULL,NULL,NULL,NULL,NULL,NULL,NULL,0.00,0.00,'2016-06-01 15:00:42',NULL,'2016-06-01 15:00:42','2016-06-01 15:00:42','2016-06-01 15:00:42',745),('528e086dbaa64a0392033ba9447380c4','b541dd13c14d4fd2b86371f19c212380','111574107579014330','931378233760819660','160525121265a',134,NULL,400,NULL,NULL,NULL,200000.00,NULL,NULL,NULL,NULL,NULL,NULL,NULL,0.00,0.00,'2016-06-01 15:00:42',NULL,'2016-06-01 15:00:42','2016-06-01 15:00:42','2016-06-01 15:00:42',745);
/*!40000 ALTER TABLE `t_claim_product` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `t_claim_product_liab`
--

DROP TABLE IF EXISTS `t_claim_product_liab`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `t_claim_product_liab` (
  `id` varchar(40) NOT NULL COMMENT '主键ID',
  `case_id` varchar(40) DEFAULT NULL COMMENT '案件ID',
  `policy_id` varchar(40) DEFAULT NULL COMMENT '保单ID',
  `product_id` bigint(20) DEFAULT NULL COMMENT '产品ID',
  `PROD_ITEM_ID` varchar(40) DEFAULT NULL COMMENT '保单险种ID',
  `liab_id` bigint(20) DEFAULT NULL COMMENT '责任ID',
  `calc_amount` decimal(16,2) DEFAULT NULL COMMENT '理算金额',
  `adjust_amount` decimal(16,2) DEFAULT NULL COMMENT '理算调整金额',
  `deductible_feq` varchar(10) DEFAULT NULL COMMENT '扣除免赔额频率',
  `pay_amount` decimal(16,2) DEFAULT NULL COMMENT '理算支付金额',
  `pay_decision` varchar(10) DEFAULT NULL COMMENT '理算支付决定',
  `remark` varchar(4000) DEFAULT NULL COMMENT '理算备注',
  `IS_COMMON` varchar(10) DEFAULT NULL COMMENT '是否常规给付',
  `policy_no` varchar(40) DEFAULT NULL,
  `LIAB_ADJUST_REASON` varchar(10) DEFAULT NULL COMMENT '调整原因',
  `deductible` decimal(16,2) DEFAULT NULL COMMENT '本次扣除免赔额',
  `PARTITION_INDI` bigint(20) DEFAULT NULL,
  `CREATE_BY` bigint(20) DEFAULT NULL COMMENT '创建人',
  `CREATE_TIME` datetime NOT NULL COMMENT '创建用户时间',
  `UPDATE_BY` bigint(20) DEFAULT NULL COMMENT '更新记录人',
  `UPDATE_TIME` datetime NOT NULL COMMENT '更新用户时间',
  `CREATE_TIMESTAMP` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '创建系统时间',
  `UPDATE_TIMESTAMP` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP COMMENT '更新系统时间',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='理赔责任理算表';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `t_claim_product_liab`
--

LOCK TABLES `t_claim_product_liab` WRITE;
/*!40000 ALTER TABLE `t_claim_product_liab` DISABLE KEYS */;
INSERT INTO `t_claim_product_liab` VALUES ('0411f4341c3b4ba1a1575cb8607ce7e7','b541dd13c14d4fd2b86371f19c212380','931378233760819660',134,NULL,6100501,1000.00,0.00,NULL,0.00,NULL,NULL,NULL,'160525121265a',NULL,NULL,745,NULL,'2016-06-01 15:00:42',NULL,'2016-06-01 15:00:42','2016-06-01 15:00:42','2016-06-01 15:00:42'),('3970c341cebf4da0984f60b50e2edf34','b541dd13c14d4fd2b86371f19c212380','931378233760819660',133,NULL,6200301,1000.00,0.00,NULL,0.00,NULL,NULL,NULL,'160525121265a',NULL,NULL,745,NULL,'2016-06-01 15:00:42',NULL,'2016-06-01 15:00:42','2016-06-01 15:00:42','2016-06-01 15:00:42'),('d919e345bbe64bc88295b6c4f5ebd043','b541dd13c14d4fd2b86371f19c212380','931378233760819660',132,NULL,6100401,1000.00,0.00,NULL,0.00,NULL,NULL,NULL,'160525121265a',NULL,NULL,745,NULL,'2016-06-01 15:00:42',NULL,'2016-06-01 15:00:42','2016-06-01 15:00:42','2016-06-01 15:00:42');
/*!40000 ALTER TABLE `t_claim_product_liab` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `t_claim_receipt`
--

DROP TABLE IF EXISTS `t_claim_receipt`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `t_claim_receipt` (
  `receipt_id` varchar(40) NOT NULL COMMENT '收据ID',
  `claim_hospital` varchar(40) DEFAULT NULL COMMENT '案件医院ID',
  `CHECKLIST_ITEM` varchar(10) DEFAULT NULL COMMENT '单证类型',
  `receipt_date` date DEFAULT NULL COMMENT '收据日期',
  `receipt_amount` decimal(16,2) DEFAULT NULL COMMENT '收据金额',
  `PAGE_NO` int(11) DEFAULT NULL,
  `file_id` varchar(40) DEFAULT NULL COMMENT '文件ID(暂时不用)',
  `FILE_DESC` varchar(100) DEFAULT NULL COMMENT '文件描述',
  `PARTITION_INDI` bigint(20) DEFAULT NULL,
  `CREATE_BY` bigint(20) DEFAULT NULL COMMENT '创建人',
  `CREATE_TIME` datetime NOT NULL COMMENT '创建用户时间',
  `UPDATE_BY` bigint(20) DEFAULT NULL COMMENT '更新记录人',
  `UPDATE_TIME` datetime NOT NULL COMMENT '更新用户时间',
  `CREATE_TIMESTAMP` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '创建系统时间',
  `UPDATE_TIMESTAMP` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP COMMENT '更新系统时间',
  PRIMARY KEY (`receipt_id`),
  KEY `FK_CLAIM_RECEIPT__FILE_ID` (`file_id`),
  KEY `FK_CLAIM_RECEIPT__CLAIM_HOSPITAL` (`claim_hospital`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `t_claim_receipt`
--

LOCK TABLES `t_claim_receipt` WRITE;
/*!40000 ALTER TABLE `t_claim_receipt` DISABLE KEYS */;
INSERT INTO `t_claim_receipt` VALUES ('b4141602c294434aa48d4d003cf75ed0','bdbc9c37ff054215b9532c10de7fe79c','1','2016-05-18',20000.00,1,NULL,'333',745,NULL,'2016-05-31 16:20:06',NULL,'2016-05-31 16:20:06','2016-05-31 16:20:06','2016-05-31 16:20:06');
/*!40000 ALTER TABLE `t_claim_receipt` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `t_claim_relatives_visit`
--

DROP TABLE IF EXISTS `t_claim_relatives_visit`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `t_claim_relatives_visit` (
  `visit_id` varchar(40) NOT NULL COMMENT '主键ID',
  `case_id` varchar(40) DEFAULT NULL COMMENT '案件ID',
  `arrive_date` date DEFAULT NULL COMMENT '到达日期',
  `leave_date` date DEFAULT NULL COMMENT '离开日期',
  `arrive_fee` decimal(16,2) DEFAULT NULL COMMENT '到达交通费用',
  `leave_fee` decimal(16,2) DEFAULT NULL COMMENT '离开交通费用',
  `PARTITION_INDI` bigint(20) DEFAULT NULL,
  `CREATE_BY` bigint(20) DEFAULT NULL COMMENT '创建人',
  `CREATE_TIME` datetime NOT NULL COMMENT '创建用户时间',
  `UPDATE_BY` bigint(20) DEFAULT NULL COMMENT '更新记录人',
  `UPDATE_TIME` datetime NOT NULL COMMENT '更新用户时间',
  `CREATE_TIMESTAMP` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '创建系统时间',
  `UPDATE_TIMESTAMP` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP COMMENT '更新系统时间',
  PRIMARY KEY (`visit_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='亲属来访信息表';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `t_claim_relatives_visit`
--

LOCK TABLES `t_claim_relatives_visit` WRITE;
/*!40000 ALTER TABLE `t_claim_relatives_visit` DISABLE KEYS */;
/*!40000 ALTER TABLE `t_claim_relatives_visit` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `t_claim_report_account`
--

DROP TABLE IF EXISTS `t_claim_report_account`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `t_claim_report_account` (
  `account_id` varchar(40) NOT NULL COMMENT '主键ID',
  `REPORT_NO` varchar(40) DEFAULT NULL COMMENT '报案号',
  `pay_mode` varchar(10) DEFAULT NULL COMMENT '支付方式',
  `account_name` varchar(40) DEFAULT NULL COMMENT '账户名',
  `bank_code` varchar(10) DEFAULT NULL COMMENT '银行代码',
  `bank_account` varchar(40) DEFAULT NULL COMMENT '银行账号',
  `MOBILE_PHONE` varchar(20) DEFAULT NULL COMMENT '手机号码',
  `PARTITION_INDI` bigint(20) DEFAULT NULL,
  `CREATE_BY` bigint(20) DEFAULT NULL COMMENT '创建人',
  `CREATE_TIME` datetime NOT NULL COMMENT '创建用户时间',
  `UPDATE_BY` bigint(20) DEFAULT NULL COMMENT '更新记录人',
  `UPDATE_TIME` datetime NOT NULL COMMENT '更新用户时间',
  `CREATE_TIMESTAMP` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '创建系统时间',
  `UPDATE_TIMESTAMP` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP COMMENT '更新系统时间',
  PRIMARY KEY (`account_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='理赔索赔账户表';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `t_claim_report_account`
--

LOCK TABLES `t_claim_report_account` WRITE;
/*!40000 ALTER TABLE `t_claim_report_account` DISABLE KEYS */;
INSERT INTO `t_claim_report_account` VALUES ('f171d94d1808445c9d9fb1a15809138c','32eb79af8a13406f862bc739a3f6013c','01','tina.zhou','0010','62284800305055192211','',745,NULL,'2016-05-30 17:00:04',NULL,'2016-05-30 17:00:04','2016-05-30 17:00:04','2016-05-30 17:26:44');
/*!40000 ALTER TABLE `t_claim_report_account` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `t_claim_reporter`
--

DROP TABLE IF EXISTS `t_claim_reporter`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `t_claim_reporter` (
  `reporter_id` varchar(40) NOT NULL COMMENT '主键',
  `cust_id` bigint(20) DEFAULT NULL COMMENT '报案人客户ID',
  `report_no` varchar(40) DEFAULT NULL COMMENT '报案号',
  `report_date` datetime DEFAULT NULL,
  `relationship` varchar(10) DEFAULT NULL COMMENT '报案人与出险人关系',
  `name` varchar(100) DEFAULT NULL COMMENT '报案人姓名',
  `gender` varchar(10) DEFAULT NULL COMMENT '报案人性别',
  `birthday` date DEFAULT NULL COMMENT '报案人生日',
  `certi_type` varchar(10) DEFAULT NULL COMMENT '报案人证件类型',
  `certi_code` varchar(40) DEFAULT NULL COMMENT '报案人证件号码',
  `mobile_phone` varchar(40) DEFAULT NULL COMMENT '报案人手机号码',
  `email` varchar(60) DEFAULT NULL COMMENT '报案人邮件地址',
  `PARTITION_INDI` bigint(20) DEFAULT NULL,
  `CREATE_BY` bigint(20) DEFAULT NULL COMMENT '创建人',
  `CREATE_TIME` datetime NOT NULL COMMENT '创建用户时间',
  `UPDATE_BY` bigint(20) DEFAULT NULL COMMENT '更新记录人',
  `UPDATE_TIME` datetime NOT NULL COMMENT '更新用户时间',
  `CREATE_TIMESTAMP` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '创建系统时间',
  `UPDATE_TIMESTAMP` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP COMMENT '更新系统时间',
  PRIMARY KEY (`reporter_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `t_claim_reporter`
--

LOCK TABLES `t_claim_reporter` WRITE;
/*!40000 ALTER TABLE `t_claim_reporter` DISABLE KEYS */;
INSERT INTO `t_claim_reporter` VALUES ('ea2c76910d714eac88c1dac74fef189d',745,'32eb79af8a13406f862bc739a3f6013c','2016-05-20 00:00:00','01','Tina.zhou','1','1988-04-30','01','331122198805011234','','tina.zhou@e-tianrong.com',745,NULL,'2016-05-30 17:00:04',NULL,'2016-05-30 17:26:25','2016-05-30 17:00:23','2016-05-30 17:26:44');
/*!40000 ALTER TABLE `t_claim_reporter` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `t_claim_reporter_addr`
--

DROP TABLE IF EXISTS `t_claim_reporter_addr`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `t_claim_reporter_addr` (
  `addr_id` varchar(40) NOT NULL COMMENT '地址ID',
  `reporter_id` varchar(40) DEFAULT NULL COMMENT '报案人主键ID',
  `province_code` varchar(10) DEFAULT NULL COMMENT '省份',
  `city_code` varchar(10) DEFAULT NULL COMMENT '城市',
  `district_code` varchar(10) DEFAULT NULL COMMENT '街道',
  `addr_detail` varchar(300) DEFAULT NULL COMMENT '具体地址',
  `POSTAL_CODE` varchar(10) DEFAULT NULL COMMENT '邮编',
  `PARTITION_INDI` bigint(20) DEFAULT NULL,
  `CREATE_BY` bigint(20) DEFAULT NULL COMMENT '创建人',
  `CREATE_TIME` datetime NOT NULL COMMENT '创建用户时间',
  `UPDATE_BY` bigint(20) DEFAULT NULL COMMENT '更新记录人',
  `UPDATE_TIME` datetime NOT NULL COMMENT '更新用户时间',
  `CREATE_TIMESTAMP` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '创建系统时间',
  `UPDATE_TIMESTAMP` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP COMMENT '更新系统时间',
  PRIMARY KEY (`addr_id`),
  KEY `FK_CLAIM_REPORTER_ADDR__REPORTER_ID` (`reporter_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `t_claim_reporter_addr`
--

LOCK TABLES `t_claim_reporter_addr` WRITE;
/*!40000 ALTER TABLE `t_claim_reporter_addr` DISABLE KEYS */;
INSERT INTO `t_claim_reporter_addr` VALUES ('18c4c4c6f49441878d37848bb3655da5','ea2c76910d714eac88c1dac74fef189d','110','110',NULL,'kdkdkddkdd','111',745,NULL,'2016-05-30 17:00:04',NULL,'2016-05-30 17:26:25','2016-05-30 17:00:23','2016-05-30 17:26:44');
/*!40000 ALTER TABLE `t_claim_reporter_addr` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `t_claim_reserve`
--

DROP TABLE IF EXISTS `t_claim_reserve`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `t_claim_reserve` (
  `id` varchar(40) NOT NULL COMMENT '主键ID',
  `case_id` varchar(40) DEFAULT NULL COMMENT '案件ID',
  `policy_id` varchar(40) DEFAULT NULL COMMENT '保单ID',
  `reserve_type` varchar(10) DEFAULT NULL COMMENT '准备金类型',
  `outstanding_amount` decimal(16,2) DEFAULT NULL COMMENT '未决赔款准备金',
  `settled_amount` decimal(16,2) DEFAULT NULL COMMENT '已决赔款准备金',
  `remark` varchar(4000) DEFAULT NULL COMMENT '备注',
  `is_delete` varchar(10) DEFAULT NULL COMMENT '删除标记',
  `PARTITION_INDI` bigint(20) DEFAULT NULL,
  `CREATE_BY` bigint(20) DEFAULT NULL COMMENT '创建人',
  `CREATE_TIME` datetime NOT NULL COMMENT '创建用户时间',
  `UPDATE_BY` bigint(20) DEFAULT NULL COMMENT '更新记录人',
  `UPDATE_TIME` datetime NOT NULL COMMENT '更新用户时间',
  `CREATE_TIMESTAMP` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '创建系统时间',
  `UPDATE_TIMESTAMP` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP COMMENT '更新系统时间',
  PRIMARY KEY (`id`),
  KEY `FK_CLAIM_RESERVE__CASE_ID` (`case_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `t_claim_reserve`
--

LOCK TABLES `t_claim_reserve` WRITE;
/*!40000 ALTER TABLE `t_claim_reserve` DISABLE KEYS */;
/*!40000 ALTER TABLE `t_claim_reserve` ENABLE KEYS */;
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
) ENGINE=InnoDB AUTO_INCREMENT=1919 DEFAULT CHARSET=utf8 COLLATE=utf8_bin COMMENT='残疾标准、残疾代码与残疾等级配置表';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `t_deformity_grade`
--

LOCK TABLES `t_deformity_grade` WRITE;
/*!40000 ALTER TABLE `t_deformity_grade` DISABLE KEYS */;
INSERT INTO `t_deformity_grade` VALUES (960,'1','b210.41/2','8'),(961,'1','b2101.41/2','8'),(962,'3','30391','8'),(963,'3','30392','8'),(964,'3','30393','8'),(965,'3','30394','8'),(966,'3','30395','8'),(967,'3','30396','8'),(968,'3','30397','8'),(969,'3','30398','8'),(970,'3','30399','8'),(971,'3','30400','8'),(972,'3','30401','8'),(973,'3','30402','8'),(974,'3','30403','8'),(975,'3','30404','8'),(976,'3','30405','8'),(977,'3','30406','8'),(978,'3','30407','8'),(979,'3','30408','8'),(980,'3','30409','8'),(981,'3','30410','8'),(982,'3','30411','8'),(983,'3','30412','8'),(984,'3','30413','8'),(985,'3','30414','8'),(986,'3','30415','8'),(987,'3','30416','8'),(988,'3','30417','8'),(989,'3','30418','8'),(990,'3','30419','8'),(991,'3','30420','8'),(992,'3','30421','8'),(993,'3','30422','8'),(994,'3','30423','8'),(995,'3','30424','8'),(996,'3','30425','8'),(997,'3','30426','8'),(998,'3','30427','8'),(999,'3','30428','8'),(1000,'3','30429','8'),(1001,'3','30430','8'),(1002,'3','30431','8'),(1003,'3','30432','8'),(1004,'3','30433','8'),(1005,'3','30434','8'),(1006,'3','30435','8'),(1007,'3','30436','8'),(1008,'3','30437','8'),(1009,'3','30438','8'),(1010,'3','30439','8'),(1011,'3','30440','8'),(1012,'3','30441','8'),(1013,'3','30442','8'),(1014,'3','30443','8'),(1015,'3','30444','8'),(1016,'3','30445','8'),(1017,'3','30446','8'),(1018,'3','30447','8'),(1019,'3','30448','8'),(1020,'3','30449','8'),(1021,'3','30450','8'),(1022,'3','30451','8'),(1023,'3','30452','8'),(1024,'3','30453','8'),(1025,'3','30454','8'),(1026,'3','30455','8'),(1027,'3','30456','8'),(1028,'3','30457','8'),(1029,'3','30458','8'),(1030,'3','30459','8'),(1031,'3','30460','8'),(1032,'3','30461','8'),(1033,'3','30462','8'),(1034,'3','30463','8'),(1035,'3','30464','8'),(1036,'2','20190','8'),(1037,'2','20191','8'),(1038,'2','20192','8'),(1039,'2','20193','8'),(1040,'2','20194','8'),(1041,'2','20195','8'),(1042,'2','20196','8'),(1043,'2','20197','8'),(1044,'2','20198','8'),(1045,'2','20199','8'),(1046,'2','20200','8'),(1047,'2','20201','8'),(1048,'2','20202','8'),(1049,'2','20203','8'),(1050,'2','20204','8'),(1051,'2','20205','8'),(1052,'2','20206','8'),(1053,'2','20207','8'),(1054,'2','20208','8'),(1055,'2','20209','8'),(1056,'2','20210','8'),(1057,'2','20211','8'),(1058,'2','20212','8'),(1059,'2','20213','8'),(1060,'2','20214','8'),(1061,'2','20215','8'),(1062,'2','20216','8'),(1063,'2','20217','8'),(1064,'2','20218','8'),(1065,'2','20219','8'),(1066,'2','20220','8'),(1067,'2','20221','8'),(1068,'2','20222','8'),(1069,'2','20223','8'),(1070,'2','20224','8'),(1071,'1','s110.388','2'),(1072,'1','b117.3','2'),(1073,'1','b198.3Z','2'),(1074,'1','s220.411/2','2'),(1075,'1','b210.42/1','2'),(1076,'1','b210.4Z3','2'),(1077,'1','b2101.4Z3','2'),(1078,'3','30025','2'),(1079,'3','30026','2'),(1080,'3','30027','2'),(1081,'3','30028','2'),(1082,'3','30029','2'),(1083,'3','30030','2'),(1084,'3','30031','2'),(1085,'3','30032','2'),(1086,'3','30033','2'),(1087,'3','30034','2'),(1088,'3','30035','2'),(1089,'3','30036','2'),(1090,'3','30037','2'),(1091,'3','30038','2'),(1092,'3','30039','2'),(1093,'3','30040','2'),(1094,'3','30041','2'),(1095,'3','30042','2'),(1096,'3','30043','2'),(1097,'3','30044','2'),(1098,'3','30045','2'),(1099,'3','30046','2'),(1100,'3','30047','2'),(1101,'3','30048','2'),(1102,'3','30049','2'),(1103,'3','30050','2'),(1104,'3','30051','2'),(1105,'3','30052','2'),(1106,'3','30053','2'),(1107,'3','30054','2'),(1108,'3','30055','2'),(1109,'3','30056','2'),(1110,'3','30057','2'),(1111,'3','30058','2'),(1112,'3','30059','2'),(1113,'3','30060','2'),(1114,'3','30061','2'),(1115,'3','30062','2'),(1116,'3','30063','2'),(1117,'3','30064','2'),(1118,'3','30065','2'),(1119,'3','30066','2'),(1120,'2','20020','2'),(1121,'2','20021','2'),(1122,'2','20022','2'),(1123,'2','20023','2'),(1124,'2','20024','2'),(1125,'2','20025','2'),(1126,'2','20026','2'),(1127,'2','20027','2'),(1128,'2','20028','2'),(1129,'2','20029','2'),(1130,'2','20030','2'),(1131,'2','20031','2'),(1132,'2','20032','2'),(1133,'2','20033','2'),(1134,'2','20034','2'),(1135,'2','20035','2'),(1136,'2','20036','2'),(1137,'2','20037','2'),(1138,'2','20038','2'),(1139,'1','b210.31/2','9'),(1140,'1','b2101.31/2','9'),(1141,'3','30465','9'),(1142,'3','30466','9'),(1143,'3','30467','9'),(1144,'3','30468','9'),(1145,'3','30469','9'),(1146,'3','30470','9'),(1147,'3','30471','9'),(1148,'3','30472','9'),(1149,'3','30473','9'),(1150,'3','30474','9'),(1151,'3','30475','9'),(1152,'3','30476','9'),(1153,'3','30477','9'),(1154,'3','30478','9'),(1155,'3','30479','9'),(1156,'3','30480','9'),(1157,'3','30481','9'),(1158,'3','30482','9'),(1159,'3','30483','9'),(1160,'3','30484','9'),(1161,'3','30485','9'),(1162,'3','30486','9'),(1163,'3','30487','9'),(1164,'3','30488','9'),(1165,'3','30489','9'),(1166,'3','30490','9'),(1167,'3','30491','9'),(1168,'3','30492','9'),(1169,'3','30493','9'),(1170,'3','30494','9'),(1171,'3','30495','9'),(1172,'3','30496','9'),(1173,'3','30497','9'),(1174,'3','30498','9'),(1175,'3','30499','9'),(1176,'3','30500','9'),(1177,'3','30501','9'),(1178,'3','30502','9'),(1179,'3','30503','9'),(1180,'3','30504','9'),(1181,'3','30505','9'),(1182,'3','30506','9'),(1183,'3','30507','9'),(1184,'3','30508','9'),(1185,'3','30509','9'),(1186,'3','30510','9'),(1187,'3','30511','9'),(1188,'3','30512','9'),(1189,'3','30513','9'),(1190,'3','30514','9'),(1191,'3','30515','9'),(1192,'3','30516','9'),(1193,'3','30517','9'),(1194,'3','30518','9'),(1195,'2','20225','9'),(1196,'2','20226','9'),(1197,'2','20227','9'),(1198,'2','20228','9'),(1199,'2','20229','9'),(1200,'2','20230','9'),(1201,'2','20231','9'),(1202,'2','20232','9'),(1203,'2','20233','9'),(1204,'2','20234','9'),(1205,'2','20235','9'),(1206,'2','20236','9'),(1207,'2','20237','9'),(1208,'2','20238','9'),(1209,'2','20239','9'),(1210,'2','20240','9'),(1211,'2','20241','9'),(1212,'2','20242','9'),(1213,'2','20243','9'),(1214,'2','20244','9'),(1215,'2','20245','9'),(1216,'2','20246','9'),(1217,'2','20247','9'),(1218,'2','20248','9'),(1219,'2','20249','9'),(1220,'2','20250','9'),(1221,'2','20251','9'),(1222,'2','20252','9'),(1223,'2','20253','9'),(1224,'2','20254','9'),(1225,'2','20255','9'),(1226,'2','20256','9'),(1227,'2','20257','9'),(1228,'2','20258','9'),(1229,'2','20259','9'),(1230,'2','20260','9'),(1231,'2','20261','9'),(1232,'2','20262','9'),(1233,'2','20263','9'),(1234,'2','20264','9'),(1235,'2','20265','9'),(1236,'2','20266','9'),(1237,'2','20267','9'),(1238,'2','20268','9'),(1239,'2','20269','9'),(1240,'2','20270','9'),(1241,'2','20271','9'),(1242,'2','20272','9'),(1243,'2','20273','9'),(1244,'2','20274','9'),(1245,'2','20275','9'),(1246,'1','b210.1X3','6'),(1247,'1','b2101.23','6'),(1248,'3','30246','6'),(1249,'3','30247','6'),(1250,'3','30248','6'),(1251,'3','30249','6'),(1252,'3','30250','6'),(1253,'3','30251','6'),(1254,'3','30252','6'),(1255,'3','30253','6'),(1256,'3','30254','6'),(1257,'3','30255','6'),(1258,'3','30256','6'),(1259,'3','30257','6'),(1260,'3','30258','6'),(1261,'3','30259','6'),(1262,'3','30260','6'),(1263,'3','30261','6'),(1264,'3','30262','6'),(1265,'3','30263','6'),(1266,'3','30264','6'),(1267,'3','30265','6'),(1268,'3','30266','6'),(1269,'3','30267','6'),(1270,'3','30268','6'),(1271,'3','30269','6'),(1272,'3','30270','6'),(1273,'3','30271','6'),(1274,'3','30272','6'),(1275,'3','30273','6'),(1276,'3','30274','6'),(1277,'3','30275','6'),(1278,'3','30276','6'),(1279,'3','30277','6'),(1280,'3','30278','6'),(1281,'3','30279','6'),(1282,'3','30280','6'),(1283,'3','30281','6'),(1284,'3','30282','6'),(1285,'3','30283','6'),(1286,'3','30284','6'),(1287,'3','30285','6'),(1288,'3','30286','6'),(1289,'3','30287','6'),(1290,'3','30288','6'),(1291,'3','30289','6'),(1292,'3','30290','6'),(1293,'3','30291','6'),(1294,'3','30292','6'),(1295,'3','30293','6'),(1296,'3','30294','6'),(1297,'3','30295','6'),(1298,'3','30296','6'),(1299,'3','30297','6'),(1300,'3','30298','6'),(1301,'3','30299','6'),(1302,'3','30300','6'),(1303,'3','30301','6'),(1304,'3','30302','6'),(1305,'3','30303','6'),(1306,'3','30304','6'),(1307,'3','30305','6'),(1308,'3','30306','6'),(1309,'3','30307','6'),(1310,'3','30308','6'),(1311,'3','30309','6'),(1312,'3','30310','6'),(1313,'3','30311','6'),(1314,'3','30312','6'),(1315,'3','30313','6'),(1316,'3','30314','6'),(1317,'3','30315','6'),(1318,'3','30316','6'),(1319,'3','30317','6'),(1320,'3','30318','6'),(1321,'2','20131','6'),(1322,'2','20132','6'),(1323,'2','20133','6'),(1324,'2','20134','6'),(1325,'2','20135','6'),(1326,'2','20136','6'),(1327,'2','20137','6'),(1328,'2','20138','6'),(1329,'2','20139','6'),(1330,'2','20140','6'),(1331,'2','20141','6'),(1332,'2','20142','6'),(1333,'2','20143','6'),(1334,'2','20144','6'),(1335,'2','20145','6'),(1336,'2','20146','6'),(1337,'2','20147','6'),(1338,'2','20148','6'),(1339,'2','20149','6'),(1340,'2','20150','6'),(1341,'2','20151','6'),(1342,'2','20152','6'),(1343,'2','20153','6'),(1344,'2','20154','6'),(1345,'2','20155','6'),(1346,'1','s220.411/2','7'),(1347,'1','b210.4Z1/2','7'),(1348,'3','30319','7'),(1349,'3','30320','7'),(1350,'3','30321','7'),(1351,'3','30322','7'),(1352,'3','30323','7'),(1353,'3','30324','7'),(1354,'3','30325','7'),(1355,'3','30326','7'),(1356,'3','30327','7'),(1357,'3','30328','7'),(1358,'3','30329','7'),(1359,'3','30330','7'),(1360,'3','30331','7'),(1361,'3','30332','7'),(1362,'3','30333','7'),(1363,'3','30334','7'),(1364,'3','30335','7'),(1365,'3','30336','7'),(1366,'3','30337','7'),(1367,'3','30338','7'),(1368,'3','30339','7'),(1369,'3','30340','7'),(1370,'3','30341','7'),(1371,'3','30342','7'),(1372,'3','30343','7'),(1373,'3','30344','7'),(1374,'3','30345','7'),(1375,'3','30346','7'),(1376,'3','30347','7'),(1377,'3','30348','7'),(1378,'3','30349','7'),(1379,'3','30350','7'),(1380,'3','30351','7'),(1381,'3','30352','7'),(1382,'3','30353','7'),(1383,'3','30354','7'),(1384,'3','30355','7'),(1385,'3','30356','7'),(1386,'3','30357','7'),(1387,'3','30358','7'),(1388,'3','30359','7'),(1389,'3','30360','7'),(1390,'3','30361','7'),(1391,'3','30362','7'),(1392,'3','30363','7'),(1393,'3','30364','7'),(1394,'3','30365','7'),(1395,'3','30366','7'),(1396,'3','30367','7'),(1397,'3','30368','7'),(1398,'3','30369','7'),(1399,'3','30370','7'),(1400,'3','30371','7'),(1401,'3','30372','7'),(1402,'3','30373','7'),(1403,'3','30374','7'),(1404,'3','30375','7'),(1405,'3','30376','7'),(1406,'3','30377','7'),(1407,'3','30378','7'),(1408,'3','30379','7'),(1409,'3','30380','7'),(1410,'3','30381','7'),(1411,'3','30382','7'),(1412,'3','30383','7'),(1413,'3','30384','7'),(1414,'3','30385','7'),(1415,'3','30386','7'),(1416,'3','30387','7'),(1417,'3','30388','7'),(1418,'3','30389','7'),(1419,'3','30390','7'),(1420,'2','20156','7'),(1421,'2','20157','7'),(1422,'2','20158','7'),(1423,'2','20159','7'),(1424,'2','20160','7'),(1425,'2','20161','7'),(1426,'2','20162','7'),(1427,'2','20163','7'),(1428,'2','20164','7'),(1429,'2','20165','7'),(1430,'2','20166','7'),(1431,'2','20167','7'),(1432,'2','20168','7'),(1433,'2','20169','7'),(1434,'2','20170','7'),(1435,'2','20171','7'),(1436,'2','20172','7'),(1437,'2','20173','7'),(1438,'2','20174','7'),(1439,'2','20175','7'),(1440,'2','20176','7'),(1441,'2','20177','7'),(1442,'2','20178','7'),(1443,'2','20179','7'),(1444,'2','20180','7'),(1445,'2','20181','7'),(1446,'2','20182','7'),(1447,'2','20183','7'),(1448,'2','20184','7'),(1449,'2','20185','7'),(1450,'2','20186','7'),(1451,'2','20187','7'),(1452,'2','20188','7'),(1453,'2','20189','7'),(1454,'1','s110.388','3'),(1455,'1','b117.3','3'),(1456,'1','b198.3','3'),(1457,'1','s220.411/2','3'),(1458,'1','b210.32/1','3'),(1459,'1','b210.43','3'),(1460,'1','b2101.43','3'),(1461,'3','30067','3'),(1462,'3','30068','3'),(1463,'3','30069','3'),(1464,'3','30070','3'),(1465,'3','30071','3'),(1466,'3','30072','3'),(1467,'3','30073','3'),(1468,'3','30074','3'),(1469,'3','30075','3'),(1470,'3','30076','3'),(1471,'3','30077','3'),(1472,'3','30078','3'),(1473,'3','30079','3'),(1474,'3','30080','3'),(1475,'3','30081','3'),(1476,'3','30082','3'),(1477,'3','30083','3'),(1478,'3','30084','3'),(1479,'3','30085','3'),(1480,'3','30086','3'),(1481,'3','30087','3'),(1482,'3','30088','3'),(1483,'3','30089','3'),(1484,'3','30090','3'),(1485,'3','30091','3'),(1486,'3','30092','3'),(1487,'3','30093','3'),(1488,'3','30094','3'),(1489,'3','30095','3'),(1490,'3','30096','3'),(1491,'3','30097','3'),(1492,'3','30098','3'),(1493,'3','30099','3'),(1494,'3','30100','3'),(1495,'3','30101','3'),(1496,'3','30102','3'),(1497,'3','30103','3'),(1498,'3','30104','3'),(1499,'3','30105','3'),(1500,'3','30106','3'),(1501,'3','30107','3'),(1502,'3','30108','3'),(1503,'3','30109','3'),(1504,'3','30110','3'),(1505,'3','30111','3'),(1506,'3','30112','3'),(1507,'3','30113','3'),(1508,'3','30114','3'),(1509,'3','30115','3'),(1510,'2','20039','3'),(1511,'2','20040','3'),(1512,'2','20041','3'),(1513,'2','20042','3'),(1514,'2','20043','3'),(1515,'2','20044','3'),(1516,'2','20045','3'),(1517,'2','20046','3'),(1518,'2','20047','3'),(1519,'2','20048','3'),(1520,'2','20049','3'),(1521,'2','20050','3'),(1522,'2','20051','3'),(1523,'2','20052','3'),(1524,'2','20053','3'),(1525,'2','20054','3'),(1526,'2','20055','3'),(1527,'2','20056','3'),(1528,'2','20057','3'),(1529,'2','20058','3'),(1530,'2','20059','3'),(1531,'2','20060','3'),(1532,'2','20061','3'),(1533,'2','20062','3'),(1534,'2','20063','3'),(1535,'2','20064','3'),(1536,'2','20065','3'),(1537,'2','20066','3'),(1538,'2','20067','3'),(1539,'2','20068','3'),(1540,'2','20069','3'),(1541,'1','s130.188','10'),(1542,'1','b210.1X1/2','10'),(1543,'1','b2101.21/2','10'),(1544,'3','30519','10'),(1545,'3','30520','10'),(1546,'3','30521','10'),(1547,'3','30522','10'),(1548,'3','30523','10'),(1549,'3','30524','10'),(1550,'3','30525','10'),(1551,'3','30526','10'),(1552,'3','30527','10'),(1553,'3','30528','10'),(1554,'3','30529','10'),(1555,'3','30530','10'),(1556,'3','30531','10'),(1557,'3','30532','10'),(1558,'3','30533','10'),(1559,'3','30534','10'),(1560,'3','30535','10'),(1561,'3','30536','10'),(1562,'3','30537','10'),(1563,'3','30538','10'),(1564,'3','30539','10'),(1565,'3','30540','10'),(1566,'3','30541','10'),(1567,'3','30542','10'),(1568,'3','30543','10'),(1569,'3','30544','10'),(1570,'3','30545','10'),(1571,'3','30546','10'),(1572,'3','30547','10'),(1573,'3','30548','10'),(1574,'3','30549','10'),(1575,'3','30550','10'),(1576,'3','30551','10'),(1577,'3','30552','10'),(1578,'3','30553','10'),(1579,'3','30554','10'),(1580,'3','30555','10'),(1581,'3','30556','10'),(1582,'3','30557','10'),(1583,'3','30558','10'),(1584,'3','30559','10'),(1585,'3','30560','10'),(1586,'3','30561','10'),(1587,'3','30562','10'),(1588,'3','30563','10'),(1589,'3','30564','10'),(1590,'3','30565','10'),(1591,'3','30566','10'),(1592,'3','30567','10'),(1593,'3','30568','10'),(1594,'3','30569','10'),(1595,'3','30570','10'),(1596,'3','30571','10'),(1597,'3','30572','10'),(1598,'2','20276','10'),(1599,'2','20277','10'),(1600,'2','20278','10'),(1601,'2','20279','10'),(1602,'2','20280','10'),(1603,'2','20281','10'),(1604,'2','20282','10'),(1605,'2','20283','10'),(1606,'2','20284','10'),(1607,'2','20285','10'),(1608,'2','20286','10'),(1609,'2','20287','10'),(1610,'2','20288','10'),(1611,'2','20289','10'),(1612,'2','20290','10'),(1613,'2','20291','10'),(1614,'2','20292','10'),(1615,'2','20293','10'),(1616,'2','20294','10'),(1617,'2','20295','10'),(1618,'2','20296','10'),(1619,'2','20297','10'),(1620,'2','20298','10'),(1621,'2','20299','10'),(1622,'2','20300','10'),(1623,'2','20301','10'),(1624,'2','20302','10'),(1625,'2','20303','10'),(1626,'2','20304','10'),(1627,'2','20305','10'),(1628,'2','20306','10'),(1629,'2','20307','10'),(1630,'2','20308','10'),(1631,'2','20309','10'),(1632,'2','20310','10'),(1633,'2','20311','10'),(1634,'2','20312','10'),(1635,'2','20313','10'),(1636,'2','20314','10'),(1637,'2','20315','10'),(1638,'2','20316','10'),(1639,'2','20317','10'),(1640,'2','20318','10'),(1641,'2','20319','10'),(1642,'2','20320','10'),(1643,'2','20321','10'),(1644,'2','20322','10'),(1645,'2','20323','10'),(1646,'2','20324','10'),(1647,'2','20325','10'),(1648,'2','20326','10'),(1649,'2','20327','10'),(1650,'2','20328','10'),(1651,'2','20329','10'),(1652,'2','20330','10'),(1653,'2','20331','10'),(1654,'2','20332','10'),(1655,'2','20333','10'),(1656,'2','20334','10'),(1657,'2','20335','10'),(1658,'2','20336','10'),(1659,'2','20337','10'),(1660,'2','20338','10'),(1661,'2','20339','10'),(1662,'2','20340','10'),(1663,'2','20341','10'),(1664,'2','20342','10'),(1665,'2','20343','10'),(1666,'2','20344','10'),(1667,'2','20345','10'),(1668,'1','s110.288','4'),(1669,'1','b117.2','4'),(1670,'1','b198.2','4'),(1671,'1','s220.411/2','4'),(1672,'1','b210.22/1','4'),(1673,'1','b210.33','4'),(1674,'1','b2101.33','4'),(1675,'3','30116','4'),(1676,'3','30117','4'),(1677,'3','30118','4'),(1678,'3','30119','4'),(1679,'3','30120','4'),(1680,'3','30121','4'),(1681,'3','30122','4'),(1682,'3','30123','4'),(1683,'3','30124','4'),(1684,'3','30125','4'),(1685,'3','30126','4'),(1686,'3','30127','4'),(1687,'3','30128','4'),(1688,'3','30129','4'),(1689,'3','30130','4'),(1690,'3','30131','4'),(1691,'3','30132','4'),(1692,'3','30133','4'),(1693,'3','30134','4'),(1694,'3','30135','4'),(1695,'3','30136','4'),(1696,'3','30137','4'),(1697,'3','30138','4'),(1698,'3','30139','4'),(1699,'3','30140','4'),(1700,'3','30141','4'),(1701,'3','30142','4'),(1702,'3','30143','4'),(1703,'3','30144','4'),(1704,'3','30145','4'),(1705,'3','30146','4'),(1706,'3','30147','4'),(1707,'3','30148','4'),(1708,'3','30149','4'),(1709,'3','30150','4'),(1710,'3','30151','4'),(1711,'3','30152','4'),(1712,'3','30153','4'),(1713,'3','30154','4'),(1714,'3','30155','4'),(1715,'3','30156','4'),(1716,'3','30157','4'),(1717,'3','30158','4'),(1718,'3','30159','4'),(1719,'3','30160','4'),(1720,'3','30161','4'),(1721,'3','30162','4'),(1722,'3','30163','4'),(1723,'3','30164','4'),(1724,'3','30165','4'),(1725,'3','30166','4'),(1726,'3','30167','4'),(1727,'3','30168','4'),(1728,'3','30169','4'),(1729,'3','30170','4'),(1730,'3','30171','4'),(1731,'3','30172','4'),(1732,'2','20070','4'),(1733,'2','20071','4'),(1734,'2','20072','4'),(1735,'2','20073','4'),(1736,'2','20074','4'),(1737,'2','20075','4'),(1738,'2','20076','4'),(1739,'2','20077','4'),(1740,'2','20078','4'),(1741,'2','20079','4'),(1742,'2','20080','4'),(1743,'2','20081','4'),(1744,'2','20082','4'),(1745,'2','20083','4'),(1746,'2','20084','4'),(1747,'2','20085','4'),(1748,'2','20086','4'),(1749,'2','20087','4'),(1750,'2','20088','4'),(1751,'2','20089','4'),(1752,'2','20090','4'),(1753,'2','20091','4'),(1754,'2','20092','4'),(1755,'2','20093','4'),(1756,'1','s220.411/2','5'),(1757,'1','b210.1X2/1','5'),(1758,'1','b210.23','5'),(1759,'3','30173','5'),(1760,'3','30174','5'),(1761,'3','30175','5'),(1762,'3','30176','5'),(1763,'3','30177','5'),(1764,'3','30178','5'),(1765,'3','30179','5'),(1766,'3','30180','5'),(1767,'3','30181','5'),(1768,'3','30182','5'),(1769,'3','30183','5'),(1770,'3','30184','5'),(1771,'3','30185','5'),(1772,'3','30186','5'),(1773,'3','30187','5'),(1774,'3','30188','5'),(1775,'3','30189','5'),(1776,'3','30190','5'),(1777,'3','30191','5'),(1778,'3','30192','5'),(1779,'3','30193','5'),(1780,'3','30194','5'),(1781,'3','30195','5'),(1782,'3','30196','5'),(1783,'3','30197','5'),(1784,'3','30198','5'),(1785,'3','30199','5'),(1786,'3','30200','5'),(1787,'3','30201','5'),(1788,'3','30202','5'),(1789,'3','30203','5'),(1790,'3','30204','5'),(1791,'3','30205','5'),(1792,'3','30206','5'),(1793,'3','30207','5'),(1794,'3','30208','5'),(1795,'3','30209','5'),(1796,'3','30210','5'),(1797,'3','30211','5'),(1798,'3','30212','5'),(1799,'3','30213','5'),(1800,'3','30214','5'),(1801,'3','30215','5'),(1802,'3','30216','5'),(1803,'3','30217','5'),(1804,'3','30218','5'),(1805,'3','30219','5'),(1806,'3','30220','5'),(1807,'3','30221','5'),(1808,'3','30222','5'),(1809,'3','30223','5'),(1810,'3','30224','5'),(1811,'3','30225','5'),(1812,'3','30226','5'),(1813,'3','30227','5'),(1814,'3','30228','5'),(1815,'3','30229','5'),(1816,'3','30230','5'),(1817,'3','30231','5'),(1818,'3','30232','5'),(1819,'3','30233','5'),(1820,'3','30234','5'),(1821,'3','30235','5'),(1822,'3','30236','5'),(1823,'3','30237','5'),(1824,'3','30238','5'),(1825,'3','30239','5'),(1826,'3','30240','5'),(1827,'3','30241','5'),(1828,'3','30242','5'),(1829,'3','30243','5'),(1830,'3','30244','5'),(1831,'3','30245','5'),(1832,'2','20094','5'),(1833,'2','20095','5'),(1834,'2','20096','5'),(1835,'2','20097','5'),(1836,'2','20098','5'),(1837,'2','20099','5'),(1838,'2','20100','5'),(1839,'2','20101','5'),(1840,'2','20102','5'),(1841,'2','20103','5'),(1842,'2','20104','5'),(1843,'2','20105','5'),(1844,'2','20106','5'),(1845,'2','20107','5'),(1846,'2','20108','5'),(1847,'2','20109','5'),(1848,'2','20110','5'),(1849,'2','20111','5'),(1850,'2','20112','5'),(1851,'2','20113','5'),(1852,'2','20114','5'),(1853,'2','20115','5'),(1854,'2','20116','5'),(1855,'2','20117','5'),(1856,'2','20118','5'),(1857,'2','20119','5'),(1858,'2','20120','5'),(1859,'2','20121','5'),(1860,'2','20122','5'),(1861,'2','20123','5'),(1862,'2','20124','5'),(1863,'2','20125','5'),(1864,'2','20126','5'),(1865,'2','20127','5'),(1866,'2','20128','5'),(1867,'2','20129','5'),(1868,'2','20130','5'),(1869,'1','s110.488','1'),(1870,'1','b117.4','1'),(1871,'1','b198.4','1'),(1872,'1','b110.4','1'),(1873,'1','s220.413','1'),(1874,'1','s220.411/2','1'),(1875,'1','b210.4Z2/1','1'),(1876,'3','30001','1'),(1877,'3','30002','1'),(1878,'3','30003','1'),(1879,'3','30004','1'),(1880,'3','30005','1'),(1881,'3','30006','1'),(1882,'3','30007','1'),(1883,'3','30008','1'),(1884,'3','30009','1'),(1885,'3','30010','1'),(1886,'3','30011','1'),(1887,'3','30012','1'),(1888,'3','30013','1'),(1889,'3','30014','1'),(1890,'3','30015','1'),(1891,'3','30016','1'),(1892,'3','30017','1'),(1893,'3','30018','1'),(1894,'3','30019','1'),(1895,'3','30020','1'),(1896,'3','30021','1'),(1897,'3','30022','1'),(1898,'3','30023','1'),(1899,'3','30024','1'),(1900,'2','20001','1'),(1901,'2','20002','1'),(1902,'2','20003','1'),(1903,'2','20004','1'),(1904,'2','20005','1'),(1905,'2','20006','1'),(1906,'2','20007','1'),(1907,'2','20008','1'),(1908,'2','20009','1'),(1909,'2','20010','1'),(1910,'2','20011','1'),(1911,'2','20012','1'),(1912,'2','20013','1'),(1913,'2','20014','1'),(1914,'2','20015','1'),(1915,'2','20016','1'),(1916,'2','20017','1'),(1917,'2','20018','1'),(1918,'2','20019','1');
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
INSERT INTO `t_liability` VALUES (6100301,133,8,'1','意外伤害身故','意外伤害身故'),(6100302,132,9,'1','意外伤害残疾','意外伤害身故'),(6100501,132,0,'1','意外伤害身故','意外伤害身故'),(6200101,133,0,'1','意外伤害医疗','意外伤害身故'),(6200201,134,1,'1','住院医疗','意外伤害身故');
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
-- Table structure for table `t_pay_mode_conf`
--

DROP TABLE IF EXISTS `t_pay_mode_conf`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `t_pay_mode_conf` (
  `LIST_ID` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '记录ID',
  `PAY_MODE` varchar(10) DEFAULT NULL COMMENT '收付款方式代码',
  `TR_CODE` varchar(10) DEFAULT NULL COMMENT '天融支付通道代码',
  PRIMARY KEY (`LIST_ID`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8mb4 COMMENT='收付款方式关联配置表';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `t_pay_mode_conf`
--

LOCK TABLES `t_pay_mode_conf` WRITE;
/*!40000 ALTER TABLE `t_pay_mode_conf` DISABLE KEYS */;
INSERT INTO `t_pay_mode_conf` VALUES (1,'02','36'),(2,'03','23'),(3,'04','22');
/*!40000 ALTER TABLE `t_pay_mode_conf` ENABLE KEYS */;
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
) ENGINE=InnoDB AUTO_INCREMENT=135 DEFAULT CHARSET=utf8 COLLATE=utf8_bin COMMENT='保险产品';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `t_product`
--

LOCK TABLES `t_product` WRITE;
/*!40000 ALTER TABLE `t_product` DISABLE KEYS */;
INSERT INTO `t_product` VALUES (132,'6301003','LF','学生意外伤害保险','学生意外伤害保险','学生意外伤害保险','M','2','11','21',NULL,2,NULL,'2016-05-27 18:29:54','2016-05-30 17:42:42',400,'',400,'2016-05-27 18:29:54',400,'2016-05-30 17:42:42'),(133,'6301001','LF','天祥安顺综合意外伤害保险','天祥安顺综合意外伤害保险','天祥安顺综合意外伤害保险','M','2','11','13',NULL,2,NULL,'2016-05-27 18:42:43','2016-05-30 17:42:42',400,'',400,'2016-05-27 18:42:43',400,'2016-05-30 17:42:42'),(134,'6302001','LF','附加学生意外伤害医疗费用补偿保险','附加学生意外伤害医疗费用补偿保险','附加学生意外伤害医疗费用补偿保险','R','2','10','19','29',2,NULL,'2016-05-27 18:42:43','2016-05-27 18:42:43',400,NULL,NULL,'2016-05-27 18:42:43',400,'2016-05-27 18:42:43');
/*!40000 ALTER TABLE `t_product` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2016-06-01 15:14:45
