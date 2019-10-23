-- MySQL dump 10.13  Distrib 5.7.27, for Linux (x86_64)
--
-- Host: localhost    Database: LOL
-- ------------------------------------------------------
-- Server version	5.7.27-0ubuntu0.18.04.1

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
-- Current Database: `LOL`
--

CREATE DATABASE /*!32312 IF NOT EXISTS*/ `LOL` /*!40100 DEFAULT CHARACTER SET utf8 */;

USE `LOL`;

--
-- Temporary table structure for view `c1`
--

DROP TABLE IF EXISTS `c1`;
/*!50001 DROP VIEW IF EXISTS `c1`*/;
SET @saved_cs_client     = @@character_set_client;
SET character_set_client = utf8;
/*!50001 CREATE VIEW `c1` AS SELECT 
 1 AS `name`,
 1 AS `age`*/;
SET character_set_client = @saved_cs_client;

--
-- Table structure for table `class_1`
--

DROP TABLE IF EXISTS `class_1`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `class_1` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(32) NOT NULL,
  `age` tinyint(3) unsigned NOT NULL,
  `sex` enum('w','m','o') DEFAULT NULL,
  `score` float DEFAULT '0',
  PRIMARY KEY (`id`),
  KEY `name_index` (`name`)
) ENGINE=MyISAM AUTO_INCREMENT=4 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `class_1`
--

LOCK TABLES `class_1` WRITE;
/*!40000 ALTER TABLE `class_1` DISABLE KEYS */;
INSERT INTO `class_1` VALUES (1,'Sam',25,'m',66.6),(2,'Anny',24,'w',77.7),(3,'Nicole',23,'o',88.8);
/*!40000 ALTER TABLE `class_1` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `dept`
--

DROP TABLE IF EXISTS `dept`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `dept` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `dname` varchar(32) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=6 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `dept`
--

LOCK TABLES `dept` WRITE;
/*!40000 ALTER TABLE `dept` DISABLE KEYS */;
INSERT INTO `dept` VALUES (1,'EDG'),(2,'RNG'),(3,'IG'),(5,'SNAKE');
/*!40000 ALTER TABLE `dept` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `index_tb`
--

DROP TABLE IF EXISTS `index_tb`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `index_tb` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(32) DEFAULT NULL,
  `sex` char(1) DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `name` (`name`),
  KEY `sex` (`sex`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `index_tb`
--

LOCK TABLES `index_tb` WRITE;
/*!40000 ALTER TABLE `index_tb` DISABLE KEYS */;
/*!40000 ALTER TABLE `index_tb` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `interest`
--

DROP TABLE IF EXISTS `interest`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `interest` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(32) NOT NULL,
  `hobby` set('sing','dance','draw') NOT NULL,
  `level` char(1) NOT NULL,
  `price` decimal(7,2) NOT NULL,
  `remark` text,
  `tel` char(11) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=5 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `interest`
--

LOCK TABLES `interest` WRITE;
/*!40000 ALTER TABLE `interest` DISABLE KEYS */;
INSERT INTO `interest` VALUES (1,'Tonny','sing,dance','B',45800.00,'骨骼惊奇，可塑之才',''),(2,'Abby','sing','C',24800.00,'天籁之音',''),(3,'James','draw','B',8900.00,'当代毕加索',''),(4,'Han','draw','C',11800.00,'还行吧','');
/*!40000 ALTER TABLE `interest` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `marathon`
--

DROP TABLE IF EXISTS `marathon`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `marathon` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `athlete` varchar(32) DEFAULT NULL,
  `birthday` date DEFAULT NULL,
  `registration_time` datetime DEFAULT NULL,
  `performance` time DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=5 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `marathon`
--

LOCK TABLES `marathon` WRITE;
/*!40000 ALTER TABLE `marathon` DISABLE KEYS */;
INSERT INTO `marathon` VALUES (1,'尼古拉斯凯奇','1990-05-08','2019-06-08 08:29:16','02:39:59'),(2,'尼古拉斯佩琪','1988-05-28','2019-06-08 09:29:16','03:39:59'),(3,'尼古拉斯赵四','1992-09-28','2019-06-08 09:48:16','02:13:59'),(4,'尼古拉斯刘能','1978-09-28','2019-06-08 09:48:16','02:29:59');
/*!40000 ALTER TABLE `marathon` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `person`
--

DROP TABLE IF EXISTS `person`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `person` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(32) NOT NULL,
  `age` tinyint(4) DEFAULT '0',
  `sex` enum('m','w','o') DEFAULT 'o',
  `salary` decimal(10,2) DEFAULT '250.00',
  `hire_date` date NOT NULL,
  `dept_id` int(11) DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `dept_fk` (`dept_id`),
  CONSTRAINT `dept_fk` FOREIGN KEY (`dept_id`) REFERENCES `dept` (`id`) ON DELETE SET NULL ON UPDATE SET NULL
) ENGINE=InnoDB AUTO_INCREMENT=7 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `person`
--

LOCK TABLES `person` WRITE;
/*!40000 ALTER TABLE `person` DISABLE KEYS */;
INSERT INTO `person` VALUES (1,'Koro1',20,'m',8000.00,'2014-05-06',NULL),(2,'Uzi',21,'m',8880.00,'2013-01-18',2),(4,'CLearlove',23,'m',9580.00,'2011-05-09',NULL),(5,'Ming',19,'m',6080.00,'2016-06-27',2),(6,'Jacklove',17,'m',5880.00,'2016-09-17',3);
/*!40000 ALTER TABLE `person` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `sanguo`
--

DROP TABLE IF EXISTS `sanguo`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `sanguo` (
  `id` int(11) NOT NULL,
  `name` varchar(32) NOT NULL,
  `gender` enum('m','w') NOT NULL,
  `country` enum('魏','蜀','吴') NOT NULL,
  `attack` int(11) NOT NULL,
  `defence` int(11) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `sanguo`
--

LOCK TABLES `sanguo` WRITE;
/*!40000 ALTER TABLE `sanguo` DISABLE KEYS */;
INSERT INTO `sanguo` VALUES (1,'诸葛亮','m','蜀',800,20),(2,'司马懿','m','魏',600,30),(3,'张飞','m','蜀',780,80),(4,'赵云','m','蜀',360,68),(5,'夏侯渊','m','魏',700,90),(6,'张辽','m','魏',500,50),(7,'甄姬','w','魏',250,30),(8,'黄月英','w','蜀',200,10),(9,'周瑜','m','吴',300,80),(10,'陆逊','m','吴',200,40),(11,'小乔','w','吴',150,10);
/*!40000 ALTER TABLE `sanguo` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `worker`
--

DROP TABLE IF EXISTS `worker`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `worker` (
  `id` int(11) NOT NULL,
  `name` varchar(32) NOT NULL,
  PRIMARY KEY (`name`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `worker`
--

LOCK TABLES `worker` WRITE;
/*!40000 ALTER TABLE `worker` DISABLE KEYS */;
/*!40000 ALTER TABLE `worker` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Current Database: `books`
--

CREATE DATABASE /*!32312 IF NOT EXISTS*/ `books` /*!40100 DEFAULT CHARACTER SET utf8 */;

USE `books`;

--
-- Table structure for table `book`
--

DROP TABLE IF EXISTS `book`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `book` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `title` varchar(32) NOT NULL,
  `author` varchar(32) NOT NULL,
  `publication` varchar(32) DEFAULT NULL,
  `publication_date` date DEFAULT NULL,
  `price` float DEFAULT NULL,
  `comment` text,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=6 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `book`
--

LOCK TABLES `book` WRITE;
/*!40000 ALTER TABLE `book` DISABLE KEYS */;
INSERT INTO `book` VALUES (2,'呐喊','鲁迅','中国邮电','1990-10-01',45,'挣扎与彷徨'),(4,'笑傲江湖','金庸','机械工程','1992-10-01',35.8,'沧海一声笑,滔滔两岸潮'),(5,'雪山飞狐','金庸','机械工程','1992-10-01',34.9,NULL);
/*!40000 ALTER TABLE `book` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Current Database: `LOL`
--

USE `LOL`;

--
-- Final view structure for view `c1`
--

/*!50001 DROP VIEW IF EXISTS `c1`*/;
/*!50001 SET @saved_cs_client          = @@character_set_client */;
/*!50001 SET @saved_cs_results         = @@character_set_results */;
/*!50001 SET @saved_col_connection     = @@collation_connection */;
/*!50001 SET character_set_client      = utf8 */;
/*!50001 SET character_set_results     = utf8 */;
/*!50001 SET collation_connection      = utf8_general_ci */;
/*!50001 CREATE ALGORITHM=UNDEFINED */
/*!50013 DEFINER=`root`@`localhost` SQL SECURITY DEFINER */
/*!50001 VIEW `c1` AS select `class_1`.`name` AS `name`,`class_1`.`age` AS `age` from `class_1` */;
/*!50001 SET character_set_client      = @saved_cs_client */;
/*!50001 SET character_set_results     = @saved_cs_results */;
/*!50001 SET collation_connection      = @saved_col_connection */;

--
-- Current Database: `books`
--

USE `books`;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2019-10-22 11:06:08
