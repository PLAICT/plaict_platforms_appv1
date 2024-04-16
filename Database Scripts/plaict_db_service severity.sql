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
-- Table structure for table `service severity`
--

DROP TABLE IF EXISTS `service severity`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `service severity` (
  `ServiceSeverityID` int NOT NULL AUTO_INCREMENT,
  `ServiceSeverity Name` varchar(45) NOT NULL,
  `Service Severity Description` varchar(45) DEFAULT NULL,
  `Comments` varchar(45) DEFAULT NULL,
  `Status` varchar(45) NOT NULL DEFAULT 'A',
  `UserID Who Created Record` int NOT NULL,
  `Record Creation Date/Time` date DEFAULT (curdate()),
  PRIMARY KEY (`ServiceSeverityID`),
  KEY `fk_Service Severity_User1_idx` (`UserID Who Created Record`),
  CONSTRAINT `fk_Service Severity_User1` FOREIGN KEY (`UserID Who Created Record`) REFERENCES `user` (`UserID`)
) ENGINE=InnoDB AUTO_INCREMENT=9 DEFAULT CHARSET=utf8mb3;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `service severity`
--

LOCK TABLES `service severity` WRITE;
/*!40000 ALTER TABLE `service severity` DISABLE KEYS */;
INSERT INTO `service severity` VALUES (1,'Very Low','Very Low','Very Low','A',1,'2023-04-17'),(2,'Low','Low','Low','A',1,'2022-01-23'),(3,'Medium','Medium','Medium','A',1,'2019-03-08'),(4,'High','High','High','A',1,'2020-12-24'),(5,'Very High','Very High','Very High ','A',1,'2019-08-28'),(6,'Extremely High','Extremely High','Extremely High','A',1,'2019-12-11'),(7,'Extremely Low','Extremely Low','Extremely Low','I',1,'2018-08-25'),(8,'To be Determined','To be Determined','To be Determined','A',1,'2020-12-04');
/*!40000 ALTER TABLE `service severity` ENABLE KEYS */;
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
