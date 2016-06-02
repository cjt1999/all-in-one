-- MySQL dump 10.13  Distrib 5.7.12, for Linux (x86_64)
--
-- Host: localhost    Database: wift_cms_tst
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
-- Table structure for table `t_cms_print_task`
--

DROP TABLE IF EXISTS `t_cms_print_task`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `t_cms_print_task` (
  `TASK_ID` bigint(20) NOT NULL COMMENT '任务ID',
  `TEMPLATE_ID` bigint(20) NOT NULL COMMENT '模板ID',
  `BUSI_TYPE` varchar(30) COLLATE utf8_bin DEFAULT NULL COMMENT '业务类型',
  `BUSI_NO` varchar(30) COLLATE utf8_bin DEFAULT NULL COMMENT '业务号码',
  `SEND_TYPE` varchar(30) COLLATE utf8_bin NOT NULL COMMENT '打印任务类型',
  `CMS_PARAM` blob NOT NULL COMMENT '发送的短信参数',
  `TASK_STATUS` varchar(30) COLLATE utf8_bin NOT NULL COMMENT ' 任务处理状态\n            --d_common_status',
  `TASK_NAME` varchar(30) COLLATE utf8_bin NOT NULL COMMENT '打印任务名称',
  `PRINT_TIME` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '打印时间',
  `REPEAT_TIMES` int(11) DEFAULT NULL COMMENT '任务重发次数',
  `CREATE_BY` bigint(20) NOT NULL COMMENT '创建人',
  `CREATE_TIME` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '创建时间',
  `UPDATE_BY` bigint(20) NOT NULL COMMENT '更新记录人',
  `UPDATE_TIME` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP COMMENT '更新记录时间',
  PRIMARY KEY (`TASK_ID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `t_cms_print_task`
--

LOCK TABLES `t_cms_print_task` WRITE;
/*!40000 ALTER TABLE `t_cms_print_task` DISABLE KEYS */;
/*!40000 ALTER TABLE `t_cms_print_task` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `t_cms_print_task_err_log`
--

DROP TABLE IF EXISTS `t_cms_print_task_err_log`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `t_cms_print_task_err_log` (
  `LOG_ID` bigint(20) NOT NULL COMMENT '日志ID',
  `TASK_ID` bigint(20) NOT NULL COMMENT '任务ID',
  `SEND_TIME` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '消息发送时间',
  `ERR_MESSAG` text COLLATE utf8_bin NOT NULL COMMENT '日志内容',
  `CREATE_TIME` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '创建时间',
  PRIMARY KEY (`LOG_ID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin COMMENT='打印错误日志记录表';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `t_cms_print_task_err_log`
--

LOCK TABLES `t_cms_print_task_err_log` WRITE;
/*!40000 ALTER TABLE `t_cms_print_task_err_log` DISABLE KEYS */;
/*!40000 ALTER TABLE `t_cms_print_task_err_log` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `t_cms_template`
--

DROP TABLE IF EXISTS `t_cms_template`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `t_cms_template` (
  `TEMPLATE_ID` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '消息模板ID',
  `TEMPLATE_CODE` varchar(30) COLLATE utf8_bin NOT NULL COMMENT '模板代码',
  `TEMPLATE_NAME` varchar(30) COLLATE utf8_bin NOT NULL COMMENT '模板名称',
  `TEMPLATE_STATUS` varchar(30) COLLATE utf8_bin NOT NULL COMMENT '模板状态(--D_COMM_STATUS)',
  `SYSTEM_CODE` varchar(30) COLLATE utf8_bin NOT NULL COMMENT '所属系统',
  `ORGAN_ID` bigint(20) NOT NULL COMMENT '所属机构',
  `CMS_TYPE` varchar(30) COLLATE utf8_bin NOT NULL COMMENT '内容类型(D_CMS_TYPE)',
  `SEND_TYPE` varchar(30) COLLATE utf8_bin NOT NULL COMMENT '内容发送类型\n            --0-即时短信\n            --1-定时短信',
  `TEMPLATE_PATH` varchar(200) COLLATE utf8_bin DEFAULT NULL COMMENT '模板文件存储路径',
  `TEMPLATE_BODY` text COLLATE utf8_bin COMMENT '模板内容',
  `REPEAT_TIMES` int(11) NOT NULL COMMENT '失败重发次数',
  `CREATE_BY` bigint(20) NOT NULL COMMENT '创建人',
  `CREATE_TIME` datetime NOT NULL COMMENT '创建用户时间',
  `CREATE_TIMESTAMP` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP COMMENT '创建系统时间',
  `UPDATE_BY` bigint(20) NOT NULL COMMENT '更新记录人',
  `UPDATE_TIME` datetime NOT NULL COMMENT '更新用户时间',
  `UPDATE_TIMESTAMP` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP COMMENT '更新系统时间',
  PRIMARY KEY (`TEMPLATE_ID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin COMMENT=' 内容管理模板定义表';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `t_cms_template`
--

LOCK TABLES `t_cms_template` WRITE;
/*!40000 ALTER TABLE `t_cms_template` DISABLE KEYS */;
/*!40000 ALTER TABLE `t_cms_template` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `t_sms_his_task_20160526`
--

DROP TABLE IF EXISTS `t_sms_his_task_20160526`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `t_sms_his_task_20160526` (
  `TASK_ID` bigint(20) NOT NULL COMMENT '任务ID',
  `TEMPLATE_ID` bigint(20) NOT NULL COMMENT '短信模板ID',
  `SEND_TYPE` varchar(30) NOT NULL COMMENT '短信发送类型\n	            --即时短信\n	            --定时短信',
  `SMS_PARAM` varchar(4000) NOT NULL COMMENT '发送的短信参数',
  `TASK_STATUS` varchar(30) NOT NULL COMMENT ' 任务处理状态\n	            --d_common_status',
  `SMS_ACCOUNT` varchar(300) NOT NULL COMMENT '接收手机号/微信号',
  `SEND_TIME` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '短信发送时间',
  `REPEAT_TIMES` int(11) NOT NULL COMMENT '任务重发次数',
  `CREATE_BY` bigint(20) NOT NULL COMMENT '创建人',
  `CREATE_TIME` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '创建时间',
  PRIMARY KEY (`TASK_ID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `t_sms_his_task_20160526`
--

LOCK TABLES `t_sms_his_task_20160526` WRITE;
/*!40000 ALTER TABLE `t_sms_his_task_20160526` DISABLE KEYS */;
/*!40000 ALTER TABLE `t_sms_his_task_20160526` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `t_sms_his_task_20160529`
--

DROP TABLE IF EXISTS `t_sms_his_task_20160529`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `t_sms_his_task_20160529` (
  `TASK_ID` bigint(20) NOT NULL COMMENT '任务ID',
  `TEMPLATE_ID` bigint(20) NOT NULL COMMENT '短信模板ID',
  `SEND_TYPE` varchar(30) NOT NULL COMMENT '短信发送类型\n	            --即时短信\n	            --定时短信',
  `SMS_PARAM` varchar(4000) NOT NULL COMMENT '发送的短信参数',
  `TASK_STATUS` varchar(30) NOT NULL COMMENT ' 任务处理状态\n	            --d_common_status',
  `SMS_ACCOUNT` varchar(300) NOT NULL COMMENT '接收手机号/微信号',
  `SEND_TIME` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '短信发送时间',
  `REPEAT_TIMES` int(11) NOT NULL COMMENT '任务重发次数',
  `CREATE_BY` bigint(20) NOT NULL COMMENT '创建人',
  `CREATE_TIME` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '创建时间',
  PRIMARY KEY (`TASK_ID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `t_sms_his_task_20160529`
--

LOCK TABLES `t_sms_his_task_20160529` WRITE;
/*!40000 ALTER TABLE `t_sms_his_task_20160529` DISABLE KEYS */;
/*!40000 ALTER TABLE `t_sms_his_task_20160529` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `t_sms_task`
--

DROP TABLE IF EXISTS `t_sms_task`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `t_sms_task` (
  `TASK_ID` bigint(20) NOT NULL COMMENT '任务ID',
  `TEMPLATE_ID` bigint(20) NOT NULL COMMENT '短信模板ID',
  `SEND_TYPE` varchar(30) COLLATE utf8_bin NOT NULL COMMENT '短信发送类型\n            --0-即时短信\n            --1-定时短信',
  `SMS_PARAM` varchar(4000) COLLATE utf8_bin NOT NULL COMMENT '发送的短信参数',
  `TASK_STATUS` varchar(30) COLLATE utf8_bin DEFAULT '01',
  `SMS_ACCOUNT` varchar(300) COLLATE utf8_bin NOT NULL COMMENT '接收手机号/微信号',
  `SEND_TIME` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '短信发送时间',
  `REPEAT_TIMES` int(11) DEFAULT '0',
  `CREATE_BY` bigint(20) NOT NULL COMMENT '创建人',
  `CREATE_TIME` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '创建时间',
  `UPDATE_BY` bigint(20) NOT NULL COMMENT '更新记录人',
  `UPDATE_TIME` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP COMMENT '更新记录时间',
  PRIMARY KEY (`TASK_ID`),
  KEY `FK_SMS_TASK__TEMPLATE_ID` (`TEMPLATE_ID`),
  CONSTRAINT `FK_SMS_TASK__TEMPLATE_ID` FOREIGN KEY (`TEMPLATE_ID`) REFERENCES `t_sms_template` (`TEMPLATE_ID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin COMMENT='短信发送任务';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `t_sms_task`
--

LOCK TABLES `t_sms_task` WRITE;
/*!40000 ALTER TABLE `t_sms_task` DISABLE KEYS */;
/*!40000 ALTER TABLE `t_sms_task` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `t_sms_task_err_log`
--

DROP TABLE IF EXISTS `t_sms_task_err_log`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `t_sms_task_err_log` (
  `LOG_ID` bigint(20) NOT NULL COMMENT '日志ID',
  `TASK_ID` bigint(20) NOT NULL COMMENT '任务ID',
  `SEND_TIME` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '消息发送时间',
  `ERR_MESSAG` text COLLATE utf8_bin NOT NULL COMMENT '日志内容',
  `CREATE_TIME` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '创建时间',
  PRIMARY KEY (`LOG_ID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin COMMENT='短信发送失败日志';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `t_sms_task_err_log`
--

LOCK TABLES `t_sms_task_err_log` WRITE;
/*!40000 ALTER TABLE `t_sms_task_err_log` DISABLE KEYS */;
/*!40000 ALTER TABLE `t_sms_task_err_log` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `t_sms_template`
--

DROP TABLE IF EXISTS `t_sms_template`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `t_sms_template` (
  `TEMPLATE_ID` bigint(20) NOT NULL COMMENT '消息模板ID',
  `TEMPLATE_CODE` varchar(30) COLLATE utf8_bin NOT NULL COMMENT '模板代码',
  `TEMPLATE_NAME` varchar(30) COLLATE utf8_bin NOT NULL COMMENT '模板名称',
  `TEMPLATE_STATUS` varchar(30) COLLATE utf8_bin NOT NULL COMMENT '模板状态(--D_COMM_STATUS)',
  `SYSTEM_CODE` varchar(30) COLLATE utf8_bin NOT NULL COMMENT '所属系统',
  `ORGAN_ID` bigint(20) NOT NULL COMMENT '所属机构',
  `SMS_TYPE` varchar(30) COLLATE utf8_bin DEFAULT NULL COMMENT '消息类型',
  `SEND_TYPE` varchar(30) COLLATE utf8_bin NOT NULL COMMENT '消息发送类型\n            --0-即时短信\n            --1-定时短信',
  `TEMPLATE_PATH` varchar(200) COLLATE utf8_bin DEFAULT NULL COMMENT '模板文件存储路径',
  `TEMPLATE_BODY` text COLLATE utf8_bin COMMENT '模板内容',
  `REPEAT_TIMES` int(11) NOT NULL COMMENT '失败重发次数',
  `CREATE_BY` bigint(20) NOT NULL COMMENT '创建人',
  `CREATE_TIME` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP COMMENT '创建时间',
  `UPDATE_BY` bigint(20) NOT NULL COMMENT '更新记录人',
  `UPDATE_TIME` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP COMMENT '更新记录时间',
  PRIMARY KEY (`TEMPLATE_ID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin COMMENT=' 消息模板';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `t_sms_template`
--

LOCK TABLES `t_sms_template` WRITE;
/*!40000 ALTER TABLE `t_sms_template` DISABLE KEYS */;
/*!40000 ALTER TABLE `t_sms_template` ENABLE KEYS */;
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
