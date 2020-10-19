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
-- Table structure for table `page_developer_role_priviledge`
--

DROP TABLE IF EXISTS `page_developer_role_priviledge`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `page_developer_role_priviledge` (
  `pid` int NOT NULL,
  `website_id` int DEFAULT NULL,
  `title` varchar(45) DEFAULT NULL,
  `views` int DEFAULT NULL,
  `pUpdated` timestamp NULL DEFAULT NULL,
  `pRole` varchar(45) DEFAULT NULL,
  `pPriviledge` varchar(45) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `page_developer_role_priviledge`
--

LOCK TABLES `page_developer_role_priviledge` WRITE;
/*!40000 ALTER TABLE `page_developer_role_priviledge` DISABLE KEYS */;
INSERT INTO `page_developer_role_priviledge` VALUES (12,567,'Home',123434,NULL,'editor','update'),(12,567,'Home',123434,NULL,'editor','read'),(23,567,'Home',123434,NULL,'reviewer','read'),(34,567,'Home',123434,NULL,'writer','create'),(34,567,'Home',123434,NULL,'writer','update'),(34,567,'Home',123434,NULL,'writer','read'),(23,678,'About',234545,NULL,'editor','update'),(23,678,'About',234545,NULL,'editor','read'),(34,678,'About',234545,NULL,'reviewer','read'),(12,678,'About',234545,NULL,'writer','create'),(12,678,'About',234545,NULL,'writer','update'),(12,678,'About',234545,NULL,'writer','read'),(34,345,'Contact',345656,NULL,'editor','update'),(34,345,'Contact',345656,NULL,'editor','read'),(12,345,'Contact',345656,NULL,'reviewer','read'),(23,345,'Contact',345656,NULL,'writer','create'),(23,345,'Contact',345656,NULL,'writer','update'),(23,345,'Contact',345656,NULL,'writer','read'),(12,456,'Preferences',456776,NULL,'editor','update'),(12,456,'Preferences',456776,NULL,'editor','read'),(23,456,'Preferences',456776,NULL,'reviewer','read'),(34,456,'Preferences',456776,NULL,'writer','create'),(34,456,'Preferences',456776,NULL,'writer','update'),(34,456,'Preferences',456776,NULL,'writer','read'),(23,567,'Profile',567878,NULL,'editor','update'),(23,567,'Profile',567878,NULL,'editor','read'),(12,567,'Profile',567878,NULL,'writer','create'),(12,567,'Profile',567878,NULL,'writer','update'),(12,567,'Profile',567878,NULL,'writer','read'),(34,567,'Profile',567878,NULL,'reviewer','read');
/*!40000 ALTER TABLE `page_developer_role_priviledge` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2020-10-18 23:22:49
