-- MySQL dump 10.13  Distrib 8.0.13, for Win64 (x86_64)
--
-- Host: 127.0.0.1    Database: music
-- ------------------------------------------------------
-- Server version	8.0.13

/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
 SET NAMES utf8 ;
/*!40103 SET @OLD_TIME_ZONE=@@TIME_ZONE */;
/*!40103 SET TIME_ZONE='+00:00' */;
/*!40014 SET @OLD_UNIQUE_CHECKS=@@UNIQUE_CHECKS, UNIQUE_CHECKS=0 */;
/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;
/*!40111 SET @OLD_SQL_NOTES=@@SQL_NOTES, SQL_NOTES=0 */;

--
-- Table structure for table `author`
--

DROP TABLE IF EXISTS `author`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
 SET character_set_client = utf8mb4 ;
CREATE TABLE `author` (
  `author_id` bigint(20) NOT NULL AUTO_INCREMENT,
  `author_name` varchar(255) DEFAULT NULL,
  `brief_description` varchar(255) DEFAULT NULL,
  `author_thumbnail` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`author_id`)
) ENGINE=InnoDB AUTO_INCREMENT=105 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `author`
--

LOCK TABLES `author` WRITE;
/*!40000 ALTER TABLE `author` DISABLE KEYS */;
INSERT INTO `author` VALUES (5,'Eminem',NULL,'https://api.deezer.com/artist/13/image'),(7,'Aerosmith',NULL,'https://api.deezer.com/artist/1005/image'),(9,'Taylor Swift',NULL,'https://api.deezer.com/artist/12246/image'),(11,'Drake',NULL,'https://api.deezer.com/artist/246791/image'),(12,'Madonna',NULL,'https://api.deezer.com/artist/290/image'),(14,'Khalid',NULL,'https://api.deezer.com/artist/362326/image'),(15,'Halsey',NULL,'https://api.deezer.com/artist/5292512/image'),(16,'Nipsey Hussle',NULL,'https://api.deezer.com/artist/257128/image'),(97,'Nipsey Hussle',NULL,'https://api.deezer.com/artist/257128/image'),(98,'Nipsey Hussle',NULL,'https://api.deezer.com/artist/257128/image'),(99,'Nipsey Hussle',NULL,'https://api.deezer.com/artist/257128/image'),(100,'Nipsey Hussle',NULL,'https://api.deezer.com/artist/257128/image'),(101,'Nipsey Hussle',NULL,'https://api.deezer.com/artist/257128/image'),(102,'Nipsey Hussle',NULL,'https://api.deezer.com/artist/257128/image'),(103,'Nipsey Hussle',NULL,'https://api.deezer.com/artist/257128/image'),(104,'Nipsey Hussle',NULL,'https://api.deezer.com/artist/257128/image');
/*!40000 ALTER TABLE `author` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2019-05-29  8:36:13
