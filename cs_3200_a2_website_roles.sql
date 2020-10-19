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
-- Table structure for table `website_roles`
--

DROP TABLE IF EXISTS `website_roles`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `website_roles` (
  `id` int NOT NULL AUTO_INCREMENT,
  `role` varchar(45) DEFAULT NULL,
  `developer_id` int DEFAULT NULL,
  `website_id` int DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `website_role_enumeration_idx` (`role`),
  KEY `developer_role_idx` (`developer_id`),
  KEY `website_role_idx` (`website_id`),
  CONSTRAINT `developer_role` FOREIGN KEY (`developer_id`) REFERENCES `developers` (`id`),
  CONSTRAINT `website_role` FOREIGN KEY (`website_id`) REFERENCES `websites` (`idwebsites`),
  CONSTRAINT `website_role_enumeration` FOREIGN KEY (`role`) REFERENCES `roles` (`role`) ON UPDATE CASCADE
) ENGINE=InnoDB AUTO_INCREMENT=45 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `website_roles`
--

LOCK TABLES `website_roles` WRITE;
/*!40000 ALTER TABLE `website_roles` DISABLE KEYS */;
INSERT INTO `website_roles` VALUES (19,'editor',23,123),(20,'admin',34,123),(21,'owner',23,234),(22,'editor',34,234),(24,'owner',34,345),(25,'owner',12,123),(26,'editor',12,345),(27,'admin',23,345),(35,'owner',12,456),(36,'editor',23,456),(37,'admin',34,456),(41,'owner',34,678),(42,'editor',12,678),(43,'admin',23,678),(44,'admin',12,234);
/*!40000 ALTER TABLE `website_roles` ENABLE KEYS */;
UNLOCK TABLES;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8mb4 */ ;
/*!50003 SET character_set_results = utf8mb4 */ ;
/*!50003 SET collation_connection  = utf8mb4_0900_ai_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'STRICT_TRANS_TABLES,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
/*!50003 CREATE*/ /*!50017 DEFINER=`root`@`localhost`*/ /*!50003 TRIGGER `website_roles_AFTER_INSERT` AFTER INSERT ON `website_roles` FOR EACH ROW BEGIN
  if new.role = 'admin' or new.role = 'owner' then
    insert into website_priviledges value (null, 'create', new.website_id, new.developer_id);
    insert into website_priviledges value (null, 'update', new.website_id, new.developer_id);
    insert into website_priviledges value (null, 'delete', new.website_id, new.developer_id);
    insert into website_priviledges value (null, 'read', new.website_id, new.developer_id);
  end if;

  if new.role = 'writer' then
    insert into website_priviledges value (null, 'create', new.website_id, new.developer_id);
    insert into website_priviledges value (null, 'update', new.website_id, new.developer_id);
    insert into website_priviledges value (null, 'read', new.website_id, new.developer_id);
  end if;
  
  if new.role = 'editor' then
    insert into website_priviledges value (null, 'update', new.website_id, new.developer_id);
    insert into website_priviledges value (null, 'read', new.website_id, new.developer_id);
  end if;
  
  if new.role = 'reviewer' then
    insert into website_priviledges value (null, 'read', new.website_id, new.developer_id);
  end if;
END */;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8mb4 */ ;
/*!50003 SET character_set_results = utf8mb4 */ ;
/*!50003 SET collation_connection  = utf8mb4_0900_ai_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'STRICT_TRANS_TABLES,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
/*!50003 CREATE*/ /*!50017 DEFINER=`root`@`localhost`*/ /*!50003 TRIGGER `website_roles_AFTER_UPDATE` AFTER UPDATE ON `website_roles` FOR EACH ROW BEGIN
delete from website_priviledges 
    where website_priviledges.website_id = old.website_id 
		and website_priviledges.developer_id = old.developer_id;
if new.role = 'admin' or new.role = 'owner' then
    insert into website_priviledges value (null, 'create', new.website_id, new.developer_id);
    insert into website_priviledges value (null, 'update', new.website_id, new.developer_id);
    insert into website_priviledges value (null, 'delete', new.website_id, new.developer_id);
    insert into website_priviledges value (null, 'read', new.website_id, new.developer_id);
  end if;

  if new.role = 'writer' then
    insert into website_priviledges value (null, 'create', new.website_id, new.developer_id);
    insert into website_priviledges value (null, 'update', new.website_id, new.developer_id);
    insert into website_priviledges value (null, 'read', new.website_id, new.developer_id);
  end if;
  
  if new.role = 'editor' then
    insert into website_priviledges value (null, 'update', new.website_id, new.developer_id);
    insert into website_priviledges value (null, 'read', new.website_id, new.developer_id);
  end if;
  
  if new.role = 'reviewer' then
    insert into website_priviledges value (null, 'read', new.website_id, new.developer_id);
  end if;

END */;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8mb4 */ ;
/*!50003 SET character_set_results = utf8mb4 */ ;
/*!50003 SET collation_connection  = utf8mb4_0900_ai_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'STRICT_TRANS_TABLES,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
/*!50003 CREATE*/ /*!50017 DEFINER=`root`@`localhost`*/ /*!50003 TRIGGER `website_roles_AFTER_DELETE` AFTER DELETE ON `website_roles` FOR EACH ROW BEGIN
    delete from website_priviledges 
    where website_priviledges.website_id = old.website_id 
		and website_priviledges.developer_id = old.developer_id;

END */;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2020-10-18 23:22:46
