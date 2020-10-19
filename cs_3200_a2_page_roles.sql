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
-- Table structure for table `page_roles`
--

DROP TABLE IF EXISTS `page_roles`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `page_roles` (
  `idpage_roles` int NOT NULL AUTO_INCREMENT,
  `role` varchar(45) DEFAULT NULL,
  `page_id` int DEFAULT NULL,
  `developer_id` int DEFAULT NULL,
  PRIMARY KEY (`idpage_roles`),
  KEY `page_role_enum_idx` (`role`),
  KEY `developer_role_idx` (`developer_id`),
  KEY `page_role_idx` (`page_id`),
  CONSTRAINT `developer_page_role` FOREIGN KEY (`developer_id`) REFERENCES `developers` (`id`),
  CONSTRAINT `page_role` FOREIGN KEY (`page_id`) REFERENCES `pages` (`idpages`),
  CONSTRAINT `page_role_enum` FOREIGN KEY (`role`) REFERENCES `roles` (`role`) ON UPDATE CASCADE
) ENGINE=InnoDB AUTO_INCREMENT=73 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `page_roles`
--

LOCK TABLES `page_roles` WRITE;
/*!40000 ALTER TABLE `page_roles` DISABLE KEYS */;
INSERT INTO `page_roles` VALUES (61,'editor',234,23),(62,'reviewer',234,34),(63,'writer',234,12),(64,'editor',345,34),(65,'reviewer',345,12),(66,'writer',345,23),(67,'editor',456,12),(68,'reviewer',456,23),(69,'writer',456,34);
/*!40000 ALTER TABLE `page_roles` ENABLE KEYS */;
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
/*!50003 CREATE*/ /*!50017 DEFINER=`root`@`localhost`*/ /*!50003 TRIGGER `page_roles_AFTER_INSERT` AFTER INSERT ON `page_roles` FOR EACH ROW BEGIN
if new.role = 'admin' or new.role = 'owner' then
    insert into page_priviledges value (null, 'create', new.page_id, new.developer_id);
    insert into page_priviledges value (null, 'update', new.page_id, new.developer_id);
    insert into page_priviledges value (null, 'delete', new.page_id, new.developer_id);
    insert into page_priviledges value (null, 'read', new.page_id, new.developer_id);
  end if;

  if new.role = 'writer' then
    insert into page_priviledges value (null, 'create', new.page_id, new.developer_id);
    insert into page_priviledges value (null, 'update', new.page_id, new.developer_id);
    insert into page_priviledges value (null, 'read', new.page_id, new.developer_id);
  end if;
  
  if new.role = 'editor' then
    insert into page_priviledges value (null, 'update', new.page_id, new.developer_id);
    insert into page_priviledges value (null, 'read', new.page_id, new.developer_id);
  end if;
  
  if new.role = 'reviewer' then
    insert into page_priviledges value (null, 'read', new.page_id, new.developer_id);
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
/*!50003 CREATE*/ /*!50017 DEFINER=`root`@`localhost`*/ /*!50003 TRIGGER `page_roles_AFTER_UPDATE` AFTER UPDATE ON `page_roles` FOR EACH ROW BEGIN

if new.role = 'admin' or new.role = 'owner' then
delete from page_priviledges 
    where page_priviledges.page_id = old.page_id 
		and page_priviledges.developer_id = old.developer_id
        and (page_priviledges.priviledge = 'create' 
             or page_priviledges.priviledge = 'read'
             or page_priviledges.priviledge = 'update'
             or page_priviledges.priviledge = 'delete');
    insert into page_priviledges value (null, 'create', new.page_id, new.developer_id);
    insert into page_priviledges value (null, 'update', new.page_id, new.developer_id);
    insert into page_priviledges value (null, 'delete', new.page_id, new.developer_id);
    insert into page_priviledges value (null, 'read', new.page_id, new.developer_id);
  end if;

  if new.role = 'writer' then
  delete from page_priviledges 
    where page_priviledges.page_id = old.page_id 
		and page_priviledges.developer_id = old.developer_id
        and (page_priviledges.priviledge = 'create' 
             or page_priviledges.priviledge = 'update'
             or page_priviledges.priviledge = 'delete');
    insert into page_priviledges value (null, 'create', new.page_id, new.developer_id);
    insert into page_priviledges value (null, 'update', new.page_id, new.developer_id);
    insert into page_priviledges value (null, 'read', new.page_id, new.developer_id);
  end if;
  
  if new.role = 'editor' then
  delete from page_priviledges 
    where page_priviledges.page_id = old.page_id 
		and page_priviledges.developer_id = old.developer_id
        and (page_priviledges.priviledge = 'read'
             or page_priviledges.priviledge = 'update');
    insert into page_priviledges value (null, 'update', new.page_id, new.developer_id);
    insert into page_priviledges value (null, 'read', new.page_id, new.developer_id);
  end if;
  
  if new.role = 'reviewer' then
  delete from page_priviledges 
    where page_priviledges.page_id = old.page_id 
		and page_priviledges.developer_id = old.developer_id
        and (page_priviledges.priviledge = 'read');
    insert into page_priviledges value (null, 'read', new.page_id, new.developer_id);
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
/*!50003 CREATE*/ /*!50017 DEFINER=`root`@`localhost`*/ /*!50003 TRIGGER `page_roles_AFTER_DELETE` AFTER DELETE ON `page_roles` FOR EACH ROW BEGIN
delete from page_priviledges 
    where page_priviledges.page_id = old.page_id 
		and page_priviledges.developer_id = old.developer_id;
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

-- Dump completed on 2020-10-18 23:22:48
