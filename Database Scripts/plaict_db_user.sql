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
-- Table structure for table `user`
--

DROP TABLE IF EXISTS `user`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `user` (
  `UserID` int NOT NULL AUTO_INCREMENT,
  `Start Date` date NOT NULL DEFAULT (curdate()),
  `First Name` varchar(45) NOT NULL,
  `SurName` varchar(45) NOT NULL,
  `User Login Email` varchar(45) DEFAULT NULL,
  `Status` varchar(45) NOT NULL DEFAULT 'A',
  `Creator Name` varchar(45) DEFAULT 'SysAdmin',
  `Record Creation Date/Time` date DEFAULT (curdate()),
  PRIMARY KEY (`UserID`)
) ENGINE=InnoDB AUTO_INCREMENT=13 DEFAULT CHARSET=utf8mb3;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `user`
--

LOCK TABLES `user` WRITE;
/*!40000 ALTER TABLE `user` DISABLE KEYS */;
INSERT INTO `user` VALUES (1,'2019-04-15','Samantha','Reily','SamanthaReilly@gmail.com','A','SysAdmin','2019-04-15'),(2,'2020-08-01','Jocelyn','Bridgeley','JocelynBridgeley@gmail.com','A','SysAdmin','2020-08-01'),(3,'2021-09-27','Annette','Givers','AnnetteGivers@gmail.com','A','SysAdmin','2021-09-27'),(4,'2018-05-14','Neville','Freston','NevilleFreston@gmail.com','A','SysAdmin','2018-05-14'),(5,'2019-04-15','Peter','Hall','PeterHall@gmail.com','A','SysAdmin','2019-04-15'),(6,'2020-08-01','Susan','Clone','SusanClone@gmail.com','A','SysAdmin','2020-08-01'),(7,'2021-09-27','Nigel','Quest','NigelQuest@gmail.com','A','SysAdmin','2021-09-27'),(8,'2018-05-14','Ahmed','Shahi','AhmedShahi@gmail.com','A','SysAdmin','2018-05-14'),(9,'2019-04-15','Pierre','Gonzales','PierreGonzales@gmail.com','A','SysAdmin','2019-04-15'),(10,'2020-08-01','Andrew','Peters','AndrewPeters@gmail.com','A','SysAdmin','2020-08-01'),(11,'2021-09-27','Shama','Haifi','ShamaHaifi@gmail.com','A','SysAdmin','2021-09-27'),(12,'2021-09-27','Donna','Belfry','DonnaBelfry@gmail.com','I','SysAdmin','2021-09-27');
/*!40000 ALTER TABLE `user` ENABLE KEYS */;
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
