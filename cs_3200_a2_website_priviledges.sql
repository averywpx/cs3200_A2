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
-- Table structure for table `website_priviledges`
--

DROP TABLE IF EXISTS `website_priviledges`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `website_priviledges` (
  `idwebsite_priviledge` int NOT NULL AUTO_INCREMENT,
  `priviledge` varchar(45) DEFAULT NULL,
  `website_id` int DEFAULT NULL,
  `developer_id` int DEFAULT NULL,
  PRIMARY KEY (`idwebsite_priviledge`),
  KEY `priviledge_enum_idx` (`priviledge`),
  CONSTRAINT `priviledge_enum` FOREIGN KEY (`priviledge`) REFERENCES `priviledges` (`priviledge`) ON UPDATE CASCADE
) ENGINE=InnoDB AUTO_INCREMENT=114 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `website_priviledges`
--

LOCK TABLES `website_priviledges` WRITE;
/*!40000 ALTER TABLE `website_priviledges` DISABLE KEYS */;
INSERT INTO `website_priviledges` VALUES (6,'create',123,12),(7,'update',123,12),(8,'delete',123,12),(9,'read',123,12),(30,'update',123,23),(31,'read',123,23),(32,'create',123,34),(33,'update',123,34),(34,'delete',123,34),(35,'read',123,34),(36,'create',234,23),(37,'update',234,23),(38,'delete',234,23),(39,'read',234,23),(40,'update',234,34),(41,'read',234,34),(42,'create',234,12),(43,'update',234,12),(44,'delete',234,12),(45,'read',234,12),(46,'create',345,34),(47,'update',345,34),(48,'delete',345,34),(49,'read',345,34),(50,'create',123,12),(51,'update',123,12),(52,'delete',123,12),(53,'read',123,12),(54,'update',345,12),(55,'read',345,12),(56,'create',345,23),(57,'update',345,23),(58,'delete',345,23),(59,'read',345,23),(80,'create',456,12),(81,'update',456,12),(82,'delete',456,12),(83,'read',456,12),(84,'create',456,23),(85,'update',456,23),(86,'delete',456,23),(87,'read',456,23),(88,'update',456,34),(89,'read',456,34),(100,'create',678,34),(101,'update',678,34),(102,'delete',678,34),(103,'read',678,34),(104,'update',678,12),(105,'read',678,12),(106,'create',678,23),(107,'update',678,23),(108,'delete',678,23),(109,'read',678,23),(110,'create',123,12),(111,'update',123,12),(112,'delete',123,12),(113,'read',123,12);
/*!40000 ALTER TABLE `website_priviledges` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2020-10-18 23:22:46
