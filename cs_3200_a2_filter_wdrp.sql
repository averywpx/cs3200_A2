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
-- Table structure for table `filter_wdrp`
--

DROP TABLE IF EXISTS `filter_wdrp`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `filter_wdrp` (
  `pid` int NOT NULL,
  `idwebsites` int NOT NULL,
  `firstName` varchar(45) DEFAULT NULL,
  `lastName` varchar(45) DEFAULT NULL,
  `username` varchar(45) DEFAULT NULL,
  `email` varchar(45) DEFAULT NULL,
  `name` varchar(45) DEFAULT NULL,
  `visits` int DEFAULT NULL,
  `wUpdated` timestamp NULL DEFAULT NULL,
  `wRole` varchar(45) DEFAULT NULL,
  `wPriviledge` varchar(45) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `filter_wdrp`
--

LOCK TABLES `filter_wdrp` WRITE;
/*!40000 ALTER TABLE `filter_wdrp` DISABLE KEYS */;
INSERT INTO `filter_wdrp` VALUES (12,123,'Alice','Wonder','alice','alice@wonder.com','Facebook',1234234,NULL,'owner','create'),(12,123,'Alice','Wonder','alice','alice@wonder.com','Facebook',1234234,NULL,'owner','update'),(12,123,'Alice','Wonder','alice','alice@wonder.com','Facebook',1234234,NULL,'owner','delete'),(12,123,'Alice','Wonder','alice','alice@wonder.com','Facebook',1234234,NULL,'owner','read'),(23,123,'Bob','Marley','bob','bob@marley.com','Facebook',1234234,NULL,'editor','update'),(23,123,'Bob','Marley','bob','bob@marley.com','Facebook',1234234,NULL,'editor','read'),(34,123,'Charles','Garcia','charlie','chuch@garcia.com','Facebook',1234234,NULL,'admin','create'),(34,123,'Charles','Garcia','charlie','chuch@garcia.com','Facebook',1234234,NULL,'admin','update'),(34,123,'Charles','Garcia','charlie','chuch@garcia.com','Facebook',1234234,NULL,'admin','delete'),(34,123,'Charles','Garcia','charlie','chuch@garcia.com','Facebook',1234234,NULL,'admin','read'),(23,234,'Bob','Marley','bob','bob@marley.com','Twitter',4321543,NULL,'owner','create'),(23,234,'Bob','Marley','bob','bob@marley.com','Twitter',4321543,NULL,'owner','update'),(23,234,'Bob','Marley','bob','bob@marley.com','Twitter',4321543,NULL,'owner','delete'),(23,234,'Bob','Marley','bob','bob@marley.com','Twitter',4321543,NULL,'owner','read'),(34,234,'Charles','Garcia','charlie','chuch@garcia.com','Twitter',4321543,NULL,'editor','update'),(34,234,'Charles','Garcia','charlie','chuch@garcia.com','Twitter',4321543,NULL,'editor','read'),(12,234,'Alice','Wonder','alice','alice@wonder.com','Twitter',4321543,NULL,'admin','create'),(12,234,'Alice','Wonder','alice','alice@wonder.com','Twitter',4321543,NULL,'admin','update'),(12,234,'Alice','Wonder','alice','alice@wonder.com','Twitter',4321543,NULL,'admin','delete'),(12,234,'Alice','Wonder','alice','alice@wonder.com','Twitter',4321543,NULL,'admin','read'),(34,345,'Charles','Garcia','charlie','chuch@garcia.com','Wikipedia',3456654,NULL,'owner','create'),(34,345,'Charles','Garcia','charlie','chuch@garcia.com','Wikipedia',3456654,NULL,'owner','update'),(34,345,'Charles','Garcia','charlie','chuch@garcia.com','Wikipedia',3456654,NULL,'owner','delete'),(34,345,'Charles','Garcia','charlie','chuch@garcia.com','Wikipedia',3456654,NULL,'owner','read'),(12,345,'Alice','Wonder','alice','alice@wonder.com','Wikipedia',3456654,NULL,'editor','update'),(12,345,'Alice','Wonder','alice','alice@wonder.com','Wikipedia',3456654,NULL,'editor','read'),(23,345,'Bob','Marley','bob','bob@marley.com','Wikipedia',3456654,NULL,'admin','create'),(23,345,'Bob','Marley','bob','bob@marley.com','Wikipedia',3456654,NULL,'admin','update'),(23,345,'Bob','Marley','bob','bob@marley.com','Wikipedia',3456654,NULL,'admin','delete'),(23,345,'Bob','Marley','bob','bob@marley.com','Wikipedia',3456654,NULL,'admin','read'),(12,456,'Alice','Wonder','alice','alice@wonder.com','CNN',6543345,NULL,'owner','create'),(12,456,'Alice','Wonder','alice','alice@wonder.com','CNN',6543345,NULL,'owner','update'),(12,456,'Alice','Wonder','alice','alice@wonder.com','CNN',6543345,NULL,'owner','delete'),(12,456,'Alice','Wonder','alice','alice@wonder.com','CNN',6543345,NULL,'owner','read'),(23,456,'Bob','Marley','bob','bob@marley.com','CNN',6543345,NULL,'editor','create'),(23,456,'Bob','Marley','bob','bob@marley.com','CNN',6543345,NULL,'editor','update'),(23,456,'Bob','Marley','bob','bob@marley.com','CNN',6543345,NULL,'editor','delete'),(23,456,'Bob','Marley','bob','bob@marley.com','CNN',6543345,NULL,'editor','read'),(34,456,'Charles','Garcia','charlie','chuch@garcia.com','CNN',6543345,NULL,'admin','update'),(34,456,'Charles','Garcia','charlie','chuch@garcia.com','CNN',6543345,NULL,'admin','read'),(23,567,'Bob','Marley','bob','bob@marley.com','CNET',5433455,NULL,'owner','create'),(23,567,'Bob','Marley','bob','bob@marley.com','CNET',5433455,NULL,'owner','update'),(23,567,'Bob','Marley','bob','bob@marley.com','CNET',5433455,NULL,'owner','delete'),(23,567,'Bob','Marley','bob','bob@marley.com','CNET',5433455,NULL,'owner','read'),(34,567,'Charles','Garcia','charlie','chuch@garcia.com','CNET',5433455,NULL,'editor','update'),(34,567,'Charles','Garcia','charlie','chuch@garcia.com','CNET',5433455,NULL,'editor','read'),(12,567,'Alice','Wonder','alice','alice@wonder.com','CNET',5433455,NULL,'admin','create'),(12,567,'Alice','Wonder','alice','alice@wonder.com','CNET',5433455,NULL,'admin','update'),(12,567,'Alice','Wonder','alice','alice@wonder.com','CNET',5433455,NULL,'admin','delete'),(12,567,'Alice','Wonder','alice','alice@wonder.com','CNET',5433455,NULL,'admin','read'),(34,678,'Charles','Garcia','charlie','chuch@garcia.com','Gizmodo',4322345,NULL,'owner','create'),(34,678,'Charles','Garcia','charlie','chuch@garcia.com','Gizmodo',4322345,NULL,'owner','update'),(34,678,'Charles','Garcia','charlie','chuch@garcia.com','Gizmodo',4322345,NULL,'owner','delete'),(34,678,'Charles','Garcia','charlie','chuch@garcia.com','Gizmodo',4322345,NULL,'owner','read'),(12,678,'Alice','Wonder','alice','alice@wonder.com','Gizmodo',4322345,NULL,'editor','update'),(12,678,'Alice','Wonder','alice','alice@wonder.com','Gizmodo',4322345,NULL,'editor','read'),(23,678,'Bob','Marley','bob','bob@marley.com','Gizmodo',4322345,NULL,'admin','create'),(23,678,'Bob','Marley','bob','bob@marley.com','Gizmodo',4322345,NULL,'admin','update'),(23,678,'Bob','Marley','bob','bob@marley.com','Gizmodo',4322345,NULL,'admin','delete'),(23,678,'Bob','Marley','bob','bob@marley.com','Gizmodo',4322345,NULL,'admin','read');
/*!40000 ALTER TABLE `filter_wdrp` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2020-10-18 23:22:47
