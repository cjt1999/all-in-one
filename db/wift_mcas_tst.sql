-- MySQL dump 10.13  Distrib 5.7.12, for Linux (x86_64)
--
-- Host: localhost    Database: wift_mcas_tst
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
-- Table structure for table `t_mcas_inner_api_registry`
--

DROP TABLE IF EXISTS `t_mcas_inner_api_registry`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `t_mcas_inner_api_registry` (
  `REGISTRY_ID` bigint(20) NOT NULL AUTO_INCREMENT,
  `SYSTEM_CODE` varchar(10) COLLATE utf8_bin NOT NULL COMMENT '所属系统\n            --D_SYSTEM',
  `API_TYPE` varchar(10) COLLATE utf8_bin NOT NULL COMMENT 'API类型\n            --0-编排API 1-系统提供  ',
  `API_CODE` varchar(50) COLLATE utf8_bin NOT NULL COMMENT 'API代码',
  `API_NAME` varchar(200) COLLATE utf8_bin NOT NULL COMMENT 'API名称',
  `API_URI` varchar(200) COLLATE utf8_bin NOT NULL COMMENT 'API资源路径',
  `API_DESC` varchar(4000) COLLATE utf8_bin DEFAULT NULL COMMENT 'API描述',
  PRIMARY KEY (`REGISTRY_ID`)
) ENGINE=InnoDB AUTO_INCREMENT=1000 DEFAULT CHARSET=utf8 COLLATE=utf8_bin COMMENT='接口注册表';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `t_mcas_inner_api_registry`
--

LOCK TABLES `t_mcas_inner_api_registry` WRITE;
/*!40000 ALTER TABLE `t_mcas_inner_api_registry` DISABLE KEYS */;
/*!40000 ALTER TABLE `t_mcas_inner_api_registry` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `t_mcas_open_api`
--

DROP TABLE IF EXISTS `t_mcas_open_api`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `t_mcas_open_api` (
  `API_ID` bigint(20) NOT NULL AUTO_INCREMENT,
  `REGISTRY_ID` bigint(20) NOT NULL COMMENT 'API注册ID',
  PRIMARY KEY (`API_ID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `t_mcas_open_api`
--

LOCK TABLES `t_mcas_open_api` WRITE;
/*!40000 ALTER TABLE `t_mcas_open_api` DISABLE KEYS */;
/*!40000 ALTER TABLE `t_mcas_open_api` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `t_mcas_open_service`
--

DROP TABLE IF EXISTS `t_mcas_open_service`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `t_mcas_open_service` (
  `SERVICE_ID` bigint(20) NOT NULL AUTO_INCREMENT,
  `REGISTRY_ID` bigint(20) NOT NULL COMMENT '服务API注册ID',
  `CHANNEL_ID` bigint(20) DEFAULT NULL COMMENT '销售渠道商ID',
  `MKT_PROD_ID` bigint(20) DEFAULT NULL COMMENT '营销产品ID',
  PRIMARY KEY (`SERVICE_ID`)
) ENGINE=InnoDB AUTO_INCREMENT=1000 DEFAULT CHARSET=utf8 COLLATE=utf8_bin COMMENT='开放服务定义表';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `t_mcas_open_service`
--

LOCK TABLES `t_mcas_open_service` WRITE;
/*!40000 ALTER TABLE `t_mcas_open_service` DISABLE KEYS */;
/*!40000 ALTER TABLE `t_mcas_open_service` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `t_mcas_service_api_cfg`
--

DROP TABLE IF EXISTS `t_mcas_service_api_cfg`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `t_mcas_service_api_cfg` (
  `CFG_ID` bigint(20) NOT NULL,
  `REGISTRY_ID` bigint(20) NOT NULL COMMENT 'API注册ID',
  `TEMPLATE_ID` bigint(20) NOT NULL,
  PRIMARY KEY (`CFG_ID`),
  KEY `FK_FK_SERVICE_API_CFG__REGISTRY_ID` (`REGISTRY_ID`),
  KEY `FK_Reference_3` (`TEMPLATE_ID`),
  CONSTRAINT `FK_MCAS_SAC__TEMPLATE_ID` FOREIGN KEY (`TEMPLATE_ID`) REFERENCES `t_mcas_service_api_template` (`TEMPLATE_ID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin COMMENT='API编排服务配置';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `t_mcas_service_api_cfg`
--

LOCK TABLES `t_mcas_service_api_cfg` WRITE;
/*!40000 ALTER TABLE `t_mcas_service_api_cfg` DISABLE KEYS */;
/*!40000 ALTER TABLE `t_mcas_service_api_cfg` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `t_mcas_service_api_template`
--

DROP TABLE IF EXISTS `t_mcas_service_api_template`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `t_mcas_service_api_template` (
  `TEMPLATE_ID` bigint(20) NOT NULL,
  `SERVICE_NAME` varchar(50) COLLATE utf8_bin DEFAULT NULL,
  `REGISTRY_ID` bigint(20) NOT NULL COMMENT 'API注册ID',
  `ORDER_ID` int(11) DEFAULT NULL COMMENT '排序',
  PRIMARY KEY (`TEMPLATE_ID`),
  KEY `FK_MCAS_SAT__REGISTRY_ID` (`REGISTRY_ID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin COMMENT='API编排服务配置';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `t_mcas_service_api_template`
--

LOCK TABLES `t_mcas_service_api_template` WRITE;
/*!40000 ALTER TABLE `t_mcas_service_api_template` DISABLE KEYS */;
/*!40000 ALTER TABLE `t_mcas_service_api_template` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `t_mcas_srv_handler_mapping`
--

DROP TABLE IF EXISTS `t_mcas_srv_handler_mapping`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `t_mcas_srv_handler_mapping` (
  `SERVICE_ID` bigint(20) NOT NULL DEFAULT '0' COMMENT '开放服务ID',
  `HANDLER_TYPE` int(11) NOT NULL DEFAULT '0' COMMENT '处理程序类型',
  `CLASS_PATH` varchar(200) COLLATE utf8_bin DEFAULT NULL COMMENT '处理类路径',
  PRIMARY KEY (`SERVICE_ID`,`HANDLER_TYPE`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin COMMENT='渠道(安全／适配)处理类映射表';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `t_mcas_srv_handler_mapping`
--

LOCK TABLES `t_mcas_srv_handler_mapping` WRITE;
/*!40000 ALTER TABLE `t_mcas_srv_handler_mapping` DISABLE KEYS */;
INSERT INTO `t_mcas_srv_handler_mapping` VALUES (0,0,'com.ins.mcas.adapter.handler.impl.DefaultJsonHandler'),(0,1,'com.ins.mcas.adapter.handler.impl.DefaultSecurityHandler'),(0,2,'com.ins.mcas.adapter.handler.impl.DefaultMessageHandler');
/*!40000 ALTER TABLE `t_mcas_srv_handler_mapping` ENABLE KEYS */;
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
