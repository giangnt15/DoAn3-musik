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
-- Table structure for table `playlist`
--

DROP TABLE IF EXISTS `playlist`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
 SET character_set_client = utf8mb4 ;
CREATE TABLE `playlist` (
  `playlist_id` bigint(20) NOT NULL AUTO_INCREMENT,
  `playlist_description` varchar(255) DEFAULT NULL,
  `playlist_name` varchar(255) DEFAULT NULL,
  `thumbnail` varchar(255) DEFAULT NULL,
  `user_id` bigint(20) DEFAULT NULL,
  `created_date` datetime DEFAULT NULL,
  PRIMARY KEY (`playlist_id`),
  KEY `FKj8q80g2puy49wsp49p3taqllv` (`user_id`),
  CONSTRAINT `FKj8q80g2puy49wsp49p3taqllv` FOREIGN KEY (`user_id`) REFERENCES `users` (`user_id`)
) ENGINE=InnoDB AUTO_INCREMENT=19 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `playlist`
--

LOCK TABLES `playlist` WRITE;
/*!40000 ALTER TABLE `playlist` DISABLE KEYS */;
INSERT INTO `playlist` VALUES (1,NULL,'My favorite playlist','https://static1.squarespace.com/static/58e01101e58c62c8b2906260/5a99f1bec830255b24092f26/5c6f00a68165f563d6e4e488/1550778634198/Sidekick+Story+Playlist.jpg?format=500w',1,'2019-03-04 11:12:13'),(9,'Best songs 2','Vol 5.2.2','https://localhost:8443/uploads/Motbuocyeuvandamdau.jpg',1,'2019-05-06 21:19:29'),(13,'','Giang\'s playlist','https://localhost:8443/uploads/31658.jpg',1,'2019-05-07 06:11:50'),(14,'','Sherlocks','https://localhost:8443/uploads/success_icon.png',3,'2019-05-09 21:54:37'),(16,'','Nhac hay tuyen chon','https://localhost:8443/uploads/1473431168767_500.jpg',3,'2019-05-14 14:55:06'),(17,'','dung xinh gai','https://localhost:8443/uploads/dung%20kec.jpg',4,'2019-05-15 08:31:57');
/*!40000 ALTER TABLE `playlist` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2019-05-29  8:36:11
