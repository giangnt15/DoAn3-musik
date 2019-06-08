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
-- Table structure for table `users`
--

DROP TABLE IF EXISTS `users`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
 SET character_set_client = utf8mb4 ;
CREATE TABLE `users` (
  `user_id` bigint(20) NOT NULL AUTO_INCREMENT,
  `email` varchar(255) NOT NULL,
  `email_verified` bit(1) NOT NULL,
  `image_url` varchar(255) DEFAULT NULL,
  `name` varchar(255) NOT NULL,
  `password` varchar(255) DEFAULT NULL,
  `provider` varchar(255) NOT NULL,
  `provider_id` varchar(255) DEFAULT NULL,
  `song_count` int(11) DEFAULT NULL,
  PRIMARY KEY (`user_id`)
) ENGINE=InnoDB AUTO_INCREMENT=7 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `users`
--

LOCK TABLES `users` WRITE;
/*!40000 ALTER TABLE `users` DISABLE KEYS */;
INSERT INTO `users` VALUES (1,'boybuon_50@yahoo.com',_binary '','https://platform-lookaside.fbsbx.com/platform/profilepic/?asid=2220450984837820&height=250&width=250&ext=1559314132&hash=AeTYHO_S7nEFXl_9','Nguyễn Trường Giang','123456','facebook','2220450984837820',NULL),(2,'giangqwerty69@gmail.com',_binary '\0','https://platform-lookaside.fbsbx.com/platform/profilepic/?asid=2220450984837820&height=250&width=250&ext=1559314132&hash=AeTYHO_S7nEFXl_9','Nguyen Giang','$2a$10$OYi41k.vcjF6do84ylHkAebOl7QoyzDSZwq8QU32MGkGoExoMyo2e','local',NULL,NULL),(3,'20166022@student.hust.edu.vn',_binary '\0','https://localhost:8443/uploads/31658.jpg','Giang Nguyễn Trường',NULL,'google','108538318703315753851',NULL),(4,'doandung2701@gmail.com',_binary '\0','https://localhost:8443/uploads/dung%20kec.jpg','Dũng Bùi Doãn',NULL,'google','107358068896534028903',NULL),(5,'20142153@student.hust.edu.vn',_binary '\0','https://lh3.googleusercontent.com/-exwMFz1BUqw/AAAAAAAAAAI/AAAAAAAAAA0/w3O5OYfAfJ0/photo.jpg','Hung Luu Duy',NULL,'google','111739858211662170215',NULL),(6,'123@com',_binary '\0',NULL,'blackpink','$2a$10$bZK9.rgPbmv/j7eZYo7OouoLHHv1G8MDDT2OYz6lccVnpy9/9mXp2','local',NULL,NULL);
/*!40000 ALTER TABLE `users` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2019-05-29  8:36:08
