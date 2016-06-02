-- MySQL dump 10.13  Distrib 5.7.12, for Linux (x86_64)
--
-- Host: localhost    Database: wift_ecief_tst
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
-- Table structure for table `t_aml_black_list`
--

DROP TABLE IF EXISTS `t_aml_black_list`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `t_aml_black_list` (
  `LIST_ID` int(11) NOT NULL,
  `NAME` varchar(100) NOT NULL,
  `GENDER` char(1) NOT NULL,
  `BIRTHDAY` date NOT NULL,
  `CERTI_TYPE` varchar(3) NOT NULL,
  `CERTI_CODE` varchar(40) NOT NULL,
  `NOTICE_DATE` date DEFAULT NULL,
  `INSERT_TIME` datetime DEFAULT NULL,
  `UPDATE_TIME` datetime DEFAULT NULL,
  `INSERT_BY` bigint(20) DEFAULT NULL,
  `UPDATE_BY` bigint(20) DEFAULT NULL,
  PRIMARY KEY (`LIST_ID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `t_aml_black_list`
--

LOCK TABLES `t_aml_black_list` WRITE;
/*!40000 ALTER TABLE `t_aml_black_list` DISABLE KEYS */;
/*!40000 ALTER TABLE `t_aml_black_list` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `t_customer`
--

DROP TABLE IF EXISTS `t_customer`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `t_customer` (
  `CUSTOMER_ID` bigint(20) NOT NULL COMMENT '客户ID',
  `NAME` varchar(100) NOT NULL COMMENT '姓名',
  `GENDER` char(1) NOT NULL COMMENT '性别',
  `BIRTHDAY` date NOT NULL COMMENT '生日',
  `CERTI_TYPE` varchar(3) NOT NULL COMMENT '证件类型',
  `CERTI_CODE` varchar(40) NOT NULL COMMENT '证件号码',
  `CERTI_VALID_START_DATE` date DEFAULT NULL COMMENT '证件有效开始日期',
  `CERTI_VALID_END_DATE` date DEFAULT NULL COMMENT '证件有效结束日期',
  `MARRIAGE_ID` varchar(2) DEFAULT NULL COMMENT '婚姻状况',
  `EDUCATION_ID` varchar(2) DEFAULT NULL COMMENT '教育状况',
  `HEIGHT` decimal(4,1) DEFAULT NULL COMMENT '身高',
  `WEIGHT` decimal(5,2) DEFAULT NULL COMMENT '体重',
  `INCOME` decimal(10,0) DEFAULT NULL COMMENT '年收入(人民币)',
  `NATIONALITY` varchar(3) DEFAULT NULL COMMENT '民族',
  `COMPANY_NAME` varchar(100) DEFAULT NULL COMMENT '单位名称',
  `JOB_NAME` varchar(100) DEFAULT NULL COMMENT '职业名称',
  `INDUSTRY_ID` varchar(4) DEFAULT NULL COMMENT '行业代码表',
  `JOB_CATE_ID` varchar(10) DEFAULT NULL COMMENT '当前职业类别',
  `COMPANY_KIND` varchar(2) DEFAULT NULL COMMENT '企业性质',
  `ACADEMIC_TITLE` varchar(3) DEFAULT NULL COMMENT '职称',
  `SMOKING` char(1) DEFAULT NULL COMMENT '是否吸烟',
  `Social_Security_Number` varchar(30) DEFAULT NULL COMMENT '社保号码',
  `IS_RETIRED` char(1) DEFAULT NULL COMMENT '是否退休',
  `level` varchar(2) DEFAULT NULL COMMENT '客户等级',
  `ADDRESS_ID` bigint(20) DEFAULT NULL COMMENT '默认地址ID',
  `MOBILE` varchar(20) DEFAULT NULL COMMENT '默认手机号码',
  `OFFICE_TEL` varchar(40) DEFAULT NULL COMMENT '公司联系电话',
  `HOME_TEL` varchar(40) DEFAULT NULL COMMENT '家庭联系电话',
  `FAX` varchar(40) DEFAULT NULL COMMENT '传真号码',
  `FIRST_NAME` varchar(100) DEFAULT NULL,
  `MID_NAME` varchar(40) DEFAULT NULL,
  `LAST_NAME` varchar(40) DEFAULT NULL,
  `ALIAS_NAME` varchar(100) DEFAULT NULL COMMENT '别名',
  `RELIGION_CODE` varchar(3) DEFAULT NULL COMMENT '宗教信仰',
  `CHILD_COUNT` decimal(2,0) DEFAULT NULL COMMENT '子女情况',
  `STATUS` char(1) DEFAULT NULL COMMENT '客户状态',
  `DEATH_DATE` date DEFAULT NULL COMMENT '死亡日期',
  `EMAIL_1` varchar(100) DEFAULT NULL,
  `EMAIL_2` varchar(100) DEFAULT NULL,
  `QQ` varchar(50) DEFAULT NULL COMMENT 'QQ号码',
  `WEIXIN` varchar(50) DEFAULT NULL COMMENT '微信号码',
  `WeiBo` varchar(100) DEFAULT NULL COMMENT '微博',
  `Web` varchar(200) DEFAULT NULL COMMENT '网址',
  `INSERT_TIME` datetime DEFAULT NULL COMMENT '插入时间',
  `UPDATE_TIME` datetime DEFAULT NULL COMMENT '修改时间',
  `INSERT_BY` bigint(20) DEFAULT NULL COMMENT '插入人',
  `UPDATE_BY` bigint(20) DEFAULT NULL COMMENT '修改人',
  `MEMBER_NO` bigint(20) DEFAULT NULL COMMENT '会员号',
  PRIMARY KEY (`CUSTOMER_ID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `t_customer`
--

LOCK TABLES `t_customer` WRITE;
/*!40000 ALTER TABLE `t_customer` DISABLE KEYS */;
INSERT INTO `t_customer` VALUES (720,'豆腐干豆腐','1','1991-05-23','111','370705199105232516',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'2016-05-29 14:13:54','2016-05-29 14:13:54',400,400,NULL);
/*!40000 ALTER TABLE `t_customer` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `t_customer_account`
--

DROP TABLE IF EXISTS `t_customer_account`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `t_customer_account` (
  `ACCOUNT_ID` int(11) NOT NULL AUTO_INCREMENT,
  `CUSTOMER_ID` bigint(20) NOT NULL COMMENT '客户ID',
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
  `TRANSACTION_AMOUNT` decimal(12,2) DEFAULT NULL COMMENT '交易金额',
  `CURRENCY_ID` varchar(3) DEFAULT NULL COMMENT '交易币种',
  `INSERT_TIME` datetime DEFAULT NULL COMMENT '插入时间',
  `UPDATE_TIME` datetime DEFAULT NULL COMMENT '修改时间',
  `INSERT_BY` bigint(20) DEFAULT NULL COMMENT '插入人员',
  `UPDATE_BY` bigint(20) DEFAULT NULL COMMENT '修改人员',
  PRIMARY KEY (`ACCOUNT_ID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `t_customer_account`
--

LOCK TABLES `t_customer_account` WRITE;
/*!40000 ALTER TABLE `t_customer_account` DISABLE KEYS */;
/*!40000 ALTER TABLE `t_customer_account` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `t_customer_address`
--

DROP TABLE IF EXISTS `t_customer_address`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `t_customer_address` (
  `ADDRESS_ID` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '主键ID',
  `CUSTOMER_ID` bigint(20) NOT NULL,
  `ADDRESS_TYPE` varchar(1) DEFAULT NULL COMMENT '地址类型',
  `ADDRESS_FORMAT_TYPE` varchar(1) DEFAULT NULL COMMENT '地址格式类型(1 FREE  2.FIX)',
  `COUNTRY_CODE` varchar(3) DEFAULT NULL COMMENT '国家代码',
  `ADDRESS_FORMAT_1` varchar(200) DEFAULT NULL COMMENT '标准地址：代表省/直辖市',
  `ADDRESS_FORMAT_2` varchar(100) DEFAULT NULL COMMENT '标准地址：代表市',
  `ADDRESS_FORMAT_3` varchar(100) DEFAULT NULL COMMENT '标准地址：代表区/县',
  `ADDRESS_FORMAT_4` varchar(100) DEFAULT NULL COMMENT '标准地址：输入地址',
  `ADDRESS_1` varchar(100) DEFAULT NULL COMMENT '无格式地址1',
  `ADDRESS_2` varchar(100) DEFAULT NULL COMMENT '无格式地址2',
  `POST_CODE` varchar(10) DEFAULT NULL COMMENT '邮编',
  `ADDRESS_STATUS` varchar(1) DEFAULT NULL COMMENT '地址状态(1-有效,2-无效)',
  `TEL_FORMAT_TYPE` varchar(1) DEFAULT NULL COMMENT 'Tel Format（(1 FREE  2.FIX ）',
  `CONTACT_PERSON` varchar(100) DEFAULT NULL COMMENT '联系人',
  `CONTACT_TEL` varchar(100) DEFAULT NULL COMMENT '联系电话',
  `CONTACT_MOBILE` varchar(100) DEFAULT NULL COMMENT '联系手机',
  `TEL_FORMAT_1` varchar(100) DEFAULT NULL COMMENT '国家代码号',
  `TEL_FORMAT_2` varchar(100) DEFAULT NULL COMMENT '区号',
  `TEL_FORMAT_3` varchar(100) DEFAULT NULL COMMENT '电话号码',
  `TEL_FORMAT_4` varchar(100) DEFAULT NULL COMMENT '分机号码',
  `INSERT_TIME` datetime DEFAULT NULL COMMENT '插入时间',
  `UPDATE_TIME` datetime DEFAULT NULL COMMENT '修改时间',
  `INSERT_BY` bigint(20) DEFAULT NULL COMMENT '插入人员',
  `UPDATE_BY` bigint(20) DEFAULT NULL COMMENT '修改人员',
  PRIMARY KEY (`ADDRESS_ID`)
) ENGINE=InnoDB AUTO_INCREMENT=21 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `t_customer_address`
--

LOCK TABLES `t_customer_address` WRITE;
/*!40000 ALTER TABLE `t_customer_address` DISABLE KEYS */;
INSERT INTO `t_customer_address` VALUES (20,720,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'2016-05-29 14:13:54','2016-05-29 14:13:54',400,400);
/*!40000 ALTER TABLE `t_customer_address` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `t_customer_change_record`
--

DROP TABLE IF EXISTS `t_customer_change_record`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `t_customer_change_record` (
  `LIST_ID` int(10) NOT NULL AUTO_INCREMENT,
  `CUSTOMER_ID` bigint(20) NOT NULL COMMENT '客户ID',
  `CHANGE_TYPE` varchar(2) DEFAULT NULL COMMENT '变更类型  1：新增 2：修改',
  `CHANGE_BY` varchar(2) DEFAULT NULL COMMENT '修改来源系统',
  `INSERT_TIME` datetime DEFAULT NULL COMMENT '插入时间',
  `INSERT_BY` bigint(20) DEFAULT NULL COMMENT '插入人员',
  PRIMARY KEY (`LIST_ID`)
) ENGINE=InnoDB AUTO_INCREMENT=15 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `t_customer_change_record`
--

LOCK TABLES `t_customer_change_record` WRITE;
/*!40000 ALTER TABLE `t_customer_change_record` DISABLE KEYS */;
INSERT INTO `t_customer_change_record` VALUES (13,720,'1','PA','2016-05-29 14:13:54',400),(14,720,'1','PA','2016-05-29 14:13:54',400);
/*!40000 ALTER TABLE `t_customer_change_record` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `t_customer_identify`
--

DROP TABLE IF EXISTS `t_customer_identify`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `t_customer_identify` (
  `CUSTOMER_ID` bigint(20) NOT NULL AUTO_INCREMENT,
  `NAME` varchar(100) COLLATE utf8_bin NOT NULL,
  `GENDER` char(1) COLLATE utf8_bin NOT NULL,
  `BIRTHDAY` date NOT NULL,
  `CERTI_TYPE` varchar(3) COLLATE utf8_bin NOT NULL,
  `CERTI_CODE` varchar(40) COLLATE utf8_bin NOT NULL,
  `PARTITION_INDI` char(2) COLLATE utf8_bin DEFAULT NULL,
  `INSERT_TIME` datetime DEFAULT CURRENT_TIMESTAMP,
  `UPDATE_TIME` datetime DEFAULT CURRENT_TIMESTAMP,
  PRIMARY KEY (`CUSTOMER_ID`)
) ENGINE=InnoDB AUTO_INCREMENT=781 DEFAULT CHARSET=utf8 COLLATE=utf8_bin COMMENT='客户识别表';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `t_customer_identify`
--

LOCK TABLES `t_customer_identify` WRITE;
/*!40000 ALTER TABLE `t_customer_identify` DISABLE KEYS */;
INSERT INTO `t_customer_identify` VALUES (720,'豆腐干豆腐','1','1991-05-23','111','370705199105232516',NULL,'2016-05-29 13:54:02','2016-05-29 13:54:05'),(743,'张三','1','2016-03-02','199','123456789',NULL,'2016-05-30 13:46:08','2016-05-30 13:46:08'),(744,'张三','2','2016-05-04','414','13233',NULL,'2016-05-30 14:43:01','2016-05-30 14:43:01'),(745,'Tina.zhou','1','1988-05-01','111','331122198805011234',NULL,'2016-05-30 17:00:22','2016-05-30 17:00:22'),(746,'返回','1','2016-05-18','414','11123123',NULL,'2016-05-30 17:54:34','2016-05-30 17:54:34'),(747,'电饭锅的','1','2016-05-17','414','213123',NULL,'2016-05-31 09:06:21','2016-05-31 09:06:21'),(748,'向亚丰','1','1985-06-20','199','A0123456789',NULL,'2016-05-31 09:32:48','2016-05-31 09:32:48'),(749,'吕炜','1','2000-05-04','199','111111111111111',NULL,'2016-05-31 13:00:20','2016-05-31 13:00:20'),(750,'豆腐干豆腐','1','2016-05-10','414','123123',NULL,'2016-05-31 13:21:34','2016-05-31 13:21:34'),(751,'对方的方式','1','1978-01-01','414','1111111111',NULL,'2016-05-31 14:16:44','2016-05-31 14:16:44'),(752,'偶然','1','1980-01-01','117','20000000',NULL,'2016-05-31 14:20:33','2016-05-31 14:20:33'),(753,'吕炜','1','1980-01-01','199','11111',NULL,'2016-05-31 14:28:38','2016-05-31 14:28:38'),(754,'中文姓名','1','1978-05-25','199','1234567890',NULL,'2016-05-31 15:40:47','2016-05-31 15:40:47'),(755,'吕炜','1','1970-01-01','199','100000000',NULL,'2016-05-31 15:53:01','2016-05-31 15:53:01'),(756,'姓名','1','1970-01-01','516','13000000',NULL,'2016-05-31 17:51:00','2016-05-31 17:51:00'),(757,'吕炜','1','1980-01-01','414','hellokitty',NULL,'2016-05-31 17:55:25','2016-05-31 17:55:25'),(758,'孙中山','1','1908-01-01','414','111111',NULL,'2016-05-31 18:11:32','2016-05-31 18:11:32'),(759,'张学良','1','1980-01-01','199','13000000',NULL,'2016-05-31 18:19:12','2016-05-31 18:19:12'),(760,'王丽爽','2','1986-09-28','414','1234567',NULL,'2016-05-31 18:24:49','2016-05-31 18:24:49'),(761,'姓名','1','1980-01-01','199','19870001',NULL,'2016-05-31 18:27:55','2016-05-31 18:27:55'),(762,'王谔','1','1977-12-01','199','11111111',NULL,'2016-05-31 18:55:21','2016-05-31 18:55:21'),(763,'姓名','1','1978-05-31','117','122000',NULL,'2016-05-31 19:03:45','2016-05-31 19:03:45'),(764,'水电费','1','2016-05-18','414','234234',NULL,'2016-05-31 20:43:49','2016-05-31 20:43:49'),(765,'王丽爽','2','1986-09-26','117','130526198609264261',NULL,'2016-05-31 20:50:44','2016-05-31 20:50:44'),(766,'张三','1','1980-09-09','199','121313213213',NULL,'2016-05-31 20:58:54','2016-05-31 20:58:54'),(767,'投保','1','1980-01-01','117','61032419781229121212',NULL,'2016-05-31 21:23:20','2016-05-31 21:23:20'),(768,'王丽爽','2','1980-01-02','117','130526198609264261',NULL,'2016-05-31 22:37:36','2016-05-31 22:37:36'),(769,'穆龙刚','1','2016-05-10','414','234235',NULL,'2016-05-31 22:37:56','2016-05-31 22:37:56'),(770,'王丽爽','2','1986-09-26','199','130526198609264261',NULL,'2016-05-31 23:05:35','2016-05-31 23:05:35'),(771,'穆桂英','2','1986-09-26','111','130526198609264265',NULL,'2016-05-31 23:12:47','2016-05-31 23:12:47'),(772,'王丽爽','2','1986-09-26','414','1305261986092642',NULL,'2016-05-31 23:27:47','2016-05-31 23:27:47'),(773,'王丽爽','2','1986-09-26','414','130526198609',NULL,'2016-05-31 23:33:17','2016-05-31 23:33:17'),(774,'王丽爽','2','1986-09-26','111','130526198609264265',NULL,'2016-05-31 23:36:10','2016-05-31 23:36:10'),(775,'穆龙刚','1','1990-12-05','111','130423199012053414',NULL,'2016-05-31 23:36:27','2016-05-31 23:36:27'),(776,'胜多负少','1','1991-05-23','111','370705199105232516',NULL,'2016-06-01 09:21:49','2016-06-01 09:21:49'),(777,'张三','1','2000-02-02','112','333',NULL,'2016-06-01 09:25:20','2016-06-01 09:25:20'),(778,'李思','1','2016-06-01','516','333',NULL,'2016-06-01 09:27:31','2016-06-01 09:27:31'),(779,'李倩倩','2','1995-03-27','111','130681199503274726',NULL,'2016-06-01 10:14:37','2016-06-01 10:14:37'),(780,'向亚丰','1','1985-06-20','117','19850620',NULL,'2016-06-01 11:29:51','2016-06-01 11:29:51');
/*!40000 ALTER TABLE `t_customer_identify` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `t_customer_risk_sum`
--

DROP TABLE IF EXISTS `t_customer_risk_sum`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `t_customer_risk_sum` (
  `LIST_ID` varchar(40) DEFAULT NULL COMMENT '主键',
  `RISK_CATEGORY` char(2) DEFAULT NULL COMMENT '风险累积类别',
  `PROPOSAL_ID` varchar(40) DEFAULT NULL COMMENT '投保单ID',
  `CUSTOMER_ID` bigint(20) DEFAULT NULL COMMENT '客户ID',
  `RISK_AMOUNT` decimal(12,2) DEFAULT NULL COMMENT '风险累积金额',
  `PARTITION_INDI` char(2) DEFAULT NULL COMMENT 'PARTITION_INDI',
  `INSERT_TIME` datetime DEFAULT NULL COMMENT '插入时间',
  `UPDATE_TIME` datetime DEFAULT NULL COMMENT '更新时间',
  `INSERT_BY` bigint(20) DEFAULT NULL COMMENT '插入人员',
  `UPDATE_BY` bigint(20) DEFAULT NULL COMMENT '更新人员'
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `t_customer_risk_sum`
--

LOCK TABLES `t_customer_risk_sum` WRITE;
/*!40000 ALTER TABLE `t_customer_risk_sum` DISABLE KEYS */;
/*!40000 ALTER TABLE `t_customer_risk_sum` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `t_customer_role`
--

DROP TABLE IF EXISTS `t_customer_role`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `t_customer_role` (
  `CONTRACT_ROLE_ID` int(11) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `CUSTOMER_ID` bigint(20) NOT NULL COMMENT '客户ID',
  `POLICY_CODE` varchar(40) DEFAULT NULL COMMENT '保单号码',
  `PROPOSAL_ID` varchar(40) DEFAULT NULL COMMENT '投保单ID',
  `SERVICE_TYPE` varchar(3) DEFAULT NULL COMMENT '业务交易代码表',
  `SERVICE_CHANGE_ID` varchar(40) DEFAULT NULL COMMENT '业务交易主键',
  `ROLE_TYPE` varchar(2) DEFAULT NULL COMMENT '投保人、被保人、受益人',
  `POLICY_STATUS` varchar(10) DEFAULT NULL COMMENT '保单当前状态',
  `RELATIONSHIP` varchar(2) DEFAULT NULL COMMENT '与投保人关系',
  `SA` decimal(12,2) DEFAULT NULL COMMENT '保单保额',
  `PREMIUM` decimal(12,2) DEFAULT NULL COMMENT '保费',
  `INSERT_TIME` datetime DEFAULT NULL COMMENT '插入时间',
  `UPDATE_TIME` datetime DEFAULT NULL COMMENT '修改时间',
  `INSERT_BY` bigint(20) DEFAULT NULL COMMENT '插入人员',
  `UPDATE_BY` bigint(20) DEFAULT NULL COMMENT '修改人员',
  PRIMARY KEY (`CONTRACT_ROLE_ID`)
) ENGINE=InnoDB AUTO_INCREMENT=45 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `t_customer_role`
--

LOCK TABLES `t_customer_role` WRITE;
/*!40000 ALTER TABLE `t_customer_role` DISABLE KEYS */;
INSERT INTO `t_customer_role` VALUES (43,720,'160525121265a','160525212308ffb','NB','931378278361159661','1',NULL,NULL,410000.00,1.37,'2016-05-29 14:13:54','2016-05-29 14:13:54',400,400),(44,720,'160525121265a','160525212308ffb','NB','931378278361159661','2',NULL,NULL,410000.00,1.37,'2016-05-29 14:13:54','2016-05-29 14:13:54',400,400);
/*!40000 ALTER TABLE `t_customer_role` ENABLE KEYS */;
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
  `FAILED_REASON` varchar(100) DEFAULT NULL COMMENT '失败原因',
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
/*!40000 ALTER TABLE `t_pa_outsrv_trans` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2016-06-01 15:14:48
