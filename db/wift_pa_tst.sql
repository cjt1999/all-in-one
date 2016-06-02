-- MySQL dump 10.13  Distrib 5.7.12, for Linux (x86_64)
--
-- Host: localhost    Database: wift_pa_tst
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
-- Table structure for table `d_trans_product_line`
--

DROP TABLE IF EXISTS `d_trans_product_line`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `d_trans_product_line` (
  `LINE_NO` varchar(5) DEFAULT NULL COMMENT '产品线编号',
  `LINE_DESC` varchar(100) DEFAULT NULL COMMENT '产品线描述'
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `d_trans_product_line`
--

LOCK TABLES `d_trans_product_line` WRITE;
/*!40000 ALTER TABLE `d_trans_product_line` DISABLE KEYS */;
/*!40000 ALTER TABLE `d_trans_product_line` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `d_trans_results_code`
--

DROP TABLE IF EXISTS `d_trans_results_code`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `d_trans_results_code` (
  `RESULT_CODE` varchar(1) DEFAULT NULL COMMENT '编码',
  `CODE_DESC` varchar(50) DEFAULT NULL COMMENT '说明'
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `d_trans_results_code`
--

LOCK TABLES `d_trans_results_code` WRITE;
/*!40000 ALTER TABLE `d_trans_results_code` DISABLE KEYS */;
/*!40000 ALTER TABLE `d_trans_results_code` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `d_trans_results_detail_code`
--

DROP TABLE IF EXISTS `d_trans_results_detail_code`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `d_trans_results_detail_code` (
  `CODE` varchar(30) DEFAULT NULL COMMENT '编码',
  `CODE_DESC` varchar(50) DEFAULT NULL COMMENT '错误描述',
  `SYS_CODE` varchar(10) DEFAULT NULL COMMENT '系统'
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `d_trans_results_detail_code`
--

LOCK TABLES `d_trans_results_detail_code` WRITE;
/*!40000 ALTER TABLE `d_trans_results_detail_code` DISABLE KEYS */;
/*!40000 ALTER TABLE `d_trans_results_detail_code` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `d_trans_results_status`
--

DROP TABLE IF EXISTS `d_trans_results_status`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `d_trans_results_status` (
  `CODE` varchar(10) DEFAULT NULL COMMENT '编号',
  `CODE_DESC` varchar(50) DEFAULT NULL COMMENT '描述'
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `d_trans_results_status`
--

LOCK TABLES `d_trans_results_status` WRITE;
/*!40000 ALTER TABLE `d_trans_results_status` DISABLE KEYS */;
/*!40000 ALTER TABLE `d_trans_results_status` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `d_trans_type`
--

DROP TABLE IF EXISTS `d_trans_type`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `d_trans_type` (
  `TRANS_TYPE` varchar(20) DEFAULT NULL COMMENT '交易编号',
  `APP_SYS` varchar(10) DEFAULT NULL COMMENT '服务系统',
  `SUBMIT_SYS` varchar(10) DEFAULT NULL COMMENT '消费系统',
  `PRODUCT_LINE` varchar(5) DEFAULT NULL COMMENT '产品线',
  `DESC` varchar(100) DEFAULT NULL COMMENT '描述'
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `d_trans_type`
--

LOCK TABLES `d_trans_type` WRITE;
/*!40000 ALTER TABLE `d_trans_type` DISABLE KEYS */;
/*!40000 ALTER TABLE `d_trans_type` ENABLE KEYS */;
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
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='应收应付表';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `t_b_arap`
--

LOCK TABLES `t_b_arap` WRITE;
/*!40000 ALTER TABLE `t_b_arap` DISABLE KEYS */;
INSERT INTO `t_b_arap` VALUES ('046e8899f8384316b6ece3407867f45e',NULL,400,'160525212308ffb','160525121265a','111574107445589186',132,NULL,3.00,NULL,NULL,NULL,NULL,NULL,NULL,'41','1','1',NULL,NULL,NULL,NULL,NULL,NULL,'931378278361159661','1',NULL,NULL,NULL,NULL,'2016-05-26 00:00:00',NULL,NULL,NULL,NULL,'2016-05-29 14:13:51',NULL,'2016-05-29 14:13:51','2016-05-29 14:13:51','2016-05-29 14:13:51',720);
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
INSERT INTO `t_b_arap_list` VALUES ('931378715737217511','046e8899f8384316b6ece3407867f45e','160525212308ffb','160525121265a',132,NULL,'111574107445589186',NULL,400,'41',1.73,NULL,NULL,NULL,NULL,'2016-05-26 00:00:00','1','1',NULL,NULL,'2016-05-29 14:13:51',NULL,'2016-05-29 14:13:51','2016-05-29 14:13:51','2016-05-29 14:13:51',720),('931378718917993868','046e8899f8384316b6ece3407867f45e','160525212308ffb','160525121265a',134,NULL,'111574107579014330',NULL,400,'41',1.21,NULL,NULL,NULL,NULL,'2016-05-26 00:00:00','1','1',NULL,NULL,'2016-05-29 14:13:51',NULL,'2016-05-29 14:13:51','2016-05-29 14:13:51','2016-05-29 14:13:51',720),('931378722940298675','046e8899f8384316b6ece3407867f45e','160525212308ffb','160525121265a',133,NULL,'111574109401145115',NULL,400,'41',0.06,NULL,NULL,NULL,NULL,'2016-05-26 00:00:00','1','1',NULL,NULL,'2016-05-29 14:13:51',NULL,'2016-05-29 14:13:51','2016-05-29 14:13:51','2016-05-29 14:13:51',720);
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
INSERT INTO `t_b_payment` VALUES ('931378728807281123','046e8899f8384316b6ece3407867f45e',400,'160525212308ffb','160525121265a',NULL,3.00,NULL,'41','1','1',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'2016-05-26',NULL,0,NULL,720,NULL,'2016-05-29 14:13:52',NULL,'2016-05-29 14:13:52','2016-05-29 14:13:52','2016-05-29 14:13:52');
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
INSERT INTO `t_b_payment_list` VALUES ('931378736339704865','046e8899f8384316b6ece3407867f45e',400,'160525212308ffb','160525121265a',NULL,NULL,NULL,1.73,NULL,'41','1','1',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'2016-05-26',NULL,NULL,720,NULL,'2016-05-29 14:13:52',NULL,'2016-05-29 14:13:52','2016-05-29 14:13:52','2016-05-29 14:13:52'),('931378739708825978','046e8899f8384316b6ece3407867f45e',400,'160525212308ffb','160525121265a',NULL,NULL,NULL,1.21,NULL,'41','1','1',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'2016-05-26',NULL,NULL,720,NULL,'2016-05-29 14:13:52',NULL,'2016-05-29 14:13:52','2016-05-29 14:13:52','2016-05-29 14:13:52'),('931378743974109101','046e8899f8384316b6ece3407867f45e',400,'160525212308ffb','160525121265a',NULL,NULL,NULL,0.06,NULL,'41','1','1',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'2016-05-26',NULL,NULL,720,NULL,'2016-05-29 14:13:52',NULL,'2016-05-29 14:13:52','2016-05-29 14:13:52','2016-05-29 14:13:52');
/*!40000 ALTER TABLE `t_b_payment_list` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `t_gl_integration_job`
--

DROP TABLE IF EXISTS `t_gl_integration_job`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `t_gl_integration_job` (
  `integration_id` varchar(40) DEFAULT NULL COMMENT '主键',
  `response_sys` varchar(40) DEFAULT NULL COMMENT '服务提供系统',
  `request_sys` varchar(40) DEFAULT NULL COMMENT '服务消费系统',
  `app_service` varchar(40) DEFAULT NULL COMMENT '服务',
  `call_method` varchar(10) DEFAULT NULL COMMENT '调用方式',
  `tran_times` bigint(3) DEFAULT NULL COMMENT '交易步数',
  `serverIP` varchar(20) DEFAULT NULL COMMENT '服务IP',
  `serverPort` varchar(10) DEFAULT NULL COMMENT '服务端口',
  `serviceDetail` varchar(100) DEFAULT NULL COMMENT '服务实现方法',
  KEY `integration_id` (`integration_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `t_gl_integration_job`
--

LOCK TABLES `t_gl_integration_job` WRITE;
/*!40000 ALTER TABLE `t_gl_integration_job` DISABLE KEYS */;
/*!40000 ALTER TABLE `t_gl_integration_job` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `t_outsrv_client_trans_type`
--

DROP TABLE IF EXISTS `t_outsrv_client_trans_type`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `t_outsrv_client_trans_type` (
  `list_id` varchar(40) DEFAULT NULL COMMENT '主键',
  `trans_type` varchar(10) DEFAULT NULL COMMENT '交易类型',
  `request_sys` varchar(10) DEFAULT NULL COMMENT '请求系统',
  `response_sys` varchar(10) DEFAULT NULL COMMENT '响应系统',
  `job_id` varchar(40) DEFAULT NULL COMMENT 'job编号',
  `trans_code` varchar(40) DEFAULT NULL COMMENT '交易编号'
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `t_outsrv_client_trans_type`
--

LOCK TABLES `t_outsrv_client_trans_type` WRITE;
/*!40000 ALTER TABLE `t_outsrv_client_trans_type` DISABLE KEYS */;
/*!40000 ALTER TABLE `t_outsrv_client_trans_type` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `t_pa_account`
--

DROP TABLE IF EXISTS `t_pa_account`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `t_pa_account` (
  `KEY_ID` varchar(40) NOT NULL COMMENT '主键',
  `ACCOUNT_ID` varchar(40) DEFAULT NULL COMMENT '上游系统ID',
  `CUSTOMER_ID` bigint(20) DEFAULT NULL COMMENT '客户ID',
  `ACCOUONT_TYPE` varchar(2) DEFAULT NULL COMMENT '账户类型',
  `BANK_CODE` varchar(20) DEFAULT NULL COMMENT '银行代码',
  `ACCOUNT_CODE` varchar(20) DEFAULT NULL COMMENT '银行账户号码',
  `ACCOUNT_NAME` varchar(100) DEFAULT NULL COMMENT '银行账户持有人姓名',
  `ACCOUNT_STATUS` char(1) DEFAULT NULL COMMENT '账号状态',
  `BANK_ACCOUNT_TYPE` char(1) DEFAULT NULL COMMENT '银行账号类型',
  `POLICY_CODE` varchar(40) DEFAULT NULL COMMENT '保单号码',
  `PROPOSAL_ID` varchar(40) DEFAULT NULL COMMENT '投保单ID',
  `SERVICE_TYPE` varchar(3) DEFAULT NULL COMMENT '业务交易来源：承保、退保、理赔',
  `SERVICE_CHANGE_ID` varchar(40) DEFAULT NULL COMMENT '业务交易主键',
  `PAY_MODE` varchar(3) DEFAULT NULL COMMENT '交易支付方式，现金、银行转账',
  `TRANSACTION_DATE` date DEFAULT NULL COMMENT '交易日期',
  `TRANSACTION_AMOUNT` decimal(18,2) DEFAULT NULL COMMENT '交易金额',
  `CURRENCY_ID` varchar(3) DEFAULT NULL COMMENT '交易币种',
  `INSERT_TIME` datetime DEFAULT NULL COMMENT '插入时间',
  `UPDATE_TIME` datetime DEFAULT NULL COMMENT '修改时间',
  `INSERT_BY` bigint(20) DEFAULT NULL COMMENT '插入人员',
  `UPDATE_BY` bigint(20) DEFAULT NULL COMMENT '修改人员',
  `PARTITION_INDI` bigint(20) DEFAULT NULL COMMENT '分库字段',
  PRIMARY KEY (`KEY_ID`),
  UNIQUE KEY `UNI_ACCOUNT_CUST` (`ACCOUNT_ID`,`CUSTOMER_ID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `t_pa_account`
--

LOCK TABLES `t_pa_account` WRITE;
/*!40000 ALTER TABLE `t_pa_account` DISABLE KEYS */;
/*!40000 ALTER TABLE `t_pa_account` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `t_pa_account_log`
--

DROP TABLE IF EXISTS `t_pa_account_log`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `t_pa_account_log` (
  `log_id` varchar(40) NOT NULL COMMENT '主键',
  `change_id` varchar(40) DEFAULT NULL COMMENT '保单变更ID',
  `Log_id_old` varchar(40) DEFAULT NULL COMMENT '原记录logId',
  `is_new` varchar(2) DEFAULT 'Y' COMMENT '是否最新记录',
  `KEY_ID` varchar(40) DEFAULT NULL COMMENT '系统主键',
  `ACCOUNT_ID` bigint(20) DEFAULT NULL COMMENT '上游数据ID',
  `CUSTOMER_ID` bigint(20) DEFAULT NULL COMMENT '客户ID',
  `ACCOUONT_TYPE` varchar(2) DEFAULT NULL COMMENT '账户类型',
  `BANK_CODE` varchar(20) DEFAULT NULL COMMENT '银行代码',
  `ACCOUNT_CODE` varchar(20) DEFAULT NULL COMMENT '银行账户号码',
  `ACCOUNT_NAME` varchar(100) DEFAULT NULL COMMENT '银行账户持有人姓名',
  `ACCOUNT_STATUS` char(1) DEFAULT NULL COMMENT '账号状态',
  `BANK_ACCOUNT_TYPE` char(1) DEFAULT NULL COMMENT '银行账号类型',
  `POLICY_CODE` varchar(40) DEFAULT NULL COMMENT '保单号码',
  `PROPOSAL_ID` varchar(40) DEFAULT NULL COMMENT '投保单ID',
  `SERVICE_TYPE` varchar(3) DEFAULT NULL COMMENT '业务交易来源：承保、退保、理赔',
  `SERVICE_CHANGE_ID` varchar(40) DEFAULT NULL COMMENT '业务交易主键',
  `PAY_MODE` varchar(3) DEFAULT NULL COMMENT '交易支付方式，现金、银行转账',
  `TRANSACTION_DATE` date DEFAULT NULL COMMENT '交易日期',
  `TRANSACTION_AMOUNT` decimal(18,2) DEFAULT NULL COMMENT '交易金额',
  `CURRENCY_ID` varchar(3) DEFAULT NULL COMMENT '交易币种',
  `INSERT_TIME` datetime DEFAULT NULL COMMENT '插入时间',
  `UPDATE_TIME` datetime DEFAULT NULL COMMENT '修改时间',
  `INSERT_BY` bigint(20) DEFAULT NULL COMMENT '插入人员',
  `UPDATE_BY` bigint(20) DEFAULT NULL COMMENT '修改人员',
  `PARTITION_INDI` bigint(20) DEFAULT NULL COMMENT '分库字段',
  PRIMARY KEY (`log_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `t_pa_account_log`
--

LOCK TABLES `t_pa_account_log` WRITE;
/*!40000 ALTER TABLE `t_pa_account_log` DISABLE KEYS */;
/*!40000 ALTER TABLE `t_pa_account_log` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `t_pa_aggregation_detail`
--

DROP TABLE IF EXISTS `t_pa_aggregation_detail`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `t_pa_aggregation_detail` (
  `KEY_ID` varchar(40) NOT NULL COMMENT '主键',
  `LIST_ID` varchar(40) DEFAULT NULL COMMENT '上游系统主键',
  `AGGR_CATEGORY` char(2) DEFAULT NULL COMMENT '风险累积类别',
  `RISK_TYPE` char(2) DEFAULT NULL COMMENT '风险累积细分类别',
  `POLICY_ID` varchar(40) DEFAULT NULL COMMENT '保单主键ID',
  `ITEM_ID` varchar(40) DEFAULT NULL COMMENT '险种主键ID',
  `CUSTOMER_ID` bigint(20) DEFAULT NULL COMMENT '客户ID',
  `RISK_AMOUNT` decimal(18,2) DEFAULT NULL COMMENT '风险累积金额',
  `INSERTED_BY` bigint(20) DEFAULT NULL COMMENT '创建人',
  `UPDATED_BY` bigint(20) DEFAULT NULL COMMENT '修改人',
  `INSERT_TIMESTAMP` datetime DEFAULT NULL COMMENT '插入时间',
  `UPDATE_TIMESTAMP` datetime DEFAULT NULL COMMENT '修改时间',
  `PARTITION_INDI` bigint(20) DEFAULT NULL COMMENT '分库字段',
  PRIMARY KEY (`KEY_ID`),
  KEY `FK_AGGREGATION_POLICY_ID` (`POLICY_ID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `t_pa_aggregation_detail`
--

LOCK TABLES `t_pa_aggregation_detail` WRITE;
/*!40000 ALTER TABLE `t_pa_aggregation_detail` DISABLE KEYS */;
/*!40000 ALTER TABLE `t_pa_aggregation_detail` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `t_pa_aggregation_detail_log`
--

DROP TABLE IF EXISTS `t_pa_aggregation_detail_log`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `t_pa_aggregation_detail_log` (
  `log_id` varchar(40) NOT NULL COMMENT '主键',
  `log_id_old` varchar(40) DEFAULT NULL COMMENT '原记录logID',
  `change_id` varchar(40) DEFAULT NULL COMMENT '保单变更ID',
  `is_renew` varchar(2) DEFAULT 'Y' COMMENT '是否最新记录',
  `KEY_ID` varchar(40) DEFAULT NULL COMMENT '系统ID',
  `LIST_ID` varchar(40) DEFAULT NULL COMMENT '上游数据ID',
  `AGGR_CATEGORY` char(2) DEFAULT NULL COMMENT '风险累积类别',
  `RISK_TYPE` char(2) DEFAULT NULL COMMENT '风险累积细分类别',
  `POLICY_ID` varchar(40) DEFAULT NULL COMMENT '保单主键ID',
  `ITEM_ID` varchar(40) DEFAULT NULL COMMENT '险种主键ID',
  `CUSTOMER_ID` bigint(20) DEFAULT NULL COMMENT '客户ID',
  `RISK_AMOUNT` decimal(18,2) DEFAULT NULL COMMENT '风险累积金额',
  `INSERTED_BY` bigint(20) DEFAULT NULL COMMENT '创建人',
  `UPDATED_BY` bigint(20) DEFAULT NULL COMMENT '修改人',
  `INSERT_TIMESTAMP` datetime DEFAULT NULL COMMENT '插入时间',
  `UPDATE_TIMESTAMP` datetime DEFAULT NULL COMMENT '修改时间',
  `PARTITION_INDI` bigint(20) DEFAULT NULL COMMENT '分库字段',
  PRIMARY KEY (`log_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `t_pa_aggregation_detail_log`
--

LOCK TABLES `t_pa_aggregation_detail_log` WRITE;
/*!40000 ALTER TABLE `t_pa_aggregation_detail_log` DISABLE KEYS */;
/*!40000 ALTER TABLE `t_pa_aggregation_detail_log` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `t_pa_cash`
--

DROP TABLE IF EXISTS `t_pa_cash`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `t_pa_cash` (
  `List_ID` varchar(40) NOT NULL COMMENT '主键',
  `CASH_ID` bigint(20) DEFAULT NULL COMMENT '实收实付费用ID',
  `EX_TRANS_ID` varchar(32) DEFAULT NULL COMMENT '跨系统交易ID UUID 业务端产生',
  `BUSINESS_CUSTOMER_ID` bigint(20) DEFAULT NULL COMMENT '业务客户ID',
  `ACCOUNT_ID` int(11) DEFAULT NULL COMMENT '账户信息ID',
  `ORDER_ID` bigint(20) DEFAULT NULL COMMENT '订单交易号',
  `ORGAN_ID` bigint(20) DEFAULT NULL COMMENT '租户ID',
  `FEE_TYPE` varchar(10) DEFAULT NULL COMMENT '费用类型代码',
  `BUSINESS_CODE` varchar(20) DEFAULT NULL COMMENT '业务编码(投保单号、保单号、保全申请号、理赔号等)',
  `APPLY_CODE` varchar(20) DEFAULT NULL COMMENT '投保单号码',
  `POLICY_CODE` varchar(20) DEFAULT NULL COMMENT '保单号',
  `DERIV_TYPE` varchar(3) DEFAULT NULL COMMENT '业务来源：001:契约',
  `CITY_CODE` varchar(8) DEFAULT NULL COMMENT '保单所属地区',
  `ORGAN_CODE` varchar(8) DEFAULT NULL COMMENT '保单管理机构',
  `AGENT_CODE` varchar(20) DEFAULT NULL COMMENT '代理人员CODE',
  `POLICY_TYPE` char(1) DEFAULT NULL COMMENT '保单类型：个/团/汇缴',
  `CHANNEL_TYPE` char(2) DEFAULT NULL COMMENT '销售渠道',
  `PRODUCT_ID` bigint(20) DEFAULT NULL COMMENT '产品id',
  `CUSTOMER_ID` bigint(20) DEFAULT NULL COMMENT '客户ID',
  `PAY_FLAG` varchar(10) DEFAULT NULL COMMENT '收付类型 1:收费2:付费',
  `PAY_MODE` varchar(2) DEFAULT NULL COMMENT '收付方式',
  `OFFERS_INFO` varchar(40) DEFAULT NULL COMMENT '优惠信息：优惠卡卡号、金豆积分等优惠',
  `CURRENCY` varchar(10) DEFAULT NULL COMMENT '币种',
  `AMOUNT` decimal(12,2) DEFAULT NULL COMMENT '金额',
  `FEE_STATUS` varchar(2) DEFAULT NULL COMMENT '收付状态\n            0:待收付\n            1:已收付\n            2:收付中\n            3:已取消\n            4:申请回退\n            5:回退中\n            6:已回退',
  `APPLY_TIME` datetime DEFAULT NULL COMMENT '费用申请时间',
  `FINISH_TIME` date DEFAULT NULL COMMENT '费用到账时间',
  `POSTED` char(2) DEFAULT NULL COMMENT '记账状态',
  `BELNR` varchar(20) DEFAULT NULL COMMENT '凭证号',
  `CREATE_BY` bigint(20) DEFAULT NULL COMMENT '记录创建人',
  `CREATE_TIME` datetime DEFAULT NULL COMMENT '记录创建时间',
  `UPDATE_BY` bigint(20) DEFAULT NULL COMMENT '记录更新人',
  `UPDATE_TIME` datetime DEFAULT NULL COMMENT '记录更新时间',
  `CREATE_TIMESTAMP` datetime DEFAULT NULL COMMENT '记录创建时间戳',
  `UPDATE_TIMESTAMP` datetime DEFAULT NULL COMMENT '记录更新时间戳',
  `PARTITION_INDI` bigint(20) DEFAULT NULL COMMENT '分库字段',
  `CHANGE_ID` varchar(40) DEFAULT NULL COMMENT '保单变更编号',
  PRIMARY KEY (`List_ID`),
  UNIQUE KEY `UNI_POLICY_CASH` (`CASH_ID`,`APPLY_CODE`,`POLICY_CODE`),
  KEY `IDX_POLICY_CODE` (`APPLY_CODE`,`POLICY_CODE`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='实收实付表';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `t_pa_cash`
--

LOCK TABLES `t_pa_cash` WRITE;
/*!40000 ALTER TABLE `t_pa_cash` DISABLE KEYS */;
/*!40000 ALTER TABLE `t_pa_cash` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `t_pa_customer`
--

DROP TABLE IF EXISTS `t_pa_customer`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `t_pa_customer` (
  `KEY_ID` varchar(40) NOT NULL COMMENT '系统主键',
  `CUSTOMER_ID` bigint(20) DEFAULT NULL COMMENT '上游数据主键',
  `NAME` varchar(50) DEFAULT NULL COMMENT '客户名称',
  `GENDER` varchar(10) DEFAULT NULL COMMENT '客户性别',
  `BIRTHDAY` date DEFAULT NULL COMMENT '生日',
  `CERTI_TYPE` varchar(10) DEFAULT NULL COMMENT '证件类型',
  `CERTI_CODE` varchar(40) DEFAULT NULL COMMENT '证件号码',
  `CERTI_VALID_START_DATE` date DEFAULT NULL COMMENT '证件有效开始日期',
  `CERTI_VALID_END_DATE` date DEFAULT NULL COMMENT '证件有效结束日期',
  `MARRIAGE_ID` varchar(10) DEFAULT NULL COMMENT '婚姻状态',
  `EDUCATION_ID` varchar(10) DEFAULT NULL COMMENT '学历',
  `HEIGHT` decimal(4,2) DEFAULT NULL COMMENT '身高',
  `WEIGHT` decimal(5,2) DEFAULT NULL COMMENT '体重',
  `INCOME` decimal(18,2) DEFAULT NULL COMMENT '年收入',
  `NATIONALITY` varchar(10) DEFAULT NULL COMMENT '名族',
  `COMPANY_NAME` varchar(100) DEFAULT NULL COMMENT '单位名称',
  `JOB_NAME` varchar(100) DEFAULT NULL COMMENT '职业名称',
  `INDUSTRY_ID` varchar(10) DEFAULT NULL COMMENT '行业代码',
  `JOB_CATE_ID` varchar(10) DEFAULT NULL COMMENT '当前职业类别',
  `COMPANY_KIND` varchar(10) DEFAULT NULL COMMENT '企业性质',
  `ACADEMIC_TITLE` varchar(10) DEFAULT NULL COMMENT '职称',
  `SMOKING` varchar(10) DEFAULT NULL COMMENT '是否吸烟',
  `Social_Security_Number` varchar(30) DEFAULT NULL COMMENT '社保号码',
  `IS_RETIRED` varchar(10) DEFAULT NULL COMMENT '是否退休',
  `customer_level` varchar(2) DEFAULT NULL COMMENT '客户等级',
  `ADDRESS_ID` varchar(40) DEFAULT NULL COMMENT '地址ID',
  `MOBILE` varchar(20) DEFAULT NULL COMMENT '默认手机号码',
  `OFFICE_TEL` varchar(40) DEFAULT NULL COMMENT '公司联系电话',
  `HOME_TEL` varchar(40) DEFAULT NULL COMMENT '家庭联系电话',
  `FAX` varchar(40) DEFAULT NULL COMMENT '传真号码',
  `FIRST_NAME` varchar(40) DEFAULT NULL COMMENT 'first_name',
  `MID_NAME` varchar(40) DEFAULT NULL COMMENT 'mid name',
  `LAST_NAME` varchar(40) DEFAULT NULL COMMENT 'last name',
  `ALIAS_NAME` varchar(100) DEFAULT NULL COMMENT '别名',
  `RELIGION_CODE` varchar(3) DEFAULT NULL COMMENT '宗教信仰',
  `CHILD_COUNT` decimal(2,0) DEFAULT NULL COMMENT '子女情况',
  `STATUS` varchar(10) DEFAULT NULL COMMENT '客户状态',
  `DEATH_DATE` date DEFAULT NULL COMMENT '死亡日期',
  `EMAIL_1` varchar(100) DEFAULT NULL COMMENT 'Email1',
  `EMAIL_2` varchar(100) DEFAULT NULL COMMENT 'Email2',
  `QQ` varchar(50) DEFAULT NULL COMMENT 'QQ号码',
  `WEIXIN` varchar(50) DEFAULT NULL COMMENT '微信号码',
  `WeiBo` varchar(100) DEFAULT NULL COMMENT '微博',
  `Web` varchar(200) DEFAULT NULL COMMENT '网址',
  `INSERT_TIME` datetime DEFAULT NULL COMMENT '插入时间',
  `UPDATE_TIME` datetime DEFAULT NULL COMMENT '修改时间',
  `INSERT_BY` bigint(20) DEFAULT NULL COMMENT '插入人员',
  `UPDATE_BY` bigint(20) DEFAULT NULL COMMENT '修改人员',
  `PARTITION_INDI` bigint(20) DEFAULT NULL COMMENT '分库字段',
  PRIMARY KEY (`KEY_ID`),
  UNIQUE KEY `UNI_CUSTOMER` (`CUSTOMER_ID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `t_pa_customer`
--

LOCK TABLES `t_pa_customer` WRITE;
/*!40000 ALTER TABLE `t_pa_customer` DISABLE KEYS */;
INSERT INTO `t_pa_customer` VALUES ('d2418f3b7a8b44029127b95d8d084864',720,'豆腐干豆腐','1','1991-05-23','111','370705199105232516',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'2016-05-29 14:13:51','2016-05-29 14:13:51',NULL,NULL,720);
/*!40000 ALTER TABLE `t_pa_customer` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `t_pa_customer_address`
--

DROP TABLE IF EXISTS `t_pa_customer_address`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `t_pa_customer_address` (
  `KEY_ID` varchar(40) NOT NULL COMMENT '上游数据主键',
  `ADDRESS_ID` varchar(40) DEFAULT NULL COMMENT '系统主键',
  `CUSTOMER_ID` bigint(20) DEFAULT NULL COMMENT '客户ID',
  `ADDRESS_TYPE` varchar(10) DEFAULT NULL COMMENT '地址类型',
  `ADDRESS_FORMAT_TYPE` varchar(10) DEFAULT NULL COMMENT '地址格式类型Address Format(1 FREE  2.FIX  FORMAT FOR SG  4. POST FORMAT)',
  `COUNTRY_CODE` varchar(3) DEFAULT NULL COMMENT '国家代码',
  `ADDRESS_FORMAT_1` varchar(200) DEFAULT NULL COMMENT '标准地址：代表省/直辖市',
  `ADDRESS_FORMAT_2` varchar(100) DEFAULT NULL COMMENT '标准地址：代表市',
  `ADDRESS_FORMAT_3` varchar(100) DEFAULT NULL COMMENT '标准地址：代表区/县',
  `ADDRESS_FORMAT_4` varchar(100) DEFAULT NULL COMMENT '标准地址：输入地址',
  `ADDRESS_1` varchar(100) DEFAULT NULL COMMENT '无格式地址1',
  `ADDRESS_2` varchar(100) DEFAULT NULL COMMENT '无格式地址2',
  `POST_CODE` varchar(10) DEFAULT NULL COMMENT '邮编',
  `CONTACT_PERSON` varchar(20) DEFAULT NULL COMMENT '联系人',
  `CONTACT_TEL` varchar(20) DEFAULT NULL COMMENT '联系电话',
  `CONTACT_MOBILE` varchar(20) DEFAULT NULL COMMENT '联系手机',
  `ADDRESS_STATUS` varchar(10) DEFAULT '1' COMMENT '地址状态(1-有效,2-无效)',
  `TEL_FORMAT_TYPE` varchar(10) DEFAULT NULL COMMENT 'Tel Format（(1 FREE  2.FIX ）',
  `TEL_FORMAT_1` varchar(10) DEFAULT NULL COMMENT '国家代码号',
  `TEL_FORMAT_2` varchar(10) DEFAULT NULL COMMENT '区号',
  `TEL_FORMAT_3` varchar(10) DEFAULT NULL COMMENT '电话号码',
  `TEL_FORMAT_4` varchar(10) DEFAULT NULL COMMENT '分机号码',
  `INSERT_TIME` datetime DEFAULT NULL COMMENT '插入时间',
  `UPDATE_TIME` datetime DEFAULT NULL COMMENT '更新时间',
  `INSERT_BY` bigint(20) DEFAULT NULL COMMENT '创建人',
  `UPDATE_BY` bigint(20) DEFAULT NULL COMMENT '更新人',
  `PARTITION_INDI` bigint(20) DEFAULT NULL COMMENT '分库字段',
  PRIMARY KEY (`KEY_ID`),
  UNIQUE KEY `UNI_CUSTOMER_ADDRESS_CUST_ID` (`ADDRESS_ID`,`CUSTOMER_ID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `t_pa_customer_address`
--

LOCK TABLES `t_pa_customer_address` WRITE;
/*!40000 ALTER TABLE `t_pa_customer_address` DISABLE KEYS */;
INSERT INTO `t_pa_customer_address` VALUES ('ff9dbcad422e4622aa1da6e616c9990a',NULL,720,NULL,NULL,NULL,'110000','110100','110102','西环广场T1',NULL,NULL,NULL,NULL,NULL,NULL,'1',NULL,NULL,NULL,NULL,NULL,'2016-05-29 14:13:51','2016-05-29 14:13:51',NULL,NULL,720);
/*!40000 ALTER TABLE `t_pa_customer_address` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `t_pa_customer_address_log`
--

DROP TABLE IF EXISTS `t_pa_customer_address_log`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `t_pa_customer_address_log` (
  `KEY_ID` varchar(40) NOT NULL COMMENT '主键',
  `LOG_ID` varchar(40) DEFAULT NULL COMMENT '上游系统主键',
  `change_id` varchar(40) DEFAULT NULL COMMENT '保单变更ID',
  `LOG_ID_OLD` varchar(40) DEFAULT NULL COMMENT '上一笔记录LogID',
  `IS_NEW` varchar(2) DEFAULT 'Y' COMMENT '是否最新记录',
  `ADDRESS_ID` varchar(40) DEFAULT NULL COMMENT '主表ID',
  `CUSTOMER_ID` bigint(20) DEFAULT NULL COMMENT '客户ID',
  `ADDRESS_TYPE` varchar(10) DEFAULT NULL COMMENT '地址类型',
  `ADDRESS_FORMAT_TYPE` varchar(10) DEFAULT NULL COMMENT '地址格式类型',
  `COUNTRY_CODE` varchar(3) DEFAULT NULL COMMENT '国家代码',
  `ADDRESS_FORMAT_1` varchar(200) DEFAULT NULL COMMENT '标准地址：代表省/直辖市',
  `ADDRESS_FORMAT_2` varchar(100) DEFAULT NULL COMMENT '标准地址：代表市',
  `ADDRESS_FORMAT_3` varchar(100) DEFAULT NULL COMMENT '标准地址：代表区/县',
  `ADDRESS_FORMAT_4` varchar(100) DEFAULT NULL COMMENT '标准地址：输入地址',
  `ADDRESS_1` varchar(100) DEFAULT NULL COMMENT '无格式地址1',
  `ADDRESS_2` varchar(100) DEFAULT NULL COMMENT '无格式地址2',
  `POST_CODE` varchar(10) DEFAULT NULL COMMENT '邮编',
  `CONTACT_PERSON` varchar(20) DEFAULT NULL COMMENT '联系人',
  `CONTACT_TEL` varchar(20) DEFAULT NULL COMMENT '联系电话',
  `CONTACT_MOBILE` varchar(20) DEFAULT NULL COMMENT '联系手机',
  `ADDRESS_STATUS` varchar(10) DEFAULT NULL COMMENT '地址状态(1-有效,2-无效)',
  `TEL_FORMAT_TYPE` varchar(10) DEFAULT NULL COMMENT 'Tel Format（(1 FREE  2.FIX ）',
  `TEL_FORMAT_1` varchar(10) DEFAULT NULL COMMENT '国家代码号',
  `TEL_FORMAT_2` varchar(10) DEFAULT NULL COMMENT '区号',
  `TEL_FORMAT_3` varchar(10) DEFAULT NULL COMMENT '电话号码',
  `TEL_FORMAT_4` varchar(10) DEFAULT NULL COMMENT '分机号码',
  `INSERT_TIME` datetime DEFAULT NULL COMMENT '插入时间',
  `UPDATE_TIME` datetime DEFAULT NULL COMMENT '更新时间',
  `INSERT_BY` bigint(20) DEFAULT NULL COMMENT '创建人',
  `UPDATE_BY` bigint(20) DEFAULT NULL COMMENT '更新人',
  `PARTITION_INDI` bigint(20) DEFAULT NULL COMMENT '分库字段',
  PRIMARY KEY (`KEY_ID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `t_pa_customer_address_log`
--

LOCK TABLES `t_pa_customer_address_log` WRITE;
/*!40000 ALTER TABLE `t_pa_customer_address_log` DISABLE KEYS */;
INSERT INTO `t_pa_customer_address_log` VALUES ('3cf44e950fe34bbbb812843bc6d0dcc8','e893ae48b2034e13acd264dca956b79a','931378278361159661',NULL,'Y',NULL,720,NULL,NULL,NULL,'110000','110100','110102','西环广场T1',NULL,NULL,NULL,NULL,NULL,NULL,'1',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,720);
/*!40000 ALTER TABLE `t_pa_customer_address_log` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `t_pa_customer_log`
--

DROP TABLE IF EXISTS `t_pa_customer_log`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `t_pa_customer_log` (
  `log_id` varchar(40) NOT NULL COMMENT '主键',
  `change_id` varchar(40) DEFAULT NULL COMMENT '保单变更ID',
  `log_id_old` varchar(40) DEFAULT NULL COMMENT '原记录log ID',
  `is_new` varchar(2) DEFAULT NULL COMMENT '是否最新记录',
  `KEY_ID` varchar(40) DEFAULT NULL COMMENT '系统主表主键',
  `CUSTOMER_ID` bigint(20) DEFAULT NULL COMMENT '上游数据主键',
  `NAME` varchar(50) DEFAULT NULL COMMENT '客户名称',
  `GENDER` varchar(10) DEFAULT NULL COMMENT '客户性别',
  `BIRTHDAY` date DEFAULT NULL COMMENT '生日',
  `CERTI_TYPE` varchar(10) DEFAULT NULL COMMENT '证件类型',
  `CERTI_CODE` varchar(40) DEFAULT NULL COMMENT '证件号码',
  `CERTI_VALID_START_DATE` date DEFAULT NULL COMMENT '证件有效开始日期',
  `CERTI_VALID_END_DATE` date DEFAULT NULL COMMENT '证件有效结束日期',
  `MARRIAGE_ID` varchar(10) DEFAULT NULL COMMENT '婚姻状态',
  `EDUCATION_ID` varchar(10) DEFAULT NULL COMMENT '学历',
  `HEIGHT` decimal(4,2) DEFAULT NULL COMMENT '身高',
  `WEIGHT` decimal(5,2) DEFAULT NULL COMMENT '体重',
  `INCOME` decimal(18,2) DEFAULT NULL COMMENT '年收入',
  `NATIONALITY` varchar(10) DEFAULT NULL COMMENT '名族',
  `COMPANY_NAME` varchar(100) DEFAULT NULL COMMENT '单位名称',
  `JOB_NAME` varchar(100) DEFAULT NULL COMMENT '职业名称',
  `INDUSTRY_ID` varchar(10) DEFAULT NULL COMMENT '行业代码',
  `JOB_CATE_ID` varchar(10) DEFAULT NULL COMMENT '当前职业类别',
  `COMPANY_KIND` varchar(20) DEFAULT NULL COMMENT '企业性质',
  `ACADEMIC_TITLE` varchar(10) DEFAULT NULL COMMENT '职称',
  `SMOKING` varchar(10) DEFAULT NULL COMMENT '是否吸烟',
  `Social_Security_Number` char(30) DEFAULT NULL COMMENT '社保号码',
  `IS_RETIRED` varchar(10) DEFAULT NULL COMMENT '是否退休',
  `customer_level` varchar(2) DEFAULT NULL COMMENT '客户等级',
  `ADDRESS_ID` varchar(40) DEFAULT NULL COMMENT '地址ID',
  `MOBILE` varchar(20) DEFAULT NULL COMMENT '默认手机号码',
  `OFFICE_TEL` varchar(40) DEFAULT NULL COMMENT '公司联系电话',
  `HOME_TEL` varchar(40) DEFAULT NULL COMMENT '家庭联系电话',
  `FAX` varchar(40) DEFAULT NULL COMMENT '传真号码',
  `FIRST_NAME` varchar(40) DEFAULT NULL COMMENT 'first_name',
  `MID_NAME` varchar(40) DEFAULT NULL COMMENT 'mid name',
  `LAST_NAME` varchar(40) DEFAULT NULL COMMENT 'last name',
  `ALIAS_NAME` varchar(100) DEFAULT NULL COMMENT '别名',
  `RELIGION_CODE` varchar(3) DEFAULT NULL COMMENT '宗教信仰',
  `CHILD_COUNT` decimal(2,0) DEFAULT NULL COMMENT '子女情况',
  `STATUS` varchar(10) DEFAULT NULL COMMENT '客户状态',
  `DEATH_DATE` date DEFAULT NULL COMMENT '死亡日期',
  `EMAIL_1` varchar(100) DEFAULT NULL COMMENT 'Email1',
  `EMAIL_2` varchar(100) DEFAULT NULL COMMENT 'Email2',
  `QQ` varchar(50) DEFAULT NULL COMMENT 'QQ号码',
  `WEIXIN` varchar(50) DEFAULT NULL COMMENT '微信号码',
  `WeiBo` varchar(100) DEFAULT NULL COMMENT '微博',
  `Web` varchar(200) DEFAULT NULL COMMENT '网址',
  `INSERT_TIME` datetime DEFAULT NULL COMMENT '插入时间',
  `UPDATE_TIME` datetime DEFAULT NULL COMMENT '修改时间',
  `INSERT_BY` bigint(20) DEFAULT NULL COMMENT '插入人员',
  `UPDATE_BY` bigint(20) DEFAULT NULL COMMENT '修改人员',
  `PARTITION_INDI` bigint(20) DEFAULT NULL COMMENT '分库字段',
  PRIMARY KEY (`log_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `t_pa_customer_log`
--

LOCK TABLES `t_pa_customer_log` WRITE;
/*!40000 ALTER TABLE `t_pa_customer_log` DISABLE KEYS */;
INSERT INTO `t_pa_customer_log` VALUES ('1949f719fcd5443784411d5969a97627','931378278361159661',NULL,'Y','bdf883d7b55a448dbd475d7c59e61d95',720,'豆腐干豆腐','1','1991-05-23','111','370705199105232516',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,720);
/*!40000 ALTER TABLE `t_pa_customer_log` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `t_pa_customer_represent`
--

DROP TABLE IF EXISTS `t_pa_customer_represent`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `t_pa_customer_represent` (
  `KEY_ID` varchar(40) NOT NULL COMMENT '主键',
  `POLICY_ID` varchar(40) DEFAULT NULL COMMENT '保单ID',
  `REPRESENTATION_ID` varchar(40) DEFAULT NULL COMMENT '告知代码',
  `CUSTOMER_ID` varchar(40) DEFAULT NULL COMMENT '用户ID',
  `YES_NO` varchar(10) DEFAULT NULL COMMENT '是否已告知',
  `NOTES` varchar(400) DEFAULT NULL COMMENT '说明字段',
  `FILL_1` varchar(400) DEFAULT NULL COMMENT '填空',
  `FILL_2` varchar(400) DEFAULT NULL COMMENT '填空',
  `FILL_3` varchar(400) DEFAULT NULL COMMENT '填空',
  `FILL_4` varchar(400) DEFAULT NULL COMMENT '填空',
  `FILL_5` varchar(400) DEFAULT NULL COMMENT '填空',
  `FILL_6` varchar(400) DEFAULT NULL COMMENT '填空',
  `FILL_7` varchar(400) DEFAULT NULL COMMENT '填空',
  `FILL_8` varchar(400) DEFAULT NULL COMMENT '填空',
  `FILL_9` varchar(400) DEFAULT NULL COMMENT '填空',
  `FILL_10` varchar(400) DEFAULT NULL COMMENT '填空',
  `PARTITION_INDI` bigint(20) DEFAULT NULL COMMENT '分库字段',
  PRIMARY KEY (`KEY_ID`),
  KEY `FK_REPRESENT_POLICY_ID` (`POLICY_ID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `t_pa_customer_represent`
--

LOCK TABLES `t_pa_customer_represent` WRITE;
/*!40000 ALTER TABLE `t_pa_customer_represent` DISABLE KEYS */;
/*!40000 ALTER TABLE `t_pa_customer_represent` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `t_pa_customer_risk_sum`
--

DROP TABLE IF EXISTS `t_pa_customer_risk_sum`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `t_pa_customer_risk_sum` (
  `KEY_ID` varchar(40) NOT NULL COMMENT '系统ID',
  `LIST_ID` varchar(40) DEFAULT NULL COMMENT '上游数据ID',
  `RISK_CATEGORY` char(2) DEFAULT NULL COMMENT '风险累积类别',
  `PROPOSAL_ID` varchar(40) DEFAULT NULL COMMENT '投保单ID',
  `CUSTOMER_ID` varchar(40) DEFAULT NULL COMMENT '客户ID',
  `RISK_AMOUNT` decimal(18,2) DEFAULT NULL COMMENT '风险累积金额',
  `INSERT_TIME` datetime DEFAULT NULL COMMENT '创建时间',
  `UPDATE_TIME` datetime DEFAULT NULL COMMENT '更新时间',
  `INSERT_BY` bigint(20) DEFAULT NULL COMMENT '创建人',
  `UPDATE_BY` bigint(20) DEFAULT NULL COMMENT '更新人',
  `PARTITION_INDI` bigint(20) DEFAULT NULL COMMENT '分库字段',
  PRIMARY KEY (`KEY_ID`),
  UNIQUE KEY `UNI_RISK_SUM_CUST` (`PROPOSAL_ID`,`CUSTOMER_ID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `t_pa_customer_risk_sum`
--

LOCK TABLES `t_pa_customer_risk_sum` WRITE;
/*!40000 ALTER TABLE `t_pa_customer_risk_sum` DISABLE KEYS */;
/*!40000 ALTER TABLE `t_pa_customer_risk_sum` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `t_pa_customer_role`
--

DROP TABLE IF EXISTS `t_pa_customer_role`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `t_pa_customer_role` (
  `CONTRACT_ROLE_ID` varchar(40) NOT NULL COMMENT '主键ID',
  `CUSTOMER_ID` varchar(40) DEFAULT NULL COMMENT '客户ID',
  `POLICY_CODE` varchar(40) DEFAULT NULL COMMENT '保单号码',
  `PROPOSAL_ID` varchar(40) DEFAULT NULL COMMENT '投保单ID',
  `SERVICE_TYPE` varchar(10) DEFAULT NULL COMMENT '业务交易来源：承保、退保、理赔',
  `SERVICE_CHANGE_ID` varchar(40) DEFAULT NULL COMMENT '业务交易主键',
  `ROLE_TYPE` varchar(10) DEFAULT NULL COMMENT '投保人、被保人、受益人',
  `POLICY_STATUS` varchar(3) DEFAULT NULL COMMENT '保单当前状态',
  `RELATIONSHIP` varchar(2) DEFAULT NULL COMMENT '与投保人关系',
  `SA` decimal(18,2) DEFAULT NULL COMMENT '保单保额',
  `PREMIUM` decimal(18,2) DEFAULT NULL COMMENT '保单保费',
  `INSERT_TIME` datetime DEFAULT NULL COMMENT '创建时间',
  `UPDATE_TIME` datetime DEFAULT NULL COMMENT '更新时间',
  `INSERT_BY` bigint(20) DEFAULT NULL COMMENT '创建人',
  `UPDATE_BY` bigint(20) DEFAULT NULL COMMENT '更新人',
  `PARTITION_INDI` bigint(20) DEFAULT NULL COMMENT '分库字段',
  PRIMARY KEY (`CONTRACT_ROLE_ID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `t_pa_customer_role`
--

LOCK TABLES `t_pa_customer_role` WRITE;
/*!40000 ALTER TABLE `t_pa_customer_role` DISABLE KEYS */;
INSERT INTO `t_pa_customer_role` VALUES ('3dbd79f985af4310a5b5f9a3fb66b3c0','720','160525121265a','160525212308ffb','','931378278361159661','2','01',NULL,NULL,NULL,'2016-05-29 14:13:52','2016-05-29 14:13:52',NULL,NULL,720),('d293e72660624d54b6c04f1132caf6cb','720','160525121265a','160525212308ffb','','931378278361159661','1','01','00',NULL,NULL,'2016-05-29 14:13:52','2016-05-29 14:13:52',NULL,NULL,720);
/*!40000 ALTER TABLE `t_pa_customer_role` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `t_pa_liability_change`
--

DROP TABLE IF EXISTS `t_pa_liability_change`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `t_pa_liability_change` (
  `KEY_ID` varchar(40) NOT NULL COMMENT '系统主键',
  `POLICY_ID` varchar(40) DEFAULT NULL COMMENT '保单ID',
  `CHANGE_DATE` datetime DEFAULT NULL COMMENT '变更时间',
  `OLD_POLICY_STATUS` varchar(10) DEFAULT NULL COMMENT '保单状态：承保、失效、终止',
  `NEW_POLICY_STATUS` varchar(10) DEFAULT NULL COMMENT '保单状态：承保、失效、终止',
  `LOG_ID` bigint(20) DEFAULT NULL COMMENT '变更ID',
  `CREATE_BY` bigint(20) DEFAULT NULL COMMENT '创建人',
  `CREATE_TIME` datetime DEFAULT NULL COMMENT '创建用户时间',
  `CREATE_TIMESTAMP` datetime DEFAULT NULL COMMENT '创建系统时间',
  `UPDATE_BY` bigint(20) DEFAULT NULL COMMENT '更新人',
  `UPDATE_TIME` datetime DEFAULT NULL COMMENT '更新用户时间',
  `UPDATE_TIMESTAMP` datetime DEFAULT NULL COMMENT '更新系统时间',
  `PARTITION_INDI` bigint(20) DEFAULT NULL COMMENT '分库字段',
  PRIMARY KEY (`KEY_ID`),
  KEY `FK_LIABILITY_CHANGE_POLICY_ID` (`POLICY_ID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `t_pa_liability_change`
--

LOCK TABLES `t_pa_liability_change` WRITE;
/*!40000 ALTER TABLE `t_pa_liability_change` DISABLE KEYS */;
/*!40000 ALTER TABLE `t_pa_liability_change` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `t_pa_outsrv_trans`
--

DROP TABLE IF EXISTS `t_pa_outsrv_trans`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `t_pa_outsrv_trans` (
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
-- Dumping data for table `t_pa_outsrv_trans`
--

LOCK TABLES `t_pa_outsrv_trans` WRITE;
/*!40000 ALTER TABLE `t_pa_outsrv_trans` DISABLE KEYS */;
INSERT INTO `t_pa_outsrv_trans` VALUES ('871c68a7-6530-444d-8c94-73b362d0836d',NULL,'PAPROP00101','PROP','PA','PAPROP00101','160525121265a',NULL,'160525212308ffb',NULL,'2016-05-29 13:26:45:888','2016-05-29 13:26:47:213',1325,'2','1','{\"transNo\":\"7cf6bd91dfe04f69b5b7d28dafb2f0ed\",\"transType\":\"PAPROP00101\",\"transDate\":\"2016-05-25\",\"transTime\":\"2016-05-25 08:00:00\",\"submitChannel\":\"PROP\",\"operatorId\":null,\"policy\":{\"policyId\":null,\"policyNo\":\"160525121265a\",\"proposalId\":\"11157426127945\",\"proposalNo\":\"160525212308ffb\",\"organId\":400,\"policyChannel\":null,\"salesChannel\":null,\"subSalesChannel\":null,\"campaignCode\":\"{\\\"mktPolicyInfo\\\":{\\\"mktPolicyId\\\":null,\\\"mktProdId\\\":12,\\\"planName\\\":\\\"计划1\\\",\\\"insuredGender\\\":null,\\\"insuredArea\\\":null,\\\"propCopies\\\":null,\\\"propLevel\\\":null,\\\"amount\\\":null,\\\"insuredSocial\\\":null,\\\"insuredAge\\\":null,\\\"coveragePeriodType\\\":null,\\\"coveragePeriod\\\":\\\"1D\\\",\\\"chargePeriodType\\\":null,\\\"chargePeriod\\\":null,\\\"chargeFreq\\\":null,\\\"premium\\\":\\\"3\\\",\\\"mktCoverageInfo\\\":null}}\",\"introducerId\":null,\"applicationDate\":\"2016-05-25\",\"effectiveDate\":\"2016-05-26\",\"issueDate\":null,\"expiryDate\":null,\"holderCustId\":720,\"policyStatus\":\"01\",\"payStatus\":null,\"policyYear\":null,\"statusChangeReason\":null,\"payFrequency\":null,\"payMode\":null,\"payAccount\":null,\"payModeRenew\":null,\"payBankCode\":null,\"submitSystem\":null,\"submitChannel\":null,\"verifyReturnId\":null,\"uwReturnId\":null,\"uwDate\":null,\"uwUserId\":null,\"issueUserId\":null,\"policyDeliveryMode\":null,\"printTimes\":null,\"lastestPrintTime\":null,\"endorsement\":null,\"callbackDate\":null,\"callbackType\":null,\"verifyReturnNotes\":null,\"uwReturnNotes\":null},\"products\":[{\"itemId\":\"111574107445589186\",\"propItemId\":\"111574107445589186\",\"mainItemId\":null,\"policyId\":null,\"productId\":132,\"insurantId\":\"41a69c9e24c64d01b50904aa3a31dca1\",\"organId\":400,\"sumAssured\":200000,\"units\":null,\"applicationDate\":\"2016-05-25\",\"effectiveDate\":null,\"issueDate\":null,\"expiryDate\":null,\"payMode\":null,\"payModeRenew\":null,\"payDueDate\":null,\"policyYear\":null,\"liabilityState\":null,\"statusChangeReason\":null,\"payStatus\":null,\"payPeriod\":null,\"payYear\":null,\"payUpDate\":null,\"coverPeriodType\":\"D\",\"coveragePeriod\":1,\"premCalcWay\":null,\"stdPremBf\":0.79,\"discntedStdPremBf\":1.73,\"extraStdPremBf\":0,\"stdPremAf\":0.79,\"discntedStdPremAf\":1.73,\"extraPremAf\":0,\"totalPremAf\":1.73,\"stdPremAn\":0,\"discntedStdPremAn\":0,\"discntedRate\":2.19,\"extraStdPremAn\":0,\"nextStdPremBf\":null,\"nextDiscntedStdPremBf\":null,\"nextExtraStdPremBf\":null,\"nextStdPremAf\":null,\"nextDiscntedStdPremAf\":null,\"nextExtraPremAf\":null,\"nextTotalPremAf\":null,\"nextStdPremAn\":null,\"nextDiscntedStdPremAn\":null,\"nextDiscntedRate\":null,\"nextExtraStdPremAn\":null,\"derivationType\":null,\"uwDecision\":null,\"csDecision\":null,\"policyAssumpsit\":null,\"jointLifeYn\":null,\"waiverId\":null,\"waiverStart\":null,\"waiverEnd\":null,\"renewDecision\":null,\"benefitLevel\":null},{\"itemId\":\"111574107579014330\",\"propItemId\":\"111574107579014330\",\"mainItemId\":null,\"policyId\":null,\"productId\":134,\"insurantId\":\"41a69c9e24c64d01b50904aa3a31dca1\",\"organId\":400,\"sumAssured\":200000,\"units\":null,\"applicationDate\":\"2016-05-25\",\"effectiveDate\":null,\"issueDate\":null,\"expiryDate\":null,\"payMode\":null,\"payModeRenew\":null,\"payDueDate\":null,\"policyYear\":null,\"liabilityState\":null,\"statusChangeReason\":null,\"payStatus\":null,\"payPeriod\":null,\"payYear\":null,\"payUpDate\":null,\"coverPeriodType\":\"D\",\"coveragePeriod\":1,\"premCalcWay\":null,\"stdPremBf\":0.55,\"discntedStdPremBf\":1.21,\"extraStdPremBf\":0,\"stdPremAf\":0.55,\"discntedStdPremAf\":1.21,\"extraPremAf\":0,\"totalPremAf\":1.21,\"stdPremAn\":0,\"discntedStdPremAn\":0,\"discntedRate\":2.20,\"extraStdPremAn\":0,\"nextStdPremBf\":null,\"nextDiscntedStdPremBf\":null,\"nextExtraStdPremBf\":null,\"nextStdPremAf\":null,\"nextDiscntedStdPremAf\":null,\"nextExtraPremAf\":null,\"nextTotalPremAf\":null,\"nextStdPremAn\":null,\"nextDiscntedStdPremAn\":null,\"nextDiscntedRate\":null,\"nextExtraStdPremAn\":null,\"derivationType\":null,\"uwDecision\":null,\"csDecision\":null,\"policyAssumpsit\":null,\"jointLifeYn\":null,\"waiverId\":null,\"waiverStart\":null,\"waiverEnd\":null,\"renewDecision\":null,\"benefitLevel\":null},{\"itemId\":\"111574109401145115\",\"propItemId\":\"111574109401145115\",\"mainItemId\":\"111574107445589186\",\"policyId\":null,\"productId\":133,\"insurantId\":\"41a69c9e24c64d01b50904aa3a31dca1\",\"organId\":400,\"sumAssured\":10000,\"units\":null,\"applicationDate\":\"2016-05-25\",\"effectiveDate\":null,\"issueDate\":null,\"expiryDate\":null,\"payMode\":null,\"payModeRenew\":null,\"payDueDate\":null,\"policyYear\":null,\"liabilityState\":null,\"statusChangeReason\":null,\"payStatus\":null,\"payPeriod\":null,\"payYear\":null,\"payUpDate\":null,\"coverPeriodType\":\"D\",\"coveragePeriod\":1,\"premCalcWay\":null,\"stdPremBf\":0.03,\"discntedStdPremBf\":0.06,\"extraStdPremBf\":0,\"stdPremAf\":0.03,\"discntedStdPremAf\":0.06,\"extraPremAf\":0,\"totalPremAf\":0.06,\"stdPremAn\":0,\"discntedStdPremAn\":0,\"discntedRate\":2.00,\"extraStdPremAn\":0,\"nextStdPremBf\":null,\"nextDiscntedStdPremBf\":null,\"nextExtraStdPremBf\":null,\"nextStdPremAf\":null,\"nextDiscntedStdPremAf\":null,\"nextExtraPremAf\":null,\"nextTotalPremAf\":null,\"nextStdPremAn\":null,\"nextDiscntedStdPremAn\":null,\"nextDiscntedRate\":null,\"nextExtraStdPremAn\":null,\"derivationType\":null,\"uwDecision\":null,\"csDecision\":null,\"policyAssumpsit\":null,\"jointLifeYn\":null,\"waiverId\":null,\"waiverStart\":null,\"waiverEnd\":null,\"renewDecision\":null,\"benefitLevel\":null}],\"policyHolder\":{\"policyId\":null,\"applicantAge\":null,\"holderCustId\":720,\"recordTime\":null,\"holderbaseInfo\":{\"customerId\":720,\"name\":\"豆腐干豆腐\",\"gender\":\"1\",\"birthday\":\"1991-05-23\",\"certiType\":\"111\",\"certiCode\":\"370705199105232516\",\"certiValidStartDate\":null,\"certiValidEndDate\":null,\"marriageId\":null,\"educationId\":null,\"height\":null,\"weight\":null,\"income\":null,\"nationality\":null,\"companyName\":null,\"jobName\":null,\"industryId\":null,\"jobCateId\":null,\"companyKind\":null,\"academicTitle\":null,\"smoking\":null,\"socialSecurityNumber\":null,\"isRetired\":null,\"customerLevel\":null,\"addressId\":null,\"mobile\":null,\"officeTel\":null,\"homeTel\":null,\"fax\":null,\"firstName\":null,\"midName\":null,\"lastName\":null,\"aliasName\":null,\"religionCode\":null,\"childCount\":null,\"status\":null,\"deathDate\":null,\"email1\":null,\"email2\":null,\"qq\":null,\"weixin\":null,\"weibo\":null,\"web\":null,\"addressInfo\":{\"addressId\":null,\"customerId\":720,\"addressType\":null,\"addressFormatType\":null,\"countryCode\":null,\"addressFormat1\":\"110000\",\"addressFormat2\":\"110100\",\"addressFormat3\":\"110102\",\"addressFormat4\":\"西环广场T1\",\"address1\":null,\"address2\":null,\"postCode\":null,\"contactPerson\":null,\"contactTel\":null,\"contactMobile\":null,\"addressStatus\":\"1\",\"telFormatType\":null,\"telFormat1\":null,\"telFormat2\":null,\"telFormat3\":null,\"telFormat4\":null}}},\"insureds\":[{\"policyId\":null,\"insuredCustId\":720,\"applicantAge\":null,\"relationship\":null,\"recordTime\":null,\"itemId\":null,\"insuredCustInfo\":{\"customerId\":720,\"name\":\"豆腐干豆腐\",\"gender\":\"1\",\"birthday\":\"1991-05-23\",\"certiType\":\"111\",\"certiCode\":\"370705199105232516\",\"certiValidStartDate\":null,\"certiValidEndDate\":null,\"marriageId\":null,\"educationId\":null,\"height\":null,\"weight\":null,\"income\":null,\"nationality\":null,\"companyName\":null,\"jobName\":null,\"industryId\":null,\"jobCateId\":null,\"companyKind\":null,\"academicTitle\":null,\"smoking\":null,\"socialSecurityNumber\":null,\"isRetired\":null,\"customerLevel\":null,\"addressId\":null,\"mobile\":null,\"officeTel\":null,\"homeTel\":null,\"fax\":null,\"firstName\":null,\"midName\":null,\"lastName\":null,\"aliasName\":null,\"religionCode\":null,\"childCount\":null,\"status\":null,\"deathDate\":null,\"email1\":null,\"email2\":null,\"qq\":null,\"weixin\":null,\"weibo\":null,\"web\":null,\"addressInfo\":null}}],\"benfits\":[],\"paCustomerRepresents\":null,\"paCustomerRiskSums\":null,\"policyAccount\":[],\"araps\":[{\"arapId\":\"091c61e448254518b7b8218704e7a9e7\",\"branchId\":null,\"organId\":400,\"businessNo\":\"160525212308ffb\",\"policyNo\":\"160525121265a\",\"prodItemId\":\"111574107445589186\",\"productId\":132,\"liabId\":null,\"feeAmount\":3.00,\"chargeType\":null,\"policyYear\":null,\"policyPeriod\":null,\"premiumYear\":null,\"benefitType\":null,\"payMode\":null,\"feeType\":\"41\",\"feeStatus\":\"1\",\"offsetStatus\":\"1\",\"offsetTime\":null,\"finishTime\":null,\"payeeId\":null,\"accountId\":null,\"reversalId\":null,\"relatedId\":null,\"paChgId\":null,\"serviceId\":\"1\",\"claimType\":null,\"entityFund\":null,\"withdrawType\":null,\"cashierId\":null,\"dueTime\":\"2016-05-26 00:00:00\",\"payBalance\":null,\"posted\":null,\"groupProposalId\":null}],\"arapList\":[{\"arapId\":\"091c61e448254518b7b8218704e7a9e7\",\"businessNo\":\"160525212308ffb\",\"policyNo\":\"160525121265a\",\"productId\":133,\"liabId\":null,\"prodItemId\":\"111574109401145115\",\"branchId\":null,\"organId\":400,\"feeType\":\"41\",\"feeAmount\":0.06,\"payeeId\":null,\"payMode\":null,\"accountId\":null,\"finishTime\":null,\"dueTime\":\"2016-05-26 00:00:00\",\"feeStatus\":\"1\",\"offsetStatus\":\"1\",\"offsetTime\":null},{\"arapId\":\"091c61e448254518b7b8218704e7a9e7\",\"businessNo\":\"160525212308ffb\",\"policyNo\":\"160525121265a\",\"productId\":132,\"liabId\":null,\"prodItemId\":\"111574107445589186\",\"branchId\":null,\"organId\":400,\"feeType\":\"41\",\"feeAmount\":1.73,\"payeeId\":null,\"payMode\":null,\"accountId\":null,\"finishTime\":null,\"dueTime\":\"2016-05-26 00:00:00\",\"feeStatus\":\"1\",\"offsetStatus\":\"1\",\"offsetTime\":null},{\"arapId\":\"091c61e448254518b7b8218704e7a9e7\",\"businessNo\":\"160525212308ffb\",\"policyNo\":\"160525121265a\",\"productId\":134,\"liabId\":null,\"prodItemId\":\"111574107579014330\",\"branchId\":null,\"organId\":400,\"feeType\":\"41\",\"feeAmount\":1.21,\"payeeId\":null,\"payMode\":null,\"accountId\":null,\"finishTime\":null,\"dueTime\":\"2016-05-26 00:00:00\",\"feeStatus\":\"1\",\"offsetStatus\":\"1\",\"offsetTime\":null}],\"paymentList\":[{\"arapId\":\"091c61e448254518b7b8218704e7a9e7\",\"organId\":400,\"businessNo\":\"160525212308ffb\",\"policyNo\":\"160525121265a\",\"applyCode\":null,\"feeAmount\":0.06,\"payMode\":null,\"feeType\":\"41\",\"feeStatus\":\"1\",\"offsetStatus\":\"1\",\"finishTime\":null,\"cashierId\":null,\"posted\":null,\"payAmount\":null,\"withdrawType\":null,\"relatedId\":null,\"payBalance\":null,\"accountId\":null,\"internalAccountId\":null,\"internalBankName\":null,\"internalBankCode\":null,\"internalBankAccount\":null,\"applyTime\":null,\"payeeId\":null,\"dueTime\":\"2016-05-26\",\"paymentVoucher\":null,\"offsetGlobalId\":null},{\"arapId\":\"091c61e448254518b7b8218704e7a9e7\",\"organId\":400,\"businessNo\":\"160525212308ffb\",\"policyNo\":\"160525121265a\",\"applyCode\":null,\"feeAmount\":1.73,\"payMode\":null,\"feeType\":\"41\",\"feeStatus\":\"1\",\"offsetStatus\":\"1\",\"finishTime\":null,\"cashierId\":null,\"posted\":null,\"payAmount\":null,\"withdrawType\":null,\"relatedId\":null,\"payBalance\":null,\"accountId\":null,\"internalAccountId\":null,\"internalBankName\":null,\"internalBankCode\":null,\"internalBankAccount\":null,\"applyTime\":null,\"payeeId\":null,\"dueTime\":\"2016-05-26\",\"paymentVoucher\":null,\"offsetGlobalId\":null},{\"arapId\":\"091c61e448254518b7b8218704e7a9e7\",\"organId\":400,\"businessNo\":\"160525212308ffb\",\"policyNo\":\"160525121265a\",\"applyCode\":null,\"feeAmount\":1.21,\"payMode\":null,\"feeType\":\"41\",\"feeStatus\":\"1\",\"offsetStatus\":\"1\",\"finishTime\":null,\"cashierId\":null,\"posted\":null,\"payAmount\":null,\"withdrawType\":null,\"relatedId\":null,\"payBalance\":null,\"accountId\":null,\"internalAccountId\":null,\"internalBankName\":null,\"internalBankCode\":null,\"internalBankAccount\":null,\"applyTime\":null,\"payeeId\":null,\"dueTime\":\"2016-05-26\",\"paymentVoucher\":null,\"offsetGlobalId\":null}],\"payments\":[{\"paymentId\":null,\"arapId\":\"091c61e448254518b7b8218704e7a9e7\",\"organId\":400,\"businessNo\":\"160525212308ffb\",\"policyNo\":\"160525121265a\",\"applyCode\":null,\"feeAmount\":3.00,\"payMode\":null,\"feeType\":\"41\",\"feeStatus\":\"1\",\"offsetStatus\":\"1\",\"finishTime\":null,\"cashierId\":null,\"posted\":null,\"payAmount\":null,\"withdrawType\":null,\"relatedId\":null,\"payBalance\":null,\"accountId\":null,\"internalAccountId\":null,\"internalBankName\":null,\"internalBankCode\":null,\"internalBankAccount\":null,\"applyTime\":null,\"payeeId\":null,\"dueTime\":\"2016-05-26\",\"paymentVoucher\":null,\"failsCounter\":null,\"offsetGlobalId\":null}],\"csChange\":null,\"parentLogId\":null,\"currentChangeId\":null}',NULL,NULL,NULL,401,'{\"policy\":\"基础数据处理异常\"}','N',720,'160525212308ffb','2'),('bbd81d4b-87e8-4d00-870e-d8260f4ea192',NULL,'PAPROP00101','PROP','PA','PAPROP00101','160525121265a',NULL,'160525212308ffb',NULL,'2016-05-29 13:54:39:852','2016-05-29 13:54:40:061',209,'2','1','{\"transNo\":\"7cf6bd91dfe04f69b5b7d28dafb2f0ed\",\"transType\":\"PAPROP00101\",\"transDate\":\"2016-05-25\",\"transTime\":\"2016-05-25 08:00:00\",\"submitChannel\":\"PROP\",\"operatorId\":null,\"policy\":{\"policyId\":null,\"policyNo\":\"160525121265a\",\"proposalId\":\"11157426127945\",\"proposalNo\":\"160525212308ffb\",\"organId\":400,\"policyChannel\":null,\"salesChannel\":null,\"subSalesChannel\":null,\"campaignCode\":\"{\\\"mktPolicyInfo\\\":{\\\"mktPolicyId\\\":null,\\\"mktProdId\\\":12,\\\"planName\\\":\\\"计划1\\\",\\\"insuredGender\\\":null,\\\"insuredArea\\\":null,\\\"propCopies\\\":null,\\\"propLevel\\\":null,\\\"amount\\\":null,\\\"insuredSocial\\\":null,\\\"insuredAge\\\":null,\\\"coveragePeriodType\\\":null,\\\"coveragePeriod\\\":\\\"1D\\\",\\\"chargePeriodType\\\":null,\\\"chargePeriod\\\":null,\\\"chargeFreq\\\":null,\\\"premium\\\":\\\"3\\\",\\\"mktCoverageInfo\\\":null}}\",\"introducerId\":null,\"applicationDate\":\"2016-05-25\",\"effectiveDate\":\"2016-05-26\",\"issueDate\":null,\"expiryDate\":null,\"holderCustId\":720,\"policyStatus\":\"01\",\"payStatus\":null,\"policyYear\":null,\"statusChangeReason\":null,\"payFrequency\":null,\"payMode\":null,\"payAccount\":null,\"payModeRenew\":null,\"payBankCode\":null,\"submitSystem\":null,\"submitChannel\":null,\"verifyReturnId\":null,\"uwReturnId\":null,\"uwDate\":null,\"uwUserId\":null,\"issueUserId\":null,\"policyDeliveryMode\":null,\"printTimes\":null,\"lastestPrintTime\":null,\"endorsement\":null,\"callbackDate\":null,\"callbackType\":null,\"verifyReturnNotes\":null,\"uwReturnNotes\":null},\"products\":[{\"itemId\":\"111574107445589186\",\"propItemId\":\"111574107445589186\",\"mainItemId\":null,\"policyId\":null,\"productId\":132,\"insurantId\":\"b7baf905116444aab8122023e6e95043\",\"organId\":400,\"sumAssured\":200000,\"units\":null,\"applicationDate\":\"2016-05-25\",\"effectiveDate\":null,\"issueDate\":null,\"expiryDate\":null,\"payMode\":null,\"payModeRenew\":null,\"payDueDate\":null,\"policyYear\":null,\"liabilityState\":null,\"statusChangeReason\":null,\"payStatus\":null,\"payPeriod\":null,\"payYear\":null,\"payUpDate\":null,\"coverPeriodType\":\"D\",\"coveragePeriod\":1,\"premCalcWay\":null,\"stdPremBf\":0.79,\"discntedStdPremBf\":1.73,\"extraStdPremBf\":0,\"stdPremAf\":0.79,\"discntedStdPremAf\":1.73,\"extraPremAf\":0,\"totalPremAf\":1.73,\"stdPremAn\":0,\"discntedStdPremAn\":0,\"discntedRate\":2.19,\"extraStdPremAn\":0,\"nextStdPremBf\":null,\"nextDiscntedStdPremBf\":null,\"nextExtraStdPremBf\":null,\"nextStdPremAf\":null,\"nextDiscntedStdPremAf\":null,\"nextExtraPremAf\":null,\"nextTotalPremAf\":null,\"nextStdPremAn\":null,\"nextDiscntedStdPremAn\":null,\"nextDiscntedRate\":null,\"nextExtraStdPremAn\":null,\"derivationType\":null,\"uwDecision\":null,\"csDecision\":null,\"policyAssumpsit\":null,\"jointLifeYn\":null,\"waiverId\":null,\"waiverStart\":null,\"waiverEnd\":null,\"renewDecision\":null,\"benefitLevel\":null},{\"itemId\":\"111574107579014330\",\"propItemId\":\"111574107579014330\",\"mainItemId\":null,\"policyId\":null,\"productId\":134,\"insurantId\":\"b7baf905116444aab8122023e6e95043\",\"organId\":400,\"sumAssured\":200000,\"units\":null,\"applicationDate\":\"2016-05-25\",\"effectiveDate\":null,\"issueDate\":null,\"expiryDate\":null,\"payMode\":null,\"payModeRenew\":null,\"payDueDate\":null,\"policyYear\":null,\"liabilityState\":null,\"statusChangeReason\":null,\"payStatus\":null,\"payPeriod\":null,\"payYear\":null,\"payUpDate\":null,\"coverPeriodType\":\"D\",\"coveragePeriod\":1,\"premCalcWay\":null,\"stdPremBf\":0.55,\"discntedStdPremBf\":1.21,\"extraStdPremBf\":0,\"stdPremAf\":0.55,\"discntedStdPremAf\":1.21,\"extraPremAf\":0,\"totalPremAf\":1.21,\"stdPremAn\":0,\"discntedStdPremAn\":0,\"discntedRate\":2.20,\"extraStdPremAn\":0,\"nextStdPremBf\":null,\"nextDiscntedStdPremBf\":null,\"nextExtraStdPremBf\":null,\"nextStdPremAf\":null,\"nextDiscntedStdPremAf\":null,\"nextExtraPremAf\":null,\"nextTotalPremAf\":null,\"nextStdPremAn\":null,\"nextDiscntedStdPremAn\":null,\"nextDiscntedRate\":null,\"nextExtraStdPremAn\":null,\"derivationType\":null,\"uwDecision\":null,\"csDecision\":null,\"policyAssumpsit\":null,\"jointLifeYn\":null,\"waiverId\":null,\"waiverStart\":null,\"waiverEnd\":null,\"renewDecision\":null,\"benefitLevel\":null},{\"itemId\":\"111574109401145115\",\"propItemId\":\"111574109401145115\",\"mainItemId\":\"111574107445589186\",\"policyId\":null,\"productId\":133,\"insurantId\":\"b7baf905116444aab8122023e6e95043\",\"organId\":400,\"sumAssured\":10000,\"units\":null,\"applicationDate\":\"2016-05-25\",\"effectiveDate\":null,\"issueDate\":null,\"expiryDate\":null,\"payMode\":null,\"payModeRenew\":null,\"payDueDate\":null,\"policyYear\":null,\"liabilityState\":null,\"statusChangeReason\":null,\"payStatus\":null,\"payPeriod\":null,\"payYear\":null,\"payUpDate\":null,\"coverPeriodType\":\"D\",\"coveragePeriod\":1,\"premCalcWay\":null,\"stdPremBf\":0.03,\"discntedStdPremBf\":0.06,\"extraStdPremBf\":0,\"stdPremAf\":0.03,\"discntedStdPremAf\":0.06,\"extraPremAf\":0,\"totalPremAf\":0.06,\"stdPremAn\":0,\"discntedStdPremAn\":0,\"discntedRate\":2.00,\"extraStdPremAn\":0,\"nextStdPremBf\":null,\"nextDiscntedStdPremBf\":null,\"nextExtraStdPremBf\":null,\"nextStdPremAf\":null,\"nextDiscntedStdPremAf\":null,\"nextExtraPremAf\":null,\"nextTotalPremAf\":null,\"nextStdPremAn\":null,\"nextDiscntedStdPremAn\":null,\"nextDiscntedRate\":null,\"nextExtraStdPremAn\":null,\"derivationType\":null,\"uwDecision\":null,\"csDecision\":null,\"policyAssumpsit\":null,\"jointLifeYn\":null,\"waiverId\":null,\"waiverStart\":null,\"waiverEnd\":null,\"renewDecision\":null,\"benefitLevel\":null}],\"policyHolder\":{\"policyId\":null,\"applicantAge\":null,\"holderCustId\":720,\"recordTime\":null,\"holderbaseInfo\":{\"customerId\":720,\"name\":\"豆腐干豆腐\",\"gender\":\"1\",\"birthday\":\"1991-05-23\",\"certiType\":\"111\",\"certiCode\":\"370705199105232516\",\"certiValidStartDate\":null,\"certiValidEndDate\":null,\"marriageId\":null,\"educationId\":null,\"height\":null,\"weight\":null,\"income\":null,\"nationality\":null,\"companyName\":null,\"jobName\":null,\"industryId\":null,\"jobCateId\":null,\"companyKind\":null,\"academicTitle\":null,\"smoking\":null,\"socialSecurityNumber\":null,\"isRetired\":null,\"customerLevel\":null,\"addressId\":null,\"mobile\":null,\"officeTel\":null,\"homeTel\":null,\"fax\":null,\"firstName\":null,\"midName\":null,\"lastName\":null,\"aliasName\":null,\"religionCode\":null,\"childCount\":null,\"status\":null,\"deathDate\":null,\"email1\":null,\"email2\":null,\"qq\":null,\"weixin\":null,\"weibo\":null,\"web\":null,\"addressInfo\":{\"addressId\":null,\"customerId\":720,\"addressType\":null,\"addressFormatType\":null,\"countryCode\":null,\"addressFormat1\":\"110000\",\"addressFormat2\":\"110100\",\"addressFormat3\":\"110102\",\"addressFormat4\":\"西环广场T1\",\"address1\":null,\"address2\":null,\"postCode\":null,\"contactPerson\":null,\"contactTel\":null,\"contactMobile\":null,\"addressStatus\":\"1\",\"telFormatType\":null,\"telFormat1\":null,\"telFormat2\":null,\"telFormat3\":null,\"telFormat4\":null}}},\"insureds\":[{\"policyId\":null,\"insuredCustId\":720,\"applicantAge\":null,\"relationship\":null,\"recordTime\":null,\"itemId\":null,\"insuredCustInfo\":{\"customerId\":720,\"name\":\"豆腐干豆腐\",\"gender\":\"1\",\"birthday\":\"1991-05-23\",\"certiType\":\"111\",\"certiCode\":\"370705199105232516\",\"certiValidStartDate\":null,\"certiValidEndDate\":null,\"marriageId\":null,\"educationId\":null,\"height\":null,\"weight\":null,\"income\":null,\"nationality\":null,\"companyName\":null,\"jobName\":null,\"industryId\":null,\"jobCateId\":null,\"companyKind\":null,\"academicTitle\":null,\"smoking\":null,\"socialSecurityNumber\":null,\"isRetired\":null,\"customerLevel\":null,\"addressId\":null,\"mobile\":null,\"officeTel\":null,\"homeTel\":null,\"fax\":null,\"firstName\":null,\"midName\":null,\"lastName\":null,\"aliasName\":null,\"religionCode\":null,\"childCount\":null,\"status\":null,\"deathDate\":null,\"email1\":null,\"email2\":null,\"qq\":null,\"weixin\":null,\"weibo\":null,\"web\":null,\"addressInfo\":null}}],\"benfits\":[],\"paCustomerRepresents\":null,\"paCustomerRiskSums\":null,\"policyAccount\":[],\"araps\":[{\"arapId\":\"6011e20c5c0a46b88f2fbd43add5e010\",\"branchId\":null,\"organId\":400,\"businessNo\":\"160525212308ffb\",\"policyNo\":\"160525121265a\",\"prodItemId\":\"111574107445589186\",\"productId\":132,\"liabId\":null,\"feeAmount\":3.00,\"chargeType\":null,\"policyYear\":null,\"policyPeriod\":null,\"premiumYear\":null,\"benefitType\":null,\"payMode\":null,\"feeType\":\"41\",\"feeStatus\":\"1\",\"offsetStatus\":\"1\",\"offsetTime\":null,\"finishTime\":null,\"payeeId\":null,\"accountId\":null,\"reversalId\":null,\"relatedId\":null,\"paChgId\":null,\"serviceId\":\"1\",\"claimType\":null,\"entityFund\":null,\"withdrawType\":null,\"cashierId\":null,\"dueTime\":\"2016-05-26 00:00:00\",\"payBalance\":null,\"posted\":null,\"groupProposalId\":null}],\"arapList\":[{\"arapId\":\"6011e20c5c0a46b88f2fbd43add5e010\",\"businessNo\":\"160525212308ffb\",\"policyNo\":\"160525121265a\",\"productId\":133,\"liabId\":null,\"prodItemId\":\"111574109401145115\",\"branchId\":null,\"organId\":400,\"feeType\":\"41\",\"feeAmount\":0.06,\"payeeId\":null,\"payMode\":null,\"accountId\":null,\"finishTime\":null,\"dueTime\":\"2016-05-26 00:00:00\",\"feeStatus\":\"1\",\"offsetStatus\":\"1\",\"offsetTime\":null},{\"arapId\":\"6011e20c5c0a46b88f2fbd43add5e010\",\"businessNo\":\"160525212308ffb\",\"policyNo\":\"160525121265a\",\"productId\":132,\"liabId\":null,\"prodItemId\":\"111574107445589186\",\"branchId\":null,\"organId\":400,\"feeType\":\"41\",\"feeAmount\":1.73,\"payeeId\":null,\"payMode\":null,\"accountId\":null,\"finishTime\":null,\"dueTime\":\"2016-05-26 00:00:00\",\"feeStatus\":\"1\",\"offsetStatus\":\"1\",\"offsetTime\":null},{\"arapId\":\"6011e20c5c0a46b88f2fbd43add5e010\",\"businessNo\":\"160525212308ffb\",\"policyNo\":\"160525121265a\",\"productId\":134,\"liabId\":null,\"prodItemId\":\"111574107579014330\",\"branchId\":null,\"organId\":400,\"feeType\":\"41\",\"feeAmount\":1.21,\"payeeId\":null,\"payMode\":null,\"accountId\":null,\"finishTime\":null,\"dueTime\":\"2016-05-26 00:00:00\",\"feeStatus\":\"1\",\"offsetStatus\":\"1\",\"offsetTime\":null}],\"paymentList\":[{\"arapId\":\"6011e20c5c0a46b88f2fbd43add5e010\",\"organId\":400,\"businessNo\":\"160525212308ffb\",\"policyNo\":\"160525121265a\",\"applyCode\":null,\"feeAmount\":0.06,\"payMode\":null,\"feeType\":\"41\",\"feeStatus\":\"1\",\"offsetStatus\":\"1\",\"finishTime\":null,\"cashierId\":null,\"posted\":null,\"payAmount\":null,\"withdrawType\":null,\"relatedId\":null,\"payBalance\":null,\"accountId\":null,\"internalAccountId\":null,\"internalBankName\":null,\"internalBankCode\":null,\"internalBankAccount\":null,\"applyTime\":null,\"payeeId\":null,\"dueTime\":\"2016-05-26\",\"paymentVoucher\":null,\"offsetGlobalId\":null},{\"arapId\":\"6011e20c5c0a46b88f2fbd43add5e010\",\"organId\":400,\"businessNo\":\"160525212308ffb\",\"policyNo\":\"160525121265a\",\"applyCode\":null,\"feeAmount\":1.73,\"payMode\":null,\"feeType\":\"41\",\"feeStatus\":\"1\",\"offsetStatus\":\"1\",\"finishTime\":null,\"cashierId\":null,\"posted\":null,\"payAmount\":null,\"withdrawType\":null,\"relatedId\":null,\"payBalance\":null,\"accountId\":null,\"internalAccountId\":null,\"internalBankName\":null,\"internalBankCode\":null,\"internalBankAccount\":null,\"applyTime\":null,\"payeeId\":null,\"dueTime\":\"2016-05-26\",\"paymentVoucher\":null,\"offsetGlobalId\":null},{\"arapId\":\"6011e20c5c0a46b88f2fbd43add5e010\",\"organId\":400,\"businessNo\":\"160525212308ffb\",\"policyNo\":\"160525121265a\",\"applyCode\":null,\"feeAmount\":1.21,\"payMode\":null,\"feeType\":\"41\",\"feeStatus\":\"1\",\"offsetStatus\":\"1\",\"finishTime\":null,\"cashierId\":null,\"posted\":null,\"payAmount\":null,\"withdrawType\":null,\"relatedId\":null,\"payBalance\":null,\"accountId\":null,\"internalAccountId\":null,\"internalBankName\":null,\"internalBankCode\":null,\"internalBankAccount\":null,\"applyTime\":null,\"payeeId\":null,\"dueTime\":\"2016-05-26\",\"paymentVoucher\":null,\"offsetGlobalId\":null}],\"payments\":[{\"paymentId\":null,\"arapId\":\"6011e20c5c0a46b88f2fbd43add5e010\",\"organId\":400,\"businessNo\":\"160525212308ffb\",\"policyNo\":\"160525121265a\",\"applyCode\":null,\"feeAmount\":3.00,\"payMode\":null,\"feeType\":\"41\",\"feeStatus\":\"1\",\"offsetStatus\":\"1\",\"finishTime\":null,\"cashierId\":null,\"posted\":null,\"payAmount\":null,\"withdrawType\":null,\"relatedId\":null,\"payBalance\":null,\"accountId\":null,\"internalAccountId\":null,\"internalBankName\":null,\"internalBankCode\":null,\"internalBankAccount\":null,\"applyTime\":null,\"payeeId\":null,\"dueTime\":\"2016-05-26\",\"paymentVoucher\":null,\"failsCounter\":null,\"offsetGlobalId\":null}],\"csChange\":null,\"parentLogId\":null,\"currentChangeId\":null}',NULL,NULL,NULL,401,'{\"policy\":\"基础数据处理异常\"}','N',720,'160525212308ffb','2'),('c4187581-464e-4b8d-8848-efee43451fc9',NULL,'PAPROP00101','PROP','PA','PAPROP00101','160525121265a',NULL,'160525212308ffb',NULL,'2016-05-29 14:13:50:927','2016-05-29 14:13:51:677',750,'1','1','{\"transNo\":\"7cf6bd91dfe04f69b5b7d28dafb2f0ed\",\"transType\":\"PAPROP00101\",\"transDate\":\"2016-05-25\",\"transTime\":\"2016-05-25 08:00:00\",\"submitChannel\":\"PROP\",\"operatorId\":null,\"policy\":{\"policyId\":null,\"policyNo\":\"160525121265a\",\"proposalId\":\"11157426127945\",\"proposalNo\":\"160525212308ffb\",\"organId\":400,\"policyChannel\":null,\"salesChannel\":null,\"subSalesChannel\":null,\"campaignCode\":\"{\\\"mktPolicyInfo\\\":{\\\"mktPolicyId\\\":null,\\\"mktProdId\\\":12,\\\"planName\\\":\\\"计划1\\\",\\\"insuredGender\\\":null,\\\"insuredArea\\\":null,\\\"propCopies\\\":null,\\\"propLevel\\\":null,\\\"amount\\\":null,\\\"insuredSocial\\\":null,\\\"insuredAge\\\":null,\\\"coveragePeriodType\\\":null,\\\"coveragePeriod\\\":\\\"1D\\\",\\\"chargePeriodType\\\":null,\\\"chargePeriod\\\":null,\\\"chargeFreq\\\":null,\\\"premium\\\":\\\"3\\\",\\\"mktCoverageInfo\\\":null}}\",\"introducerId\":null,\"applicationDate\":\"2016-05-25\",\"effectiveDate\":\"2016-05-26\",\"issueDate\":null,\"expiryDate\":null,\"holderCustId\":720,\"policyStatus\":\"01\",\"payStatus\":null,\"policyYear\":null,\"statusChangeReason\":null,\"payFrequency\":null,\"payMode\":null,\"payAccount\":null,\"payModeRenew\":null,\"payBankCode\":null,\"submitSystem\":null,\"submitChannel\":null,\"verifyReturnId\":null,\"uwReturnId\":null,\"uwDate\":null,\"uwUserId\":null,\"issueUserId\":null,\"policyDeliveryMode\":null,\"printTimes\":null,\"lastestPrintTime\":null,\"endorsement\":null,\"callbackDate\":null,\"callbackType\":null,\"verifyReturnNotes\":null,\"uwReturnNotes\":null},\"products\":[{\"itemId\":\"111574107445589186\",\"propItemId\":\"111574107445589186\",\"mainItemId\":null,\"policyId\":null,\"productId\":132,\"insurantId\":\"09fd85ae86d24b7ca609e3bd476c08d9\",\"organId\":400,\"sumAssured\":200000,\"units\":null,\"applicationDate\":\"2016-05-25\",\"effectiveDate\":null,\"issueDate\":null,\"expiryDate\":null,\"payMode\":null,\"payModeRenew\":null,\"payDueDate\":null,\"policyYear\":null,\"liabilityState\":null,\"statusChangeReason\":null,\"payStatus\":null,\"payPeriod\":null,\"payYear\":null,\"payUpDate\":null,\"coverPeriodType\":\"D\",\"coveragePeriod\":1,\"premCalcWay\":null,\"stdPremBf\":0.79,\"discntedStdPremBf\":1.73,\"extraStdPremBf\":0,\"stdPremAf\":0.79,\"discntedStdPremAf\":1.73,\"extraPremAf\":0,\"totalPremAf\":1.73,\"stdPremAn\":0,\"discntedStdPremAn\":0,\"discntedRate\":2.19,\"extraStdPremAn\":0,\"nextStdPremBf\":null,\"nextDiscntedStdPremBf\":null,\"nextExtraStdPremBf\":null,\"nextStdPremAf\":null,\"nextDiscntedStdPremAf\":null,\"nextExtraPremAf\":null,\"nextTotalPremAf\":null,\"nextStdPremAn\":null,\"nextDiscntedStdPremAn\":null,\"nextDiscntedRate\":null,\"nextExtraStdPremAn\":null,\"derivationType\":null,\"uwDecision\":null,\"csDecision\":null,\"policyAssumpsit\":null,\"jointLifeYn\":null,\"waiverId\":null,\"waiverStart\":null,\"waiverEnd\":null,\"renewDecision\":null,\"benefitLevel\":null},{\"itemId\":\"111574107579014330\",\"propItemId\":\"111574107579014330\",\"mainItemId\":null,\"policyId\":null,\"productId\":134,\"insurantId\":\"09fd85ae86d24b7ca609e3bd476c08d9\",\"organId\":400,\"sumAssured\":200000,\"units\":null,\"applicationDate\":\"2016-05-25\",\"effectiveDate\":null,\"issueDate\":null,\"expiryDate\":null,\"payMode\":null,\"payModeRenew\":null,\"payDueDate\":null,\"policyYear\":null,\"liabilityState\":null,\"statusChangeReason\":null,\"payStatus\":null,\"payPeriod\":null,\"payYear\":null,\"payUpDate\":null,\"coverPeriodType\":\"D\",\"coveragePeriod\":1,\"premCalcWay\":null,\"stdPremBf\":0.55,\"discntedStdPremBf\":1.21,\"extraStdPremBf\":0,\"stdPremAf\":0.55,\"discntedStdPremAf\":1.21,\"extraPremAf\":0,\"totalPremAf\":1.21,\"stdPremAn\":0,\"discntedStdPremAn\":0,\"discntedRate\":2.20,\"extraStdPremAn\":0,\"nextStdPremBf\":null,\"nextDiscntedStdPremBf\":null,\"nextExtraStdPremBf\":null,\"nextStdPremAf\":null,\"nextDiscntedStdPremAf\":null,\"nextExtraPremAf\":null,\"nextTotalPremAf\":null,\"nextStdPremAn\":null,\"nextDiscntedStdPremAn\":null,\"nextDiscntedRate\":null,\"nextExtraStdPremAn\":null,\"derivationType\":null,\"uwDecision\":null,\"csDecision\":null,\"policyAssumpsit\":null,\"jointLifeYn\":null,\"waiverId\":null,\"waiverStart\":null,\"waiverEnd\":null,\"renewDecision\":null,\"benefitLevel\":null},{\"itemId\":\"111574109401145115\",\"propItemId\":\"111574109401145115\",\"mainItemId\":\"111574107445589186\",\"policyId\":null,\"productId\":133,\"insurantId\":\"09fd85ae86d24b7ca609e3bd476c08d9\",\"organId\":400,\"sumAssured\":10000,\"units\":null,\"applicationDate\":\"2016-05-25\",\"effectiveDate\":null,\"issueDate\":null,\"expiryDate\":null,\"payMode\":null,\"payModeRenew\":null,\"payDueDate\":null,\"policyYear\":null,\"liabilityState\":null,\"statusChangeReason\":null,\"payStatus\":null,\"payPeriod\":null,\"payYear\":null,\"payUpDate\":null,\"coverPeriodType\":\"D\",\"coveragePeriod\":1,\"premCalcWay\":null,\"stdPremBf\":0.03,\"discntedStdPremBf\":0.06,\"extraStdPremBf\":0,\"stdPremAf\":0.03,\"discntedStdPremAf\":0.06,\"extraPremAf\":0,\"totalPremAf\":0.06,\"stdPremAn\":0,\"discntedStdPremAn\":0,\"discntedRate\":2.00,\"extraStdPremAn\":0,\"nextStdPremBf\":null,\"nextDiscntedStdPremBf\":null,\"nextExtraStdPremBf\":null,\"nextStdPremAf\":null,\"nextDiscntedStdPremAf\":null,\"nextExtraPremAf\":null,\"nextTotalPremAf\":null,\"nextStdPremAn\":null,\"nextDiscntedStdPremAn\":null,\"nextDiscntedRate\":null,\"nextExtraStdPremAn\":null,\"derivationType\":null,\"uwDecision\":null,\"csDecision\":null,\"policyAssumpsit\":null,\"jointLifeYn\":null,\"waiverId\":null,\"waiverStart\":null,\"waiverEnd\":null,\"renewDecision\":null,\"benefitLevel\":null}],\"policyHolder\":{\"policyId\":null,\"applicantAge\":null,\"holderCustId\":720,\"recordTime\":null,\"holderbaseInfo\":{\"customerId\":720,\"name\":\"豆腐干豆腐\",\"gender\":\"1\",\"birthday\":\"1991-05-23\",\"certiType\":\"111\",\"certiCode\":\"370705199105232516\",\"certiValidStartDate\":null,\"certiValidEndDate\":null,\"marriageId\":null,\"educationId\":null,\"height\":null,\"weight\":null,\"income\":null,\"nationality\":null,\"companyName\":null,\"jobName\":null,\"industryId\":null,\"jobCateId\":null,\"companyKind\":null,\"academicTitle\":null,\"smoking\":null,\"socialSecurityNumber\":null,\"isRetired\":null,\"customerLevel\":null,\"addressId\":null,\"mobile\":null,\"officeTel\":null,\"homeTel\":null,\"fax\":null,\"firstName\":null,\"midName\":null,\"lastName\":null,\"aliasName\":null,\"religionCode\":null,\"childCount\":null,\"status\":null,\"deathDate\":null,\"email1\":null,\"email2\":null,\"qq\":null,\"weixin\":null,\"weibo\":null,\"web\":null,\"addressInfo\":{\"addressId\":null,\"customerId\":720,\"addressType\":null,\"addressFormatType\":null,\"countryCode\":null,\"addressFormat1\":\"110000\",\"addressFormat2\":\"110100\",\"addressFormat3\":\"110102\",\"addressFormat4\":\"西环广场T1\",\"address1\":null,\"address2\":null,\"postCode\":null,\"contactPerson\":null,\"contactTel\":null,\"contactMobile\":null,\"addressStatus\":\"1\",\"telFormatType\":null,\"telFormat1\":null,\"telFormat2\":null,\"telFormat3\":null,\"telFormat4\":null}}},\"insureds\":[{\"policyId\":null,\"insuredCustId\":720,\"applicantAge\":null,\"relationship\":null,\"recordTime\":null,\"itemId\":null,\"insuredCustInfo\":{\"customerId\":720,\"name\":\"豆腐干豆腐\",\"gender\":\"1\",\"birthday\":\"1991-05-23\",\"certiType\":\"111\",\"certiCode\":\"370705199105232516\",\"certiValidStartDate\":null,\"certiValidEndDate\":null,\"marriageId\":null,\"educationId\":null,\"height\":null,\"weight\":null,\"income\":null,\"nationality\":null,\"companyName\":null,\"jobName\":null,\"industryId\":null,\"jobCateId\":null,\"companyKind\":null,\"academicTitle\":null,\"smoking\":null,\"socialSecurityNumber\":null,\"isRetired\":null,\"customerLevel\":null,\"addressId\":null,\"mobile\":null,\"officeTel\":null,\"homeTel\":null,\"fax\":null,\"firstName\":null,\"midName\":null,\"lastName\":null,\"aliasName\":null,\"religionCode\":null,\"childCount\":null,\"status\":null,\"deathDate\":null,\"email1\":null,\"email2\":null,\"qq\":null,\"weixin\":null,\"weibo\":null,\"web\":null,\"addressInfo\":null}}],\"benfits\":[],\"paCustomerRepresents\":null,\"paCustomerRiskSums\":null,\"policyAccount\":[],\"araps\":[{\"arapId\":\"046e8899f8384316b6ece3407867f45e\",\"branchId\":null,\"organId\":400,\"businessNo\":\"160525212308ffb\",\"policyNo\":\"160525121265a\",\"prodItemId\":\"111574107445589186\",\"productId\":132,\"liabId\":null,\"feeAmount\":3.00,\"chargeType\":null,\"policyYear\":null,\"policyPeriod\":null,\"premiumYear\":null,\"benefitType\":null,\"payMode\":null,\"feeType\":\"41\",\"feeStatus\":\"1\",\"offsetStatus\":\"1\",\"offsetTime\":null,\"finishTime\":null,\"payeeId\":null,\"accountId\":null,\"reversalId\":null,\"relatedId\":null,\"paChgId\":null,\"serviceId\":\"1\",\"claimType\":null,\"entityFund\":null,\"withdrawType\":null,\"cashierId\":null,\"dueTime\":\"2016-05-26 00:00:00\",\"payBalance\":null,\"posted\":null,\"groupProposalId\":null}],\"arapList\":[{\"arapId\":\"046e8899f8384316b6ece3407867f45e\",\"businessNo\":\"160525212308ffb\",\"policyNo\":\"160525121265a\",\"productId\":132,\"liabId\":null,\"prodItemId\":\"111574107445589186\",\"branchId\":null,\"organId\":400,\"feeType\":\"41\",\"feeAmount\":1.73,\"payeeId\":null,\"payMode\":null,\"accountId\":null,\"finishTime\":null,\"dueTime\":\"2016-05-26 00:00:00\",\"feeStatus\":\"1\",\"offsetStatus\":\"1\",\"offsetTime\":null},{\"arapId\":\"046e8899f8384316b6ece3407867f45e\",\"businessNo\":\"160525212308ffb\",\"policyNo\":\"160525121265a\",\"productId\":134,\"liabId\":null,\"prodItemId\":\"111574107579014330\",\"branchId\":null,\"organId\":400,\"feeType\":\"41\",\"feeAmount\":1.21,\"payeeId\":null,\"payMode\":null,\"accountId\":null,\"finishTime\":null,\"dueTime\":\"2016-05-26 00:00:00\",\"feeStatus\":\"1\",\"offsetStatus\":\"1\",\"offsetTime\":null},{\"arapId\":\"046e8899f8384316b6ece3407867f45e\",\"businessNo\":\"160525212308ffb\",\"policyNo\":\"160525121265a\",\"productId\":133,\"liabId\":null,\"prodItemId\":\"111574109401145115\",\"branchId\":null,\"organId\":400,\"feeType\":\"41\",\"feeAmount\":0.06,\"payeeId\":null,\"payMode\":null,\"accountId\":null,\"finishTime\":null,\"dueTime\":\"2016-05-26 00:00:00\",\"feeStatus\":\"1\",\"offsetStatus\":\"1\",\"offsetTime\":null}],\"paymentList\":[{\"arapId\":\"046e8899f8384316b6ece3407867f45e\",\"organId\":400,\"businessNo\":\"160525212308ffb\",\"policyNo\":\"160525121265a\",\"applyCode\":null,\"feeAmount\":1.73,\"payMode\":null,\"feeType\":\"41\",\"feeStatus\":\"1\",\"offsetStatus\":\"1\",\"finishTime\":null,\"cashierId\":null,\"posted\":null,\"payAmount\":null,\"withdrawType\":null,\"relatedId\":null,\"payBalance\":null,\"accountId\":null,\"internalAccountId\":null,\"internalBankName\":null,\"internalBankCode\":null,\"internalBankAccount\":null,\"applyTime\":null,\"payeeId\":null,\"dueTime\":\"2016-05-26\",\"paymentVoucher\":null,\"offsetGlobalId\":null},{\"arapId\":\"046e8899f8384316b6ece3407867f45e\",\"organId\":400,\"businessNo\":\"160525212308ffb\",\"policyNo\":\"160525121265a\",\"applyCode\":null,\"feeAmount\":1.21,\"payMode\":null,\"feeType\":\"41\",\"feeStatus\":\"1\",\"offsetStatus\":\"1\",\"finishTime\":null,\"cashierId\":null,\"posted\":null,\"payAmount\":null,\"withdrawType\":null,\"relatedId\":null,\"payBalance\":null,\"accountId\":null,\"internalAccountId\":null,\"internalBankName\":null,\"internalBankCode\":null,\"internalBankAccount\":null,\"applyTime\":null,\"payeeId\":null,\"dueTime\":\"2016-05-26\",\"paymentVoucher\":null,\"offsetGlobalId\":null},{\"arapId\":\"046e8899f8384316b6ece3407867f45e\",\"organId\":400,\"businessNo\":\"160525212308ffb\",\"policyNo\":\"160525121265a\",\"applyCode\":null,\"feeAmount\":0.06,\"payMode\":null,\"feeType\":\"41\",\"feeStatus\":\"1\",\"offsetStatus\":\"1\",\"finishTime\":null,\"cashierId\":null,\"posted\":null,\"payAmount\":null,\"withdrawType\":null,\"relatedId\":null,\"payBalance\":null,\"accountId\":null,\"internalAccountId\":null,\"internalBankName\":null,\"internalBankCode\":null,\"internalBankAccount\":null,\"applyTime\":null,\"payeeId\":null,\"dueTime\":\"2016-05-26\",\"paymentVoucher\":null,\"offsetGlobalId\":null}],\"payments\":[{\"paymentId\":null,\"arapId\":\"046e8899f8384316b6ece3407867f45e\",\"organId\":400,\"businessNo\":\"160525212308ffb\",\"policyNo\":\"160525121265a\",\"applyCode\":null,\"feeAmount\":3.00,\"payMode\":null,\"feeType\":\"41\",\"feeStatus\":\"1\",\"offsetStatus\":\"1\",\"finishTime\":null,\"cashierId\":null,\"posted\":null,\"payAmount\":null,\"withdrawType\":null,\"relatedId\":null,\"payBalance\":null,\"accountId\":null,\"internalAccountId\":null,\"internalBankName\":null,\"internalBankCode\":null,\"internalBankAccount\":null,\"applyTime\":null,\"payeeId\":null,\"dueTime\":\"2016-05-26\",\"paymentVoucher\":null,\"failsCounter\":null,\"offsetGlobalId\":null}],\"csChange\":null,\"parentLogId\":null,\"currentChangeId\":null}',NULL,NULL,'{\"transNo\":null,\"transType\":null,\"transDate\":null,\"transTime\":null,\"submitChannel\":null,\"operatorId\":null,\"policyCode\":\"160525121265a\",\"proposalCode\":null,\"policyID\":\"null\",\"custId\":null,\"serviceID\":null,\"changeId\":null,\"roleCode\":null,\"system\":null,\"querynum\":null,\"queryDate\":null,\"policyStatus\":null}',401,'OK','N',720,'160525212308ffb','2'),('f5cffdb9-bf86-4e9c-b684-db16ee4a915d',NULL,'PAPROP00101','PROP','PA','PAPROP00101','160525121265a',NULL,'160525212308ffb',NULL,'2016-05-29 13:51:09:320','2016-05-29 13:51:09:632',312,'2','1','{\"transNo\":\"7cf6bd91dfe04f69b5b7d28dafb2f0ed\",\"transType\":\"PAPROP00101\",\"transDate\":\"2016-05-25\",\"transTime\":\"2016-05-25 08:00:00\",\"submitChannel\":\"PROP\",\"operatorId\":null,\"policy\":{\"policyId\":null,\"policyNo\":\"160525121265a\",\"proposalId\":\"11157426127945\",\"proposalNo\":\"160525212308ffb\",\"organId\":400,\"policyChannel\":null,\"salesChannel\":null,\"subSalesChannel\":null,\"campaignCode\":\"{\\\"mktPolicyInfo\\\":{\\\"mktPolicyId\\\":null,\\\"mktProdId\\\":12,\\\"planName\\\":\\\"计划1\\\",\\\"insuredGender\\\":null,\\\"insuredArea\\\":null,\\\"propCopies\\\":null,\\\"propLevel\\\":null,\\\"amount\\\":null,\\\"insuredSocial\\\":null,\\\"insuredAge\\\":null,\\\"coveragePeriodType\\\":null,\\\"coveragePeriod\\\":\\\"1D\\\",\\\"chargePeriodType\\\":null,\\\"chargePeriod\\\":null,\\\"chargeFreq\\\":null,\\\"premium\\\":\\\"3\\\",\\\"mktCoverageInfo\\\":null}}\",\"introducerId\":null,\"applicationDate\":\"2016-05-25\",\"effectiveDate\":\"2016-05-26\",\"issueDate\":null,\"expiryDate\":null,\"holderCustId\":720,\"policyStatus\":\"01\",\"payStatus\":null,\"policyYear\":null,\"statusChangeReason\":null,\"payFrequency\":null,\"payMode\":null,\"payAccount\":null,\"payModeRenew\":null,\"payBankCode\":null,\"submitSystem\":null,\"submitChannel\":null,\"verifyReturnId\":null,\"uwReturnId\":null,\"uwDate\":null,\"uwUserId\":null,\"issueUserId\":null,\"policyDeliveryMode\":null,\"printTimes\":null,\"lastestPrintTime\":null,\"endorsement\":null,\"callbackDate\":null,\"callbackType\":null,\"verifyReturnNotes\":null,\"uwReturnNotes\":null},\"products\":[{\"itemId\":\"111574107445589186\",\"propItemId\":\"111574107445589186\",\"mainItemId\":null,\"policyId\":null,\"productId\":132,\"insurantId\":\"e6b2951f5a264d85b7edeab9cc84c304\",\"organId\":400,\"sumAssured\":200000,\"units\":null,\"applicationDate\":\"2016-05-25\",\"effectiveDate\":null,\"issueDate\":null,\"expiryDate\":null,\"payMode\":null,\"payModeRenew\":null,\"payDueDate\":null,\"policyYear\":null,\"liabilityState\":null,\"statusChangeReason\":null,\"payStatus\":null,\"payPeriod\":null,\"payYear\":null,\"payUpDate\":null,\"coverPeriodType\":\"D\",\"coveragePeriod\":1,\"premCalcWay\":null,\"stdPremBf\":0.79,\"discntedStdPremBf\":1.73,\"extraStdPremBf\":0,\"stdPremAf\":0.79,\"discntedStdPremAf\":1.73,\"extraPremAf\":0,\"totalPremAf\":1.73,\"stdPremAn\":0,\"discntedStdPremAn\":0,\"discntedRate\":2.19,\"extraStdPremAn\":0,\"nextStdPremBf\":null,\"nextDiscntedStdPremBf\":null,\"nextExtraStdPremBf\":null,\"nextStdPremAf\":null,\"nextDiscntedStdPremAf\":null,\"nextExtraPremAf\":null,\"nextTotalPremAf\":null,\"nextStdPremAn\":null,\"nextDiscntedStdPremAn\":null,\"nextDiscntedRate\":null,\"nextExtraStdPremAn\":null,\"derivationType\":null,\"uwDecision\":null,\"csDecision\":null,\"policyAssumpsit\":null,\"jointLifeYn\":null,\"waiverId\":null,\"waiverStart\":null,\"waiverEnd\":null,\"renewDecision\":null,\"benefitLevel\":null},{\"itemId\":\"111574107579014330\",\"propItemId\":\"111574107579014330\",\"mainItemId\":null,\"policyId\":null,\"productId\":134,\"insurantId\":\"e6b2951f5a264d85b7edeab9cc84c304\",\"organId\":400,\"sumAssured\":200000,\"units\":null,\"applicationDate\":\"2016-05-25\",\"effectiveDate\":null,\"issueDate\":null,\"expiryDate\":null,\"payMode\":null,\"payModeRenew\":null,\"payDueDate\":null,\"policyYear\":null,\"liabilityState\":null,\"statusChangeReason\":null,\"payStatus\":null,\"payPeriod\":null,\"payYear\":null,\"payUpDate\":null,\"coverPeriodType\":\"D\",\"coveragePeriod\":1,\"premCalcWay\":null,\"stdPremBf\":0.55,\"discntedStdPremBf\":1.21,\"extraStdPremBf\":0,\"stdPremAf\":0.55,\"discntedStdPremAf\":1.21,\"extraPremAf\":0,\"totalPremAf\":1.21,\"stdPremAn\":0,\"discntedStdPremAn\":0,\"discntedRate\":2.20,\"extraStdPremAn\":0,\"nextStdPremBf\":null,\"nextDiscntedStdPremBf\":null,\"nextExtraStdPremBf\":null,\"nextStdPremAf\":null,\"nextDiscntedStdPremAf\":null,\"nextExtraPremAf\":null,\"nextTotalPremAf\":null,\"nextStdPremAn\":null,\"nextDiscntedStdPremAn\":null,\"nextDiscntedRate\":null,\"nextExtraStdPremAn\":null,\"derivationType\":null,\"uwDecision\":null,\"csDecision\":null,\"policyAssumpsit\":null,\"jointLifeYn\":null,\"waiverId\":null,\"waiverStart\":null,\"waiverEnd\":null,\"renewDecision\":null,\"benefitLevel\":null},{\"itemId\":\"111574109401145115\",\"propItemId\":\"111574109401145115\",\"mainItemId\":\"111574107445589186\",\"policyId\":null,\"productId\":133,\"insurantId\":\"e6b2951f5a264d85b7edeab9cc84c304\",\"organId\":400,\"sumAssured\":10000,\"units\":null,\"applicationDate\":\"2016-05-25\",\"effectiveDate\":null,\"issueDate\":null,\"expiryDate\":null,\"payMode\":null,\"payModeRenew\":null,\"payDueDate\":null,\"policyYear\":null,\"liabilityState\":null,\"statusChangeReason\":null,\"payStatus\":null,\"payPeriod\":null,\"payYear\":null,\"payUpDate\":null,\"coverPeriodType\":\"D\",\"coveragePeriod\":1,\"premCalcWay\":null,\"stdPremBf\":0.03,\"discntedStdPremBf\":0.06,\"extraStdPremBf\":0,\"stdPremAf\":0.03,\"discntedStdPremAf\":0.06,\"extraPremAf\":0,\"totalPremAf\":0.06,\"stdPremAn\":0,\"discntedStdPremAn\":0,\"discntedRate\":2.00,\"extraStdPremAn\":0,\"nextStdPremBf\":null,\"nextDiscntedStdPremBf\":null,\"nextExtraStdPremBf\":null,\"nextStdPremAf\":null,\"nextDiscntedStdPremAf\":null,\"nextExtraPremAf\":null,\"nextTotalPremAf\":null,\"nextStdPremAn\":null,\"nextDiscntedStdPremAn\":null,\"nextDiscntedRate\":null,\"nextExtraStdPremAn\":null,\"derivationType\":null,\"uwDecision\":null,\"csDecision\":null,\"policyAssumpsit\":null,\"jointLifeYn\":null,\"waiverId\":null,\"waiverStart\":null,\"waiverEnd\":null,\"renewDecision\":null,\"benefitLevel\":null}],\"policyHolder\":{\"policyId\":null,\"applicantAge\":null,\"holderCustId\":720,\"recordTime\":null,\"holderbaseInfo\":{\"customerId\":720,\"name\":\"豆腐干豆腐\",\"gender\":\"1\",\"birthday\":\"1991-05-23\",\"certiType\":\"111\",\"certiCode\":\"370705199105232516\",\"certiValidStartDate\":null,\"certiValidEndDate\":null,\"marriageId\":null,\"educationId\":null,\"height\":null,\"weight\":null,\"income\":null,\"nationality\":null,\"companyName\":null,\"jobName\":null,\"industryId\":null,\"jobCateId\":null,\"companyKind\":null,\"academicTitle\":null,\"smoking\":null,\"socialSecurityNumber\":null,\"isRetired\":null,\"customerLevel\":null,\"addressId\":null,\"mobile\":null,\"officeTel\":null,\"homeTel\":null,\"fax\":null,\"firstName\":null,\"midName\":null,\"lastName\":null,\"aliasName\":null,\"religionCode\":null,\"childCount\":null,\"status\":null,\"deathDate\":null,\"email1\":null,\"email2\":null,\"qq\":null,\"weixin\":null,\"weibo\":null,\"web\":null,\"addressInfo\":{\"addressId\":null,\"customerId\":720,\"addressType\":null,\"addressFormatType\":null,\"countryCode\":null,\"addressFormat1\":\"110000\",\"addressFormat2\":\"110100\",\"addressFormat3\":\"110102\",\"addressFormat4\":\"西环广场T1\",\"address1\":null,\"address2\":null,\"postCode\":null,\"contactPerson\":null,\"contactTel\":null,\"contactMobile\":null,\"addressStatus\":\"1\",\"telFormatType\":null,\"telFormat1\":null,\"telFormat2\":null,\"telFormat3\":null,\"telFormat4\":null}}},\"insureds\":[{\"policyId\":null,\"insuredCustId\":720,\"applicantAge\":null,\"relationship\":null,\"recordTime\":null,\"itemId\":null,\"insuredCustInfo\":{\"customerId\":720,\"name\":\"豆腐干豆腐\",\"gender\":\"1\",\"birthday\":\"1991-05-23\",\"certiType\":\"111\",\"certiCode\":\"370705199105232516\",\"certiValidStartDate\":null,\"certiValidEndDate\":null,\"marriageId\":null,\"educationId\":null,\"height\":null,\"weight\":null,\"income\":null,\"nationality\":null,\"companyName\":null,\"jobName\":null,\"industryId\":null,\"jobCateId\":null,\"companyKind\":null,\"academicTitle\":null,\"smoking\":null,\"socialSecurityNumber\":null,\"isRetired\":null,\"customerLevel\":null,\"addressId\":null,\"mobile\":null,\"officeTel\":null,\"homeTel\":null,\"fax\":null,\"firstName\":null,\"midName\":null,\"lastName\":null,\"aliasName\":null,\"religionCode\":null,\"childCount\":null,\"status\":null,\"deathDate\":null,\"email1\":null,\"email2\":null,\"qq\":null,\"weixin\":null,\"weibo\":null,\"web\":null,\"addressInfo\":null}}],\"benfits\":[],\"paCustomerRepresents\":null,\"paCustomerRiskSums\":null,\"policyAccount\":[],\"araps\":[{\"arapId\":\"4fc89e45660c4c9cbe87dcd5ffc7a429\",\"branchId\":null,\"organId\":400,\"businessNo\":\"160525212308ffb\",\"policyNo\":\"160525121265a\",\"prodItemId\":\"111574107445589186\",\"productId\":132,\"liabId\":null,\"feeAmount\":3.00,\"chargeType\":null,\"policyYear\":null,\"policyPeriod\":null,\"premiumYear\":null,\"benefitType\":null,\"payMode\":null,\"feeType\":\"41\",\"feeStatus\":\"1\",\"offsetStatus\":\"1\",\"offsetTime\":null,\"finishTime\":null,\"payeeId\":null,\"accountId\":null,\"reversalId\":null,\"relatedId\":null,\"paChgId\":null,\"serviceId\":\"1\",\"claimType\":null,\"entityFund\":null,\"withdrawType\":null,\"cashierId\":null,\"dueTime\":\"2016-05-26 00:00:00\",\"payBalance\":null,\"posted\":null,\"groupProposalId\":null}],\"arapList\":[{\"arapId\":\"4fc89e45660c4c9cbe87dcd5ffc7a429\",\"businessNo\":\"160525212308ffb\",\"policyNo\":\"160525121265a\",\"productId\":132,\"liabId\":null,\"prodItemId\":\"111574107445589186\",\"branchId\":null,\"organId\":400,\"feeType\":\"41\",\"feeAmount\":1.73,\"payeeId\":null,\"payMode\":null,\"accountId\":null,\"finishTime\":null,\"dueTime\":\"2016-05-26 00:00:00\",\"feeStatus\":\"1\",\"offsetStatus\":\"1\",\"offsetTime\":null},{\"arapId\":\"4fc89e45660c4c9cbe87dcd5ffc7a429\",\"businessNo\":\"160525212308ffb\",\"policyNo\":\"160525121265a\",\"productId\":133,\"liabId\":null,\"prodItemId\":\"111574109401145115\",\"branchId\":null,\"organId\":400,\"feeType\":\"41\",\"feeAmount\":0.06,\"payeeId\":null,\"payMode\":null,\"accountId\":null,\"finishTime\":null,\"dueTime\":\"2016-05-26 00:00:00\",\"feeStatus\":\"1\",\"offsetStatus\":\"1\",\"offsetTime\":null},{\"arapId\":\"4fc89e45660c4c9cbe87dcd5ffc7a429\",\"businessNo\":\"160525212308ffb\",\"policyNo\":\"160525121265a\",\"productId\":134,\"liabId\":null,\"prodItemId\":\"111574107579014330\",\"branchId\":null,\"organId\":400,\"feeType\":\"41\",\"feeAmount\":1.21,\"payeeId\":null,\"payMode\":null,\"accountId\":null,\"finishTime\":null,\"dueTime\":\"2016-05-26 00:00:00\",\"feeStatus\":\"1\",\"offsetStatus\":\"1\",\"offsetTime\":null}],\"paymentList\":[{\"arapId\":\"4fc89e45660c4c9cbe87dcd5ffc7a429\",\"organId\":400,\"businessNo\":\"160525212308ffb\",\"policyNo\":\"160525121265a\",\"applyCode\":null,\"feeAmount\":1.73,\"payMode\":null,\"feeType\":\"41\",\"feeStatus\":\"1\",\"offsetStatus\":\"1\",\"finishTime\":null,\"cashierId\":null,\"posted\":null,\"payAmount\":null,\"withdrawType\":null,\"relatedId\":null,\"payBalance\":null,\"accountId\":null,\"internalAccountId\":null,\"internalBankName\":null,\"internalBankCode\":null,\"internalBankAccount\":null,\"applyTime\":null,\"payeeId\":null,\"dueTime\":\"2016-05-26\",\"paymentVoucher\":null,\"offsetGlobalId\":null},{\"arapId\":\"4fc89e45660c4c9cbe87dcd5ffc7a429\",\"organId\":400,\"businessNo\":\"160525212308ffb\",\"policyNo\":\"160525121265a\",\"applyCode\":null,\"feeAmount\":0.06,\"payMode\":null,\"feeType\":\"41\",\"feeStatus\":\"1\",\"offsetStatus\":\"1\",\"finishTime\":null,\"cashierId\":null,\"posted\":null,\"payAmount\":null,\"withdrawType\":null,\"relatedId\":null,\"payBalance\":null,\"accountId\":null,\"internalAccountId\":null,\"internalBankName\":null,\"internalBankCode\":null,\"internalBankAccount\":null,\"applyTime\":null,\"payeeId\":null,\"dueTime\":\"2016-05-26\",\"paymentVoucher\":null,\"offsetGlobalId\":null},{\"arapId\":\"4fc89e45660c4c9cbe87dcd5ffc7a429\",\"organId\":400,\"businessNo\":\"160525212308ffb\",\"policyNo\":\"160525121265a\",\"applyCode\":null,\"feeAmount\":1.21,\"payMode\":null,\"feeType\":\"41\",\"feeStatus\":\"1\",\"offsetStatus\":\"1\",\"finishTime\":null,\"cashierId\":null,\"posted\":null,\"payAmount\":null,\"withdrawType\":null,\"relatedId\":null,\"payBalance\":null,\"accountId\":null,\"internalAccountId\":null,\"internalBankName\":null,\"internalBankCode\":null,\"internalBankAccount\":null,\"applyTime\":null,\"payeeId\":null,\"dueTime\":\"2016-05-26\",\"paymentVoucher\":null,\"offsetGlobalId\":null}],\"payments\":[{\"paymentId\":null,\"arapId\":\"4fc89e45660c4c9cbe87dcd5ffc7a429\",\"organId\":400,\"businessNo\":\"160525212308ffb\",\"policyNo\":\"160525121265a\",\"applyCode\":null,\"feeAmount\":3.00,\"payMode\":null,\"feeType\":\"41\",\"feeStatus\":\"1\",\"offsetStatus\":\"1\",\"finishTime\":null,\"cashierId\":null,\"posted\":null,\"payAmount\":null,\"withdrawType\":null,\"relatedId\":null,\"payBalance\":null,\"accountId\":null,\"internalAccountId\":null,\"internalBankName\":null,\"internalBankCode\":null,\"internalBankAccount\":null,\"applyTime\":null,\"payeeId\":null,\"dueTime\":\"2016-05-26\",\"paymentVoucher\":null,\"failsCounter\":null,\"offsetGlobalId\":null}],\"csChange\":null,\"parentLogId\":null,\"currentChangeId\":null}',NULL,NULL,NULL,401,'{\"policy\":\"基础数据处理异常\"}','N',720,'160525212308ffb','2');
/*!40000 ALTER TABLE `t_pa_outsrv_trans` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `t_pa_outsrv_trans_type`
--

DROP TABLE IF EXISTS `t_pa_outsrv_trans_type`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `t_pa_outsrv_trans_type` (
  `trans_id` varchar(10) DEFAULT NULL COMMENT '交易编号',
  `trans_desc` varchar(100) DEFAULT NULL COMMENT '交易类型描述'
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `t_pa_outsrv_trans_type`
--

LOCK TABLES `t_pa_outsrv_trans_type` WRITE;
/*!40000 ALTER TABLE `t_pa_outsrv_trans_type` DISABLE KEYS */;
/*!40000 ALTER TABLE `t_pa_outsrv_trans_type` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `t_pa_policy`
--

DROP TABLE IF EXISTS `t_pa_policy`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `t_pa_policy` (
  `KEY_ID` varchar(40) NOT NULL COMMENT '主键',
  `POLICY_ID` varchar(40) DEFAULT NULL COMMENT '保单ID 主键',
  `POLICY_NO` varchar(20) DEFAULT NULL COMMENT '保单号码',
  `PROPOSAL_ID` varchar(40) DEFAULT NULL COMMENT '投保单ID',
  `PROPOSAL_NO` varchar(20) DEFAULT NULL COMMENT '投保单号码',
  `ORGAN_ID` bigint(20) DEFAULT NULL COMMENT '保单机构ID',
  `POLICY_CHANNEL` varchar(10) DEFAULT NULL COMMENT '保单所属渠道:团险、个人渠道、银保、电商',
  `SALES_CHANNEL` varchar(10) DEFAULT NULL COMMENT '销售渠道：直销渠道、专业代理、兼业代理',
  `SUB_SALES_CHANNEL` varchar(10) DEFAULT NULL COMMENT '销售渠道：网银、柜面、微信、京东、官网、APP、去哪儿、携程、艺龙',
  `CAMPAIGN_CODE` varchar(4000) DEFAULT NULL COMMENT '营销活动号码',
  `INTRODUCER_ID` bigint(20) DEFAULT NULL COMMENT '保单推荐人',
  `APPLICATION_DATE` datetime DEFAULT NULL COMMENT '保单投保时间',
  `EFFECTIVE_DATE` datetime DEFAULT NULL COMMENT '保单生效时间',
  `ISSUE_DATE` datetime DEFAULT NULL COMMENT '保单承保时间',
  `EXPIRY_DATE` datetime DEFAULT NULL COMMENT '保单满期时间',
  `HOLDER_CUST_ID` bigint(20) DEFAULT NULL COMMENT '投保人客户ID',
  `POLICY_STATUS` varchar(10) DEFAULT NULL COMMENT '保单状态：承保、失效、终止',
  `PAY_STATUS` varchar(10) DEFAULT NULL COMMENT '缴费状态',
  `POLICY_YEAR` int(3) DEFAULT NULL COMMENT '保单年度',
  `STATUS_CHANGE_REASON` varchar(40) DEFAULT NULL COMMENT '保单状态变更原因：承保后撤销、自动冲正、犹豫期回退、满期终止、逾期未交失效、贷款超现价失效、退保终止、理赔终止…',
  `PAY_FREQUENCY` varchar(10) DEFAULT NULL COMMENT '缴费频率代码表：趸缴、月缴、年缴、季缴、半年缴、按天缴',
  `PAY_MODE` varchar(10) DEFAULT NULL COMMENT '保单首期收费方式：现金、支付宝、微信、银行转账',
  `PAY_ACCOUNT` varchar(20) DEFAULT NULL COMMENT '保单首期收费银行代码',
  `PAY_MODE_RENEW` varchar(10) DEFAULT NULL COMMENT '保单首期收费账号',
  `PAY_BANK_CODE` varchar(10) DEFAULT NULL COMMENT '保单续期收费银行代码',
  `SUBMIT_SYSTEM` varchar(10) DEFAULT NULL COMMENT '提交系统：出单系统、理赔系统、保全系统',
  `SUBMIT_CHANNEL` varchar(10) DEFAULT NULL COMMENT '提交系统：官网、APP、手工、第三方渠道、银保通、外包录入',
  `VERIFY_RETURN_ID` bigint(20) DEFAULT NULL COMMENT '复核回退人',
  `VERIFY_RETURN_NOTES` longtext COMMENT '复核回退说明',
  `UW_RETURN_ID` bigint(20) DEFAULT NULL COMMENT '核保回退人',
  `UW_RETURN_NOTES` longtext COMMENT '核保回退说明',
  `UW_DATE` datetime DEFAULT NULL COMMENT '核保完成时间',
  `UW_USER_ID` bigint(20) DEFAULT NULL COMMENT '核保人员',
  `ISSUE_USER_ID` bigint(20) DEFAULT NULL COMMENT '保单承保时间',
  `POLICY_DELIVERY_MODE` varchar(10) DEFAULT NULL COMMENT '保单承保人员',
  `PRINT_TIMES` int(11) DEFAULT NULL COMMENT '保险单领取方式：email、官网下载、纸质保单',
  `LASTEST_PRINT_TIME` datetime DEFAULT NULL COMMENT '保单打印次数',
  `ENDORSEMENT` varchar(2000) DEFAULT NULL COMMENT '最近打印时间',
  `CALLBACK_DATE` datetime DEFAULT NULL COMMENT '保单回访时间',
  `CALLBACK_TYPE` varchar(10) DEFAULT NULL COMMENT '保单回访方式：电话，在线提交回访',
  `RECORD_TIME` datetime DEFAULT NULL COMMENT '当前息更新时间',
  `INSERT_TIME` datetime DEFAULT NULL COMMENT '插入时间',
  `UPDATE_TIME` datetime DEFAULT NULL COMMENT '修改时间',
  `INSERTED_BY` bigint(20) DEFAULT NULL COMMENT '插入人员',
  `UPDATED_BY` bigint(20) DEFAULT NULL COMMENT '修改人员',
  `PARTITION_INDI` bigint(20) DEFAULT NULL COMMENT '分库字段',
  UNIQUE KEY `IDX_UNIN_POLICY_CODE` (`POLICY_NO`),
  UNIQUE KEY `IDX_UNIN_APPLY_CODE` (`PROPOSAL_NO`),
  KEY `IDX_POLICY_CODE_APPLY_CODE` (`POLICY_NO`,`PROPOSAL_NO`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `t_pa_policy`
--

LOCK TABLES `t_pa_policy` WRITE;
/*!40000 ALTER TABLE `t_pa_policy` DISABLE KEYS */;
INSERT INTO `t_pa_policy` VALUES ('323dfa8f78dd4790974822ab484c69ff','931378233760819660','160525121265a','11157426127945','160525212308ffb',400,NULL,NULL,NULL,'{\"mktPolicyInfo\":{\"mktPolicyId\":null,\"mktProdId\":12,\"planName\":\"计划1\",\"insuredGender\":null,\"insuredArea\":null,\"propCopies\":null,\"propLevel\":null,\"amount\":null,\"insuredSocial\":null,\"insuredAge\":null,\"coveragePeriodType\":null,\"coveragePeriod\":\"1D\",\"chargePeriodType\":null,\"chargePeriod\":null,\"chargeFreq\":null,\"premium\":\"3\",\"mktCoverageInfo\":null}}',NULL,'2016-05-25 08:00:00','2016-05-26 08:00:00',NULL,NULL,720,'01',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'2016-05-29 14:13:51','2016-05-29 14:13:51',NULL,NULL,720);
/*!40000 ALTER TABLE `t_pa_policy` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `t_pa_policy_beneficiary`
--

DROP TABLE IF EXISTS `t_pa_policy_beneficiary`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `t_pa_policy_beneficiary` (
  `KEY_ID` varchar(40) NOT NULL COMMENT '主键',
  `LIST_ID` varchar(40) DEFAULT NULL COMMENT '上游数据ID',
  `POLICY_ID` varchar(40) DEFAULT NULL COMMENT '保单ID',
  `BENE_CUST_ID` bigint(20) DEFAULT NULL COMMENT '受益人客户ID',
  `BEN_TYPE` varchar(10) DEFAULT NULL COMMENT '受益人类型',
  `BEN_ORDER` int(1) DEFAULT NULL COMMENT '受益顺序',
  `BENE_PERCENT` decimal(3,2) DEFAULT NULL COMMENT '受益比例',
  `IS_LEGAL` char(1) DEFAULT NULL COMMENT '是否法定受益人',
  `PARTITION_INDI` bigint(20) DEFAULT NULL COMMENT '分库字段标识',
  `INSERT_TIME` datetime DEFAULT NULL COMMENT '创建时间',
  `UPDATE_TIME` datetime DEFAULT NULL COMMENT '修改时间',
  `INSERTED_BY` bigint(20) DEFAULT NULL COMMENT '创建人',
  `UPDATED_BY` bigint(20) DEFAULT NULL COMMENT '修改人',
  `INSU_CUST_ID` varchar(40) DEFAULT NULL COMMENT '投保人ID',
  PRIMARY KEY (`KEY_ID`),
  KEY `FK_BENEFICIARY_CUST_ID` (`BENE_CUST_ID`),
  KEY `UNI_BENE_CUST` (`POLICY_ID`,`BENE_CUST_ID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `t_pa_policy_beneficiary`
--

LOCK TABLES `t_pa_policy_beneficiary` WRITE;
/*!40000 ALTER TABLE `t_pa_policy_beneficiary` DISABLE KEYS */;
/*!40000 ALTER TABLE `t_pa_policy_beneficiary` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `t_pa_policy_beneficiary_log`
--

DROP TABLE IF EXISTS `t_pa_policy_beneficiary_log`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `t_pa_policy_beneficiary_log` (
  `LOG_ID` varchar(40) NOT NULL COMMENT '主键ID',
  `change_id` varchar(40) DEFAULT NULL COMMENT '保单变更ID',
  `LOG_ID_OLD` varchar(40) DEFAULT NULL COMMENT '上比数据LogID',
  `IS_NEW` varchar(20) DEFAULT 'Y' COMMENT '是否最新数据',
  `KEY_ID` varchar(40) DEFAULT NULL COMMENT '系统受益人ID',
  `LIST_ID` varchar(40) DEFAULT NULL COMMENT '上游系统受益人主键ID',
  `POLICY_ID` varchar(40) DEFAULT NULL COMMENT '保单ID',
  `BENE_CUST_ID` bigint(20) DEFAULT NULL COMMENT '受益人客户ID',
  `BEN_TYPE` varchar(10) DEFAULT NULL COMMENT '受益人类型',
  `BEN_ORDER` int(1) DEFAULT NULL COMMENT '受益顺序',
  `BENE_PERCENT` decimal(3,2) DEFAULT NULL COMMENT '受益比例',
  `IS_LEGAL` char(1) DEFAULT NULL COMMENT '是否法定受益人',
  `PARTITION_INDI` bigint(20) DEFAULT NULL COMMENT '分库字段标识',
  `INSERT_TIME` datetime DEFAULT NULL COMMENT '创建时间',
  `UPDATE_TIME` datetime DEFAULT NULL COMMENT '修改时间',
  `INSERTED_BY` bigint(20) DEFAULT NULL COMMENT '创建人',
  `UPDATED_BY` bigint(20) DEFAULT NULL COMMENT '修改人',
  `INSU_CUST_ID` varchar(40) DEFAULT NULL COMMENT '被保人ID',
  PRIMARY KEY (`LOG_ID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `t_pa_policy_beneficiary_log`
--

LOCK TABLES `t_pa_policy_beneficiary_log` WRITE;
/*!40000 ALTER TABLE `t_pa_policy_beneficiary_log` DISABLE KEYS */;
/*!40000 ALTER TABLE `t_pa_policy_beneficiary_log` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `t_pa_policy_change`
--

DROP TABLE IF EXISTS `t_pa_policy_change`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `t_pa_policy_change` (
  `KEY_ID` varchar(40) NOT NULL COMMENT '主键',
  `CHANGE_ID` varchar(40) DEFAULT NULL COMMENT '上游系统变更主键ID',
  `policy_id` varchar(40) DEFAULT NULL COMMENT '保单ID',
  `SERVICE_ID` varchar(10) DEFAULT NULL COMMENT '变更类别',
  `CHANGE_RECORD` datetime DEFAULT NULL COMMENT '变更时间',
  `VALIDATE_TIME` datetime DEFAULT NULL COMMENT '生效时间',
  `CHANGE_CAUSE` varchar(10) DEFAULT NULL COMMENT '变更原因',
  `CREATE_BY` bigint(20) DEFAULT NULL COMMENT '创建人',
  `CREATE_TIME` datetime DEFAULT NULL COMMENT '创建用户时间',
  `CREATE_TIMESTAMP` datetime DEFAULT NULL COMMENT '创建系统时间',
  `UPDATE_BY` bigint(20) DEFAULT NULL COMMENT '修改人',
  `UPDATE_TIME` datetime DEFAULT NULL COMMENT '修改用户时间',
  `UPDATE_TIMESTAMP` datetime DEFAULT NULL COMMENT '修改系统时间',
  `PARTITION_INDI` bigint(20) DEFAULT NULL COMMENT '分库字段',
  `STATUES` varchar(2) DEFAULT '2' COMMENT '0注册 1录入 2生效',
  PRIMARY KEY (`KEY_ID`),
  UNIQUE KEY `UNI_CHANGE_ITEM` (`CHANGE_ID`,`policy_id`),
  KEY `FK_POLICY_CHANGE_POLICY_ID` (`policy_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `t_pa_policy_change`
--

LOCK TABLES `t_pa_policy_change` WRITE;
/*!40000 ALTER TABLE `t_pa_policy_change` DISABLE KEYS */;
INSERT INTO `t_pa_policy_change` VALUES ('51a458771dd44cccbd05a064a32b4564','931378278361159661','931378233760819660','NB','2016-05-29 14:13:51','2016-05-29 14:13:51','NB',NULL,'2016-05-29 14:13:51','2016-05-29 14:13:51',NULL,'2016-05-29 14:13:51','2016-05-29 14:13:51',720,'2');
/*!40000 ALTER TABLE `t_pa_policy_change` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `t_pa_policy_holder`
--

DROP TABLE IF EXISTS `t_pa_policy_holder`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `t_pa_policy_holder` (
  `KEY_ID` varchar(40) NOT NULL,
  `LIST_ID` varchar(40) DEFAULT NULL,
  `POLICY_ID` varchar(40) DEFAULT NULL,
  `APPLICANT_AGE` int(3) DEFAULT NULL,
  `HOLDER_CUST_ID` bigint(20) DEFAULT NULL,
  `RECORD_TIME` datetime DEFAULT NULL,
  `INSERTED_BY` bigint(20) DEFAULT NULL,
  `UPDATED_BY` bigint(20) DEFAULT NULL,
  `INSERT_TIME` datetime DEFAULT NULL,
  `UPDATE_TIME` datetime DEFAULT NULL,
  `PARTITION_INDI` bigint(20) DEFAULT NULL COMMENT '分库字段',
  PRIMARY KEY (`KEY_ID`),
  UNIQUE KEY `UNI_POLICY_CUST` (`POLICY_ID`,`HOLDER_CUST_ID`),
  KEY `FK_HOLDER_CUST_ID` (`HOLDER_CUST_ID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `t_pa_policy_holder`
--

LOCK TABLES `t_pa_policy_holder` WRITE;
/*!40000 ALTER TABLE `t_pa_policy_holder` DISABLE KEYS */;
INSERT INTO `t_pa_policy_holder` VALUES ('a7030ee1a27c4c0baebb605e941c3c7f','f7daa0a28a084053a4b83306480b0e89','931378233760819660',NULL,720,NULL,NULL,NULL,'2016-05-29 14:13:51','2016-05-29 14:13:51',720);
/*!40000 ALTER TABLE `t_pa_policy_holder` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `t_pa_policy_holder_log`
--

DROP TABLE IF EXISTS `t_pa_policy_holder_log`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `t_pa_policy_holder_log` (
  `LOG_ID` varchar(40) NOT NULL COMMENT 'log主键',
  `change_id` varchar(40) DEFAULT NULL COMMENT '保单变更ID',
  `LOG_ID_OLD` varchar(40) DEFAULT NULL COMMENT '上笔记录logID',
  `IS_NEW` varchar(2) DEFAULT 'Y' COMMENT '是否最新记录',
  `KEY_ID` varchar(40) DEFAULT NULL COMMENT '系统投保人ID',
  `LIST_ID` varchar(40) DEFAULT NULL,
  `POLICY_ID` varchar(40) DEFAULT NULL,
  `APPLICANT_AGE` int(3) DEFAULT NULL,
  `HOLDER_CUST_ID` bigint(20) DEFAULT NULL,
  `RECORD_TIME` datetime DEFAULT NULL,
  `INSERTED_BY` bigint(20) DEFAULT NULL,
  `UPDATED_BY` bigint(20) DEFAULT NULL,
  `INSERT_TIME` datetime DEFAULT NULL,
  `UPDATE_TIME` datetime DEFAULT NULL,
  `PARTITION_INDI` bigint(20) DEFAULT NULL COMMENT '分库字段',
  PRIMARY KEY (`LOG_ID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `t_pa_policy_holder_log`
--

LOCK TABLES `t_pa_policy_holder_log` WRITE;
/*!40000 ALTER TABLE `t_pa_policy_holder_log` DISABLE KEYS */;
INSERT INTO `t_pa_policy_holder_log` VALUES ('c66407d4285e4e098c5db7f1d2e4774a','931378278361159661',NULL,'Y','19b365e61156416293ec6584ad6afd38','f7daa0a28a084053a4b83306480b0e89','931378233760819660',NULL,720,NULL,NULL,NULL,'2016-05-29 14:13:51','2016-05-29 14:13:51',720);
/*!40000 ALTER TABLE `t_pa_policy_holder_log` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `t_pa_policy_insured`
--

DROP TABLE IF EXISTS `t_pa_policy_insured`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `t_pa_policy_insured` (
  `KEY_ID` varchar(40) NOT NULL,
  `LIST_ID` varchar(40) DEFAULT NULL,
  `POLICY_ID` varchar(40) DEFAULT NULL,
  `INSURED_CUST_ID` bigint(20) DEFAULT NULL,
  `APPLICANT_AGE` int(3) DEFAULT NULL,
  `RELATIONSHIP` varchar(20) DEFAULT NULL,
  `RECORD_TIME` datetime DEFAULT NULL,
  `INSERTED_BY` bigint(20) DEFAULT NULL,
  `UPDATED_BY` bigint(20) DEFAULT NULL,
  `INSERT_TIME` datetime DEFAULT NULL,
  `UPDATE_TIME` datetime DEFAULT NULL,
  `PARTITION_INDI` bigint(20) DEFAULT NULL COMMENT '分库字段',
  `Item_id` varchar(40) DEFAULT NULL,
  PRIMARY KEY (`KEY_ID`),
  UNIQUE KEY `UNI_INSU_CUST` (`POLICY_ID`,`INSURED_CUST_ID`),
  KEY `fk_customer_cust_id` (`INSURED_CUST_ID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `t_pa_policy_insured`
--

LOCK TABLES `t_pa_policy_insured` WRITE;
/*!40000 ALTER TABLE `t_pa_policy_insured` DISABLE KEYS */;
INSERT INTO `t_pa_policy_insured` VALUES ('637bc8116ef94063b628afa2acd637bd','b022fd51d79d494990beb0e2bec7a13d','931378233760819660',720,NULL,NULL,NULL,NULL,NULL,'2016-05-29 14:13:51','2016-05-29 14:13:51',720,NULL);
/*!40000 ALTER TABLE `t_pa_policy_insured` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `t_pa_policy_insured_log`
--

DROP TABLE IF EXISTS `t_pa_policy_insured_log`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `t_pa_policy_insured_log` (
  `LOG_ID` varchar(40) NOT NULL COMMENT 'log主键',
  `change_id` varchar(40) DEFAULT NULL COMMENT '保单变更ID',
  `LOG_ID_OLD` varchar(40) DEFAULT NULL COMMENT '上笔记录logID',
  `IS_NEW` varchar(2) DEFAULT 'Y' COMMENT '是否最新记录',
  `KEY_ID` varchar(40) DEFAULT NULL COMMENT '被保人主键ID',
  `LIST_ID` varchar(40) DEFAULT NULL,
  `POLICY_ID` varchar(40) DEFAULT NULL,
  `INSURED_CUST_ID` bigint(20) DEFAULT NULL,
  `APPLICANT_AGE` int(3) DEFAULT NULL,
  `RELATIONSHIP` varchar(20) DEFAULT NULL,
  `RECORD_TIME` datetime DEFAULT NULL,
  `INSERTED_BY` bigint(20) DEFAULT NULL,
  `UPDATED_BY` bigint(20) DEFAULT NULL,
  `INSERT_TIME` datetime DEFAULT NULL,
  `UPDATE_TIME` datetime DEFAULT NULL,
  `PARTITION_INDI` bigint(20) DEFAULT NULL COMMENT '分库字段',
  `item_id` varchar(40) DEFAULT NULL,
  PRIMARY KEY (`LOG_ID`),
  KEY `LOG_ID` (`LOG_ID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `t_pa_policy_insured_log`
--

LOCK TABLES `t_pa_policy_insured_log` WRITE;
/*!40000 ALTER TABLE `t_pa_policy_insured_log` DISABLE KEYS */;
INSERT INTO `t_pa_policy_insured_log` VALUES ('7fefc4aa45aa4eac8a863f472076c8cf','931378278361159661',NULL,'Y','51836bc4c6ff40108452b4bc9693cd5e','b022fd51d79d494990beb0e2bec7a13d','931378233760819660',720,NULL,NULL,NULL,NULL,NULL,'2016-05-29 14:13:51','2016-05-29 14:13:51',720,NULL);
/*!40000 ALTER TABLE `t_pa_policy_insured_log` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `t_pa_policy_log`
--

DROP TABLE IF EXISTS `t_pa_policy_log`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `t_pa_policy_log` (
  `KEY_ID` varchar(40) NOT NULL COMMENT '保单系统主键',
  `LOG_ID` varchar(40) DEFAULT NULL COMMENT 'lOG ID 主键',
  `change_id` varchar(40) DEFAULT NULL COMMENT '保全变更号',
  `LOG_ID_OLD` varchar(40) DEFAULT NULL COMMENT '上一笔记录编号',
  `IS_NEW` varchar(2) DEFAULT 'Y' COMMENT '是否最新数据',
  `POLICY_ID` varchar(40) DEFAULT NULL COMMENT '保单ID 主键',
  `POLICY_NO` varchar(20) DEFAULT NULL COMMENT '保单号码',
  `PROPOSAL_ID` varchar(40) DEFAULT NULL COMMENT '投保单ID',
  `PROPOSAL_NO` varchar(20) DEFAULT NULL COMMENT '投保单号码',
  `ORGAN_ID` bigint(20) DEFAULT NULL COMMENT '保单机构ID',
  `POLICY_CHANNEL` varchar(10) DEFAULT NULL COMMENT '保单所属渠道:团险、个人渠道、银保、电商',
  `SALES_CHANNEL` varchar(10) DEFAULT NULL COMMENT '销售渠道：直销渠道、专业代理、兼业代理',
  `SUB_SALES_CHANNEL` varchar(10) DEFAULT NULL COMMENT '销售渠道：网银、柜面、微信、京东、官网、APP、去哪儿、携程、艺龙',
  `CAMPAIGN_CODE` varchar(4000) DEFAULT NULL COMMENT '营销活动号码',
  `INTRODUCER_ID` bigint(20) DEFAULT NULL COMMENT '保单推荐人',
  `APPLICATION_DATE` datetime DEFAULT NULL COMMENT '保单投保时间',
  `EFFECTIVE_DATE` datetime DEFAULT NULL COMMENT '保单生效时间',
  `ISSUE_DATE` datetime DEFAULT NULL COMMENT '保单承保时间',
  `EXPIRY_DATE` datetime DEFAULT NULL COMMENT '保单满期时间',
  `HOLDER_CUST_ID` bigint(20) DEFAULT NULL COMMENT '投保人客户ID',
  `POLICY_STATUS` varchar(10) DEFAULT NULL COMMENT '保单状态：承保、失效、终止',
  `PAY_STATUS` varchar(10) DEFAULT NULL COMMENT '缴费状态',
  `POLICY_YEAR` int(3) DEFAULT NULL COMMENT '保单年度',
  `STATUS_CHANGE_REASON` varchar(10) DEFAULT NULL COMMENT '保单状态变更原因：承保后撤销、自动冲正、犹豫期回退、满期终止、逾期未交失效、贷款超现价失效、退保终止、理赔终止…',
  `PAY_FREQUENCY` varchar(10) DEFAULT NULL COMMENT '缴费频率代码表：趸缴、月缴、年缴、季缴、半年缴、按天缴',
  `PAY_MODE` varchar(10) DEFAULT NULL COMMENT '保单首期收费方式：现金、支付宝、微信、银行转账',
  `PAY_ACCOUNT` varchar(20) DEFAULT NULL COMMENT '保单首期收费银行代码',
  `PAY_MODE_RENEW` varchar(10) DEFAULT NULL COMMENT '保单首期收费账号',
  `PAY_BANK_CODE` varchar(10) DEFAULT NULL COMMENT '保单续期收费银行代码',
  `SUBMIT_SYSTEM` varchar(10) DEFAULT NULL COMMENT '提交系统：出单系统、理赔系统、保全系统',
  `SUBMIT_CHANNEL` varchar(10) DEFAULT NULL COMMENT '提交系统：官网、APP、手工、第三方渠道、银保通、外包录入',
  `VERIFY_RETURN_ID` bigint(20) DEFAULT NULL COMMENT '复核回退人',
  `VERIFY_RETURN_NOTES` longtext COMMENT '复核回退说明',
  `UW_RETURN_ID` bigint(20) DEFAULT NULL COMMENT '核保回退人',
  `UW_RETURN_NOTES` longtext COMMENT '核保回退说明',
  `UW_DATE` datetime DEFAULT NULL COMMENT '核保完成时间',
  `UW_USER_ID` bigint(20) DEFAULT NULL COMMENT '核保人员',
  `ISSUE_USER_ID` bigint(20) DEFAULT NULL COMMENT '保单承保时间',
  `POLICY_DELIVERY_MODE` varchar(10) DEFAULT NULL COMMENT '保单承保人员',
  `PRINT_TIMES` int(5) DEFAULT NULL COMMENT '保险单领取方式：email、官网下载、纸质保单',
  `LASTEST_PRINT_TIME` datetime DEFAULT NULL COMMENT '保单打印次数',
  `ENDORSEMENT` varchar(2000) DEFAULT NULL COMMENT '最近打印时间',
  `CALLBACK_DATE` datetime DEFAULT NULL COMMENT '保单回访时间',
  `CALLBACK_TYPE` varchar(10) DEFAULT NULL COMMENT '保单回访方式：电话，在线提交回访',
  `RECORD_TIME` datetime DEFAULT NULL COMMENT '当前息更新时间',
  `INSERT_TIME` datetime DEFAULT NULL COMMENT '插入时间',
  `UPDATE_TIME` datetime DEFAULT NULL COMMENT '修改时间',
  `INSERTED_BY` bigint(20) DEFAULT NULL COMMENT '插入人员',
  `UPDATED_BY` bigint(20) DEFAULT NULL COMMENT '修改人员',
  `PARTITION_INDI` bigint(20) DEFAULT NULL COMMENT '分库字段'
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `t_pa_policy_log`
--

LOCK TABLES `t_pa_policy_log` WRITE;
/*!40000 ALTER TABLE `t_pa_policy_log` DISABLE KEYS */;
INSERT INTO `t_pa_policy_log` VALUES ('3befb2c4f5b945fcb17a33035ba40abf','a02bff34f20644ceba872d695adf5632','931378278361159661',NULL,'Y','931378233760819660','160525121265a','11157426127945','160525212308ffb',400,NULL,NULL,NULL,'{\"mktPolicyInfo\":{\"mktPolicyId\":null,\"mktProdId\":12,\"planName\":\"计划1\",\"insuredGender\":null,\"insuredArea\":null,\"propCopies\":null,\"propLevel\":null,\"amount\":null,\"insuredSocial\":null,\"insuredAge\":null,\"coveragePeriodType\":null,\"coveragePeriod\":\"1D\",\"chargePeriodType\":null,\"chargePeriod\":null,\"chargeFreq\":null,\"premium\":\"3\",\"mktCoverageInfo\":null}}',NULL,'2016-05-25 08:00:00','2016-05-26 08:00:00',NULL,NULL,720,'01',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'2016-05-29 14:13:51','2016-05-29 14:13:51',NULL,NULL,720);
/*!40000 ALTER TABLE `t_pa_policy_log` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `t_pa_policy_product`
--

DROP TABLE IF EXISTS `t_pa_policy_product`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `t_pa_policy_product` (
  `KEY_id` varchar(40) NOT NULL COMMENT '系统主键',
  `ITEM_ID` varchar(40) DEFAULT NULL COMMENT '上游险种主键ID',
  `PROP_ITEM_ID` varchar(40) DEFAULT NULL COMMENT '投保险种ID',
  `MAIN_ITEM_ID` varchar(40) DEFAULT NULL COMMENT '搭配主险ID',
  `POLICY_ID` varchar(40) DEFAULT NULL COMMENT '保单ID 主键',
  `PRODUCT_ID` bigint(20) DEFAULT NULL COMMENT '产品主键',
  `INSURANT_ID` varchar(40) DEFAULT NULL COMMENT '被保人ID',
  `ORGAN_ID` bigint(20) DEFAULT NULL COMMENT '机构ID',
  `SUM_ASSURED` decimal(18,2) DEFAULT NULL COMMENT '保额',
  `UNITS` decimal(3,2) DEFAULT NULL COMMENT '份数',
  `APPLICATION_DATE` datetime DEFAULT NULL COMMENT '险种投保时间',
  `EFFECTIVE_DATE` datetime DEFAULT NULL COMMENT '险种生效时间',
  `ISSUE_DATE` datetime DEFAULT NULL COMMENT '险种承保时间',
  `EXPIRY_DATE` datetime DEFAULT NULL COMMENT '险种满期时间',
  `PAY_MODE` varchar(10) DEFAULT NULL COMMENT '保单首期收费方式：现金、支付宝、微信、银行转账、豁免、账户扣除….',
  `PAY_MODE_RENEW` varchar(10) DEFAULT NULL COMMENT '保单首期收费方式：现金、支付宝、微信、银行转账、豁免、账户扣除….',
  `PAY_DUE_DATE` date DEFAULT NULL COMMENT '应缴日期',
  `POLICY_YEAR` int(3) DEFAULT NULL COMMENT '险种年度',
  `LIABILITY_STATE` varchar(10) DEFAULT NULL COMMENT '险种状态代码表',
  `STATUS_CHANGE_REASON` varchar(10) DEFAULT NULL COMMENT '险种状态变更原因：承保后撤销、自动冲正、犹豫期回退、满期终止、逾期未交失效、贷款超现价失效、退保终止、险种转换、理赔终止…',
  `PAY_STATUS` varchar(10) DEFAULT NULL COMMENT '缴费状态',
  `PAY_PERIOD` varchar(10) DEFAULT NULL COMMENT '缴费期限：一次性缴清、年期缴费、缴止某年龄、终身缴费',
  `PAY_YEAR` int(3) DEFAULT NULL COMMENT '缴费年期',
  `PAY_UP_DATE` date DEFAULT NULL COMMENT '费用交至日期',
  `COVER_PERIOD_TYPE` varchar(10) DEFAULT NULL COMMENT '保障类型：按年限、终身、保障某年龄',
  `COVERAGE_PERIOD` int(3) DEFAULT NULL COMMENT '保障期限',
  `PREM_CALC_WAY` varchar(10) DEFAULT NULL COMMENT '保费计算方式：保额算保费、保费算保额、约定费率',
  `STD_PREM_BF` decimal(18,2) DEFAULT NULL COMMENT '当期标准保费',
  `DISCNTED_STD_PREM_BF` decimal(18,2) DEFAULT NULL COMMENT '当期标准折扣保费',
  `EXTRA_STD_PREM_BF` decimal(18,2) DEFAULT NULL COMMENT '当期标准加费金额',
  `STD_PREM_AF` decimal(18,2) DEFAULT NULL COMMENT '当期缴别标准保费',
  `DISCNTED_STD_PREM_AF` decimal(18,2) DEFAULT NULL COMMENT '当期缴别标准折扣保费',
  `EXTRA_PREM_AF` decimal(18,2) DEFAULT NULL COMMENT '当期缴别标准加费金额',
  `TOTAL_PREM_AF` decimal(18,2) DEFAULT NULL COMMENT '当期缴别总保费',
  `STD_PREM_AN` decimal(18,2) DEFAULT NULL COMMENT '当期标准年保费',
  `DISCNTED_STD_PREM_AN` decimal(18,2) DEFAULT NULL COMMENT '当期标准折扣年保费',
  `DISCNTED_RATE` decimal(18,2) DEFAULT NULL COMMENT '当期折扣率',
  `EXTRA_STD_PREM_AN` decimal(18,2) DEFAULT NULL COMMENT '当期标准年加费金额',
  `NEXT_STD_PREM_BF` decimal(18,2) DEFAULT NULL COMMENT '下期标准保费',
  `NEXT_DISCNTED_STD_PREM_BF` decimal(18,2) DEFAULT NULL COMMENT '下期标准折扣保费',
  `NEXT_EXTRA_STD_PREM_BF` decimal(18,2) DEFAULT NULL COMMENT '下期标准加费金额',
  `NEXT_STD_PREM_AF` decimal(18,2) DEFAULT NULL COMMENT '下期缴别标准保费',
  `NEXT_DISCNTED_STD_PREM_AF` decimal(18,2) DEFAULT NULL COMMENT '下期缴别当期标准折扣保费',
  `NEXT_EXTRA_PREM_AF` decimal(18,2) DEFAULT NULL COMMENT '下期缴别当期标准加费金额',
  `NEXT_TOTAL_PREM_AF` decimal(18,2) DEFAULT NULL COMMENT '下期缴别当期总保费',
  `NEXT_STD_PREM_AN` decimal(18,2) DEFAULT NULL COMMENT '下期标准年保费',
  `NEXT_DISCNTED_STD_PREM_AN` decimal(18,2) DEFAULT NULL COMMENT '下期标准折扣年保费',
  `NEXT_DISCNTED_RATE` decimal(18,2) DEFAULT NULL COMMENT '下期折扣率',
  `NEXT_EXTRA_STD_PREM_AN` decimal(18,2) DEFAULT NULL COMMENT '下期标准年加费金额',
  `DERIVATION_TYPE` varchar(10) DEFAULT NULL COMMENT '险种来源：新契约、续保、保单变更',
  `UW_DECISION` varchar(10) DEFAULT NULL COMMENT '新契约核保决定',
  `RENEW_DECISION` varbinary(10) DEFAULT NULL COMMENT '续保决定',
  `CS_DECISION` varchar(10) DEFAULT NULL COMMENT '保全核保决定',
  `POLICY_ASSUMPSIT` varchar(4000) DEFAULT NULL COMMENT '特别约定',
  `JOINT_LIFE_YN` char(1) DEFAULT NULL COMMENT '连生险险标记',
  `WAIVER_ID` bigint(20) DEFAULT NULL COMMENT '被豁免ID',
  `WAIVER_START` date DEFAULT NULL COMMENT '豁免开始日期',
  `WAIVER_END` date DEFAULT NULL COMMENT '豁免结束日期',
  `PARTITION_INDI` bigint(20) DEFAULT NULL COMMENT '分库标记字段',
  `RECORD_TIME` datetime DEFAULT NULL COMMENT '当前息更新时间',
  `INSERT_TIME` datetime DEFAULT NULL COMMENT '插入时间',
  `UPDATE_TIME` datetime DEFAULT NULL COMMENT '修改时间',
  `INSERTED_BY` bigint(20) DEFAULT NULL COMMENT '插入人员',
  `UPDATED_BY` bigint(20) DEFAULT NULL COMMENT '修改人员',
  `BENEFIT_LEVEL` bigint(11) DEFAULT NULL COMMENT '投保档次',
  PRIMARY KEY (`KEY_id`),
  UNIQUE KEY `UNI_POLICY_PRODUCT` (`POLICY_ID`,`PRODUCT_ID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `t_pa_policy_product`
--

LOCK TABLES `t_pa_policy_product` WRITE;
/*!40000 ALTER TABLE `t_pa_policy_product` DISABLE KEYS */;
INSERT INTO `t_pa_policy_product` VALUES ('809415c1a9684478aac643f2a42344e9','111574107445589186','111574107445589186',NULL,'931378233760819660',132,'09fd85ae86d24b7ca609e3bd476c08d9',400,200000.00,NULL,'2016-05-25 08:00:00',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'D',1,NULL,0.79,1.73,0.00,0.79,1.73,0.00,1.73,0.00,0.00,2.19,0.00,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,720,NULL,'2016-05-29 14:13:51','2016-05-29 14:13:51',NULL,NULL,NULL),('d1c75dd477dc46349e6d4ef483c87226','111574109401145115','111574109401145115','111574107445589186','931378233760819660',133,'09fd85ae86d24b7ca609e3bd476c08d9',400,10000.00,NULL,'2016-05-25 08:00:00',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'D',1,NULL,0.03,0.06,0.00,0.03,0.06,0.00,0.06,0.00,0.00,2.00,0.00,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,720,NULL,'2016-05-29 14:13:51','2016-05-29 14:13:51',NULL,NULL,NULL),('da2cb0ad682d4bc590600ec1a2ef2bdc','111574107579014330','111574107579014330',NULL,'931378233760819660',134,'09fd85ae86d24b7ca609e3bd476c08d9',400,200000.00,NULL,'2016-05-25 08:00:00',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'D',1,NULL,0.55,1.21,0.00,0.55,1.21,0.00,1.21,0.00,0.00,2.20,0.00,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,720,NULL,'2016-05-29 14:13:51','2016-05-29 14:13:51',NULL,NULL,NULL);
/*!40000 ALTER TABLE `t_pa_policy_product` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `t_pa_policy_product_log`
--

DROP TABLE IF EXISTS `t_pa_policy_product_log`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `t_pa_policy_product_log` (
  `LOG_ID` varchar(40) NOT NULL COMMENT '主键',
  `LOG_ID_OLD` varchar(40) DEFAULT NULL COMMENT '上比记录LOGID',
  `IS_NEW` varchar(2) DEFAULT 'Y' COMMENT '是否最新记录',
  `CHANGE_ID` varchar(40) DEFAULT NULL COMMENT '保全编号',
  `KEY_ID` varchar(40) DEFAULT NULL COMMENT '系统险种ID',
  `ITEM_ID` varchar(40) DEFAULT NULL COMMENT '上游系统险种主键ID',
  `PROP_ITEM_ID` varchar(40) DEFAULT NULL COMMENT '投保险种ID',
  `MAIN_ITEM_ID` varchar(40) DEFAULT NULL COMMENT '搭配主险ID',
  `POLICY_ID` varchar(40) DEFAULT NULL COMMENT '保单ID 主键',
  `PRODUCT_ID` bigint(20) DEFAULT NULL COMMENT '产品主键',
  `INSURANT_ID` bigint(20) DEFAULT NULL COMMENT '被保人ID',
  `ORGAN_ID` bigint(20) DEFAULT NULL COMMENT '机构ID',
  `SUM_ASSURED` decimal(18,2) DEFAULT NULL COMMENT '保额',
  `UNITS` decimal(3,2) DEFAULT NULL COMMENT '份数',
  `APPLICATION_DATE` datetime DEFAULT NULL COMMENT '险种投保时间',
  `EFFECTIVE_DATE` datetime DEFAULT NULL COMMENT '险种生效时间',
  `ISSUE_DATE` datetime DEFAULT NULL COMMENT '险种承保时间',
  `EXPIRY_DATE` datetime DEFAULT NULL COMMENT '险种满期时间',
  `PAY_MODE` varchar(10) DEFAULT NULL COMMENT '保单首期收费方式：现金、支付宝、微信、银行转账、豁免、账户扣除….',
  `PAY_MODE_RENEW` varchar(10) DEFAULT NULL COMMENT '保单首期收费方式：现金、支付宝、微信、银行转账、豁免、账户扣除….',
  `PAY_DUE_DATE` date DEFAULT NULL COMMENT '应缴日期',
  `POLICY_YEAR` int(3) DEFAULT NULL COMMENT '险种年度',
  `LIABILITY_STATE` varchar(10) DEFAULT NULL COMMENT '险种状态代码表',
  `STATUS_CHANGE_REASON` varchar(10) DEFAULT NULL COMMENT '险种状态变更原因：承保后撤销、自动冲正、犹豫期回退、满期终止、逾期未交失效、贷款超现价失效、退保终止、险种转换、理赔终止…',
  `PAY_STATUS` varchar(10) DEFAULT NULL COMMENT '缴费状态',
  `PAY_PERIOD` varchar(10) DEFAULT NULL COMMENT '缴费期限：一次性缴清、年期缴费、缴止某年龄、终身缴费',
  `PAY_YEAR` int(3) DEFAULT NULL COMMENT '缴费年期',
  `PAY_UP_DATE` date DEFAULT NULL COMMENT '费用交至日期',
  `COVER_PERIOD_TYPE` varchar(10) DEFAULT NULL COMMENT '保障类型：按年限、终身、保障某年龄',
  `COVERAGE_PERIOD` int(3) DEFAULT NULL COMMENT '保障期限',
  `PREM_CALC_WAY` varchar(10) DEFAULT NULL COMMENT '保费计算方式：保额算保费、保费算保额、约定费率',
  `STD_PREM_BF` decimal(18,2) DEFAULT NULL COMMENT '当期标准保费',
  `DISCNTED_STD_PREM_BF` decimal(18,2) DEFAULT NULL COMMENT '当期标准折扣保费',
  `EXTRA_STD_PREM_BF` decimal(18,2) DEFAULT NULL COMMENT '当期标准加费金额',
  `STD_PREM_AF` decimal(18,2) DEFAULT NULL COMMENT '当期缴别标准保费',
  `DISCNTED_STD_PREM_AF` decimal(18,2) DEFAULT NULL COMMENT '当期缴别标准折扣保费',
  `EXTRA_PREM_AF` decimal(18,2) DEFAULT NULL COMMENT '当期缴别标准加费金额',
  `TOTAL_PREM_AF` decimal(18,2) DEFAULT NULL COMMENT '当期缴别总保费',
  `STD_PREM_AN` decimal(18,2) DEFAULT NULL COMMENT '当期标准年保费',
  `DISCNTED_STD_PREM_AN` decimal(18,2) DEFAULT NULL COMMENT '当期标准折扣年保费',
  `DISCNTED_RATE` decimal(18,2) DEFAULT NULL COMMENT '当期折扣率',
  `EXTRA_STD_PREM_AN` decimal(18,2) DEFAULT NULL COMMENT '当期标准年加费金额',
  `NEXT_STD_PREM_BF` decimal(18,2) DEFAULT NULL COMMENT '下期标准保费',
  `NEXT_DISCNTED_STD_PREM_BF` decimal(18,2) DEFAULT NULL COMMENT '下期标准折扣保费',
  `NEXT_EXTRA_STD_PREM_BF` decimal(18,2) DEFAULT NULL COMMENT '下期标准加费金额',
  `NEXT_STD_PREM_AF` decimal(18,2) DEFAULT NULL COMMENT '下期缴别标准保费',
  `NEXT_DISCNTED_STD_PREM_AF` decimal(18,2) DEFAULT NULL COMMENT '下期缴别当期标准折扣保费',
  `NEXT_EXTRA_PREM_AF` decimal(18,2) DEFAULT NULL COMMENT '下期缴别当期标准加费金额',
  `NEXT_TOTAL_PREM_AF` decimal(18,2) DEFAULT NULL COMMENT '下期缴别当期总保费',
  `NEXT_STD_PREM_AN` decimal(18,2) DEFAULT NULL COMMENT '下期标准年保费',
  `NEXT_DISCNTED_STD_PREM_AN` decimal(18,2) DEFAULT NULL COMMENT '下期标准折扣年保费',
  `NEXT_DISCNTED_RATE` decimal(18,2) DEFAULT NULL COMMENT '下期折扣率',
  `NEXT_EXTRA_STD_PREM_AN` decimal(18,2) DEFAULT NULL COMMENT '下期标准年加费金额',
  `DERIVATION_TYPE` varchar(10) DEFAULT NULL COMMENT '险种来源：新契约、续保、保单变更',
  `UW_DECISION` varchar(10) DEFAULT NULL COMMENT '新契约核保决定',
  `RENEW_DECISION` varbinary(10) DEFAULT NULL COMMENT '续保决定',
  `CS_DECISION` varchar(10) DEFAULT NULL COMMENT '保全核保决定',
  `POLICY_ASSUMPSIT` varchar(4000) DEFAULT NULL COMMENT '特别约定',
  `JOINT_LIFE_YN` char(1) DEFAULT NULL COMMENT '连生险险标记',
  `WAIVER_ID` bigint(20) DEFAULT NULL COMMENT '被豁免ID',
  `WAIVER_START` date DEFAULT NULL COMMENT '豁免开始日期',
  `WAIVER_END` date DEFAULT NULL COMMENT '豁免结束日期',
  `PARTITION_INDI` bigint(20) DEFAULT NULL COMMENT '分库标记字段',
  `RECORD_TIME` datetime DEFAULT NULL COMMENT '当前息更新时间',
  `INSERT_TIME` datetime DEFAULT NULL COMMENT '插入时间',
  `UPDATE_TIME` datetime DEFAULT NULL COMMENT '修改时间',
  `INSERTED_BY` bigint(20) DEFAULT NULL COMMENT '插入人员',
  `UPDATED_BY` bigint(20) DEFAULT NULL COMMENT '修改人员',
  `BENEFIT_LEVEL` bigint(11) DEFAULT NULL COMMENT '投保档次',
  PRIMARY KEY (`LOG_ID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `t_pa_policy_product_log`
--

LOCK TABLES `t_pa_policy_product_log` WRITE;
/*!40000 ALTER TABLE `t_pa_policy_product_log` DISABLE KEYS */;
INSERT INTO `t_pa_policy_product_log` VALUES ('05e3ad5e9751462f87cb84a6c81498db',NULL,'Y','931378278361159661','229ab86f4d4943fc8a11e33265173f51','111574107445589186','111574107445589186',NULL,'931378233760819660',132,NULL,400,200000.00,NULL,'2016-05-25 08:00:00',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'D',1,NULL,0.79,1.73,0.00,0.79,1.73,0.00,1.73,0.00,0.00,2.19,0.00,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,720,NULL,'2016-05-29 14:13:51','2016-05-29 14:13:51',NULL,NULL,NULL),('327052582f414a849e1b90bb3d79f96f',NULL,'Y','931378278361159661','53a66bf856184a53adcdd21b63edf4e5','111574107579014330','111574107579014330',NULL,'931378233760819660',134,NULL,400,200000.00,NULL,'2016-05-25 08:00:00',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'D',1,NULL,0.55,1.21,0.00,0.55,1.21,0.00,1.21,0.00,0.00,2.20,0.00,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,720,NULL,'2016-05-29 14:13:51','2016-05-29 14:13:51',NULL,NULL,NULL),('769e479fac1842568653bb44d7c35a2d',NULL,'Y','931378278361159661','2d93efecad7a4088a0725831751f6e24','111574109401145115','111574109401145115','111574107445589186','931378233760819660',133,NULL,400,10000.00,NULL,'2016-05-25 08:00:00',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'D',1,NULL,0.03,0.06,0.00,0.03,0.06,0.00,0.06,0.00,0.00,2.00,0.00,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,720,NULL,'2016-05-29 14:13:51','2016-05-29 14:13:51',NULL,NULL,NULL);
/*!40000 ALTER TABLE `t_pa_policy_product_log` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `t_pa_prem_arap`
--

DROP TABLE IF EXISTS `t_pa_prem_arap`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `t_pa_prem_arap` (
  `List_id` varchar(40) NOT NULL COMMENT '主键',
  `PREM_ARAP_ID` bigint(20) DEFAULT NULL COMMENT '应收应付费用ID',
  `EX_TRANS_ID` varchar(32) DEFAULT NULL COMMENT '跨系统交易ID',
  `ORGAN_ID` bigint(20) DEFAULT NULL COMMENT '租户ID',
  `ORDER_ID` bigint(20) DEFAULT NULL COMMENT '订单交易号',
  `FEE_TYPE` varchar(10) DEFAULT NULL COMMENT '费用类型代码',
  `BUSINESS_CODE` varchar(20) DEFAULT NULL COMMENT '业务编码',
  `APPLY_CODE` varchar(20) DEFAULT NULL COMMENT '投保单号码',
  `POLICY_CODE` varchar(20) DEFAULT NULL COMMENT '保单号',
  `DERIV_TYPE` varchar(3) DEFAULT NULL COMMENT '业务来源：001:契约',
  `CITY_CODE` varchar(8) DEFAULT NULL COMMENT '保单所属地区',
  `ORGAN_CODE` varchar(8) DEFAULT NULL COMMENT '保单管理机构',
  `AGENT_CODE` varchar(20) DEFAULT NULL COMMENT '代理人员CODE',
  `POLICY_TYPE` char(1) DEFAULT NULL COMMENT '保单类型：个/团/汇缴',
  `CHANNEL_TYPE` char(2) DEFAULT NULL COMMENT '销售渠道',
  `VALIDATE_DATE` date DEFAULT NULL COMMENT '业务生效日期',
  `DUE_DATE` date DEFAULT NULL COMMENT '到期日',
  `COVER_PERIOD_TYPE` varchar(10) DEFAULT NULL COMMENT '保障期间类型',
  `COVERAGE_PERIOD` int(11) DEFAULT NULL COMMENT '保障期间',
  `CHARGE_PERIOD` int(11) DEFAULT NULL COMMENT '缴费期间',
  `CHARGE_MODE` varchar(10) DEFAULT NULL COMMENT '缴费频率',
  `PRODUCT_ID` bigint(20) DEFAULT NULL COMMENT '产品id',
  `PROP_ITEM_ID` bigint(20) DEFAULT NULL COMMENT '责任ID',
  `HOLDER_CUST_ID` bigint(20) DEFAULT NULL COMMENT '投保人客户ID',
  `INSURED_CUST_ID` bigint(20) DEFAULT NULL COMMENT '被保人客户ID',
  `CURRENCY` varchar(10) DEFAULT NULL COMMENT '币种',
  `AMOUNT` decimal(12,2) DEFAULT NULL COMMENT '金额',
  `FEE_STATUS` varchar(2) DEFAULT NULL COMMENT '收付状态',
  `OFFSET_STATUS` int(11) DEFAULT NULL COMMENT '冲销状态',
  `OFFSET_TIME` datetime DEFAULT NULL COMMENT '冲销时间',
  `POSTED` char(2) DEFAULT NULL COMMENT '记账状态',
  `BELNR` varchar(20) DEFAULT NULL COMMENT '凭证号',
  `CREATE_BY` bigint(20) DEFAULT NULL COMMENT '记录创建人',
  `CREATE_TIME` datetime DEFAULT NULL COMMENT '记录创建时间',
  `UPDATE_BY` bigint(20) DEFAULT NULL COMMENT '记录更新人',
  `UPDATE_TIME` datetime DEFAULT NULL COMMENT '记录更新时间',
  `CREATE_TIMESTAMP` datetime DEFAULT NULL COMMENT '记录创建时间戳',
  `UPDATE_TIMESTAMP` datetime DEFAULT NULL COMMENT '记录更新时间戳',
  `PARTITION_INDI` bigint(20) DEFAULT NULL COMMENT '分库字段',
  `CHANGE_ID` varchar(40) DEFAULT NULL COMMENT '保单变更ID',
  PRIMARY KEY (`List_id`),
  UNIQUE KEY `UNI_POLICY_CASH` (`PREM_ARAP_ID`,`APPLY_CODE`,`POLICY_CODE`),
  KEY `IDX_ARAP_POLICY_CODE_APPLY_CODE` (`APPLY_CODE`,`POLICY_CODE`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='应收应付表';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `t_pa_prem_arap`
--

LOCK TABLES `t_pa_prem_arap` WRITE;
/*!40000 ALTER TABLE `t_pa_prem_arap` DISABLE KEYS */;
/*!40000 ALTER TABLE `t_pa_prem_arap` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `t_pa_product_liability_change`
--

DROP TABLE IF EXISTS `t_pa_product_liability_change`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `t_pa_product_liability_change` (
  `KEY_ID` varchar(40) NOT NULL COMMENT '系统主键ID',
  `POLICY_ID` varchar(40) DEFAULT NULL COMMENT '保单编号',
  `ITEM_ID` varchar(40) DEFAULT NULL COMMENT '险种ID',
  `CHANGE_DATE` datetime DEFAULT NULL COMMENT '变更生效时间',
  `OLD_PRODUCT_STATUS` varchar(10) DEFAULT NULL COMMENT '险种状态代码表',
  `NEW_PRODUCT_STATUS` varchar(10) DEFAULT NULL COMMENT '险种状态代码表',
  `LOG_ID` varchar(20) DEFAULT NULL COMMENT '变更ID',
  `CREATE_BY` bigint(20) DEFAULT NULL COMMENT '创建人',
  `CREATE_TIME` datetime DEFAULT NULL COMMENT '创建用户时间',
  `CREATE_TIMESTAMP` datetime DEFAULT NULL COMMENT '创建系统时间',
  `UPDATE_BY` varchar(40) DEFAULT NULL COMMENT '更新人',
  `UPDATE_TIME` datetime DEFAULT NULL COMMENT '更新用户时间',
  `UPDATE_TIMESTAMP` datetime DEFAULT NULL COMMENT '更新系统时间',
  `PARTITION_INDI` bigint(20) DEFAULT NULL COMMENT '分库字段',
  PRIMARY KEY (`KEY_ID`),
  KEY `IDX_PRODUCT_POLICY_ID` (`POLICY_ID`,`ITEM_ID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `t_pa_product_liability_change`
--

LOCK TABLES `t_pa_product_liability_change` WRITE;
/*!40000 ALTER TABLE `t_pa_product_liability_change` DISABLE KEYS */;
/*!40000 ALTER TABLE `t_pa_product_liability_change` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2016-06-01 15:15:04
