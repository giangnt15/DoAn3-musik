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
-- Table structure for table `singer`
--

DROP TABLE IF EXISTS `singer`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
 SET character_set_client = utf8mb4 ;
CREATE TABLE `singer` (
  `singer_id` bigint(20) NOT NULL AUTO_INCREMENT,
  `brief_description` varchar(255) DEFAULT NULL,
  `singer_name` varchar(255) DEFAULT NULL,
  `thumbnail` varchar(1024) DEFAULT 'https://localhost:8443/img/artists/a14.jpg',
  `cover_img` varchar(1024) DEFAULT 'https://localhost:8443/img/artists/a14.jpg',
  PRIMARY KEY (`singer_id`)
) ENGINE=InnoDB AUTO_INCREMENT=23 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `singer`
--

LOCK TABLES `singer` WRITE;
/*!40000 ALTER TABLE `singer` DISABLE KEYS */;
INSERT INTO `singer` VALUES (5,NULL,'Eminem','https://localhost:8443/img/artists/a14.jpg','https://localhost:8443/img/artists/a14.jpg'),(7,NULL,'Aerosmith','https://images-na.ssl-images-amazon.com/images/I/71ybQli5HiL.png','https://localhost:8443/img/artists/a14.jpg'),(9,NULL,'Taylor Swift','https://c.saavncdn.com/artists/Taylor_Swift_500x500.jpg','https://localhost:8443/img/artists/a14.jpg'),(11,NULL,'Drake','https://y.gtimg.cn/music/photo_new/T001R500x500M000001FAb1d02xUcH.jpg','https://localhost:8443/img/artists/a14.jpg'),(12,NULL,'Madonna','https://apertureaustralia.com.au/wp-content/uploads/2017/02/Madonna-Final-with-Grain-Exhibition-Print-500x500.jpg','https://localhost:8443/img/artists/a14.jpg'),(14,NULL,'Khalid','https://images-na.ssl-images-amazon.com/images/I/81akUFMrhQL.jpg','https://localhost:8443/img/artists/a14.jpg'),(15,NULL,'Halsey','https://i.scdn.co/image/94f16d3edb81d13f210e8c9edfd9cfded7b3549e','https://localhost:8443/img/artists/a14.jpg'),(16,'Young  Buffalo','Nipsey Hussle','https://imgcache.qq.com/music/photo/mid_singer_500/v/O/001fA3pJ3vzHvO.jpg','https://localhost:8443/img/artists/a14.jpg'),(17,NULL,'Ed Sheeran','https://beatznation.com/wp-content/uploads/2016/06/VIDEO-Ed-Sheeran-and-Fuse-ODG-In-Ghana.png','https://localhost:8443/img/artists/a14.jpg'),(18,NULL,'Maroon 5','https://i.pinimg.com/originals/11/5e/93/115e93a3080574c9daf8765ff7916e1d.png','https://localhost:8443/img/artists/a14.jpg'),(19,'Thánh nhạc buồn','Mr. Siro','https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcQAWwoa9HdhNrqIX5oWawkUtF8V4DX1YH3YRHXvbHqyEGom4F2U','https://localhost:8443/img/artists/a14.jpg'),(20,'Ca sĩ dỏm','Chipu','https://i1.sndcdn.com/artworks-000530159832-vq4zqn-t500x500.jpg','https://i1.sndcdn.com/artworks-000530159832-vq4zqn-t500x500.jpg'),(21,'Ca sĩ mới nổi','Hương Giang','https://localhost:8443/uploads/HG_TN.jpg','https://localhost:8443/img/artists/a14.jpg'),(22,'Lou Hoàng <3 Nguyên','Lou Hoàng','https://localhost:8443/uploads/102271.jpg','https://localhost:8443/img/artists/a14.jpg');
/*!40000 ALTER TABLE `singer` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2019-05-29  8:36:09
