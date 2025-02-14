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
-- Table structure for table `singer_song`
--

DROP TABLE IF EXISTS `singer_song`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
 SET character_set_client = utf8mb4 ;
CREATE TABLE `singer_song` (
  `song_id` bigint(20) NOT NULL,
  `singer_id` bigint(20) NOT NULL,
  PRIMARY KEY (`singer_id`,`song_id`),
  KEY `FK4bpue3qgplxo25e96ro0oc1jl` (`song_id`),
  CONSTRAINT `FK4bpue3qgplxo25e96ro0oc1jl` FOREIGN KEY (`song_id`) REFERENCES `song` (`song_id`),
  CONSTRAINT `FKe2mx4py15ghqjli00lilg1xcf` FOREIGN KEY (`singer_id`) REFERENCES `singer` (`singer_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `singer_song`
--

LOCK TABLES `singer_song` WRITE;
/*!40000 ALTER TABLE `singer_song` DISABLE KEYS */;
INSERT INTO `singer_song` VALUES (1,5),(2,7),(3,5),(4,5),(5,5),(6,5),(7,5),(8,5),(9,5),(10,5),(11,5),(12,5),(13,5),(14,5),(15,5),(16,5),(17,5),(18,5),(19,5),(20,5),(21,5),(22,5),(23,5),(24,5),(25,5),(51,7),(52,7),(53,7),(54,7),(55,7),(56,7),(57,7),(58,7),(59,7),(60,7),(61,7),(62,7),(63,7),(64,7),(65,7),(66,7),(67,7),(68,7),(69,7),(70,7),(71,7),(72,7),(73,7),(74,7),(75,7),(101,9),(102,9),(103,9),(104,9),(105,9),(106,9),(107,9),(108,9),(109,9),(110,9),(111,9),(112,9),(113,9),(114,9),(115,9),(116,9),(117,9),(118,9),(119,9),(120,9),(121,9),(122,9),(123,9),(124,9),(125,9),(151,11),(152,11),(153,11),(154,11),(155,11),(156,11),(157,11),(158,11),(159,11),(160,11),(161,11),(162,11),(163,11),(164,11),(165,11),(166,11),(167,11),(168,11),(169,11),(170,11),(171,11),(172,11),(173,11),(174,11),(175,11),(176,12),(177,12),(178,12),(179,12),(180,12),(181,12),(182,12),(183,12),(184,12),(185,12),(186,12),(187,12),(188,12),(189,12),(190,12),(191,12),(192,12),(193,12),(194,12),(195,12),(196,12),(197,12),(198,12),(199,12),(200,12),(226,14),(227,14),(228,14),(229,14),(230,14),(231,14),(232,14),(233,14),(234,14),(235,14),(236,14),(237,14),(238,14),(239,14),(240,14),(241,14),(242,14),(243,14),(244,14),(245,14),(246,14),(247,14),(248,14),(249,14),(250,14),(251,15),(252,15),(253,15),(254,15),(255,15),(256,15),(257,15),(258,15),(259,15),(260,15),(261,15),(262,15),(263,15),(264,15),(265,15),(266,15),(267,15),(268,15),(269,15),(270,15),(271,15),(272,15),(273,15),(274,15),(275,15),(2501,7),(2501,11),(2504,5),(2504,9),(2506,7),(2506,11),(2507,18),(2512,19),(2513,9),(2514,20),(2515,21),(2516,22),(2517,20),(2518,19),(2519,19),(2520,20);
/*!40000 ALTER TABLE `singer_song` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2019-05-29  8:36:15
