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
-- Table structure for table `comments`
--

DROP TABLE IF EXISTS `comments`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
 SET character_set_client = utf8mb4 ;
CREATE TABLE `comments` (
  `cmt_id` bigint(20) NOT NULL AUTO_INCREMENT,
  `cmt_cnt` varchar(255) DEFAULT NULL,
  `cmt_date` datetime DEFAULT NULL,
  `parent_id` bigint(20) DEFAULT NULL,
  `song_id` bigint(20) DEFAULT NULL,
  `user_id` bigint(20) DEFAULT NULL,
  PRIMARY KEY (`cmt_id`),
  KEY `FKlri30okf66phtcgbe5pok7cc0` (`parent_id`),
  KEY `FKo0vtem6476wdelyo8p9qmve3x` (`song_id`),
  KEY `FK8omq0tc18jd43bu5tjh6jvraq` (`user_id`),
  CONSTRAINT `FK8omq0tc18jd43bu5tjh6jvraq` FOREIGN KEY (`user_id`) REFERENCES `users` (`user_id`),
  CONSTRAINT `FKlri30okf66phtcgbe5pok7cc0` FOREIGN KEY (`parent_id`) REFERENCES `comments` (`cmt_id`),
  CONSTRAINT `FKo0vtem6476wdelyo8p9qmve3x` FOREIGN KEY (`song_id`) REFERENCES `song` (`song_id`)
) ENGINE=InnoDB AUTO_INCREMENT=57 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `comments`
--

LOCK TABLES `comments` WRITE;
/*!40000 ALTER TABLE `comments` DISABLE KEYS */;
INSERT INTO `comments` VALUES (1,'This is a very good song!','2019-03-02 16:12:02',NULL,1,3),(2,'Yeah I lover it','2019-03-02 18:12:02',1,1,2),(5,'Love','2019-05-04 19:00:36',NULL,2,3),(6,'Like','2019-05-04 19:05:47',NULL,2,3),(7,'asdasdasdasdasdasdasd','2019-05-04 19:11:49',NULL,3,3),(8,'You are awesome Hussle!','2019-05-04 19:18:29',NULL,1,3),(9,'Hay lắm :v','2019-05-04 19:24:26',NULL,56,3),(10,'Pink!!!!!!!!!!','2019-05-04 19:28:05',NULL,50,3),(11,'Hay hay hay','2019-05-04 19:32:55',NULL,51,3),(12,'hay','2019-05-04 19:34:44',NULL,51,3),(13,'Tôi là Đoàn Dũng','2019-05-04 19:36:42',NULL,51,3),(14,'Tôi là Đoàn Dũng','2019-05-04 19:37:00',NULL,51,3),(15,'sadasdasd','2019-05-04 19:48:05',14,51,3),(16,'ừ','2019-05-04 19:49:28',13,51,3),(17,'null','2019-05-04 20:17:18',NULL,280,3),(18,'âsdasdasdad','2019-05-04 20:47:06',NULL,281,1),(19,'Grinding all my life is so good <3','2019-05-04 20:55:24',NULL,277,1),(20,'Cant stop listening','2019-05-04 20:56:30',NULL,277,1),(21,'I love it too!','2019-05-04 21:10:33',17,280,1),(22,'Hay','2019-05-04 21:10:35',NULL,280,1),(23,'yes it\'s good','2019-05-04 21:17:07',22,280,3),(24,'ờ ','2019-05-04 21:40:29',12,51,1),(25,'Hussle in the brothel','2019-05-04 22:39:31',NULL,1,1),(26,'hussle in the house','2019-05-04 22:43:56',NULL,279,1),(27,'nipsey nipple','2019-05-04 22:44:16',NULL,284,1),(28,'hắt xì in dờ hau sờ','2019-05-04 22:44:49',NULL,283,1),(29,'sorry','2019-05-04 22:45:00',28,283,1),(30,'motivated','2019-05-04 22:45:32',NULL,276,1),(31,'nigga','2019-05-04 22:45:58',NULL,278,1),(32,'Haile','2019-05-04 22:46:28',NULL,50,1),(33,'Not Pink','2019-05-04 22:46:35',10,50,1),(34,'brick in the wall','2019-05-04 22:46:55',NULL,54,1),(35,'wall made by bricks','2019-05-04 22:47:10',34,54,1),(36,'Lemon juice','2019-05-04 22:47:25',NULL,55,1),(37,'Moon is not pink','2019-05-04 22:48:21',NULL,59,1),(38,'Hay','2019-05-04 22:49:24',NULL,283,1),(39,'(y)','2019-05-04 22:50:40',NULL,283,1),(40,'Pink + White is so good!','2019-05-05 19:04:13',NULL,53,1),(41,'Agreed','2019-05-05 19:05:19',40,53,3),(42,'Nguyen dep trai hihi <3','2019-05-06 10:51:20',NULL,2507,1),(43,'Doan dung','2019-05-06 10:52:22',NULL,2507,1),(44,'xanm loz','2019-05-06 10:52:34',42,2507,1),(45,'Dung ngu vlon :v','2019-05-06 10:54:51',NULL,240,3),(46,'ashgdgasd','2019-05-07 06:47:00',NULL,73,1),(47,'asdhagsdhgasdhg','2019-05-07 06:47:16',46,73,1),(48,'Hay lắm','2019-05-10 23:47:43',NULL,2512,1),(49,'Chipu hát không hay :v','2019-05-13 03:43:40',NULL,2514,3),(50,'Chipu my idol <3','2019-05-14 14:33:51',NULL,2517,3),(51,'Mr.siro hat rat hay','2019-05-14 14:50:10',NULL,2518,3),(52,'Up','2019-05-14 14:50:21',51,2518,3),(53,'Cong an ','2019-05-15 08:24:41',NULL,2519,1),(54,'cong an dep trai','2019-05-15 08:24:53',53,2519,1),(55,'hay qua','2019-05-18 05:09:12',NULL,2519,3),(56,'ashdhgasdhg','2019-05-18 05:09:17',55,2519,3);
/*!40000 ALTER TABLE `comments` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2019-05-29  8:36:14
