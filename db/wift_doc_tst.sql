-- MySQL dump 10.13  Distrib 5.7.12, for Linux (x86_64)
--
-- Host: localhost    Database: wift_doc_tst
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
-- Table structure for table `t_doc_billcard`
--

DROP TABLE IF EXISTS `t_doc_billcard`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `t_doc_billcard` (
  `BILLCARD_ID` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '单证ID',
  `ORGAN_ID` bigint(20) NOT NULL COMMENT '所属机构/租户ID\n            --t_company_organ',
  `DOC_CATE` char(1) COLLATE utf8_bin NOT NULL COMMENT '单证分类\n            --D_DOCUMENT_CATE\n            --1-有价单证,2-非有价单证,3-保险凭证,4-系统单证',
  `DOC_TYPE` char(4) COLLATE utf8_bin NOT NULL COMMENT '单证类型\n            --d_document_type',
  `BILLCARD_CODE` varchar(10) COLLATE utf8_bin NOT NULL COMMENT '单证代码',
  `BILLCARD_NAME` varchar(200) COLLATE utf8_bin NOT NULL COMMENT '单证名称',
  `BILLCARD_DESC` varchar(4000) COLLATE utf8_bin DEFAULT NULL COMMENT '单证描述',
  `CODE_LENGTH` int(11) NOT NULL COMMENT '单证代码长度',
  `CODE_RULE` varchar(4000) COLLATE utf8_bin DEFAULT NULL COMMENT '单证号码取值规则',
  `NEED_PRINT` char(1) COLLATE utf8_bin NOT NULL COMMENT '是否打印\n            --D_YES_NO',
  `NEED_IMPORT` char(1) COLLATE utf8_bin NOT NULL COMMENT '是否导入\n            --D_YES_NO',
  `NEED_PRE_ALLOT` char(1) COLLATE utf8_bin NOT NULL COMMENT '是否需要人工预分配\n            --D_YES_NO',
  `ERR_NEED_ROLLBACK` char(1) COLLATE utf8_bin NOT NULL COMMENT '错误单证是否需要回退\n            --D_YES_NO',
  `DRAW_ONLINE` char(1) COLLATE utf8_bin NOT NULL COMMENT '是否在线领取\n            --D_YES_NO',
  `AUTO_DUSTY` char(1) COLLATE utf8_bin NOT NULL COMMENT '是否自动回销\n            --D_YES_NO',
  `CREATED_BY` bigint(20) NOT NULL COMMENT '创建人',
  `CREATE_TIME` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '创建时间',
  `UPDATE_BY` bigint(20) NOT NULL COMMENT '更新记录人',
  `UPDATE_TIME` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP COMMENT '更新记录时间',
  PRIMARY KEY (`BILLCARD_ID`)
) ENGINE=InnoDB AUTO_INCREMENT=10 DEFAULT CHARSET=utf8 COLLATE=utf8_bin COMMENT='单证记录表';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `t_doc_billcard`
--

LOCK TABLES `t_doc_billcard` WRITE;
/*!40000 ALTER TABLE `t_doc_billcard` DISABLE KEYS */;
INSERT INTO `t_doc_billcard` VALUES (1,400,'2','1009','077','保全批单号','保全批单号',3,'自动生成','0','0','0','0','1','0',400,'2016-05-25 11:05:33',400,'2016-05-25 11:05:33'),(2,400,'2','9999','902','理赔报案号','理赔报案号',3,'自动生成','0','0','0','0','1','0',400,'2016-05-25 11:26:40',400,'2016-05-25 11:26:40'),(3,400,'2','9999','903','理赔批单号','理赔批单号',3,'自动生成','0','0','0','0','1','0',400,'2016-05-25 11:27:52',400,'2016-05-25 11:27:52'),(4,400,'2','9999','005','发票号','发票号',3,'自动生成','0','0','0','0','1','0',400,'2016-05-25 11:28:38',400,'2016-05-25 11:28:38'),(5,400,'2','9999','007','订单号','订单号',3,'自动生成','0','0','0','0','1','0',400,'2016-05-25 11:29:12',400,'2016-05-25 11:29:12'),(6,400,'2','9999','008','投保单号','投保单号',3,'自动生成','0','0','0','0','1','0',400,'2016-05-25 11:29:54',400,'2016-05-25 11:29:54'),(7,400,'2','9999','088','保单号','保单号',3,'自动生成','0','0','0','0','1','0',400,'2016-05-25 11:30:34',400,'2016-05-25 11:30:34'),(8,400,'1','1002','test','测试单证','测试单证',4,'测试单证','0','1','0','0','0','0',400,'2016-05-26 15:11:53',400,'2016-05-26 15:11:53'),(9,400,'2','1001','test2','测试单证2','测试单证2',5,'测试单证2','0','1','0','0','0','0',400,'2016-05-26 21:27:42',400,'2016-05-26 21:27:42');
/*!40000 ALTER TABLE `t_doc_billcard` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `t_doc_billcard_detail`
--

DROP TABLE IF EXISTS `t_doc_billcard_detail`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `t_doc_billcard_detail` (
  `DETAIL_ID` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '明细ID',
  `BILLCARD_ID` bigint(20) NOT NULL COMMENT '单证ID',
  `BILLCARD_NO` varchar(32) COLLATE utf8_bin NOT NULL COMMENT '单证号码',
  `SEQ_NUM` varchar(32) COLLATE utf8_bin DEFAULT NULL COMMENT '物理标识号',
  `DOC_STATUS` char(2) COLLATE utf8_bin NOT NULL COMMENT '单证状态',
  `ORGAN_ID` bigint(20) NOT NULL COMMENT '所属机构/租户ID\n            --t_company_organ',
  `DEPART_ID` bigint(20) DEFAULT NULL COMMENT '租户部门ID',
  `IMPORT_ID` bigint(20) NOT NULL COMMENT '单证导入ID',
  `DRAW_ID` bigint(20) DEFAULT NULL COMMENT '领用信息ID',
  `EMPLOYEE_ID` bigint(20) DEFAULT NULL COMMENT '领用员工ID',
  `DRAW_DATE` datetime DEFAULT NULL COMMENT '领用时间',
  `RETURN_ID` bigint(20) DEFAULT NULL COMMENT '回销人员',
  `RETURN_DATE` datetime DEFAULT NULL COMMENT '回销日期',
  `EFFECTIVE_DATE` date NOT NULL COMMENT '生效日期',
  `EXPIRATION_DATE` date NOT NULL COMMENT '失效日期',
  `CREATE_BY` bigint(20) NOT NULL COMMENT '创建人',
  `CREATE_TIME` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '创建时间',
  `UPDATE_BY` bigint(20) NOT NULL COMMENT '更新记录人',
  `UPDATE_TIME` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP COMMENT '更新记录时间',
  PRIMARY KEY (`DETAIL_ID`),
  KEY `FK_BILLCARD_DETAIL__BILLCARD_ID` (`BILLCARD_ID`),
  KEY `FK_BILLCARD_DETAIL__DRAW_ID` (`DRAW_ID`),
  KEY `FK_BILLCARD_DETAIL__IMPORT_ID` (`IMPORT_ID`),
  CONSTRAINT `FK_BILLCARD_DETAIL__BILLCARD_ID` FOREIGN KEY (`BILLCARD_ID`) REFERENCES `t_doc_billcard` (`BILLCARD_ID`),
  CONSTRAINT `FK_BILLCARD_DETAIL__DRAW_ID` FOREIGN KEY (`DRAW_ID`) REFERENCES `t_doc_billcard_draw` (`DRAW_ID`),
  CONSTRAINT `FK_BILLCARD_DETAIL__IMPORT_ID` FOREIGN KEY (`IMPORT_ID`) REFERENCES `t_doc_billcard_import` (`IMPORT_ID`)
) ENGINE=InnoDB AUTO_INCREMENT=20 DEFAULT CHARSET=utf8 COLLATE=utf8_bin COMMENT='单证明细记录表';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `t_doc_billcard_detail`
--

LOCK TABLES `t_doc_billcard_detail` WRITE;
/*!40000 ALTER TABLE `t_doc_billcard_detail` DISABLE KEYS */;
INSERT INTO `t_doc_billcard_detail` VALUES (1,8,'11','11','Y',400,1,1,NULL,NULL,NULL,NULL,NULL,'2015-01-01','2017-01-02',400,'2016-05-26 20:46:47',400,'2016-05-26 20:46:47'),(2,8,'12','12','Y',400,1,1,NULL,NULL,NULL,NULL,NULL,'2015-01-01','2017-01-02',400,'2016-05-26 20:46:49',400,'2016-05-26 20:46:49'),(3,8,'13','13','Y',400,1,1,NULL,NULL,NULL,NULL,NULL,'2015-01-01','2017-01-02',400,'2016-05-26 20:46:50',400,'2016-05-26 20:46:50'),(4,8,'14','14','Y',400,1,1,NULL,NULL,NULL,NULL,NULL,'2015-01-01','2017-01-02',400,'2016-05-26 20:46:51',400,'2016-05-26 20:46:51'),(5,8,'15','15','Y',400,1,1,NULL,NULL,NULL,NULL,NULL,'2015-01-01','2017-01-02',400,'2016-05-26 20:46:52',400,'2016-05-26 20:46:52'),(6,8,'16','16','Y',400,1,1,NULL,NULL,NULL,NULL,NULL,'2015-01-01','2017-01-02',400,'2016-05-26 20:46:53',400,'2016-05-26 20:46:53'),(7,8,'17','17','Y',400,1,1,NULL,NULL,NULL,NULL,NULL,'2015-01-01','2017-01-02',400,'2016-05-26 20:46:54',400,'2016-05-26 20:46:54'),(8,8,'18','18','Y',400,1,1,NULL,NULL,NULL,NULL,NULL,'2015-01-01','2017-01-02',400,'2016-05-26 20:46:55',400,'2016-05-26 20:46:55'),(9,8,'19','19','Y',400,1,1,NULL,NULL,NULL,NULL,NULL,'2015-01-01','2017-01-02',400,'2016-05-26 20:46:56',400,'2016-05-26 20:46:56'),(10,8,'20','20','Y',400,1,1,NULL,NULL,NULL,NULL,NULL,'2015-01-01','2017-01-02',400,'2016-05-26 20:46:57',400,'2016-05-26 20:46:57'),(11,8,'21','21','Y',400,1,1,NULL,NULL,NULL,NULL,NULL,'2015-01-01','2017-01-02',400,'2016-05-26 20:46:58',400,'2016-05-26 20:46:58'),(12,8,'22','22','Y',400,1,1,NULL,NULL,NULL,NULL,NULL,'2015-01-01','2017-01-02',400,'2016-05-26 20:46:59',400,'2016-05-26 20:46:59'),(13,8,'23','23','Y',400,1,1,NULL,NULL,NULL,NULL,NULL,'2015-01-01','2017-01-02',400,'2016-05-26 20:47:00',400,'2016-05-26 20:47:00'),(14,8,'1111','1111','Y',400,1,2,NULL,NULL,NULL,NULL,NULL,'2015-01-02','2015-01-02',400,'2016-05-26 21:38:57',400,'2016-05-26 21:38:57'),(15,8,'1112','1112','Y',400,1,2,NULL,NULL,NULL,NULL,NULL,'2015-01-02','2015-01-02',400,'2016-05-26 21:38:57',400,'2016-05-26 21:38:57'),(16,8,'1113','1113','Y',400,1,2,NULL,NULL,NULL,NULL,NULL,'2015-01-02','2015-01-02',400,'2016-05-26 21:38:57',400,'2016-05-26 21:38:57'),(17,8,'1114','1114','Y',400,1,2,NULL,NULL,NULL,NULL,NULL,'2015-01-02','2015-01-02',400,'2016-05-26 21:38:57',400,'2016-05-26 21:38:57'),(18,8,'1115','1115','Y',400,1,2,NULL,NULL,NULL,NULL,NULL,'2015-01-02','2015-01-02',400,'2016-05-26 21:38:57',400,'2016-05-26 21:38:57'),(19,8,'1116','1116','Y',400,1,2,NULL,NULL,NULL,NULL,NULL,'2015-01-02','2015-01-02',400,'2016-05-26 21:38:57',400,'2016-05-26 21:38:57');
/*!40000 ALTER TABLE `t_doc_billcard_detail` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `t_doc_billcard_detail_fetch`
--

DROP TABLE IF EXISTS `t_doc_billcard_detail_fetch`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `t_doc_billcard_detail_fetch` (
  `DETAIL_ID` bigint(20) NOT NULL COMMENT '明细ID',
  `FETCH_ID` bigint(20) NOT NULL COMMENT '预取流水ID',
  `DRAW_ID` bigint(20) DEFAULT NULL COMMENT '领用信息ID',
  `EMPLOYEE_ID` bigint(20) DEFAULT NULL COMMENT '领用员工ID',
  `DRAW_DATE` datetime DEFAULT NULL COMMENT '领用时间',
  `CREATE_BY` bigint(20) DEFAULT NULL COMMENT '创建人',
  `CREATE_TIME` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '创建时间',
  `UPDATE_BY` bigint(20) DEFAULT NULL COMMENT '更新记录人',
  `UPDATE_TIME` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP COMMENT '更新记录时间',
  PRIMARY KEY (`DETAIL_ID`),
  KEY `FK_BILLCARD_DETAIL__FETCH_ID` (`FETCH_ID`),
  CONSTRAINT `FK_BILLCARD_DETAIL__FETCH_ID` FOREIGN KEY (`FETCH_ID`) REFERENCES `t_doc_billcard_pre_fetch` (`FETCH_ID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin COMMENT='单证明细预取记录表';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `t_doc_billcard_detail_fetch`
--

LOCK TABLES `t_doc_billcard_detail_fetch` WRITE;
/*!40000 ALTER TABLE `t_doc_billcard_detail_fetch` DISABLE KEYS */;
/*!40000 ALTER TABLE `t_doc_billcard_detail_fetch` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `t_doc_billcard_draw`
--

DROP TABLE IF EXISTS `t_doc_billcard_draw`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `t_doc_billcard_draw` (
  `DRAW_ID` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '领用流水ID',
  `BILLCARD_ID` bigint(20) NOT NULL COMMENT '单证ID',
  `DRAW_DATE` datetime NOT NULL COMMENT '领用时间',
  `DRAW_NUM` int(11) NOT NULL COMMENT '领用数量',
  `START_NO` varchar(30) COLLATE utf8_bin NOT NULL COMMENT '领用起始号码',
  `CREATED_BY` bigint(20) NOT NULL COMMENT '创建人',
  `CREATE_TIME` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '创建时间',
  `UPDATE_BY` bigint(20) NOT NULL COMMENT '更新记录人',
  `UPDATE_TIME` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP COMMENT '更新记录时间',
  PRIMARY KEY (`DRAW_ID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin COMMENT='单证领用表';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `t_doc_billcard_draw`
--

LOCK TABLES `t_doc_billcard_draw` WRITE;
/*!40000 ALTER TABLE `t_doc_billcard_draw` DISABLE KEYS */;
/*!40000 ALTER TABLE `t_doc_billcard_draw` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `t_doc_billcard_import`
--

DROP TABLE IF EXISTS `t_doc_billcard_import`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `t_doc_billcard_import` (
  `IMPORT_ID` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '单证导入批次流水ID',
  `BILLCARD_ID` bigint(20) NOT NULL COMMENT '单证ID',
  `BATCH_NO` int(11) NOT NULL COMMENT '导入批次号',
  `IMPORT_NUM` int(11) NOT NULL COMMENT '导入单证数据量',
  `ORGAN_ID` bigint(20) NOT NULL COMMENT '所属机构/租户ID\n            --t_company_organ',
  `DEPART_ID` bigint(20) DEFAULT NULL COMMENT '所属部门ID',
  `EMPLOYEE_ID` bigint(20) DEFAULT NULL COMMENT '员工ID',
  `CREATED_BY` bigint(20) NOT NULL COMMENT '创建人',
  `CREATE_TIME` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '创建时间',
  `UPDATE_BY` bigint(20) NOT NULL COMMENT '更新记录人',
  `UPDATE_TIME` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP COMMENT '更新记录时间',
  `PROCESS_STATUS` char(10) COLLATE utf8_bin DEFAULT NULL,
  PRIMARY KEY (`IMPORT_ID`)
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=utf8 COLLATE=utf8_bin;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `t_doc_billcard_import`
--

LOCK TABLES `t_doc_billcard_import` WRITE;
/*!40000 ALTER TABLE `t_doc_billcard_import` DISABLE KEYS */;
INSERT INTO `t_doc_billcard_import` VALUES (1,8,1000,13,400,1,1,400,'2016-05-26 20:45:55',400,'2016-05-26 20:45:55',NULL),(2,8,1000,6,400,1,1,400,'2016-05-26 21:38:57',400,'2016-05-26 21:38:57',NULL);
/*!40000 ALTER TABLE `t_doc_billcard_import` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `t_doc_billcard_pre_fetch`
--

DROP TABLE IF EXISTS `t_doc_billcard_pre_fetch`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `t_doc_billcard_pre_fetch` (
  `FETCH_ID` bigint(20) NOT NULL AUTO_INCREMENT,
  `BILLCARD_ID` bigint(20) NOT NULL COMMENT '单证ID',
  `ORGAN_ID` bigint(20) NOT NULL COMMENT '所属机构/租户ID\n            --t_company_organ',
  `DEPART_ID` bigint(20) DEFAULT NULL COMMENT '所属部门ID',
  `CACHE_SIZE` int(11) NOT NULL COMMENT '缓存数量',
  `USED_SIZE` int(11) NOT NULL COMMENT '使用数量',
  `CREATE_TIME` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '创建时间',
  `UPDATE_TIME` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP COMMENT '更新记录时间',
  PRIMARY KEY (`FETCH_ID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin COMMENT='单证预取缓存表';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `t_doc_billcard_pre_fetch`
--

LOCK TABLES `t_doc_billcard_pre_fetch` WRITE;
/*!40000 ALTER TABLE `t_doc_billcard_pre_fetch` DISABLE KEYS */;
/*!40000 ALTER TABLE `t_doc_billcard_pre_fetch` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `t_doc_billcard_stock`
--

DROP TABLE IF EXISTS `t_doc_billcard_stock`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `t_doc_billcard_stock` (
  `STOCK_ID` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '库存流水ID',
  `BILLCARD_ID` bigint(20) NOT NULL COMMENT '单证ID',
  `ORGAN_ID` bigint(20) NOT NULL COMMENT '所属机构/租户ID\n            --t_company_organ',
  `DEPART_ID` bigint(20) DEFAULT NULL COMMENT '所属部门ID',
  `STOCK_AMOUNT` int(11) NOT NULL COMMENT '库存数量',
  `LOCK_AMOUNT` int(11) DEFAULT NULL COMMENT '锁定库存数量',
  `CREATED_BY` bigint(20) NOT NULL COMMENT '创建人',
  `CREATE_TIME` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '创建时间',
  `UPDATE_BY` bigint(20) NOT NULL COMMENT '更新记录人',
  `UPDATE_TIME` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP COMMENT '更新记录时间',
  PRIMARY KEY (`STOCK_ID`),
  KEY `FK_BILLCARD_STOCK__BIILCARD_ID` (`BILLCARD_ID`),
  CONSTRAINT `FK_BILLCARD_STOCK__BIILCARD_ID` FOREIGN KEY (`BILLCARD_ID`) REFERENCES `t_doc_billcard` (`BILLCARD_ID`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8 COLLATE=utf8_bin COMMENT='单证领用库存表';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `t_doc_billcard_stock`
--

LOCK TABLES `t_doc_billcard_stock` WRITE;
/*!40000 ALTER TABLE `t_doc_billcard_stock` DISABLE KEYS */;
INSERT INTO `t_doc_billcard_stock` VALUES (1,8,400,1,19,NULL,400,'2016-05-26 20:46:37',400,'2016-05-26 20:46:37');
/*!40000 ALTER TABLE `t_doc_billcard_stock` ENABLE KEYS */;
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
