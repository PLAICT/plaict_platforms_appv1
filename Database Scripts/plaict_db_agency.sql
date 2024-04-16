-- MySQL dump 10.13  Distrib 8.0.36, for Win64 (x86_64)
--
-- Host: 127.0.0.1    Database: placit_db
-- ------------------------------------------------------
-- Server version	8.3.0

/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!50503 SET NAMES utf8 */;
/*!40103 SET @OLD_TIME_ZONE=@@TIME_ZONE */;
/*!40103 SET TIME_ZONE='+00:00' */;
/*!40014 SET @OLD_UNIQUE_CHECKS=@@UNIQUE_CHECKS, UNIQUE_CHECKS=0 */;
/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;
/*!40111 SET @OLD_SQL_NOTES=@@SQL_NOTES, SQL_NOTES=0 */;

--
-- Table structure for table `agency`
--

DROP TABLE IF EXISTS `agency`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `agency` (
  `AgencyID` int NOT NULL AUTO_INCREMENT,
  `Agency Name` varchar(45) NOT NULL,
  `Agency Description` varchar(90) NOT NULL,
  `Comments` varchar(4500) DEFAULT NULL,
  `Status` varchar(45) NOT NULL DEFAULT 'A',
  `UserID Who Created Record` int NOT NULL,
  `Record Creation Date/Time` date DEFAULT (curdate()),
  PRIMARY KEY (`AgencyID`),
  KEY `fk_Agency_User1_idx` (`UserID Who Created Record`),
  CONSTRAINT `fk_Agency_User1` FOREIGN KEY (`UserID Who Created Record`) REFERENCES `user` (`UserID`)
) ENGINE=InnoDB AUTO_INCREMENT=9 DEFAULT CHARSET=utf8mb3;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `agency`
--

LOCK TABLES `agency` WRITE;
/*!40000 ALTER TABLE `agency` DISABLE KEYS */;
INSERT INTO `agency` VALUES (1,'Hospital and Health Service','Includes Hospitals, Mental Health clinics','Includes Hospitals, Mental Health clinics','A',1,'2022-08-16'),(2,'Youth Justice Department (Juvenile Justice)','Youth Justice - Program work, detention, pre-sentence and bail attendance.','Youth Justice - Program work, detention, pre-sentence and bail attendance.','A',1,'2021-05-24'),(3,'Child Safety Department','Child Safety','Child Safety','A',1,'2019-07-18'),(4,'Department of Justice and Attorney General','Criminal Justice System','Criminal Justice System','A',1,'2023-03-23'),(5,'Emergency Services Department','Ambulance callouts','Ambulance callouts','A',1,'2018-10-18'),(6,'Police','Police interaction','Police interaction','A',1,'2019-01-23'),(7,'Not for Profit Organisation','Includes Sexual Assualt, Homelessness and Residential Care services','Includes Sexual Assualt, Homelessness and Residential Care services','A',1,'2017-04-20'),(8,'Other','Other','Other','I',1,'2018-08-08');
/*!40000 ALTER TABLE `agency` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2024-04-12  3:40:04
