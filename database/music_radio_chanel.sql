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
-- Table structure for table `radio_chanel`
--

DROP TABLE IF EXISTS `radio_chanel`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
 SET character_set_client = utf8mb4 ;
CREATE TABLE `radio_chanel` (
  `chanel_id` bigint(20) NOT NULL AUTO_INCREMENT,
  `chanel_name` varchar(255) DEFAULT NULL,
  `chanel_src` varchar(255) DEFAULT NULL,
  `thumbnail` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`chanel_id`)
) ENGINE=InnoDB AUTO_INCREMENT=8 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `radio_chanel`
--

LOCK TABLES `radio_chanel` WRITE;
/*!40000 ALTER TABLE `radio_chanel` DISABLE KEYS */;
INSERT INTO `radio_chanel` VALUES (1,'100 hits radio','http://listen.radionomy.com/100-hit-radio\'','http://www.streamitter.com/images/logos/100HIT.png'),(2,'Jamendo Lounge','http://streaming.radionomy.com/JamendoLounge','https://is4-ssl.mzstatic.com/image/thumb/Purple114/v4/0b/88/e7/0b88e7c1-0aed-e40f-e7f3-68239b8ef257/AppIcon-0-1x_U007emarketing-0-85-220-0-10.png/1200x630wa.png'),(3,'Jazz4ever','http://listen.radionomy.com/jazz4ever','https://i.pinimg.com/originals/22/7a/64/227a64019955e2742f8be411f25ccc3d.jpg'),(4,'Top Tonic Rock','http://listen.radionomy.com/toptonicrock','https://rock.toptonic.org/header_rock.png'),(5,'70s Classics','http://listen.radionomy.com/70sclassics','https://www.sanity.com.au/media/fullimage/452490/SDC_2352181_2018-22-7--00-15-00.jpg'),(6,'Deep House Netword','http://stream.tuxhost.net:8000/;','https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcTRJF5sFyTqBxJJ3qHlC6_eCE1jbl6h6nwjHKSLHf_hMsZNEvw0'),(7,'PulsRadio DANCE - Puls.fr','http://icecast.pulsradio.com:80/pulsHD.mp3/;','http://www.pulsradio.com/img/logo-pulsradio.png');
/*!40000 ALTER TABLE `radio_chanel` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2019-05-29  8:36:12
