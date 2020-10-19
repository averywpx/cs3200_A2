-- MySQL dump 10.13  Distrib 8.0.20, for Win64 (x86_64)
--
-- Host: 127.0.0.1    Database: cs_3200_a2
-- ------------------------------------------------------
-- Server version	8.0.20

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
-- Table structure for table `a2_delete_helper`
--

DROP TABLE IF EXISTS `a2_delete_helper`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `a2_delete_helper` (
  `idwidgets` int NOT NULL,
  `dtype` varchar(45) DEFAULT NULL,
  `page_id` int DEFAULT NULL,
  `name` varchar(45) DEFAULT NULL,
  `width` int DEFAULT NULL,
  `height` int DEFAULT NULL,
  `cssClass` varchar(45) DEFAULT NULL,
  `cssStyle` varchar(45) DEFAULT NULL,
  `text` varchar(45) DEFAULT NULL,
  `order` int DEFAULT NULL,
  `url` varchar(45) DEFAULT NULL,
  `shareble` tinyint(1) DEFAULT NULL,
  `expandable` tinyint(1) DEFAULT NULL,
  `src` varchar(45) DEFAULT NULL,
  `size` int DEFAULT NULL,
  `html` varchar(45) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `a2_delete_helper`
--

LOCK TABLES `a2_delete_helper` WRITE;
/*!40000 ALTER TABLE `a2_delete_helper` DISABLE KEYS */;
INSERT INTO `a2_delete_helper` VALUES (345,'heading',345,'head345',NULL,NULL,NULL,NULL,'Hi',3,NULL,NULL,NULL,NULL,NULL,NULL),(456,'html',345,'intro456',NULL,NULL,NULL,NULL,'<h1>Hi</h1>',1,NULL,NULL,NULL,NULL,NULL,NULL),(567,'image',345,'image345',50,100,NULL,NULL,NULL,2,'/img/567.png',NULL,NULL,NULL,NULL,NULL);
/*!40000 ALTER TABLE `a2_delete_helper` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2020-10-19 19:37:28
