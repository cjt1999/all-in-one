-- MySQL dump 10.13  Distrib 5.7.12, for Linux (x86_64)
--
-- Host: localhost    Database: wift_bcp_tst
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
-- Table structure for table `d_account_type`
--

DROP TABLE IF EXISTS `d_account_type`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `d_account_type` (
  `CODE` varchar(10) COLLATE utf8_bin NOT NULL DEFAULT '',
  `NAME` varchar(200) COLLATE utf8_bin DEFAULT NULL,
  `ENUM_NAME` varchar(30) COLLATE utf8_bin DEFAULT NULL,
  `PINYIN` varchar(10) COLLATE utf8_bin DEFAULT NULL,
  `PARENT_CODE` varchar(10) COLLATE utf8_bin DEFAULT NULL,
  PRIMARY KEY (`CODE`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin COMMENT='账户类型代码';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `d_account_type`
--

LOCK TABLES `d_account_type` WRITE;
/*!40000 ALTER TABLE `d_account_type` DISABLE KEYS */;
INSERT INTO `d_account_type` VALUES ('1','银行账户','','YXZH',''),('2','第三方支付','','DSFZF',''),('3','其他资金机构','','QTZJJG','');
/*!40000 ALTER TABLE `d_account_type` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `d_bank`
--

DROP TABLE IF EXISTS `d_bank`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `d_bank` (
  `BANK_CODE` varchar(3) DEFAULT NULL COMMENT '银行代码',
  `BANK_NAME` varchar(50) DEFAULT NULL COMMENT '银行名称'
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='银行列表';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `d_bank`
--

LOCK TABLES `d_bank` WRITE;
/*!40000 ALTER TABLE `d_bank` DISABLE KEYS */;
/*!40000 ALTER TABLE `d_bank` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `d_pay_mode`
--

DROP TABLE IF EXISTS `d_pay_mode`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `d_pay_mode` (
  `CODE` varchar(2) DEFAULT NULL COMMENT '支付方式代码',
  `NAME` varchar(30) DEFAULT NULL COMMENT '支付方式名称',
  `PINYIN` varchar(50) DEFAULT NULL COMMENT '支付方式名称拼音',
  `TR_CODE` varchar(20) DEFAULT NULL COMMENT '天融支付方式代码'
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `d_pay_mode`
--

LOCK TABLES `d_pay_mode` WRITE;
/*!40000 ALTER TABLE `d_pay_mode` DISABLE KEYS */;
/*!40000 ALTER TABLE `d_pay_mode` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `t_account_info`
--

DROP TABLE IF EXISTS `t_account_info`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `t_account_info` (
  `ACCOUNT_ID` int(11) NOT NULL AUTO_INCREMENT COMMENT '账户信息ID',
  `EX_TRANS_ID` varchar(32) COLLATE utf8_bin DEFAULT NULL COMMENT '跨系统交易ID UUID 业务端产生',
  `ACCOUNT_REF_ID` varchar(32) COLLATE utf8_bin DEFAULT NULL COMMENT '业务账户信息ID',
  `ORGAN_ID` bigint(20) NOT NULL COMMENT '租户ID',
  `BANK_CODE` varchar(10) COLLATE utf8_bin DEFAULT NULL COMMENT '银行编码',
  `CUSTOMER_ID` bigint(20) DEFAULT NULL COMMENT '收付款客户号',
  `ACCOUNT_NAME` varchar(40) COLLATE utf8_bin DEFAULT NULL COMMENT '收付款人名称',
  `PAY_ACCOUNT_TYPE` int(11) DEFAULT NULL COMMENT '支付账户类型',
  `PAY_ACCOUNT_VENDER` varchar(30) COLLATE utf8_bin DEFAULT NULL COMMENT '账户托管方 银行或',
  `PAY_ACCOUNT` varchar(40) COLLATE utf8_bin DEFAULT NULL COMMENT '账户号码',
  `CERTI_TYPE` char(2) COLLATE utf8_bin DEFAULT NULL COMMENT '收付款人证件类型',
  `CERTI_CODE` varchar(30) COLLATE utf8_bin DEFAULT NULL COMMENT '收付款人证件号码',
  `PAYEE_PHONE` varchar(30) COLLATE utf8_bin DEFAULT NULL COMMENT '收付费人手机号',
  `CREATE_BY` bigint(20) DEFAULT NULL COMMENT '记录创建人',
  `CREATE_TIME` datetime DEFAULT NULL COMMENT '记录创建时间',
  `UPDATE_BY` bigint(20) DEFAULT NULL COMMENT '记录更新人',
  `UPDATE_TIME` datetime DEFAULT NULL COMMENT '记录更新时间',
  `CREATE_TIMESTAMP` datetime DEFAULT CURRENT_TIMESTAMP COMMENT '记录创建时间戳',
  `UPDATE_TIMESTAMP` datetime DEFAULT CURRENT_TIMESTAMP COMMENT '记录更新时间戳',
  PRIMARY KEY (`ACCOUNT_ID`)
) ENGINE=InnoDB AUTO_INCREMENT=7 DEFAULT CHARSET=utf8 COLLATE=utf8_bin COMMENT='账户信息表';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `t_account_info`
--

LOCK TABLES `t_account_info` WRITE;
/*!40000 ALTER TABLE `t_account_info` DISABLE KEYS */;
/*!40000 ALTER TABLE `t_account_info` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `t_arap_offset`
--

DROP TABLE IF EXISTS `t_arap_offset`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `t_arap_offset` (
  `OFFSET_ID` bigint(20) NOT NULL COMMENT '冲销ID',
  `ORGAN_ID` bigint(20) NOT NULL COMMENT '租户ID',
  `EX_TRANS_ID` varchar(32) COLLATE utf8_bin NOT NULL COMMENT '跨系统交易ID UUID 业务端产生',
  `PREM_ARAP_ID` bigint(20) DEFAULT NULL COMMENT '应收应付费用ID',
  `PREM_CURRENCY` varchar(10) COLLATE utf8_bin NOT NULL COMMENT '保费币种',
  `PREM_AMOUNT` decimal(12,2) NOT NULL COMMENT '保费金额',
  `CASH_ID` bigint(20) DEFAULT NULL COMMENT '实收实付费用ID',
  `PAY_AMOUNT` decimal(12,2) DEFAULT NULL COMMENT '实收付金额',
  `PAY_CURRENCY` varchar(10) COLLATE utf8_bin DEFAULT NULL COMMENT '币种',
  `OFFSET_TYPE` int(11) NOT NULL COMMENT '冲销类型',
  `CREATE_BY` bigint(20) DEFAULT NULL COMMENT '记录创建人',
  `CREATE_TIME` datetime DEFAULT NULL COMMENT '记录创建时间',
  `UPDATE_BY` bigint(20) DEFAULT NULL COMMENT '记录更新人',
  `UPDATE_TIME` datetime DEFAULT NULL COMMENT '记录更新时间',
  `CREATE_TIMESTAMP` datetime DEFAULT CURRENT_TIMESTAMP COMMENT '记录创建时间戳',
  `UPDATE_TIMESTAMP` datetime DEFAULT CURRENT_TIMESTAMP COMMENT '记录更新时间戳',
  PRIMARY KEY (`OFFSET_ID`,`EX_TRANS_ID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin COMMENT='费用冲销表';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `t_arap_offset`
--

LOCK TABLES `t_arap_offset` WRITE;
/*!40000 ALTER TABLE `t_arap_offset` DISABLE KEYS */;
/*!40000 ALTER TABLE `t_arap_offset` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `t_bank_conf`
--

DROP TABLE IF EXISTS `t_bank_conf`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `t_bank_conf` (
  `LIST_ID` bigint(20) NOT NULL COMMENT '记录ID',
  `BANK_CODE` varchar(10) DEFAULT NULL COMMENT '银行代码',
  `WB_BANK_CODE` varchar(20) DEFAULT NULL COMMENT '微保支付银行代码',
  PRIMARY KEY (`LIST_ID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='银行代码关联配置表';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `t_bank_conf`
--

LOCK TABLES `t_bank_conf` WRITE;
/*!40000 ALTER TABLE `t_bank_conf` DISABLE KEYS */;
INSERT INTO `t_bank_conf` VALUES (1,'102','ICBC'),(2,'103','ABC'),(3,'104','BOC'),(4,'100','CPSRB'),(5,'105','CCB'),(6,'301','BCOM'),(7,'302','CITIC'),(8,'303','CEB'),(9,'304','HXB'),(10,'305','CMBC'),(11,'306','GDB'),(12,'308','CMB'),(13,'309','CIB'),(14,'316','CZB'),(15,'318','BHBK'),(16,'671','SCBank'),(17,'501','HSBC');
/*!40000 ALTER TABLE `t_bank_conf` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `t_bcp_event`
--

DROP TABLE IF EXISTS `t_bcp_event`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `t_bcp_event` (
  `EVENT_ID` varchar(32) NOT NULL COMMENT '操作事件ID',
  `ORGAN_ID` bigint(20) NOT NULL COMMENT '租户ID',
  `EVENT_TYPE` varchar(1) DEFAULT NULL COMMENT '事件类型',
  `EVENT_TYPE_RESULT` varchar(1) DEFAULT NULL COMMENT '事件类型结果',
  `EVENT_USER` bigint(20) DEFAULT NULL COMMENT '事件操作员',
  `EVENT_TIME` date DEFAULT NULL COMMENT '事件操作时间',
  `EVENT_COMMNENT` varchar(200) DEFAULT NULL COMMENT '事件备注',
  `CREATE_BY` bigint(20) DEFAULT NULL COMMENT '记录创建人',
  `CREATE_TIME` datetime DEFAULT NULL COMMENT '记录创建时间',
  `UPDATE_BY` bigint(20) DEFAULT NULL COMMENT '记录更新人',
  `UPDATE_TIME` datetime DEFAULT NULL COMMENT '记录更新时间',
  `CREATE_TIMESTAMP` datetime DEFAULT CURRENT_TIMESTAMP COMMENT '记录创建时间戳',
  `UPDATE_TIMESTAMP` datetime DEFAULT CURRENT_TIMESTAMP COMMENT '记录更新时间戳',
  PRIMARY KEY (`EVENT_ID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='收付费操作事件表';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `t_bcp_event`
--

LOCK TABLES `t_bcp_event` WRITE;
/*!40000 ALTER TABLE `t_bcp_event` DISABLE KEYS */;
/*!40000 ALTER TABLE `t_bcp_event` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `t_bcp_event_log`
--

DROP TABLE IF EXISTS `t_bcp_event_log`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `t_bcp_event_log` (
  `EVENT_LOG_ID` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '日志流水id',
  `EVENT_ID` varchar(32) NOT NULL COMMENT '操作事件ID',
  `EXTRANS_ID` varchar(32) DEFAULT NULL COMMENT '交易数据id',
  `CREATE_BY` bigint(20) DEFAULT NULL COMMENT '记录创建人',
  `CREATE_TIME` datetime DEFAULT NULL COMMENT '记录创建时间',
  `UPDATE_BY` bigint(20) DEFAULT NULL COMMENT '记录更新人',
  `UPDATE_TIME` datetime DEFAULT NULL COMMENT '记录更新时间',
  `CREATE_TIMESTAMP` datetime DEFAULT CURRENT_TIMESTAMP COMMENT '记录创建时间戳',
  `UPDATE_TIMESTAMP` datetime DEFAULT CURRENT_TIMESTAMP COMMENT '记录更新时间戳',
  PRIMARY KEY (`EVENT_LOG_ID`)
) ENGINE=InnoDB AUTO_INCREMENT=11 DEFAULT CHARSET=utf8 COMMENT='收付费操作事件日志表';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `t_bcp_event_log`
--

LOCK TABLES `t_bcp_event_log` WRITE;
/*!40000 ALTER TABLE `t_bcp_event_log` DISABLE KEYS */;
/*!40000 ALTER TABLE `t_bcp_event_log` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `t_business_customer`
--

DROP TABLE IF EXISTS `t_business_customer`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `t_business_customer` (
  `BUSINESS_CUSTOMER_ID` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '业务客户ID',
  `EX_TRANS_ID` varchar(32) COLLATE utf8_bin DEFAULT NULL COMMENT '跨系统交易ID UUID 业务端产生',
  `ORGAN_ID` bigint(20) DEFAULT NULL COMMENT '租户ID',
  `CUSTOMER_ID` bigint(20) NOT NULL COMMENT '客户ID',
  `REAL_NAME` varchar(100) COLLATE utf8_bin DEFAULT NULL COMMENT '客户姓名',
  `GENDER` char(1) COLLATE utf8_bin DEFAULT NULL COMMENT '性别',
  `BIRTHDAY` date NOT NULL COMMENT '生日',
  `CERTI_TYPE` varchar(3) COLLATE utf8_bin DEFAULT NULL COMMENT '证件类型',
  `CERTI_CODE` varchar(40) COLLATE utf8_bin DEFAULT NULL COMMENT '证件号码',
  `CUSTOMER_PHONE` varchar(30) COLLATE utf8_bin DEFAULT NULL COMMENT '客户手机号',
  `PARTITION_INDI` bigint(20) DEFAULT NULL COMMENT '分区代码',
  `CREATE_BY` bigint(20) DEFAULT NULL COMMENT '记录创建人',
  `CREATE_TIME` datetime DEFAULT NULL COMMENT '记录创建时间',
  `UPDATE_BY` bigint(20) DEFAULT NULL COMMENT '记录更新人',
  `UPDATE_TIME` datetime DEFAULT NULL COMMENT '记录更新时间',
  `CREATE_TIMESTAMP` datetime DEFAULT CURRENT_TIMESTAMP COMMENT '记录创建时间戳',
  `UPDATE_TIMESTAMP` datetime DEFAULT CURRENT_TIMESTAMP COMMENT '记录更新时间戳',
  PRIMARY KEY (`BUSINESS_CUSTOMER_ID`)
) ENGINE=InnoDB AUTO_INCREMENT=6668924 DEFAULT CHARSET=utf8 COLLATE=utf8_bin COMMENT='业务客户';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `t_business_customer`
--

LOCK TABLES `t_business_customer` WRITE;
/*!40000 ALTER TABLE `t_business_customer` DISABLE KEYS */;
/*!40000 ALTER TABLE `t_business_customer` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `t_cash`
--

DROP TABLE IF EXISTS `t_cash`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `t_cash` (
  `CASH_ID` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '实收实付费用ID',
  `EX_TRANS_ID` varchar(32) COLLATE utf8_bin DEFAULT NULL COMMENT '跨系统交易ID UUID 业务端产生',
  `ACCOUNT_REF_ID` varchar(32) COLLATE utf8_bin DEFAULT NULL COMMENT '业务账户信息ID',
  `ORDER_NO` varchar(32) COLLATE utf8_bin DEFAULT NULL COMMENT '订单交易号',
  `ORGAN_ID` bigint(20) NOT NULL COMMENT '租户ID',
  `FEE_TYPE` varchar(10) COLLATE utf8_bin NOT NULL COMMENT '费用类型代码',
  `BUSINESS_CODE` varchar(20) COLLATE utf8_bin DEFAULT NULL COMMENT '业务编码(投保单号、保单号、保全申请号、理赔号等)',
  `APPLY_CODE` varchar(20) COLLATE utf8_bin DEFAULT NULL COMMENT '投保单号码',
  `POLICY_CODE` varchar(20) COLLATE utf8_bin DEFAULT NULL COMMENT '保单号',
  `DERIV_TYPE` varchar(20) COLLATE utf8_bin NOT NULL COMMENT '业务来源：001:契约',
  `CITY_CODE` varchar(8) COLLATE utf8_bin DEFAULT NULL COMMENT '保单所属地区',
  `ORGAN_CODE` varchar(8) COLLATE utf8_bin DEFAULT NULL COMMENT '保单管理机构',
  `AGENT_CODE` varchar(20) COLLATE utf8_bin DEFAULT NULL COMMENT '代理人员CODE',
  `POLICY_TYPE` char(1) COLLATE utf8_bin DEFAULT NULL COMMENT '保单类型：个/团/汇缴',
  `CHANNEL_TYPE` char(2) COLLATE utf8_bin DEFAULT NULL COMMENT '销售渠道',
  `PRODUCT_ID` bigint(20) DEFAULT NULL COMMENT '产品id',
  `CUSTOMER_ID` bigint(20) DEFAULT NULL COMMENT '客户ID',
  `PAYREFNO` bigint(20) DEFAULT NULL COMMENT '一次实收产生的收付流水号',
  `PAY_FLAG` varchar(1) COLLATE utf8_bin DEFAULT NULL COMMENT '收付类型 1:收费2:付费',
  `PAY_MODE` varchar(2) COLLATE utf8_bin DEFAULT NULL COMMENT '收付方式,00为金豆',
  `OFFERS_INFO` varchar(40) COLLATE utf8_bin DEFAULT NULL COMMENT '优惠信息：优惠卡卡号、金豆积分等优惠',
  `CURRENCY` varchar(10) COLLATE utf8_bin DEFAULT NULL COMMENT '币种',
  `AMOUNT` decimal(12,2) DEFAULT NULL COMMENT '金额',
  `FEE_STATUS` varchar(2) COLLATE utf8_bin DEFAULT NULL COMMENT '收付状态\n            0:待收付\n            1:已收付\n            2:收付中\n            3:已取消\n            4:申请回退\n            5:回退中\n            6:已回退',
  `APPLY_TIME` datetime DEFAULT NULL COMMENT '费用申请时间',
  `FINISH_TIME` datetime DEFAULT NULL COMMENT '费用到账时间',
  `POSTED` varchar(2) COLLATE utf8_bin DEFAULT NULL COMMENT '记账状态',
  `BELNR` varchar(10) COLLATE utf8_bin DEFAULT NULL COMMENT '凭证号',
  `CREATE_BY` bigint(20) DEFAULT NULL COMMENT '记录创建人',
  `CREATE_TIME` datetime DEFAULT NULL COMMENT '记录创建时间',
  `UPDATE_BY` bigint(20) DEFAULT NULL COMMENT '记录更新人',
  `UPDATE_TIME` datetime DEFAULT NULL COMMENT '记录更新时间',
  `CREATE_TIMESTAMP` datetime DEFAULT CURRENT_TIMESTAMP COMMENT '记录创建时间戳',
  `UPDATE_TIMESTAMP` datetime DEFAULT CURRENT_TIMESTAMP COMMENT '记录更新时间戳',
  PRIMARY KEY (`CASH_ID`)
) ENGINE=InnoDB AUTO_INCREMENT=1185 DEFAULT CHARSET=utf8 COLLATE=utf8_bin COMMENT='实收实付表';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `t_cash`
--

LOCK TABLES `t_cash` WRITE;
/*!40000 ALTER TABLE `t_cash` DISABLE KEYS */;
/*!40000 ALTER TABLE `t_cash` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `t_certi_type_conf`
--

DROP TABLE IF EXISTS `t_certi_type_conf`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `t_certi_type_conf` (
  `LIST_ID` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '记录ID',
  `CERTI_TYPE` varchar(10) DEFAULT NULL COMMENT '证件类型代码',
  `WB_CERTI_TYPE` varchar(10) DEFAULT NULL COMMENT '微保支付证件类型代码',
  PRIMARY KEY (`LIST_ID`)
) ENGINE=InnoDB AUTO_INCREMENT=8 DEFAULT CHARSET=utf8mb4 COMMENT='证件类型关联配置表';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `t_certi_type_conf`
--

LOCK TABLES `t_certi_type_conf` WRITE;
/*!40000 ALTER TABLE `t_certi_type_conf` DISABLE KEYS */;
INSERT INTO `t_certi_type_conf` VALUES (1,'01','1'),(2,'02','7'),(3,'03','11'),(4,'04','3'),(5,'05','2'),(6,'06','8'),(7,'07','4');
/*!40000 ALTER TABLE `t_certi_type_conf` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `t_company_organ`
--

DROP TABLE IF EXISTS `t_company_organ`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `t_company_organ` (
  `organ_id` bigint(20) DEFAULT NULL,
  `ORGAN_CODE` varchar(60) DEFAULT NULL,
  `ORGAN_NAME` varchar(300) DEFAULT NULL,
  `ABBR_NAME` varchar(300) DEFAULT NULL,
  `COMPANY_CODE` varchar(60) DEFAULT NULL,
  `ORGAN_TYPE` varchar(6) DEFAULT NULL,
  `CLASS_ID` decimal(3,0) DEFAULT NULL,
  `CONFIRMED` char(3) DEFAULT NULL,
  `TELEPHONE` varchar(150) DEFAULT NULL,
  `EMAIL` varchar(150) DEFAULT NULL,
  `FAX` varchar(150) DEFAULT NULL,
  `ADDRESS` varchar(600) DEFAULT NULL,
  `POST_CODE` varchar(60) DEFAULT NULL,
  `CONTACT_PERSON` varchar(60) DEFAULT NULL,
  `CONTACT_TEL` varchar(60) DEFAULT NULL,
  `DISTRICT_CODE` varchar(45) DEFAULT NULL,
  `PARENT_ID` bigint(20) DEFAULT NULL,
  `CAPITAL_TYPE` varchar(30) DEFAULT NULL,
  `SALT_SIGN` varchar(1536) DEFAULT NULL,
  `CREATE_BY` bigint(20) DEFAULT NULL,
  `UPDATE_BY` bigint(20) DEFAULT NULL,
  `INSERT_TIME` datetime DEFAULT NULL,
  `UPDATE_TIME` datetime DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `t_company_organ`
--

LOCK TABLES `t_company_organ` WRITE;
/*!40000 ALTER TABLE `t_company_organ` DISABLE KEYS */;
INSERT INTO `t_company_organ` VALUES (400,'TRSH','北京天融互联信息技术有限公司上海分公司','天融上分',NULL,'1',1,'Y','1380013000','CIITC','CIITC','CIITC','CIITC','CIITC',NULL,'110000',NULL,'3',NULL,NULL,NULL,'2015-08-21 14:46:51','2015-08-21 14:46:51'),(406,NULL,'虹口道场',NULL,'310109',NULL,1,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'2016-01-05 10:06:41','2016-01-05 10:06:41'),(408,'310106','娃哈哈集团',NULL,NULL,NULL,1,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'2016-01-05 10:29:23','2016-01-05 10:29:23'),(410,'310107','康师傅',NULL,NULL,NULL,1,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'2016-01-05 10:37:11','2016-01-05 10:37:11'),(413,'310111','统一集团',NULL,NULL,NULL,1,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'2016-01-05 10:45:14','2016-01-05 10:45:14'),(416,'140702','三星',NULL,NULL,NULL,1,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'2016-01-05 10:49:19','2016-01-05 10:49:19'),(418,'GOOGLE','谷歌',NULL,NULL,NULL,1,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'2016-01-05 11:13:15','2016-01-05 11:13:15'),(421,'HUAWEI','华为',NULL,NULL,NULL,1,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'2016-01-05 12:18:50','2016-01-05 12:18:50'),(422,'SLL','360不安全',NULL,NULL,NULL,1,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'2016-01-05 13:42:20','2016-01-05 13:42:20'),(423,'Mico','德',NULL,NULL,NULL,1,NULL,NULL,'as@126.com',NULL,NULL,NULL,'无名','13988887777',NULL,NULL,NULL,NULL,400,400,'2016-01-05 13:47:17','2016-01-05 13:47:17'),(424,'Nokia','诺基亚',NULL,NULL,NULL,1,NULL,NULL,'AS@126.com',NULL,NULL,NULL,'聂风','13621961626',NULL,NULL,NULL,NULL,400,400,'2016-01-05 13:56:56','2016-01-05 13:56:56'),(425,'APPLE','苹果公司',NULL,NULL,NULL,1,NULL,NULL,'GL@163.org',NULL,NULL,NULL,'步惊云','13621961626',NULL,NULL,NULL,NULL,400,400,'2016-01-05 21:29:42','2016-01-05 21:29:42'),(426,'ZXY','哈哈哈哈哈中西医另',NULL,NULL,NULL,1,NULL,NULL,'lkl@126.com',NULL,NULL,NULL,'老届','0354-3065789',NULL,NULL,NULL,NULL,400,400,'2016-01-06 16:18:05','2016-01-06 16:18:05'),(427,'A001','哈哈哈中国菜',NULL,NULL,NULL,1,NULL,NULL,'guanlan13@126.com',NULL,NULL,NULL,'高毅','13621961626',NULL,NULL,NULL,NULL,400,400,'2016-01-06 18:31:39','2016-01-06 18:31:39'),(428,'C001','可口可乐中国公司','','31000','1',1,NULL,'13525897896','guanlan13@126.com','','花样百出','','Michael','13755556666','310',NULL,'1',NULL,400,400,'2016-01-06 18:42:14','2016-01-06 18:42:14'),(429,'C0011','可口可乐上海分公司',NULL,NULL,NULL,2,NULL,NULL,'asd@126.com',NULL,NULL,NULL,'老W','13517778885',NULL,428,NULL,NULL,400,400,'2016-01-07 11:47:27','2016-01-07 11:47:27'),(430,'C0012','可口可乐北京分公司',NULL,NULL,NULL,2,NULL,NULL,'asd@163.com',NULL,NULL,NULL,'哦啉','15877778888',NULL,428,NULL,NULL,400,400,'2016-01-07 13:27:02','2016-01-07 13:27:02'),(431,'E001','上海东方',NULL,NULL,NULL,1,NULL,NULL,'LK@163.com',NULL,NULL,NULL,'大风车','021-22225555',NULL,NULL,NULL,NULL,400,400,'2016-01-07 13:44:00','2016-01-07 13:44:00'),(432,'C0013','浙江百事可乐分公司','浙江百事','0013','1',2,NULL,'13261590450','gl@126.com','132456','武东路','036315','张三','13261590450','310',428,'1',NULL,400,400,'2016-01-07 16:52:40','2016-01-07 16:52:40'),(433,'C0014','东城区分公司','东城西就','010001','1',3,NULL,'13261590450','opiop@sina.com','','武东路','','左军','13261590450','310',430,'1',NULL,400,400,'2016-01-07 19:29:35','2016-01-07 19:29:35'),(434,'B001','江苏分公司','苏分','456789','2',2,NULL,'13987451258','asd@12.com','789456','建造路','','李小天','13987451258','310',428,'1',NULL,400,400,'2016-01-07 19:44:47','2016-01-07 19:44:47'),(436,'ABC001','南京分公司','难解难分','78956','2',3,NULL,'021-55557777','GL@q2.com','','花样百出','','小鸡','13588889999','310',434,'3',NULL,400,400,'2016-01-08 09:59:08','2016-01-08 09:59:08'),(437,'W001','上海娃哈哈',NULL,NULL,NULL,1,NULL,NULL,'gl@126.com',NULL,NULL,NULL,'花样百出','13258889874',NULL,NULL,NULL,NULL,400,400,'2016-01-08 11:04:03','2016-01-08 11:04:03'),(438,'BMW','宝马中国总公司','','3100245','1',1,NULL,'13578945621','gl@126.com','','花样百出','','任我行','13545698745','310',NULL,'4',NULL,400,400,'2016-01-08 11:55:03','2016-01-08 11:55:03'),(440,'ZZ001','猪猪侠乐园',NULL,NULL,NULL,1,NULL,NULL,'guanlan13@126.com',NULL,NULL,NULL,'猪猪','13258741258',NULL,NULL,NULL,NULL,400,400,'2016-01-08 14:48:26','2016-01-08 14:48:26'),(441,'D001','哆啦A梦乐园',NULL,NULL,NULL,1,NULL,NULL,'guanlan13@126.com',NULL,NULL,NULL,'小B','15874125896',NULL,NULL,NULL,NULL,400,400,'2016-01-08 15:09:05','2016-01-08 15:09:05'),(442,'D0010','上海宝马','上马','132','1',2,NULL,'13258794631','guanlan13@126.com','','上海市虹口区车站南路407弄34号403室','','花样百出','13258794631','310',438,'1',NULL,400,400,'2016-01-08 15:13:23','2016-01-08 15:13:23'),(443,'D0012','迪斯尼上海乐园',NULL,NULL,NULL,1,NULL,NULL,'guanlan13@126.com',NULL,NULL,NULL,'小白','13278945874',NULL,NULL,NULL,NULL,400,400,'2016-01-08 16:34:19','2016-01-08 16:34:19'),(444,'THSH007','研发团队','','1321212','9',2,NULL,'021-78787878','guanlan13@126.com','','政学路88号5号楼702室小门对面','','向亚丰','13589752589','310',400,'6',NULL,400,400,'2016-01-08 16:40:07','2016-01-08 16:40:07');
/*!40000 ALTER TABLE `t_company_organ` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `t_ex_trans_check_log`
--

DROP TABLE IF EXISTS `t_ex_trans_check_log`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `t_ex_trans_check_log` (
  `CHECK_ID` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '对账记录id',
  `ORGAN_ID` bigint(20) NOT NULL COMMENT '租户ID',
  `PAY_DATE` date NOT NULL COMMENT '交易日期',
  `CHECK_STATUS` int(11) DEFAULT NULL COMMENT '记录状态',
  `FILE_NUM` int(11) DEFAULT NULL COMMENT '生成文件个数',
  `CHECK_COMMENT` varchar(200) DEFAULT NULL COMMENT '备注信息',
  `CREATE_BY` bigint(20) DEFAULT NULL COMMENT '记录创建人',
  `CREATE_TIME` datetime DEFAULT NULL COMMENT '记录创建时间',
  `UPDATE_BY` bigint(20) DEFAULT NULL COMMENT '记录更新人',
  `UPDATE_TIME` datetime DEFAULT NULL COMMENT '记录更新时间',
  `CREATE_TIMESTAMP` datetime DEFAULT CURRENT_TIMESTAMP COMMENT '记录创建时间戳',
  `UPDATE_TIMESTAMP` datetime DEFAULT CURRENT_TIMESTAMP COMMENT '记录更新时间戳',
  PRIMARY KEY (`CHECK_ID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='交易对账记录表';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `t_ex_trans_check_log`
--

LOCK TABLES `t_ex_trans_check_log` WRITE;
/*!40000 ALTER TABLE `t_ex_trans_check_log` DISABLE KEYS */;
/*!40000 ALTER TABLE `t_ex_trans_check_log` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `t_ex_transaction`
--

DROP TABLE IF EXISTS `t_ex_transaction`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `t_ex_transaction` (
  `EX_TRANS_ID` varchar(32) COLLATE utf8_bin NOT NULL COMMENT '跨系统交易ID UUID 业务端产生',
  `ORGAN_ID` bigint(20) NOT NULL COMMENT '租户ID',
  `CLIENT_SYS` varchar(20) COLLATE utf8_bin DEFAULT NULL COMMENT '交易发起系统',
  `MEMBER_ID` varchar(32) COLLATE utf8_bin DEFAULT NULL COMMENT '会员ID',
  `CLIENT_REQUEST_TIME` datetime DEFAULT NULL COMMENT '交易发起时间客户端时间',
  `TRANS_BEGIN_TIME` datetime DEFAULT NULL COMMENT '交易完成时间',
  `TRANS_STATUS` int(11) DEFAULT NULL COMMENT '交易结果 0-处理中  1-处理失败 2 处理成功',
  `TRANS_TRY_TIME` int(11) DEFAULT NULL COMMENT '交易重试次数',
  `TRANS_COMPLETE_TIME` datetime DEFAULT NULL COMMENT '交易完成时间',
  `BUSINESS_CODE` varchar(32) COLLATE utf8_bin DEFAULT NULL COMMENT '交易编码',
  `BUSINESS_KEY_NAME` varchar(40) COLLATE utf8_bin DEFAULT NULL COMMENT '业务主键名称',
  `BUSINESS_KEY_VALUE` varchar(40) COLLATE utf8_bin DEFAULT NULL COMMENT '业务主键值',
  `BILL_CALL_BACK_URL` varchar(200) COLLATE utf8_bin DEFAULT NULL COMMENT '订单详情回调URL',
  `AFT_CALL_BACK_URL` varchar(200) COLLATE utf8_bin DEFAULT NULL COMMENT '回调URL',
  `BACK_EX_TRANS_ID` varchar(32) COLLATE utf8_bin DEFAULT NULL COMMENT '回退交易ID',
  PRIMARY KEY (`EX_TRANS_ID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin COMMENT='支付申请交易主表';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `t_ex_transaction`
--

LOCK TABLES `t_ex_transaction` WRITE;
/*!40000 ALTER TABLE `t_ex_transaction` DISABLE KEYS */;
/*!40000 ALTER TABLE `t_ex_transaction` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `t_fee_type`
--

DROP TABLE IF EXISTS `t_fee_type`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `t_fee_type` (
  `FEE_TYPE` varchar(10) COLLATE utf8_bin NOT NULL COMMENT '费用类型代码',
  `FEE_NAME` varchar(200) COLLATE utf8_bin DEFAULT NULL COMMENT '费用名称',
  `ARAP_TYPE` varchar(1) COLLATE utf8_bin DEFAULT NULL COMMENT '0- 无关  1-应收  2-应付',
  `ACTUAL_TYPE` varchar(1) COLLATE utf8_bin DEFAULT NULL COMMENT '0-无关   1-实收  2-实付',
  `FEE_TABLE` varchar(50) COLLATE utf8_bin DEFAULT NULL COMMENT '费用存储表',
  `CREATED_BY` bigint(20) DEFAULT NULL,
  `CREATE_TIME` datetime DEFAULT NULL,
  `UPDATE_BY` bigint(20) DEFAULT NULL,
  `UPDATE_TIME` datetime DEFAULT NULL,
  `CREATE_TIMESTAMP` datetime DEFAULT CURRENT_TIMESTAMP,
  `UPDATE_TIMESTAMP` datetime DEFAULT CURRENT_TIMESTAMP,
  PRIMARY KEY (`FEE_TYPE`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin COMMENT='费用类型';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `t_fee_type`
--

LOCK TABLES `t_fee_type` WRITE;
/*!40000 ALTER TABLE `t_fee_type` DISABLE KEYS */;
INSERT INTO `t_fee_type` VALUES ('01','出单预收','0','0','T_PREM_ARAP',400,'2016-05-05 09:03:57',400,'2016-05-05 09:03:57','2016-05-05 09:04:29','2016-05-05 09:04:29'),('11','暂收保费','1','0','T_CASH',10000,'2016-03-15 10:49:17',400,'2016-03-15 10:50:25','2016-03-15 10:49:17','2016-03-15 10:49:17'),('13','会员权益抵扣保费','0','1','T_CASH',10000,'2016-03-15 10:49:17',10000,'2016-03-15 10:49:17','2016-03-15 10:49:17','2016-03-15 10:49:17'),('32','实付退费','0','2','T_CASH',10000,'2016-03-15 10:49:21',10000,'2016-03-15 10:50:22','2016-03-15 10:49:17','2016-03-15 10:49:17'),('33','会员权益返还','1','1','T_CASH',10000,'2016-03-15 10:49:21',400,'2016-03-15 10:49:21','2016-03-15 10:49:21','2016-03-15 10:49:21'),('41','保费收入','1','0','T_PREM_ARAP',10000,'2016-03-15 10:49:21',10000,'2016-03-15 10:50:22','2016-03-15 10:49:17','2016-03-15 10:49:17'),('42','未满期净保费','2','0','T_PREM_ARAP',10000,'2016-03-15 10:49:21',10000,'2016-03-15 10:50:22','2016-03-15 10:49:17','2016-03-15 10:49:17');
/*!40000 ALTER TABLE `t_fee_type` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `t_gl_acc_item_config`
--

DROP TABLE IF EXISTS `t_gl_acc_item_config`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `t_gl_acc_item_config` (
  `ACC_ID` bigint(20) NOT NULL COMMENT '科目id',
  `ORGAN_ID` bigint(20) NOT NULL COMMENT '租户ID',
  `SEG1` varchar(20) DEFAULT NULL COMMENT '分析点1',
  `SEG1_INDI` char(1) NOT NULL DEFAULT 'W' COMMENT '分析点1默认值',
  `SEG2` varchar(20) DEFAULT NULL COMMENT '分析点2',
  `SEG2_INDI` char(1) NOT NULL DEFAULT 'W' COMMENT '分析点2默认值',
  `SEG3` varchar(20) DEFAULT NULL COMMENT '分析点3',
  `SEG3_INDI` char(1) NOT NULL DEFAULT 'W' COMMENT '分析点3默认值',
  `SEG4` varchar(20) DEFAULT NULL COMMENT '分析点4',
  `SEG4_INDI` char(1) NOT NULL DEFAULT 'W' COMMENT '分析点4默认值',
  `SEG5` varchar(20) DEFAULT NULL COMMENT '分析点5',
  `SEG5_INDI` char(1) NOT NULL DEFAULT 'W' COMMENT '分析点5默认值',
  `SEG6` varchar(20) DEFAULT NULL COMMENT '分析点6',
  `SEG6_INDI` char(1) NOT NULL DEFAULT 'W' COMMENT '分析点6默认值',
  `SEG7` varchar(20) DEFAULT NULL COMMENT '分析点7',
  `SEG7_INDI` char(1) NOT NULL DEFAULT 'W' COMMENT '分析点7默认值',
  `SEG8` varchar(20) DEFAULT NULL COMMENT '分析点8',
  `SEG8_INDI` char(1) NOT NULL DEFAULT 'W' COMMENT '分析点8默认值',
  `SEG9` varchar(20) DEFAULT NULL COMMENT '分析点9',
  `SEG9_INDI` char(1) NOT NULL DEFAULT 'W' COMMENT '分析点9默认值',
  `SEG10` varchar(20) DEFAULT NULL COMMENT '分析点10',
  `SEG10_INDI` char(1) NOT NULL DEFAULT 'W' COMMENT '分析点10默认值',
  `SEG11` varchar(20) DEFAULT NULL COMMENT '分析点11',
  `SEG11_INDI` char(1) NOT NULL DEFAULT 'W' COMMENT '分析点11默认值',
  `SEG12` varchar(20) DEFAULT NULL COMMENT '分析点12',
  `SEG12_INDI` char(1) NOT NULL DEFAULT 'W' COMMENT '分析点12默认值',
  `SEG13` varchar(20) DEFAULT NULL COMMENT '分析点13',
  `SEG13_INDI` char(1) NOT NULL DEFAULT 'W' COMMENT '分析点13默认值',
  `SEG14` varchar(20) DEFAULT NULL COMMENT '分析点14',
  `SEG14_INDI` char(1) NOT NULL DEFAULT 'W' COMMENT '分析点14默认值',
  `SEG15` varchar(20) DEFAULT NULL COMMENT '分析点15',
  `SEG15_INDI` char(1) NOT NULL DEFAULT 'W' COMMENT '分析点15默认值',
  `SEG16` varchar(20) DEFAULT NULL COMMENT '分析点16',
  `SEG16_INDI` char(1) NOT NULL DEFAULT 'W' COMMENT '分析点16默认值',
  `SEG17` varchar(20) DEFAULT NULL COMMENT '分析点17',
  `SEG17_INDI` char(1) NOT NULL DEFAULT 'W' COMMENT '分析点17默认值',
  `SEG18` varchar(20) DEFAULT NULL COMMENT '分析点18',
  `SEG18_INDI` char(1) NOT NULL DEFAULT 'W' COMMENT '分析点18默认值',
  `SEG19` varchar(20) DEFAULT NULL COMMENT '分析点19',
  `SEG19_INDI` char(1) NOT NULL DEFAULT 'W' COMMENT '分析点19默认值',
  `SEG20` varchar(20) DEFAULT NULL COMMENT '分析点20',
  `SEG20_INDI` char(1) NOT NULL DEFAULT 'W' COMMENT '分析点20默认值',
  `CREATE_BY` bigint(20) DEFAULT NULL COMMENT '记录创建人',
  `CREATE_TIME` datetime DEFAULT NULL COMMENT '记录创建时间',
  `UPDATE_BY` bigint(20) DEFAULT NULL COMMENT '记录更新人',
  `UPDATE_TIME` datetime DEFAULT NULL COMMENT '记录更新时间',
  `CREATE_TIMESTAMP` datetime DEFAULT NULL COMMENT '记录创建时间戳',
  `UPDATE_TIMESTAMP` datetime DEFAULT NULL COMMENT '记录更新时间戳',
  PRIMARY KEY (`ACC_ID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COMMENT='科目字段配置表';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `t_gl_acc_item_config`
--

LOCK TABLES `t_gl_acc_item_config` WRITE;
/*!40000 ALTER TABLE `t_gl_acc_item_config` DISABLE KEYS */;
/*!40000 ALTER TABLE `t_gl_acc_item_config` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `t_gl_accounting_rule`
--

DROP TABLE IF EXISTS `t_gl_accounting_rule`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `t_gl_accounting_rule` (
  `LIST_ID` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '流水号，无实际意义',
  `ORGAN_ID` bigint(20) NOT NULL COMMENT '租户ID',
  `IS_ENABLED` char(1) NOT NULL DEFAULT 'Y' COMMENT '是否启用',
  `FEE_TABLE` varchar(2) NOT NULL COMMENT '费用类型',
  `BASE1` varchar(20) DEFAULT NULL COMMENT '基本信息1',
  `BASE1_INDI` char(1) NOT NULL DEFAULT 'N' COMMENT '基本信息1默认值',
  `BASE2` varchar(20) DEFAULT NULL COMMENT '基本信息2',
  `BASE2_INDI` char(1) NOT NULL DEFAULT 'N' COMMENT '基本信息2默认值',
  `BASE3` varchar(20) DEFAULT NULL COMMENT '基本信息3',
  `BASE3_INDI` char(1) NOT NULL DEFAULT 'N' COMMENT '基本信息3默认值',
  `BASE4` varchar(20) DEFAULT NULL COMMENT '基本信息4',
  `BASE4_INDI` char(1) NOT NULL DEFAULT 'N' COMMENT '基本信息4默认值',
  `BASE5` varchar(20) DEFAULT NULL COMMENT '基本信息5',
  `BASE5_INDI` char(1) NOT NULL DEFAULT 'N' COMMENT '基本信息5默认值',
  `BASE6` varchar(20) DEFAULT NULL COMMENT '基本信息6',
  `BASE6_INDI` char(1) NOT NULL DEFAULT 'N' COMMENT '基本信息6默认值',
  `BASE7` varchar(20) DEFAULT NULL COMMENT '基本信息7',
  `BASE7_INDI` char(1) NOT NULL DEFAULT 'N' COMMENT '基本信息7默认值',
  `BASE8` varchar(20) DEFAULT NULL COMMENT '基本信息8',
  `BASE8_INDI` char(1) NOT NULL DEFAULT 'N' COMMENT '基本信息8默认值',
  `BASE9` varchar(20) DEFAULT NULL COMMENT '基本信息9',
  `BASE9_INDI` char(1) NOT NULL DEFAULT 'N' COMMENT '基本信息9默认值',
  `BASE10` varchar(20) DEFAULT NULL COMMENT '基本信息10',
  `BASE10_INDI` char(1) NOT NULL DEFAULT 'N' COMMENT '基本信息10默认值',
  `FILTER1` varchar(20) DEFAULT NULL COMMENT '过滤条件1',
  `FILTER1_INDI` char(1) NOT NULL DEFAULT 'N' COMMENT '过滤条件1默认值',
  `FILTER2` varchar(20) DEFAULT NULL COMMENT '过滤条件2',
  `FILTER2_INDI` char(1) NOT NULL DEFAULT 'N' COMMENT '过滤条件2默认值',
  `FILTER3` varchar(20) DEFAULT NULL COMMENT '过滤条件3',
  `FILTER3_INDI` char(1) NOT NULL DEFAULT 'N' COMMENT '过滤条件3默认值',
  `FILTER4` varchar(20) DEFAULT NULL COMMENT '过滤条件4',
  `FILTER4_INDI` char(1) NOT NULL DEFAULT 'N' COMMENT '过滤条件4默认值',
  `FILTER5` varchar(20) DEFAULT NULL COMMENT '过滤条件5',
  `FILTER5_INDI` char(1) NOT NULL DEFAULT 'N' COMMENT '过滤条件5默认值',
  `FILTER6` varchar(20) DEFAULT NULL COMMENT '过滤条件6',
  `FILTER6_INDI` char(1) NOT NULL DEFAULT 'N' COMMENT '过滤条件6默认值',
  `FILTER7` varchar(20) DEFAULT NULL COMMENT '过滤条件7',
  `FILTER7_INDI` char(1) NOT NULL DEFAULT 'N' COMMENT '过滤条件7默认值',
  `FILTER8` varchar(20) DEFAULT NULL COMMENT '过滤条件8',
  `FILTER8_INDI` char(1) NOT NULL DEFAULT 'N' COMMENT '过滤条件8默认值',
  `FILTER9` varchar(20) DEFAULT NULL COMMENT '过滤条件9',
  `FILTER9_INDI` char(1) NOT NULL DEFAULT 'N' COMMENT '过滤条件9默认值',
  `FILTER10` varchar(20) DEFAULT NULL COMMENT '过滤条件10',
  `FILTER10_INDI` char(1) NOT NULL DEFAULT 'N' COMMENT '过滤条件10默认值',
  `DR_SEG1` varchar(20) DEFAULT NULL COMMENT '借方分析点1',
  `DR_SEG1_INDI` char(1) NOT NULL COMMENT '借方分析点1默认值',
  `DR_SEG2` varchar(20) DEFAULT NULL COMMENT '借方分析点2',
  `DR_SEG2_INDI` char(1) NOT NULL COMMENT '借方分析点2默认值',
  `DR_SEG3` varchar(20) DEFAULT NULL COMMENT '借方分析点3',
  `DR_SEG3_INDI` char(1) NOT NULL COMMENT '借方分析点3默认值',
  `DR_SEG4` varchar(20) DEFAULT NULL COMMENT '借方分析点4',
  `DR_SEG4_INDI` char(1) NOT NULL COMMENT '借方分析点4默认值',
  `DR_SEG5` varchar(20) DEFAULT NULL COMMENT '借方分析点5',
  `DR_SEG5_INDI` char(1) NOT NULL COMMENT '借方分析点5默认值',
  `DR_SEG6` varchar(20) DEFAULT NULL COMMENT '借方分析点6',
  `DR_SEG6_INDI` char(1) NOT NULL COMMENT '借方分析点6默认值',
  `DR_SEG7` varchar(20) DEFAULT NULL COMMENT '借方分析点7',
  `DR_SEG7_INDI` char(1) NOT NULL COMMENT '借方分析点7默认值',
  `DR_SEG8` varchar(20) DEFAULT NULL COMMENT '借方分析点8',
  `DR_SEG8_INDI` char(1) NOT NULL COMMENT '借方分析点8默认值',
  `DR_SEG9` varchar(20) DEFAULT NULL COMMENT '借方分析点9',
  `DR_SEG9_INDI` char(1) NOT NULL COMMENT '借方分析点9默认值',
  `DR_SEG10` varchar(20) DEFAULT NULL COMMENT '借方分析点10',
  `DR_SEG10_INDI` char(1) NOT NULL COMMENT '借方分析点10默认值',
  `DR_SEG11` varchar(20) DEFAULT NULL COMMENT '借方分析点11',
  `DR_SEG11_INDI` char(1) NOT NULL COMMENT '借方分析点11默认值',
  `DR_SEG12` varchar(20) DEFAULT NULL COMMENT '借方分析点12',
  `DR_SEG12_INDI` char(1) NOT NULL COMMENT '借方分析点12默认值',
  `DR_SEG13` varchar(20) DEFAULT NULL COMMENT '借方分析点13',
  `DR_SEG13_INDI` char(1) NOT NULL COMMENT '借方分析点13默认值',
  `DR_SEG14` varchar(20) DEFAULT NULL COMMENT '借方分析点14',
  `DR_SEG14_INDI` char(1) NOT NULL COMMENT '借方分析点14默认值',
  `DR_SEG15` varchar(20) DEFAULT NULL COMMENT '借方分析点15',
  `DR_SEG15_INDI` char(1) NOT NULL COMMENT '借方分析点15默认值',
  `DR_SEG16` varchar(20) DEFAULT NULL COMMENT '借方分析点16',
  `DR_SEG16_INDI` char(1) NOT NULL COMMENT '借方分析点16默认值',
  `DR_SEG17` varchar(20) DEFAULT NULL COMMENT '借方分析点17',
  `DR_SEG17_INDI` char(1) NOT NULL COMMENT '借方分析点17默认值',
  `DR_SEG18` varchar(20) DEFAULT NULL COMMENT '借方分析点18',
  `DR_SEG18_INDI` char(1) NOT NULL COMMENT '借方分析点18默认值',
  `DR_SEG19` varchar(20) DEFAULT NULL COMMENT '借方分析点19',
  `DR_SEG19_INDI` char(1) NOT NULL COMMENT '借方分析点19默认值',
  `DR_SEG20` varchar(20) DEFAULT NULL COMMENT '借方分析点20',
  `DR_SEG20_INDI` char(1) NOT NULL COMMENT '借方分析点20默认值',
  `CR_SEG1` varchar(20) DEFAULT NULL COMMENT '贷方分析点1',
  `CR_SEG1_INDI` char(1) NOT NULL COMMENT '贷方分析点1默认值',
  `CR_SEG2` varchar(20) DEFAULT NULL COMMENT '贷方分析点2',
  `CR_SEG2_INDI` char(1) NOT NULL COMMENT '贷方分析点2默认值',
  `CR_SEG3` varchar(20) DEFAULT NULL COMMENT '贷方分析点3',
  `CR_SEG3_INDI` char(1) NOT NULL COMMENT '贷方分析点3默认值',
  `CR_SEG4` varchar(20) DEFAULT NULL COMMENT '贷方分析点4',
  `CR_SEG4_INDI` char(1) NOT NULL COMMENT '贷方分析点4默认值',
  `CR_SEG5` varchar(20) DEFAULT NULL COMMENT '贷方分析点5',
  `CR_SEG5_INDI` char(1) NOT NULL COMMENT '贷方分析点5默认值',
  `CR_SEG6` varchar(20) DEFAULT NULL COMMENT '贷方分析点6',
  `CR_SEG6_INDI` char(1) NOT NULL COMMENT '贷方分析点6默认值',
  `CR_SEG7` varchar(20) DEFAULT NULL COMMENT '贷方分析点7',
  `CR_SEG7_INDI` char(1) NOT NULL COMMENT '贷方分析点7默认值',
  `CR_SEG8` varchar(20) DEFAULT NULL COMMENT '贷方分析点8',
  `CR_SEG8_INDI` char(1) NOT NULL COMMENT '贷方分析点8默认值',
  `CR_SEG9` varchar(20) DEFAULT NULL COMMENT '贷方分析点9',
  `CR_SEG9_INDI` char(1) NOT NULL COMMENT '贷方分析点9默认值',
  `CR_SEG10` varchar(20) DEFAULT NULL COMMENT '贷方分析点10',
  `CR_SEG10_INDI` char(1) NOT NULL COMMENT '贷方分析点10默认值',
  `CR_SEG11` varchar(20) DEFAULT NULL COMMENT '贷方分析点11',
  `CR_SEG11_INDI` char(1) NOT NULL COMMENT '贷方分析点11默认值',
  `CR_SEG12` varchar(20) DEFAULT NULL COMMENT '贷方分析点12',
  `CR_SEG12_INDI` char(1) NOT NULL COMMENT '贷方分析点12默认值',
  `CR_SEG13` varchar(20) DEFAULT NULL COMMENT '贷方分析点13',
  `CR_SEG13_INDI` char(1) NOT NULL COMMENT '贷方分析点13默认值',
  `CR_SEG14` varchar(20) DEFAULT NULL COMMENT '贷方分析点14',
  `CR_SEG14_INDI` char(1) NOT NULL COMMENT '贷方分析点14默认值',
  `CR_SEG15` varchar(20) DEFAULT NULL COMMENT '贷方分析点15',
  `CR_SEG15_INDI` char(1) NOT NULL COMMENT '贷方分析点15默认值',
  `CR_SEG16` varchar(20) DEFAULT NULL COMMENT '贷方分析点16',
  `CR_SEG16_INDI` char(1) NOT NULL COMMENT '贷方分析点16默认值',
  `CR_SEG17` varchar(20) DEFAULT NULL COMMENT '贷方分析点17',
  `CR_SEG17_INDI` char(1) NOT NULL COMMENT '贷方分析点17默认值',
  `CR_SEG18` varchar(20) DEFAULT NULL COMMENT '贷方分析点18',
  `CR_SEG18_INDI` char(1) NOT NULL COMMENT '贷方分析点18默认值',
  `CR_SEG19` varchar(20) DEFAULT NULL COMMENT '贷方分析点19',
  `CR_SEG19_INDI` char(1) NOT NULL COMMENT '贷方分析点19默认值',
  `CR_SEG20` varchar(20) DEFAULT NULL COMMENT '贷方分析点20',
  `CR_SEG20_INDI` char(1) NOT NULL COMMENT '贷方分析点20默认值',
  `CREATE_BY` bigint(20) DEFAULT NULL COMMENT '记录创建人',
  `CREATE_TIME` datetime DEFAULT NULL COMMENT '记录创建时间',
  `UPDATE_BY` bigint(20) DEFAULT NULL COMMENT '记录更新人',
  `UPDATE_TIME` datetime DEFAULT NULL COMMENT '记录更新时间',
  `CREATE_TIMESTAMP` datetime DEFAULT CURRENT_TIMESTAMP COMMENT '记录创建时间戳',
  `UPDATE_TIMESTAMP` datetime DEFAULT CURRENT_TIMESTAMP COMMENT '记录更新时间戳',
  PRIMARY KEY (`LIST_ID`)
) ENGINE=InnoDB AUTO_INCREMENT=9 DEFAULT CHARSET=utf8 COMMENT='记账科目配置表';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `t_gl_accounting_rule`
--

LOCK TABLES `t_gl_accounting_rule` WRITE;
/*!40000 ALTER TABLE `t_gl_accounting_rule` DISABLE KEYS */;
/*!40000 ALTER TABLE `t_gl_accounting_rule` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `t_gl_arap`
--

DROP TABLE IF EXISTS `t_gl_arap`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `t_gl_arap` (
  `LIST_ID` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '主键流水号',
  `ORGAN_ID` bigint(20) NOT NULL COMMENT '租户ID',
  `FEE_TYPE` varchar(10) NOT NULL COMMENT '费用类型代码',
  `BUSINESS_CODE` varchar(20) NOT NULL COMMENT '业务编码',
  `APPLY_CODE` varchar(20) DEFAULT NULL COMMENT '投保单号码',
  `POLICY_CODE` varchar(20) DEFAULT NULL COMMENT '保单号',
  `ORGAN_CODE` varchar(8) DEFAULT NULL COMMENT '保单管理机构',
  `POLICY_TYPE` char(1) DEFAULT NULL COMMENT '保单类型：个/团/汇缴',
  `CHANNEL_TYPE` char(2) DEFAULT NULL COMMENT '销售渠道',
  `VALIDATE_DATE` date DEFAULT NULL COMMENT '业务生效日期',
  `COVER_PERIOD_TYPE` varchar(10) DEFAULT NULL COMMENT '保障期间类型',
  `COVERAGE_PERIOD` int(11) DEFAULT NULL COMMENT '保障期间',
  `CHARGE_PERIOD` int(11) DEFAULT NULL COMMENT '缴费期间',
  `CHARGE_MODE` varchar(10) DEFAULT NULL COMMENT '缴费频率',
  `PRODUCT_ID` bigint(20) DEFAULT NULL COMMENT '产品id',
  `PROP_ITEM_ID` bigint(20) DEFAULT NULL COMMENT '责任ID',
  `CURRENCY` varchar(10) DEFAULT NULL COMMENT '币种',
  `AMOUNT` decimal(12,2) DEFAULT NULL COMMENT '金额',
  `GL_POSTED` varchar(2) DEFAULT NULL COMMENT '记账处理状态',
  `ACCOUNT_GL_DATE` date DEFAULT NULL COMMENT '记账日期',
  `BELNR` varchar(10) DEFAULT NULL COMMENT 'SAP回写凭证号信息',
  `BASE1` varchar(20) DEFAULT NULL COMMENT '基本信息1',
  `BASE2` varchar(20) DEFAULT NULL COMMENT '基本信息2',
  `BASE3` varchar(20) DEFAULT NULL COMMENT '基本信息3',
  `BASE4` varchar(20) DEFAULT NULL COMMENT '基本信息4',
  `BASE5` varchar(20) DEFAULT NULL COMMENT '基本信息5',
  `BASE6` varchar(20) DEFAULT NULL COMMENT '基本信息6',
  `BASE7` varchar(20) DEFAULT NULL COMMENT '基本信息7',
  `BASE8` varchar(20) DEFAULT NULL COMMENT '基本信息8',
  `BASE9` varchar(20) DEFAULT NULL COMMENT '基本信息9',
  `BASE10` varchar(20) DEFAULT NULL COMMENT '基本信息10',
  `FILTER1` varchar(20) DEFAULT NULL COMMENT '过滤条件1',
  `FILTER2` varchar(20) DEFAULT NULL COMMENT '过滤条件2',
  `FILTER3` varchar(20) DEFAULT NULL COMMENT '过滤条件3',
  `FILTER4` varchar(20) DEFAULT NULL COMMENT '过滤条件4',
  `FILTER5` varchar(20) DEFAULT NULL COMMENT '过滤条件5',
  `FILTER6` varchar(20) DEFAULT NULL COMMENT '过滤条件6',
  `FILTER7` varchar(20) DEFAULT NULL COMMENT '过滤条件7',
  `FILTER8` varchar(20) DEFAULT NULL COMMENT '过滤条件8',
  `FILTER9` varchar(20) DEFAULT NULL COMMENT '过滤条件9',
  `FILTER10` varchar(20) DEFAULT NULL COMMENT '过滤条件10',
  `DR_SEG1` varchar(20) DEFAULT NULL COMMENT '借方分析点1',
  `DR_SEG2` varchar(20) DEFAULT NULL COMMENT '借方分析点2',
  `DR_SEG3` varchar(20) DEFAULT NULL COMMENT '借方分析点3',
  `DR_SEG4` varchar(20) DEFAULT NULL COMMENT '借方分析点4',
  `DR_SEG5` varchar(20) DEFAULT NULL COMMENT '借方分析点5',
  `DR_SEG6` varchar(20) DEFAULT NULL COMMENT '借方分析点6',
  `DR_SEG7` varchar(20) DEFAULT NULL COMMENT '借方分析点7',
  `DR_SEG8` varchar(20) DEFAULT NULL COMMENT '借方分析点8',
  `DR_SEG9` varchar(20) DEFAULT NULL COMMENT '借方分析点9',
  `DR_SEG10` varchar(20) DEFAULT NULL COMMENT '借方分析点10',
  `DR_SEG11` varchar(20) DEFAULT NULL COMMENT '借方分析点11',
  `DR_SEG12` varchar(20) DEFAULT NULL COMMENT '借方分析点12',
  `DR_SEG13` varchar(20) DEFAULT NULL COMMENT '借方分析点13',
  `DR_SEG14` varchar(20) DEFAULT NULL COMMENT '借方分析点14',
  `DR_SEG15` varchar(20) DEFAULT NULL COMMENT '借方分析点15',
  `DR_SEG16` varchar(20) DEFAULT NULL COMMENT '借方分析点16',
  `DR_SEG17` varchar(20) DEFAULT NULL COMMENT '借方分析点17',
  `DR_SEG18` varchar(20) DEFAULT NULL COMMENT '借方分析点18',
  `DR_SEG19` varchar(20) DEFAULT NULL COMMENT '借方分析点19',
  `DR_SEG20` varchar(20) DEFAULT NULL COMMENT '借方分析点20',
  `CR_SEG1` varchar(20) DEFAULT NULL COMMENT '贷方分析点1',
  `CR_SEG2` varchar(20) DEFAULT NULL COMMENT '贷方分析点2',
  `CR_SEG3` varchar(20) DEFAULT NULL COMMENT '贷方分析点3',
  `CR_SEG4` varchar(20) DEFAULT NULL COMMENT '贷方分析点4',
  `CR_SEG5` varchar(20) DEFAULT NULL COMMENT '贷方分析点5',
  `CR_SEG6` varchar(20) DEFAULT NULL COMMENT '贷方分析点6',
  `CR_SEG7` varchar(20) DEFAULT NULL COMMENT '贷方分析点7',
  `CR_SEG8` varchar(20) DEFAULT NULL COMMENT '贷方分析点8',
  `CR_SEG9` varchar(20) DEFAULT NULL COMMENT '贷方分析点9',
  `CR_SEG10` varchar(20) DEFAULT NULL COMMENT '贷方分析点10',
  `CR_SEG11` varchar(20) DEFAULT NULL COMMENT '贷方分析点11',
  `CR_SEG12` varchar(20) DEFAULT NULL COMMENT '贷方分析点12',
  `CR_SEG13` varchar(20) DEFAULT NULL COMMENT '贷方分析点13',
  `CR_SEG14` varchar(20) DEFAULT NULL COMMENT '贷方分析点14',
  `CR_SEG15` varchar(20) DEFAULT NULL COMMENT '贷方分析点15',
  `CR_SEG16` varchar(20) DEFAULT NULL COMMENT '贷方分析点16',
  `CR_SEG17` varchar(20) DEFAULT NULL COMMENT '贷方分析点17',
  `CR_SEG18` varchar(20) DEFAULT NULL COMMENT '贷方分析点18',
  `CR_SEG19` varchar(20) DEFAULT NULL COMMENT '贷方分析点19',
  `CR_SEG20` varchar(20) DEFAULT NULL COMMENT '贷方分析点20',
  `GRP1` varchar(20) DEFAULT NULL COMMENT '分组条件1',
  `GRP2` varchar(20) DEFAULT NULL COMMENT '分组条件2',
  `GRP3` varchar(20) DEFAULT NULL COMMENT '分组条件3',
  `GRP4` varchar(20) DEFAULT NULL COMMENT '分组条件4',
  `GRP5` varchar(20) DEFAULT NULL COMMENT '分组条件5',
  `GRP6` varchar(20) DEFAULT NULL COMMENT '分组条件6',
  `GRP7` varchar(20) DEFAULT NULL COMMENT '分组条件7',
  `GRP8` varchar(20) DEFAULT NULL COMMENT '分组条件8',
  `GRP9` varchar(20) DEFAULT NULL COMMENT '分组条件9',
  `GRP10` varchar(20) DEFAULT NULL COMMENT '分组条件10',
  `CREATE_BY` bigint(20) DEFAULT NULL COMMENT '记录创建人',
  `CREATE_TIME` datetime DEFAULT NULL COMMENT '记录创建时间',
  `UPDATE_BY` bigint(20) DEFAULT NULL COMMENT '记录更新人',
  `UPDATE_TIME` datetime DEFAULT NULL COMMENT '记录更新时间',
  `CREATE_TIMESTAMP` datetime DEFAULT CURRENT_TIMESTAMP COMMENT '记录创建时间戳',
  `UPDATE_TIMESTAMP` datetime DEFAULT CURRENT_TIMESTAMP COMMENT '记录更新时间戳',
  PRIMARY KEY (`LIST_ID`)
) ENGINE=InnoDB AUTO_INCREMENT=7 DEFAULT CHARSET=utf8 COMMENT='应收应付待记账处理表';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `t_gl_arap`
--

LOCK TABLES `t_gl_arap` WRITE;
/*!40000 ALTER TABLE `t_gl_arap` DISABLE KEYS */;
/*!40000 ALTER TABLE `t_gl_arap` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `t_gl_cash`
--

DROP TABLE IF EXISTS `t_gl_cash`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `t_gl_cash` (
  `LIST_ID` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '主键流水号',
  `ORGAN_ID` bigint(20) NOT NULL,
  `FEE_TYPE` varchar(10) NOT NULL COMMENT '费用类型代码',
  `BUSINESS_CODE` varchar(20) NOT NULL COMMENT '业务编码',
  `APPLY_CODE` varchar(20) DEFAULT NULL COMMENT '投保单号码',
  `POLICY_CODE` varchar(20) DEFAULT NULL COMMENT '保单号',
  `DERIV_TYPE` varchar(3) DEFAULT NULL COMMENT '业务来源：001:契约\002:保单\003:保全\004:理赔',
  `ORGAN_CODE` varchar(8) DEFAULT NULL COMMENT '保单管理机构',
  `POLICY_TYPE` char(1) DEFAULT NULL COMMENT '保单类型：个/团/汇缴',
  `CHANNEL_TYPE` char(2) DEFAULT NULL COMMENT '销售渠道',
  `PRODUCT_ID` bigint(20) DEFAULT NULL COMMENT '产品id',
  `PAY_MODE` varchar(2) DEFAULT NULL COMMENT '收付方式',
  `CURRENCY` varchar(10) DEFAULT NULL COMMENT '币种',
  `AMOUNT` decimal(12,2) DEFAULT NULL COMMENT '金额',
  `GL_POSTED` varchar(2) DEFAULT NULL COMMENT '记账处理状态',
  `ACCOUNT_GL_DATE` date DEFAULT NULL COMMENT '记账日期',
  `BELNR` varchar(10) DEFAULT NULL COMMENT 'SAP回写凭证号信息',
  `BASE1` varchar(20) DEFAULT NULL COMMENT '基本信息1',
  `BASE2` varchar(20) DEFAULT NULL COMMENT '基本信息2',
  `BASE3` varchar(20) DEFAULT NULL COMMENT '基本信息3',
  `BASE4` varchar(20) DEFAULT NULL COMMENT '基本信息4',
  `BASE5` varchar(20) DEFAULT NULL COMMENT '基本信息5',
  `BASE6` varchar(20) DEFAULT NULL COMMENT '基本信息6',
  `BASE7` varchar(20) DEFAULT NULL COMMENT '基本信息7',
  `BASE8` varchar(20) DEFAULT NULL COMMENT '基本信息8',
  `BASE9` varchar(20) DEFAULT NULL COMMENT '基本信息9',
  `BASE10` varchar(20) DEFAULT NULL COMMENT '基本信息10',
  `FILTER1` varchar(20) DEFAULT NULL COMMENT '过滤条件1',
  `FILTER2` varchar(20) DEFAULT NULL COMMENT '过滤条件2',
  `FILTER3` varchar(20) DEFAULT NULL COMMENT '过滤条件3',
  `FILTER4` varchar(20) DEFAULT NULL COMMENT '过滤条件4',
  `FILTER5` varchar(20) DEFAULT NULL COMMENT '过滤条件5',
  `FILTER6` varchar(20) DEFAULT NULL COMMENT '过滤条件6',
  `FILTER7` varchar(20) DEFAULT NULL COMMENT '过滤条件7',
  `FILTER8` varchar(20) DEFAULT NULL COMMENT '过滤条件8',
  `FILTER9` varchar(20) DEFAULT NULL COMMENT '过滤条件9',
  `FILTER10` varchar(20) DEFAULT NULL COMMENT '过滤条件10',
  `DR_SEG1` varchar(20) DEFAULT NULL COMMENT '借方分析点1',
  `DR_SEG2` varchar(20) DEFAULT NULL COMMENT '借方分析点2',
  `DR_SEG3` varchar(20) DEFAULT NULL COMMENT '借方分析点3',
  `DR_SEG4` varchar(20) DEFAULT NULL COMMENT '借方分析点4',
  `DR_SEG5` varchar(20) DEFAULT NULL COMMENT '借方分析点5',
  `DR_SEG6` varchar(20) DEFAULT NULL COMMENT '借方分析点6',
  `DR_SEG7` varchar(20) DEFAULT NULL COMMENT '借方分析点7',
  `DR_SEG8` varchar(20) DEFAULT NULL COMMENT '借方分析点8',
  `DR_SEG9` varchar(20) DEFAULT NULL COMMENT '借方分析点9',
  `DR_SEG10` varchar(20) DEFAULT NULL COMMENT '借方分析点10',
  `DR_SEG11` varchar(20) DEFAULT NULL COMMENT '借方分析点11',
  `DR_SEG12` varchar(20) DEFAULT NULL COMMENT '借方分析点12',
  `DR_SEG13` varchar(20) DEFAULT NULL COMMENT '借方分析点13',
  `DR_SEG14` varchar(20) DEFAULT NULL COMMENT '借方分析点14',
  `DR_SEG15` varchar(20) DEFAULT NULL COMMENT '借方分析点15',
  `DR_SEG16` varchar(20) DEFAULT NULL COMMENT '借方分析点16',
  `DR_SEG17` varchar(20) DEFAULT NULL COMMENT '借方分析点17',
  `DR_SEG18` varchar(20) DEFAULT NULL COMMENT '借方分析点18',
  `DR_SEG19` varchar(20) DEFAULT NULL COMMENT '借方分析点19',
  `DR_SEG20` varchar(20) DEFAULT NULL COMMENT '借方分析点20',
  `CR_SEG1` varchar(20) DEFAULT NULL COMMENT '贷方分析点1',
  `CR_SEG2` varchar(20) DEFAULT NULL COMMENT '贷方分析点2',
  `CR_SEG3` varchar(20) DEFAULT NULL COMMENT '贷方分析点3',
  `CR_SEG4` varchar(20) DEFAULT NULL COMMENT '贷方分析点4',
  `CR_SEG5` varchar(20) DEFAULT NULL COMMENT '贷方分析点5',
  `CR_SEG6` varchar(20) DEFAULT NULL COMMENT '贷方分析点6',
  `CR_SEG7` varchar(20) DEFAULT NULL COMMENT '贷方分析点7',
  `CR_SEG8` varchar(20) DEFAULT NULL COMMENT '贷方分析点8',
  `CR_SEG9` varchar(20) DEFAULT NULL COMMENT '贷方分析点9',
  `CR_SEG10` varchar(20) DEFAULT NULL COMMENT '贷方分析点10',
  `CR_SEG11` varchar(20) DEFAULT NULL COMMENT '贷方分析点11',
  `CR_SEG12` varchar(20) DEFAULT NULL COMMENT '贷方分析点12',
  `CR_SEG13` varchar(20) DEFAULT NULL COMMENT '贷方分析点13',
  `CR_SEG14` varchar(20) DEFAULT NULL COMMENT '贷方分析点14',
  `CR_SEG15` varchar(20) DEFAULT NULL COMMENT '贷方分析点15',
  `CR_SEG16` varchar(20) DEFAULT NULL COMMENT '贷方分析点16',
  `CR_SEG17` varchar(20) DEFAULT NULL COMMENT '贷方分析点17',
  `CR_SEG18` varchar(20) DEFAULT NULL COMMENT '贷方分析点18',
  `CR_SEG19` varchar(20) DEFAULT NULL COMMENT '贷方分析点19',
  `CR_SEG20` varchar(20) DEFAULT NULL COMMENT '贷方分析点20',
  `GRP1` varchar(20) DEFAULT NULL COMMENT '分组条件1',
  `GRP2` varchar(20) DEFAULT NULL COMMENT '分组条件2',
  `GRP3` varchar(20) DEFAULT NULL COMMENT '分组条件3',
  `GRP4` varchar(20) DEFAULT NULL COMMENT '分组条件4',
  `GRP5` varchar(20) DEFAULT NULL COMMENT '分组条件5',
  `GRP6` varchar(20) DEFAULT NULL COMMENT '分组条件6',
  `GRP7` varchar(20) DEFAULT NULL COMMENT '分组条件7',
  `GRP8` varchar(20) DEFAULT NULL COMMENT '分组条件8',
  `GRP9` varchar(20) DEFAULT NULL COMMENT '分组条件9',
  `GRP10` varchar(20) DEFAULT NULL COMMENT '分组条件10',
  `CREATE_BY` bigint(20) DEFAULT NULL COMMENT '记录创建人',
  `CREATE_TIME` datetime DEFAULT NULL COMMENT '记录创建时间',
  `UPDATE_BY` bigint(20) DEFAULT NULL COMMENT '记录更新人',
  `UPDATE_TIME` datetime DEFAULT NULL COMMENT '记录更新时间',
  `CREATE_TIMESTAMP` datetime DEFAULT CURRENT_TIMESTAMP COMMENT '记录创建时间戳',
  `UPDATE_TIMESTAMP` datetime DEFAULT CURRENT_TIMESTAMP COMMENT '记录更新时间戳',
  PRIMARY KEY (`LIST_ID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='实收实付待记账处理表';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `t_gl_cash`
--

LOCK TABLES `t_gl_cash` WRITE;
/*!40000 ALTER TABLE `t_gl_cash` DISABLE KEYS */;
/*!40000 ALTER TABLE `t_gl_cash` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `t_gl_field`
--

DROP TABLE IF EXISTS `t_gl_field`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `t_gl_field` (
  `FIELD_ID` int(11) NOT NULL COMMENT '属性ID',
  `ORGAN_ID` bigint(20) NOT NULL COMMENT '租户ID',
  `FIELD_NAME` varchar(50) NOT NULL COMMENT '属性名称',
  `FIELD_PROPERTY` varchar(200) NOT NULL COMMENT '属性值',
  `FIELD_DESC` varchar(100) DEFAULT NULL COMMENT '属性描述',
  `FIELD_TYPE` int(11) NOT NULL COMMENT '属性类型',
  `CODE_TABLE` varchar(30) DEFAULT NULL COMMENT '取值表名称',
  `WHERE_CAUSE` varchar(150) DEFAULT NULL COMMENT '取值表条件',
  `FEE_TABLE` varchar(2) DEFAULT NULL COMMENT '数据类型',
  `LENGTH` int(11) DEFAULT NULL COMMENT '长度',
  `DEFAULT_VALUE` varchar(40) DEFAULT NULL COMMENT '默认值',
  `CREATE_BY` bigint(20) DEFAULT NULL COMMENT '记录创建人',
  `CREATE_TIME` datetime DEFAULT NULL COMMENT '记录创建时间',
  `UPDATE_BY` bigint(20) DEFAULT NULL COMMENT '记录更新人',
  `UPDATE_TIME` datetime DEFAULT NULL COMMENT '记录更新时间',
  `CREATE_TIMESTAMP` datetime DEFAULT CURRENT_TIMESTAMP COMMENT '记录创建时间戳',
  `UPDATE_TIMESTAMP` datetime DEFAULT CURRENT_TIMESTAMP COMMENT '记录更新时间戳',
  PRIMARY KEY (`FIELD_ID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='记账字段定义表';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `t_gl_field`
--

LOCK TABLES `t_gl_field` WRITE;
/*!40000 ALTER TABLE `t_gl_field` DISABLE KEYS */;
/*!40000 ALTER TABLE `t_gl_field` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `t_gl_field_mapping`
--

DROP TABLE IF EXISTS `t_gl_field_mapping`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `t_gl_field_mapping` (
  `MAPPING_ID` int(11) NOT NULL COMMENT '映射ID',
  `ORGAN_ID` bigint(20) NOT NULL COMMENT '租户ID',
  `FEE_TABLE` varchar(2) NOT NULL COMMENT '数据类型',
  `COLUMN_NAME` varchar(50) NOT NULL COMMENT '记账字段名称',
  `FIELD_ID` int(11) NOT NULL COMMENT '属性ID',
  `CREATE_BY` bigint(20) DEFAULT NULL COMMENT '记录创建人',
  `CREATE_TIME` datetime DEFAULT NULL COMMENT '记录创建时间',
  `UPDATE_BY` bigint(20) DEFAULT NULL COMMENT '记录更新人',
  `UPDATE_TIME` datetime DEFAULT NULL COMMENT '记录更新时间',
  `CREATE_TIMESTAMP` datetime DEFAULT CURRENT_TIMESTAMP COMMENT '记录创建时间戳',
  `UPDATE_TIMESTAMP` datetime DEFAULT CURRENT_TIMESTAMP COMMENT '记录更新时间戳',
  PRIMARY KEY (`MAPPING_ID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='记账字段映射表';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `t_gl_field_mapping`
--

LOCK TABLES `t_gl_field_mapping` WRITE;
/*!40000 ALTER TABLE `t_gl_field_mapping` DISABLE KEYS */;
/*!40000 ALTER TABLE `t_gl_field_mapping` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `t_gl_inf_error_log`
--

DROP TABLE IF EXISTS `t_gl_inf_error_log`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `t_gl_inf_error_log` (
  `LOG_ID` bigint(11) NOT NULL COMMENT '错误日志流水号',
  `ORGAN_ID` bigint(20) NOT NULL COMMENT '租户ID',
  `GROUP_ID` bigint(11) NOT NULL COMMENT '汇总ID',
  `SOURCE_ID` bigint(11) NOT NULL COMMENT '数据ID',
  `SOURCE_TABLE` varchar(50) DEFAULT NULL COMMENT '数据表',
  `DESCRIPTION` varchar(200) DEFAULT NULL COMMENT '错误描述',
  `CREATE_BY` bigint(20) DEFAULT NULL COMMENT '记录创建人',
  `CREATE_TIME` datetime DEFAULT NULL COMMENT '记录创建时间',
  `UPDATE_BY` bigint(20) DEFAULT NULL COMMENT '记录更新人',
  `UPDATE_TIME` datetime DEFAULT NULL COMMENT '记录更新时间',
  `CREATE_TIMESTAMP` datetime DEFAULT CURRENT_TIMESTAMP COMMENT '记录创建时间戳',
  `UPDATE_TIMESTAMP` datetime DEFAULT CURRENT_TIMESTAMP COMMENT '记录更新时间戳',
  PRIMARY KEY (`LOG_ID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='记账错误日志表';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `t_gl_inf_error_log`
--

LOCK TABLES `t_gl_inf_error_log` WRITE;
/*!40000 ALTER TABLE `t_gl_inf_error_log` DISABLE KEYS */;
/*!40000 ALTER TABLE `t_gl_inf_error_log` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `t_invoice_info`
--

DROP TABLE IF EXISTS `t_invoice_info`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `t_invoice_info` (
  `INVOICE_ID` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '发票信息流水ID',
  `ORGAN_ID` bigint(20) NOT NULL COMMENT '租户ID',
  `EX_TRANS_ID` varchar(32) DEFAULT NULL COMMENT '跨系统交易ID UUID 业务端产生',
  `DERIV_TYPE` varchar(20) DEFAULT NULL COMMENT '业务来源',
  `BUSINESS_CODE` bigint(20) DEFAULT NULL COMMENT '业务号',
  `INVOICE_TYPE` char(1) DEFAULT NULL COMMENT '发票类型  1;普通发票 2:电子发票',
  `PRINT_NAME` varchar(100) DEFAULT NULL COMMENT '发票抬头',
  `INVOICE_CODE` varchar(20) DEFAULT NULL COMMENT '发票代码',
  `INVOICE_NO` varchar(10) DEFAULT NULL COMMENT '发票号码',
  `PRINT_TIME` datetime DEFAULT NULL COMMENT '发票打印时间',
  `INVOICE_STATUS` varchar(2) DEFAULT NULL COMMENT '发票状态',
  `CREATE_BY` bigint(20) DEFAULT NULL COMMENT '记录创建人',
  `CREATE_TIME` datetime DEFAULT NULL COMMENT '记录创建时间',
  `UPDATE_BY` bigint(20) DEFAULT NULL COMMENT '记录更新人',
  `UPDATE_TIME` datetime DEFAULT NULL COMMENT '记录更新时间',
  `CREATE_TIMESTAMP` datetime DEFAULT CURRENT_TIMESTAMP COMMENT '记录创建时间戳',
  `UPDATE_TIMESTAMP` datetime DEFAULT CURRENT_TIMESTAMP COMMENT '记录更新时间戳',
  PRIMARY KEY (`INVOICE_ID`)
) ENGINE=InnoDB AUTO_INCREMENT=30 DEFAULT CHARSET=utf8 COMMENT='发票信息表';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `t_invoice_info`
--

LOCK TABLES `t_invoice_info` WRITE;
/*!40000 ALTER TABLE `t_invoice_info` DISABLE KEYS */;
/*!40000 ALTER TABLE `t_invoice_info` ENABLE KEYS */;
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
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8 COMMENT='收付款方式关联配置表';
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
-- Table structure for table `t_pay_provider`
--

DROP TABLE IF EXISTS `t_pay_provider`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `t_pay_provider` (
  `PAY_PROVIDER_ID` int(11) NOT NULL AUTO_INCREMENT COMMENT '支付通道ID',
  `PAY_PROVIDER_NAME` varchar(200) COLLATE utf8_bin DEFAULT NULL COMMENT '支付通道名称',
  `CREATED_BY` bigint(20) DEFAULT NULL,
  `CREATE_TIME` datetime DEFAULT NULL,
  `UPDATE_BY` bigint(20) DEFAULT NULL,
  `UPDATE_TIME` datetime DEFAULT NULL,
  `CREATE_TIMESTAMP` datetime DEFAULT CURRENT_TIMESTAMP,
  `UPDATE_TIMESTAMP` datetime DEFAULT CURRENT_TIMESTAMP,
  PRIMARY KEY (`PAY_PROVIDER_ID`)
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=utf8 COLLATE=utf8_bin COMMENT='支付通道';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `t_pay_provider`
--

LOCK TABLES `t_pay_provider` WRITE;
/*!40000 ALTER TABLE `t_pay_provider` DISABLE KEYS */;
/*!40000 ALTER TABLE `t_pay_provider` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `t_prem_arap`
--

DROP TABLE IF EXISTS `t_prem_arap`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `t_prem_arap` (
  `PREM_ARAP_ID` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '应收应付费用ID',
  `EX_TRANS_ID` varchar(32) COLLATE utf8_bin NOT NULL COMMENT '跨系统交易ID',
  `ORGAN_ID` bigint(20) NOT NULL COMMENT '租户ID',
  `ORDER_NO` varchar(32) COLLATE utf8_bin DEFAULT NULL COMMENT '订单交易号',
  `FEE_TYPE` varchar(10) COLLATE utf8_bin NOT NULL COMMENT '费用类型代码',
  `BUSINESS_CODE` varchar(20) COLLATE utf8_bin NOT NULL COMMENT '业务编码',
  `APPLY_CODE` varchar(20) COLLATE utf8_bin DEFAULT NULL COMMENT '投保单号码',
  `POLICY_CODE` varchar(20) COLLATE utf8_bin DEFAULT NULL COMMENT '保单号',
  `DERIV_TYPE` varchar(20) COLLATE utf8_bin NOT NULL COMMENT '业务来源：001:契约',
  `CITY_CODE` varchar(8) COLLATE utf8_bin DEFAULT NULL COMMENT '保单所属地区',
  `ORGAN_CODE` varchar(8) COLLATE utf8_bin DEFAULT NULL COMMENT '保单管理机构',
  `AGENT_CODE` varchar(20) COLLATE utf8_bin DEFAULT NULL COMMENT '代理人员CODE',
  `POLICY_TYPE` char(1) COLLATE utf8_bin DEFAULT NULL COMMENT '保单类型：个/团/汇缴',
  `CHANNEL_TYPE` char(2) COLLATE utf8_bin DEFAULT NULL COMMENT '销售渠道',
  `VALIDATE_DATE` date DEFAULT NULL COMMENT '业务生效日期',
  `DUE_DATE` date DEFAULT NULL COMMENT '到期日',
  `COVER_PERIOD_TYPE` varchar(10) COLLATE utf8_bin DEFAULT NULL COMMENT '保障期间类型',
  `COVERAGE_PERIOD` int(11) DEFAULT NULL COMMENT '保障期间',
  `CHARGE_PERIOD` int(11) DEFAULT NULL COMMENT '缴费期间',
  `CHARGE_MODE` varchar(10) COLLATE utf8_bin DEFAULT NULL COMMENT '缴费频率',
  `PRODUCT_ID` bigint(20) DEFAULT NULL COMMENT '产品id',
  `PROP_ITEM_ID` bigint(20) DEFAULT NULL COMMENT '责任ID',
  `HOLDER_CUST_ID` bigint(20) DEFAULT NULL COMMENT '投保人客户ID',
  `INSURED_CUST_ID` bigint(20) DEFAULT NULL COMMENT '被保人客户ID',
  `CURRENCY` varchar(10) COLLATE utf8_bin DEFAULT NULL COMMENT '币种',
  `PAY_FLAG` varchar(1) COLLATE utf8_bin DEFAULT NULL COMMENT '收付类型 1:收费2:付费',
  `AMOUNT` decimal(12,2) DEFAULT NULL COMMENT '金额',
  `FEE_STATUS` varchar(2) COLLATE utf8_bin DEFAULT NULL COMMENT '收付状态',
  `OFFSET_STATUS` int(1) DEFAULT NULL COMMENT '冲销状态',
  `OFFSET_TIME` datetime DEFAULT NULL COMMENT '冲销时间',
  `POSTED` varchar(2) COLLATE utf8_bin DEFAULT NULL COMMENT '记账状态',
  `BELNR` varchar(10) COLLATE utf8_bin DEFAULT NULL COMMENT '凭证号',
  `CREATE_BY` bigint(20) DEFAULT NULL COMMENT '记录创建人',
  `CREATE_TIME` datetime DEFAULT NULL COMMENT '记录创建时间',
  `UPDATE_BY` bigint(20) DEFAULT NULL COMMENT '记录更新人',
  `UPDATE_TIME` datetime DEFAULT NULL COMMENT '记录更新时间',
  `CREATE_TIMESTAMP` datetime DEFAULT CURRENT_TIMESTAMP COMMENT '记录创建时间戳',
  `UPDATE_TIMESTAMP` datetime DEFAULT CURRENT_TIMESTAMP COMMENT '记录更新时间戳',
  PRIMARY KEY (`PREM_ARAP_ID`)
) ENGINE=InnoDB AUTO_INCREMENT=180013158384971268 DEFAULT CHARSET=utf8 COLLATE=utf8_bin COMMENT='应收应付表';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `t_prem_arap`
--

LOCK TABLES `t_prem_arap` WRITE;
/*!40000 ALTER TABLE `t_prem_arap` DISABLE KEYS */;
/*!40000 ALTER TABLE `t_prem_arap` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `t_tenant_account`
--

DROP TABLE IF EXISTS `t_tenant_account`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `t_tenant_account` (
  `ACCOUNT_ID` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '账户ID',
  `ORGAN_ID` bigint(20) DEFAULT NULL COMMENT '租户ID或租户的机构id',
  `BCP_ACCOUNT_TYPE` varchar(1) COLLATE utf8_bin DEFAULT NULL COMMENT '账户类型(银行账户/第三方虚拟账户）',
  `BANK_ORGAN` varchar(50) COLLATE utf8_bin DEFAULT NULL COMMENT '银行或第三方资金机构',
  `BANK_ACCOUNT` varchar(50) COLLATE utf8_bin DEFAULT NULL COMMENT '资金账户',
  `ACCOUNT_STATUS` varchar(1) COLLATE utf8_bin DEFAULT NULL COMMENT '账户状态【0-在用  1-停用】',
  `ACCOUNT_EFFEC_DATE` date DEFAULT NULL COMMENT '账户启用日期',
  `ACCOUNT_SUSPEND_DATE` date DEFAULT NULL COMMENT '账户停用日期',
  `CREATED_BY` bigint(20) DEFAULT NULL,
  `CREATE_TIME` datetime DEFAULT NULL,
  `UPDATE_BY` bigint(20) DEFAULT NULL,
  `UPDATE_TIME` datetime DEFAULT NULL,
  `CREATE_TIMESTAMP` datetime DEFAULT CURRENT_TIMESTAMP,
  `UPDATE_TIMESTAMP` datetime DEFAULT CURRENT_TIMESTAMP,
  PRIMARY KEY (`ACCOUNT_ID`)
) ENGINE=InnoDB AUTO_INCREMENT=40 DEFAULT CHARSET=utf8 COLLATE=utf8_bin COMMENT='租户财务账户';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `t_tenant_account`
--

LOCK TABLES `t_tenant_account` WRITE;
/*!40000 ALTER TABLE `t_tenant_account` DISABLE KEYS */;
/*!40000 ALTER TABLE `t_tenant_account` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `t_tenant_pay_channel`
--

DROP TABLE IF EXISTS `t_tenant_pay_channel`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `t_tenant_pay_channel` (
  `LIST_ID` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '支付通道账户主键',
  `ORGAN_ID` bigint(20) DEFAULT NULL COMMENT '租户',
  `PAY_PROVIDER_ID` int(11) DEFAULT NULL COMMENT '支付通道ID',
  `CREATED_BY` bigint(20) DEFAULT NULL,
  `CREATE_TIME` datetime DEFAULT NULL,
  `UPDATE_BY` bigint(20) DEFAULT NULL,
  `UPDATE_TIME` datetime DEFAULT NULL,
  `CREATE_TIMESTAMP` datetime DEFAULT CURRENT_TIMESTAMP,
  `UPDATE_TIMESTAMP` datetime DEFAULT CURRENT_TIMESTAMP,
  PRIMARY KEY (`LIST_ID`)
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=utf8 COLLATE=utf8_bin COMMENT='租户支付通道';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `t_tenant_pay_channel`
--

LOCK TABLES `t_tenant_pay_channel` WRITE;
/*!40000 ALTER TABLE `t_tenant_pay_channel` DISABLE KEYS */;
/*!40000 ALTER TABLE `t_tenant_pay_channel` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `t_tenant_pay_config`
--

DROP TABLE IF EXISTS `t_tenant_pay_config`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `t_tenant_pay_config` (
  `LIST_ID` bigint(20) NOT NULL COMMENT '租户支付接口配置主键',
  `ORGAN_ID` bigint(20) DEFAULT NULL COMMENT '租户',
  `PAY_PROVIDER_ID` int(11) DEFAULT NULL COMMENT '支付通道ID',
  `PAY_VERSION` varchar(10) DEFAULT NULL COMMENT '支付通道版本号',
  `ORGAN_ACC_NAME` varchar(30) DEFAULT NULL COMMENT '支付通道分配的商户代码',
  `ORGAN_CLIENT_CODE` varchar(20) DEFAULT NULL COMMENT '支付通道分配的商户客户端系统代码',
  `ORGAN_ACC_KEY` varchar(300) DEFAULT NULL COMMENT '租户账户密钥',
  `PAY_PRODUCTNO` varchar(20) DEFAULT NULL COMMENT '租户支付产品代号',
  `ORGAN_GOODNO` varchar(20) DEFAULT NULL COMMENT '租户商品代号',
  PRIMARY KEY (`LIST_ID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='租户支付接口配置表';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `t_tenant_pay_config`
--

LOCK TABLES `t_tenant_pay_config` WRITE;
/*!40000 ALTER TABLE `t_tenant_pay_config` DISABLE KEYS */;
INSERT INTO `t_tenant_pay_config` VALUES (1,999999999,1,'5.0','201512240003',NULL,'X6offHkGfb5Wn1LVRRGH','A00001','XB1'),(3,999999999,1,'5.0','201512240003',NULL,'X6offHkGfb5Wn1LVRRGH','A00002','XB1'),(4,999999999,1,'5.0','201512240003',NULL,'X6offHkGfb5Wn1LVRRGH','A00003','XB1'),(5,999999999,1,'5.0','201512240003',NULL,'X6offHkGfb5Wn1LVRRGH','A00004','XB1'),(6,999999999,1,'5.0','201512240003',NULL,'X6offHkGfb5Wn1LVRRGH','A00004','XB1'),(8,400,2,'1.0','100008',NULL,NULL,NULL,NULL);
/*!40000 ALTER TABLE `t_tenant_pay_config` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2016-06-01 15:14:44
