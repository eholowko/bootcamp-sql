CREATE DATABASE  IF NOT EXISTS `car_repair` /*!40100 DEFAULT CHARACTER SET utf8 */;
USE `car_repair`;
-- MySQL dump 10.13  Distrib 5.7.17, for Win64 (x86_64)
--
-- Host: localhost    Database: car_repair
-- ------------------------------------------------------
-- Server version	5.7.21-log

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
-- Table structure for table `car`
--

DROP TABLE IF EXISTS `car`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `car` (
  `idcar` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(45) NOT NULL,
  `status` int(11) DEFAULT NULL,
  PRIMARY KEY (`idcar`)
) ENGINE=InnoDB AUTO_INCREMENT=11 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `car`
--

LOCK TABLES `car` WRITE;
/*!40000 ALTER TABLE `car` DISABLE KEYS */;
INSERT INTO `car` VALUES (1,'my_car_1_005',0),(2,'my_car_1_007',0),(3,'my_car_2_024',0),(4,'my_car_2_054',0),(5,'my_car_3_024',0),(6,'my_car_3_014',0),(7,'my_car_3_017',0),(8,'my_car_4_001',1),(9,'my_car_4_002',1),(10,'my_car_4_003',1);
/*!40000 ALTER TABLE `car` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `car_part`
--

DROP TABLE IF EXISTS `car_part`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `car_part` (
  `idcar` int(11) NOT NULL,
  `idpart` int(11) NOT NULL,
  KEY `idcar_idx` (`idcar`),
  KEY `idpart_idx` (`idpart`),
  CONSTRAINT `idcar` FOREIGN KEY (`idcar`) REFERENCES `car` (`idcar`),
  CONSTRAINT `idpart` FOREIGN KEY (`idpart`) REFERENCES `part` (`idpart`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `car_part`
--

LOCK TABLES `car_part` WRITE;
/*!40000 ALTER TABLE `car_part` DISABLE KEYS */;
INSERT INTO `car_part` VALUES (1,1),(1,7),(1,13),(2,1),(2,12),(2,13),(3,5),(3,6),(3,14),(4,5),(4,10),(4,13),(5,5),(5,7),(5,13),(6,2),(6,7),(6,14),(7,2),(7,8),(7,13),(8,1),(8,6),(8,13),(9,1),(9,6),(9,13),(10,1),(10,6),(10,14);
/*!40000 ALTER TABLE `car_part` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `part`
--

DROP TABLE IF EXISTS `part`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `part` (
  `idpart` int(11) NOT NULL AUTO_INCREMENT,
  `type` int(11) NOT NULL,
  `name` varchar(45) NOT NULL,
  `status` int(11) DEFAULT NULL,
  PRIMARY KEY (`idpart`)
) ENGINE=InnoDB AUTO_INCREMENT=15 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `part`
--

LOCK TABLES `part` WRITE;
/*!40000 ALTER TABLE `part` DISABLE KEYS */;
INSERT INTO `part` VALUES (1,0,'Engine_001',0),(2,0,'Engine_002',0),(3,0,'Engine_003',0),(4,0,'Engine_004',1),(5,0,'Engine_005',1),(6,1,'Wheel_001',0),(7,1,'Wheel_002',0),(8,1,'Wheel_003',0),(9,1,'Wheel_004',0),(10,1,'Wheel_005',0),(11,1,'Wheel_006',1),(12,1,'Wheel_007',1),(13,2,'Bumper_001',0),(14,2,'Bumper_002',0);
/*!40000 ALTER TABLE `part` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2018-03-28 20:54:47
