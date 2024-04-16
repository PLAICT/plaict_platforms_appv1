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
-- Table structure for table `service type`
--

DROP TABLE IF EXISTS `service type`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `service type` (
  `ServiceTypeID` int NOT NULL AUTO_INCREMENT,
  `Service Type Name` varchar(60) NOT NULL,
  `Service Type Description` varchar(50) DEFAULT NULL,
  `AgencyID` int NOT NULL,
  `Comments` varchar(45) DEFAULT NULL,
  `Status` varchar(45) NOT NULL DEFAULT 'A',
  `UserID Who Created Record` int NOT NULL,
  `Record Creation Date/Time` date DEFAULT (curdate()),
  PRIMARY KEY (`ServiceTypeID`),
  KEY `fk_Service Type_Agency1_idx` (`AgencyID`),
  KEY `fk_Service Type_User1_idx` (`UserID Who Created Record`),
  CONSTRAINT `fk_Service Type_Agency1` FOREIGN KEY (`AgencyID`) REFERENCES `agency` (`AgencyID`),
  CONSTRAINT `fk_Service Type_User1` FOREIGN KEY (`UserID Who Created Record`) REFERENCES `user` (`UserID`)
) ENGINE=InnoDB AUTO_INCREMENT=13 DEFAULT CHARSET=utf8mb3;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `service type`
--

LOCK TABLES `service type` WRITE;
/*!40000 ALTER TABLE `service type` DISABLE KEYS */;
INSERT INTO `service type` VALUES (1,'Ambulance Callout','Emergency Services Department',5,'Emergency Services Department','A',1,'2020-08-01'),(2,'Child Safety ','Child Safety Department ',3,'Child Safety Department ','A',1,'2019-01-12'),(3,'Court Appearance','Department of Justice and Attorney General',4,'Department of Justice and Attorney General','A',1,'2019-09-20'),(4,'Domestic and Family Violence Service','Not for Profit Organisation',7,'Not for Profit Organisation','A',1,'2019-05-13'),(5,'Health Contact','Hospital and Health Service',1,'Hospital and Health Service','A',1,'2017-09-13'),(6,'Homelessness Service','Not for Profit Organisation',7,'Not for Profit Organisation','A',1,'2017-10-13'),(7,'Juvenile Detention ','Youth Justice Department (Juvenile Justice)',2,'Youth Justice Department (Juvenile Justice)','A',1,'2022-12-11'),(8,'Police Interaction','Police',6,'Police','A',1,'2020-06-01'),(9,'Sexual Assault Service','Not for Profit Organisation',7,'Not for Profit Organisation','A',1,'2017-08-15'),(10,'Youth Justice Case Work','Youth Justice Department (Juvenile Justice)',2,'Youth Justice Department (Juvenile Justice)','A',1,'2020-03-13'),(11,'Youth Justice Conferencing','Youth Justice Department (Juvenile Justice)',2,'Youth Justice Department (Juvenile Justice)','A',1,'2018-10-20'),(12,'Other','Not for Profit Organisation',7,'Not for Profit Organisation','I',1,'2021-11-10');
/*!40000 ALTER TABLE `service type` ENABLE KEYS */;
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
