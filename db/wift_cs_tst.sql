-- MySQL dump 10.13  Distrib 5.7.12, for Linux (x86_64)
--
-- Host: localhost    Database: wift_cs_tst
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
-- Table structure for table `t_cs_application`
--

DROP TABLE IF EXISTS `t_cs_application`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `t_cs_application` (
  `apply_id` varchar(40) NOT NULL COMMENT '申请ID',
  `apply_no` varchar(40) DEFAULT NULL COMMENT '保全申请号',
  `applicant_cust_id` bigint(20) DEFAULT NULL COMMENT '申请人客户ID',
  `apply_time` date DEFAULT NULL COMMENT '申请时间',
  `apply_way` varchar(10) DEFAULT NULL COMMENT '申请方式',
  `organ_id` bigint(20) DEFAULT NULL COMMENT '机构ID',
  `apply_status` varchar(10) NOT NULL COMMENT '申请状态',
  `PARTITION_INDI` bigint(20) DEFAULT NULL,
  `locked_by` bigint(20) DEFAULT NULL COMMENT '锁定操作人',
  `finish_date` datetime DEFAULT NULL COMMENT '完成时间',
  `CREATE_TIME` datetime NOT NULL COMMENT '创建用户时间',
  `UPDATE_BY` bigint(20) DEFAULT NULL COMMENT '更新记录人',
  `UPDATE_TIME` datetime NOT NULL COMMENT '更新用户时间',
  `CREATE_BY` bigint(20) DEFAULT NULL COMMENT '创建人',
  `CREATE_TIMESTAMP` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '创建系统时间',
  `UPDATE_TIMESTAMP` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP COMMENT '更新系统时间',
  PRIMARY KEY (`apply_id`,`apply_status`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `t_cs_application`
--

LOCK TABLES `t_cs_application` WRITE;
/*!40000 ALTER TABLE `t_cs_application` DISABLE KEYS */;
/*!40000 ALTER TABLE `t_cs_application` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `t_cs_arap`
--

DROP TABLE IF EXISTS `t_cs_arap`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `t_cs_arap` (
  `arap_id` varchar(40) NOT NULL COMMENT '保全应收应付ID',
  `change_id` varchar(40) DEFAULT NULL COMMENT '变更ID',
  `fee_type` varchar(10) DEFAULT NULL COMMENT '费用类型',
  `POLICY_ID` varchar(40) DEFAULT NULL COMMENT '保单ID',
  `PROP_ITEM_ID` varchar(40) DEFAULT NULL COMMENT '险种ID',
  `BRANCH_ID` bigint(20) DEFAULT NULL COMMENT '分公司ID',
  `HOLDER_CUST_ID` bigint(20) DEFAULT NULL COMMENT '投保人ID',
  `GROUP_PROPOSAL_ID` varchar(40) DEFAULT NULL COMMENT '总投保单ID',
  `CURRENCY` varchar(10) DEFAULT NULL COMMENT '币种',
  `ORGAN_ID` bigint(20) DEFAULT NULL COMMENT '机构id',
  `AMOUNT` decimal(12,2) DEFAULT NULL COMMENT '金额',
  `DUE_DATE` date DEFAULT NULL COMMENT '到期日',
  `COVER_PERIOD_TYPE` varchar(10) DEFAULT NULL COMMENT '保障期间类型',
  `COVERAGE_PERIOD` int(11) DEFAULT NULL COMMENT '保障期间',
  `CHARGE_PERIOD` int(11) DEFAULT NULL COMMENT '缴费期间',
  `CHARGE_MODE` varchar(10) DEFAULT NULL COMMENT '缴费频率',
  `CUSTOMER_ID` bigint(20) NOT NULL COMMENT '客户id',
  `PRODUCT_ID` bigint(20) DEFAULT NULL COMMENT '产品id',
  `PREMIUM_STATUS` varchar(10) DEFAULT NULL COMMENT '状态',
  `PARTITION_INDI` bigint(20) DEFAULT NULL,
  `OFFSET_STATUS` varchar(10) DEFAULT NULL COMMENT '冲销状态',
  `OFFSET_TIME` datetime DEFAULT NULL COMMENT '冲销时间',
  `CREATE_TIME` datetime NOT NULL COMMENT '创建用户时间',
  `UPDATE_BY` bigint(20) DEFAULT NULL COMMENT '更新记录人',
  `UPDATE_TIME` datetime NOT NULL COMMENT '更新用户时间',
  `CREATE_BY` bigint(20) DEFAULT NULL COMMENT '创建人',
  `CREATE_TIMESTAMP` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '创建系统时间',
  `UPDATE_TIMESTAMP` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP COMMENT '更新系统时间',
  PRIMARY KEY (`arap_id`),
  KEY `FK_CS_ARAP__CHANGE_ID` (`change_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `t_cs_arap`
--

LOCK TABLES `t_cs_arap` WRITE;
/*!40000 ALTER TABLE `t_cs_arap` DISABLE KEYS */;
/*!40000 ALTER TABLE `t_cs_arap` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `t_cs_arap_list`
--

DROP TABLE IF EXISTS `t_cs_arap_list`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `t_cs_arap_list` (
  `list_id` varchar(40) NOT NULL COMMENT '主键Id',
  `ARAP_ID` varchar(40) DEFAULT NULL COMMENT '应收应付费用ID',
  `case_id` varchar(40) DEFAULT NULL COMMENT '案件ID',
  `POLICY_ID` varchar(40) DEFAULT NULL COMMENT '保单ID',
  `PRODUCT_ID` bigint(20) DEFAULT NULL COMMENT '产品ID',
  `liab_id` bigint(20) DEFAULT NULL COMMENT '责任ID',
  `PROD_ITEM_ID` varchar(40) DEFAULT NULL COMMENT '投保单险种ID',
  `BRANCH_ID` bigint(20) DEFAULT NULL COMMENT '分公司ID',
  `ORGAN_ID` bigint(20) DEFAULT NULL COMMENT '机构ID',
  `fee_type` varchar(10) DEFAULT NULL COMMENT '支付费用类型 与adjust_type一致',
  `fee_amount` decimal(16,2) DEFAULT NULL COMMENT '费用',
  `payee_id` varchar(40) DEFAULT NULL COMMENT '领款人ID',
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
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='理赔应收应付记录明细表';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `t_cs_arap_list`
--

LOCK TABLES `t_cs_arap_list` WRITE;
/*!40000 ALTER TABLE `t_cs_arap_list` DISABLE KEYS */;
/*!40000 ALTER TABLE `t_cs_arap_list` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `t_cs_arap_offset`
--

DROP TABLE IF EXISTS `t_cs_arap_offset`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `t_cs_arap_offset` (
  `OFFSET_GLOBAL_ID` varchar(40) NOT NULL,
  `OFFSET_ID` varchar(40) NOT NULL COMMENT '冲销ID',
  `arap_id` varchar(40) DEFAULT NULL COMMENT '保全应收应付ID',
  `premium_amount` decimal(12,2) NOT NULL COMMENT '保费金额',
  `PAYMENT_ID` varchar(40) NOT NULL COMMENT '支付信息ID',
  `ORGAN_ID` bigint(20) DEFAULT NULL COMMENT '机构id',
  `prem_currency` varchar(10) NOT NULL COMMENT '保费币种',
  `payment_amount` decimal(12,2) NOT NULL COMMENT '支付金额',
  `payment_currency` varchar(10) NOT NULL COMMENT '支付币种',
  `OFFSET_TYPE` varchar(10) NOT NULL COMMENT '冲销类型',
  `PARTITION_INDI` bigint(20) DEFAULT NULL,
  `CREATE_TIME` datetime NOT NULL COMMENT '创建用户时间',
  `UPDATE_BY` bigint(20) DEFAULT NULL COMMENT '更新记录人',
  `UPDATE_TIME` datetime NOT NULL COMMENT '更新用户时间',
  `CREATE_BY` bigint(20) DEFAULT NULL COMMENT '创建人',
  `CREATE_TIMESTAMP` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '创建系统时间',
  `UPDATE_TIMESTAMP` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP COMMENT '更新系统时间',
  PRIMARY KEY (`OFFSET_ID`),
  KEY `FK_CS_ARAP_OFFSET__PAYMENT_ID` (`PAYMENT_ID`),
  KEY `FK_CS_ARAP_OFFSET__ARAP_ID` (`arap_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `t_cs_arap_offset`
--

LOCK TABLES `t_cs_arap_offset` WRITE;
/*!40000 ALTER TABLE `t_cs_arap_offset` DISABLE KEYS */;
/*!40000 ALTER TABLE `t_cs_arap_offset` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `t_cs_change`
--

DROP TABLE IF EXISTS `t_cs_change`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `t_cs_change` (
  `change_id` varchar(40) NOT NULL COMMENT '保全变更ID',
  `change_status` varchar(10) DEFAULT NULL COMMENT '保全变更状态',
  `apply_id` varchar(40) DEFAULT NULL COMMENT '申请ID',
  `policy_id` varchar(40) DEFAULT NULL COMMENT '保单ID',
  `service_code` varchar(10) DEFAULT NULL COMMENT '保全代码',
  `endorsement_no` varchar(40) DEFAULT NULL COMMENT '批单号',
  `validate_date` date DEFAULT NULL COMMENT '保全生效日',
  `change_detail` longtext COMMENT '保全批文',
  `PARTITION_INDI` bigint(20) DEFAULT NULL,
  `NOTE` longtext COMMENT '备注',
  `finish_date` datetime DEFAULT NULL COMMENT '保全完成时间',
  `operator` bigint(20) DEFAULT NULL COMMENT '保全完操作人',
  `audit_way` varchar(10) DEFAULT NULL COMMENT '保全审批方式',
  `auditor` bigint(20) DEFAULT NULL COMMENT '保全审批人',
  `organ_id` bigint(20) DEFAULT NULL COMMENT '机构ID',
  `cancel_id` bigint(20) DEFAULT NULL COMMENT '保全取消操作人ID',
  `cancel_time` datetime DEFAULT NULL COMMENT '保全取消时间',
  `reverse_id` bigint(20) DEFAULT NULL COMMENT '回退操作人ID',
  `reverse_time` datetime DEFAULT NULL COMMENT '回退操作时间',
  `pa_chg_id` varchar(40) DEFAULT NULL COMMENT 'PA系统变更ID',
  `CREATE_TIME` datetime NOT NULL COMMENT '创建用户时间',
  `UPDATE_BY` bigint(20) DEFAULT NULL COMMENT '更新记录人',
  `UPDATE_TIME` datetime NOT NULL COMMENT '更新用户时间',
  `CREATE_BY` bigint(20) DEFAULT NULL COMMENT '创建人',
  `CREATE_TIMESTAMP` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '创建系统时间',
  `UPDATE_TIMESTAMP` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP COMMENT '更新系统时间',
  PRIMARY KEY (`change_id`),
  KEY `FK_CS_CHANGE__APPLY_ID` (`apply_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `t_cs_change`
--

LOCK TABLES `t_cs_change` WRITE;
/*!40000 ALTER TABLE `t_cs_change` DISABLE KEYS */;
/*!40000 ALTER TABLE `t_cs_change` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `t_cs_change_cfg`
--

DROP TABLE IF EXISTS `t_cs_change_cfg`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `t_cs_change_cfg` (
  `cfg_id` varchar(5) NOT NULL,
  `service_code` varchar(10) DEFAULT NULL,
  `pa_table` varchar(100) DEFAULT NULL COMMENT 'PA表',
  `cs_table` varchar(100) DEFAULT NULL COMMENT 'CS表',
  PRIMARY KEY (`cfg_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `t_cs_change_cfg`
--

LOCK TABLES `t_cs_change_cfg` WRITE;
/*!40000 ALTER TABLE `t_cs_change_cfg` DISABLE KEYS */;
/*!40000 ALTER TABLE `t_cs_change_cfg` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `t_cs_pa_customer`
--

DROP TABLE IF EXISTS `t_cs_pa_customer`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `t_cs_pa_customer` (
  `CHANGE_ITEM_ID` varchar(40) NOT NULL COMMENT '主键',
  `DATA_FLAG` varchar(10) NOT NULL COMMENT '数据类型',
  `CHANGE_ID` varchar(40) NOT NULL COMMENT '保全变更ID',
  `CUSTOMER_ID` bigint(20) DEFAULT NULL COMMENT '客户ID',
  `NAME` varchar(100) DEFAULT NULL COMMENT '姓名',
  `GENDER` varchar(10) DEFAULT NULL COMMENT '性别',
  `BIRTHDAY` date DEFAULT NULL COMMENT '生日',
  `CERTI_TYPE` varchar(10) DEFAULT NULL COMMENT '证件类型',
  `CERTI_CODE` varchar(40) DEFAULT NULL COMMENT '证件号码',
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
  `PARTITION_INDI` bigint(20) DEFAULT NULL COMMENT '分库标记字段',
  `CREATE_BY` bigint(20) DEFAULT NULL COMMENT '创建人',
  `CREATE_TIME` datetime NOT NULL COMMENT '创建用户时间',
  `UPDATE_BY` bigint(20) DEFAULT NULL COMMENT '更新记录人',
  `UPDATE_TIME` datetime NOT NULL COMMENT '更新用户时间',
  `CREATE_TIMESTAMP` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '创建系统时间',
  `UPDATE_TIMESTAMP` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP COMMENT '更新系统时间',
  PRIMARY KEY (`CHANGE_ITEM_ID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='客户基本信息表';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `t_cs_pa_customer`
--

LOCK TABLES `t_cs_pa_customer` WRITE;
/*!40000 ALTER TABLE `t_cs_pa_customer` DISABLE KEYS */;
/*!40000 ALTER TABLE `t_cs_pa_customer` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `t_cs_pa_customer_address`
--

DROP TABLE IF EXISTS `t_cs_pa_customer_address`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `t_cs_pa_customer_address` (
  `CHANGE_ITEM_ID` varchar(40) NOT NULL COMMENT '主键',
  `DATA_FLAG` varchar(10) NOT NULL COMMENT '数据类型',
  `CHANGE_ID` varchar(40) NOT NULL COMMENT '保全变更ID',
  `ADDRESS_ID` bigint(20) DEFAULT NULL COMMENT '主键ID',
  `CUSTOMER_ID` bigint(20) DEFAULT NULL COMMENT 'Customer ID',
  `ADDRESS_TYPE` varchar(10) DEFAULT NULL COMMENT '地址类型',
  `ADDRESS_FORMAT_TYPE` varchar(10) DEFAULT NULL COMMENT 'Address Format(1 FREE  2.FIX  FORMAT FOR SG  4. POST FORMAT)',
  `COUNTRY_CODE` varchar(10) DEFAULT NULL COMMENT '国家代码',
  `ADDRESS_FORMAT_1` varchar(200) DEFAULT NULL COMMENT '标准地址：代表省/直辖市',
  `ADDRESS_FORMAT_2` varchar(100) DEFAULT NULL COMMENT '标准地址：代表市',
  `ADDRESS_FORMAT_3` varchar(100) DEFAULT NULL COMMENT '标准地址：代表区/县',
  `ADDRESS_FORMAT_4` varchar(100) DEFAULT NULL COMMENT '标准地址：输入地址',
  `ADDRESS_1` varchar(100) DEFAULT NULL COMMENT '无格式地址1',
  `ADDRESS_2` varchar(100) DEFAULT NULL COMMENT '无格式地址2',
  `POST_CODE` varchar(10) DEFAULT NULL COMMENT '邮编',
  `ADDRESS_STATUS` varchar(10) DEFAULT NULL COMMENT '地址状态(1-有效,2-无效)',
  `TEL_FORMAT_TYPE` varchar(10) DEFAULT NULL COMMENT 'Tel Format（(1 FREE  2.FIX ）',
  `CONTACT_PERSON` varchar(100) DEFAULT NULL COMMENT '联系人',
  `CONTACT_TEL` varchar(100) DEFAULT NULL COMMENT '联系电话',
  `CONTACT_MOBILE` varchar(100) DEFAULT NULL COMMENT '联系手机',
  `TEL_FORMAT_1` varchar(10) DEFAULT NULL COMMENT '国家代码号',
  `TEL_FORMAT_2` varchar(10) DEFAULT NULL COMMENT '区号',
  `TEL_FORMAT_3` varchar(10) DEFAULT NULL COMMENT '电话号码',
  `TEL_FORMAT_4` varchar(10) DEFAULT NULL COMMENT '分机号码',
  `PARTITION_INDI` bigint(20) DEFAULT NULL COMMENT '分库标记字段',
  `CREATE_BY` bigint(20) DEFAULT NULL COMMENT '创建人',
  `CREATE_TIME` datetime NOT NULL COMMENT '创建用户时间',
  `UPDATE_BY` bigint(20) DEFAULT NULL COMMENT '更新记录人',
  `UPDATE_TIME` datetime NOT NULL COMMENT '更新用户时间',
  `CREATE_TIMESTAMP` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '创建系统时间',
  `UPDATE_TIMESTAMP` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP COMMENT '更新系统时间',
  PRIMARY KEY (`CHANGE_ITEM_ID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='客户地址表';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `t_cs_pa_customer_address`
--

LOCK TABLES `t_cs_pa_customer_address` WRITE;
/*!40000 ALTER TABLE `t_cs_pa_customer_address` DISABLE KEYS */;
/*!40000 ALTER TABLE `t_cs_pa_customer_address` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `t_cs_pa_policy`
--

DROP TABLE IF EXISTS `t_cs_pa_policy`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `t_cs_pa_policy` (
  `CHANGE_ITEM_ID` varchar(40) NOT NULL COMMENT '主键',
  `DATA_FLAG` varchar(10) NOT NULL COMMENT '数据类型',
  `CHANGE_ID` varchar(40) NOT NULL COMMENT '保全变更ID',
  `POLICY_ID` varchar(40) NOT NULL COMMENT '保单ID 主键',
  `POLICY_NO` varchar(20) NOT NULL COMMENT '保单号码',
  `PROPOSAL_ID` varchar(40) NOT NULL COMMENT '投保单ID',
  `PROPOSAL_NO` varchar(20) NOT NULL COMMENT '投保单号码',
  `ORGAN_ID` bigint(20) NOT NULL COMMENT '保单机构ID',
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
  `CREATE_BY` bigint(20) DEFAULT NULL COMMENT '创建人',
  `CREATE_TIME` datetime NOT NULL COMMENT '创建用户时间',
  `UPDATE_BY` bigint(20) DEFAULT NULL COMMENT '更新记录人',
  `UPDATE_TIME` datetime NOT NULL COMMENT '更新用户时间',
  `CREATE_TIMESTAMP` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '创建系统时间',
  `UPDATE_TIMESTAMP` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP COMMENT '更新系统时间',
  `PARTITION_INDI` bigint(20) NOT NULL,
  PRIMARY KEY (`CHANGE_ITEM_ID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='保单基本信息表';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `t_cs_pa_policy`
--

LOCK TABLES `t_cs_pa_policy` WRITE;
/*!40000 ALTER TABLE `t_cs_pa_policy` DISABLE KEYS */;
/*!40000 ALTER TABLE `t_cs_pa_policy` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `t_cs_pa_policy_product`
--

DROP TABLE IF EXISTS `t_cs_pa_policy_product`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `t_cs_pa_policy_product` (
  `CHANGE_ITEM_ID` varchar(40) NOT NULL COMMENT '主键',
  `DATA_FLAG` varchar(10) NOT NULL COMMENT '数据类型',
  `CHANGE_ID` varchar(40) NOT NULL COMMENT '保全变更ID',
  `ITEM_ID` varchar(40) NOT NULL COMMENT '险种主键ID',
  `PROP_ITEM_ID` varchar(40) DEFAULT NULL COMMENT '投保险种ID',
  `MAIN_ITEM_ID` varchar(40) DEFAULT NULL COMMENT '搭配主险ID',
  `POLICY_ID` varchar(40) NOT NULL COMMENT '保单ID 主键',
  `PRODUCT_ID` bigint(20) NOT NULL COMMENT '产品主键',
  `INSURANT_ID` bigint(20) DEFAULT NULL COMMENT '被保人ID',
  `ORGAN_ID` bigint(20) DEFAULT NULL COMMENT '机构ID',
  `SUM_ASSURED` decimal(16,2) NOT NULL COMMENT '保额',
  `UNITS` decimal(3,2) NOT NULL COMMENT '份数',
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
  `CREATE_BY` bigint(20) DEFAULT NULL COMMENT '创建人',
  `CREATE_TIME` datetime NOT NULL COMMENT '创建用户时间',
  `UPDATE_BY` bigint(20) DEFAULT NULL COMMENT '更新记录人',
  `UPDATE_TIME` datetime NOT NULL COMMENT '更新用户时间',
  `CREATE_TIMESTAMP` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '创建系统时间',
  `UPDATE_TIMESTAMP` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP COMMENT '更新系统时间',
  PRIMARY KEY (`CHANGE_ITEM_ID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='险种基本信息表';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `t_cs_pa_policy_product`
--

LOCK TABLES `t_cs_pa_policy_product` WRITE;
/*!40000 ALTER TABLE `t_cs_pa_policy_product` DISABLE KEYS */;
/*!40000 ALTER TABLE `t_cs_pa_policy_product` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `t_cs_payer_account`
--

DROP TABLE IF EXISTS `t_cs_payer_account`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `t_cs_payer_account` (
  `account_id` varchar(40) NOT NULL COMMENT '主键ID',
  `change_id` varchar(40) DEFAULT NULL COMMENT '变更ID',
  `policy_id` varchar(40) DEFAULT NULL COMMENT '保单ID',
  `payer_cust_id` bigint(20) DEFAULT NULL COMMENT '支付客户ID',
  `account_name` varchar(40) DEFAULT NULL COMMENT '账户名',
  `pay_mode` varchar(10) DEFAULT NULL COMMENT '支付方式',
  `wechat_account` varchar(40) DEFAULT NULL COMMENT '微信账号',
  `alipay_account` varchar(40) DEFAULT NULL COMMENT '支付宝账号',
  `bank_code` varchar(10) DEFAULT NULL COMMENT '银行代码',
  `bank_branch` varchar(10) DEFAULT NULL COMMENT '银行分支',
  `bank_account` varchar(40) DEFAULT NULL COMMENT '银行账号',
  `pay_type` int(11) DEFAULT NULL COMMENT '收付标识(1:收,2:付)',
  `partition_indi` bigint(20) NOT NULL,
  `CREATE_TIME` datetime NOT NULL COMMENT '创建用户时间',
  `UPDATE_BY` bigint(20) DEFAULT NULL COMMENT '更新记录人',
  `UPDATE_TIME` datetime NOT NULL COMMENT '更新用户时间',
  `CREATE_BY` bigint(20) DEFAULT NULL COMMENT '创建人',
  `CREATE_TIMESTAMP` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '创建系统时间',
  `UPDATE_TIMESTAMP` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP COMMENT '更新系统时间',
  PRIMARY KEY (`account_id`),
  KEY `FK_CS_PAYER_ACCOUNT__CHANGE_ID` (`change_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `t_cs_payer_account`
--

LOCK TABLES `t_cs_payer_account` WRITE;
/*!40000 ALTER TABLE `t_cs_payer_account` DISABLE KEYS */;
/*!40000 ALTER TABLE `t_cs_payer_account` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `t_cs_payment`
--

DROP TABLE IF EXISTS `t_cs_payment`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `t_cs_payment` (
  `PAYMENT_ID` varchar(40) NOT NULL COMMENT '支付信息ID',
  `change_id` varchar(40) DEFAULT NULL COMMENT '变更ID',
  `POLICY_ID` varchar(40) DEFAULT NULL COMMENT '保单ID',
  `ORGAN_ID` bigint(20) DEFAULT NULL COMMENT '机构id',
  `payment_voucher` varchar(40) DEFAULT NULL COMMENT '支付流水号',
  `amount` decimal(12,2) DEFAULT NULL COMMENT '金额',
  `is_pay` varchar(10) DEFAULT NULL COMMENT '是否付款',
  `currency` varchar(10) DEFAULT NULL COMMENT '币种',
  `account_name` varchar(40) DEFAULT NULL COMMENT '账户名',
  `PAY_MODE` varchar(10) DEFAULT NULL COMMENT '支付方式',
  `WECHAT_ACCOUNT` varchar(40) DEFAULT NULL COMMENT '微信账号',
  `ALIPAY_ACCOUNT` varchar(40) DEFAULT NULL COMMENT '支付宝账号',
  `bank_code` varchar(10) DEFAULT NULL COMMENT '银行代码',
  `bank_branch` varchar(10) DEFAULT NULL COMMENT '银行分支',
  `bank_account` varchar(40) DEFAULT NULL COMMENT '银行账号',
  `payment_apply_time` date DEFAULT NULL COMMENT '支付发起时间',
  `payment_finish_time` date DEFAULT NULL COMMENT '支付完成时间',
  `fails_counter` int(11) DEFAULT '0' COMMENT '失败次数',
  `payment_status` varchar(10) DEFAULT NULL COMMENT '支付状态',
  `OFFSET_GLOBAL_ID` varchar(40) NOT NULL COMMENT 'UUID',
  `PARTITION_INDI` bigint(20) DEFAULT NULL,
  `CREATE_TIME` datetime NOT NULL COMMENT '创建用户时间',
  `UPDATE_BY` bigint(20) DEFAULT NULL COMMENT '更新记录人',
  `UPDATE_TIME` datetime NOT NULL COMMENT '更新用户时间',
  `CREATE_BY` bigint(20) DEFAULT NULL COMMENT '创建人',
  `CREATE_TIMESTAMP` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '创建系统时间',
  `UPDATE_TIMESTAMP` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP COMMENT '更新系统时间',
  PRIMARY KEY (`PAYMENT_ID`),
  KEY `FK_CS_PAYMENT__CHANGE_ID` (`change_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `t_cs_payment`
--

LOCK TABLES `t_cs_payment` WRITE;
/*!40000 ALTER TABLE `t_cs_payment` DISABLE KEYS */;
/*!40000 ALTER TABLE `t_cs_payment` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `t_cs_precon_task`
--

DROP TABLE IF EXISTS `t_cs_precon_task`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `t_cs_precon_task` (
  `precon_id` varchar(40) NOT NULL COMMENT '预约ID',
  `change_id` varchar(40) DEFAULT NULL COMMENT '变更ID',
  `precon_date` date DEFAULT NULL COMMENT '预约生效日',
  `precon_status` varchar(10) DEFAULT NULL COMMENT '预约状态',
  `PARTITION_INDI` bigint(20) DEFAULT NULL,
  `CREATE_TIME` datetime NOT NULL COMMENT '创建用户时间',
  `UPDATE_BY` bigint(20) DEFAULT NULL COMMENT '更新记录人',
  `UPDATE_TIME` datetime NOT NULL COMMENT '更新用户时间',
  `CREATE_BY` bigint(20) DEFAULT NULL COMMENT '创建人',
  `CREATE_TIMESTAMP` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '创建系统时间',
  `UPDATE_TIMESTAMP` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP COMMENT '更新系统时间',
  PRIMARY KEY (`precon_id`),
  KEY `FK_CS_PRECON_TASK__CHANGE_ID` (`change_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `t_cs_precon_task`
--

LOCK TABLES `t_cs_precon_task` WRITE;
/*!40000 ALTER TABLE `t_cs_precon_task` DISABLE KEYS */;
/*!40000 ALTER TABLE `t_cs_precon_task` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `t_cs_service`
--

DROP TABLE IF EXISTS `t_cs_service`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `t_cs_service` (
  `service_code` varchar(10) NOT NULL,
  `service_name` varchar(40) DEFAULT NULL,
  `service_type` varchar(10) DEFAULT NULL,
  PRIMARY KEY (`service_code`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `t_cs_service`
--

LOCK TABLES `t_cs_service` WRITE;
/*!40000 ALTER TABLE `t_cs_service` DISABLE KEYS */;
/*!40000 ALTER TABLE `t_cs_service` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `t_cs_service_template`
--

DROP TABLE IF EXISTS `t_cs_service_template`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `t_cs_service_template` (
  `template_id` bigint(20) NOT NULL,
  `service_code` varchar(10) DEFAULT NULL,
  `template` varchar(4000) DEFAULT NULL,
  `is_used` varchar(10) DEFAULT NULL,
  PRIMARY KEY (`template_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `t_cs_service_template`
--

LOCK TABLES `t_cs_service_template` WRITE;
/*!40000 ALTER TABLE `t_cs_service_template` DISABLE KEYS */;
/*!40000 ALTER TABLE `t_cs_service_template` ENABLE KEYS */;
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
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2016-06-01 15:14:47
