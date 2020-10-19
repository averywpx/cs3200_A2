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
-- Temporary view structure for view `deleveloper_roles_and_privileges`
--

DROP TABLE IF EXISTS `deleveloper_roles_and_privileges`;
/*!50001 DROP VIEW IF EXISTS `deleveloper_roles_and_privileges`*/;
SET @saved_cs_client     = @@character_set_client;
/*!50503 SET character_set_client = utf8mb4 */;
/*!50001 CREATE VIEW `deleveloper_roles_and_privileges` AS SELECT 
 1 AS `firstName`,
 1 AS `lastName`,
 1 AS `username`,
 1 AS `email`,
 1 AS `name`,
 1 AS `visits`,
 1 AS `wUpdated`,
 1 AS `wRole`,
 1 AS `wPriviledge`,
 1 AS `title`,
 1 AS `views`,
 1 AS `pUpdated`,
 1 AS `pRole`,
 1 AS `pPriviledge`*/;
SET character_set_client = @saved_cs_client;

--
-- Final view structure for view `deleveloper_roles_and_privileges`
--

/*!50001 DROP VIEW IF EXISTS `deleveloper_roles_and_privileges`*/;
/*!50001 SET @saved_cs_client          = @@character_set_client */;
/*!50001 SET @saved_cs_results         = @@character_set_results */;
/*!50001 SET @saved_col_connection     = @@collation_connection */;
/*!50001 SET character_set_client      = utf8mb4 */;
/*!50001 SET character_set_results     = utf8mb4 */;
/*!50001 SET collation_connection      = utf8mb4_0900_ai_ci */;
/*!50001 CREATE ALGORITHM=UNDEFINED */
/*!50013 DEFINER=`root`@`localhost` SQL SECURITY DEFINER */
/*!50001 VIEW `deleveloper_roles_and_privileges` AS select `odrp`.`firstName` AS `firstName`,`odrp`.`lastName` AS `lastName`,`odrp`.`username` AS `username`,`odrp`.`email` AS `email`,`odrp`.`name` AS `name`,`odrp`.`visits` AS `visits`,`odrp`.`wUpdated` AS `wUpdated`,`odrp`.`wRole` AS `wRole`,`odrp`.`wPriviledge` AS `wPriviledge`,`odrp`.`title` AS `title`,`odrp`.`views` AS `views`,`odrp`.`pUpdated` AS `pUpdated`,`odrp`.`pRole` AS `pRole`,`odrp`.`pPriviledge` AS `pPriviledge` from `origin_drp` `odrp` where ((`odrp`.`ppid` is null) or (`odrp`.`wpid` = `odrp`.`ppid`)) */;
/*!50001 SET character_set_client      = @saved_cs_client */;
/*!50001 SET character_set_results     = @saved_cs_results */;
/*!50001 SET collation_connection      = @saved_col_connection */;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2020-10-19 19:37:30
