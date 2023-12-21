-- MySQL dump 10.13  Distrib 8.0.32, for Linux (x86_64)
--
-- Host: localhost    Database: PROYECTO_FINAL
-- ------------------------------------------------------
-- Server version	8.0.35-0ubuntu0.20.04.1

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
-- Temporary view structure for view `VW_ORDEN_CLIENTE`
--

DROP TABLE IF EXISTS `VW_ORDEN_CLIENTE`;
/*!50001 DROP VIEW IF EXISTS `VW_ORDEN_CLIENTE`*/;
SET @saved_cs_client     = @@character_set_client;
/*!50503 SET character_set_client = utf8mb4 */;
/*!50001 CREATE VIEW `VW_ORDEN_CLIENTE` AS SELECT 
 1 AS `OrdenID`,
 1 AS `Fecha`,
 1 AS `ClienteID`,
 1 AS `nombre`*/;
SET character_set_client = @saved_cs_client;

--
-- Temporary view structure for view `VW_ORDEN_DELIVERY`
--

DROP TABLE IF EXISTS `VW_ORDEN_DELIVERY`;
/*!50001 DROP VIEW IF EXISTS `VW_ORDEN_DELIVERY`*/;
SET @saved_cs_client     = @@character_set_client;
/*!50503 SET character_set_client = utf8mb4 */;
/*!50001 CREATE VIEW `VW_ORDEN_DELIVERY` AS SELECT 
 1 AS `OrdenID`,
 1 AS `Fecha`,
 1 AS `Tipo`,
 1 AS `Estado`*/;
SET character_set_client = @saved_cs_client;

--
-- Temporary view structure for view `VW_ORDEN_PRODUCTO`
--

DROP TABLE IF EXISTS `VW_ORDEN_PRODUCTO`;
/*!50001 DROP VIEW IF EXISTS `VW_ORDEN_PRODUCTO`*/;
SET @saved_cs_client     = @@character_set_client;
/*!50503 SET character_set_client = utf8mb4 */;
/*!50001 CREATE VIEW `VW_ORDEN_PRODUCTO` AS SELECT 
 1 AS `OrdenID`,
 1 AS `Fecha`,
 1 AS `Nombre`*/;
SET character_set_client = @saved_cs_client;

--
-- Temporary view structure for view `VW_PRODUCTO_CATEGORIA`
--

DROP TABLE IF EXISTS `VW_PRODUCTO_CATEGORIA`;
/*!50001 DROP VIEW IF EXISTS `VW_PRODUCTO_CATEGORIA`*/;
SET @saved_cs_client     = @@character_set_client;
/*!50503 SET character_set_client = utf8mb4 */;
/*!50001 CREATE VIEW `VW_PRODUCTO_CATEGORIA` AS SELECT 
 1 AS `Nombre`,
 1 AS `Tipo`,
 1 AS `CategoriaID`*/;
SET character_set_client = @saved_cs_client;

--
-- Temporary view structure for view `VW_PRODUCTO_ORDEN_COUNT`
--

DROP TABLE IF EXISTS `VW_PRODUCTO_ORDEN_COUNT`;
/*!50001 DROP VIEW IF EXISTS `VW_PRODUCTO_ORDEN_COUNT`*/;
SET @saved_cs_client     = @@character_set_client;
/*!50503 SET character_set_client = utf8mb4 */;
/*!50001 CREATE VIEW `VW_PRODUCTO_ORDEN_COUNT` AS SELECT 
 1 AS `COUNT(OrdenID)`,
 1 AS `Nombre`*/;
SET character_set_client = @saved_cs_client;

--
-- Final view structure for view `VW_ORDEN_CLIENTE`
--

/*!50001 DROP VIEW IF EXISTS `VW_ORDEN_CLIENTE`*/;
/*!50001 SET @saved_cs_client          = @@character_set_client */;
/*!50001 SET @saved_cs_results         = @@character_set_results */;
/*!50001 SET @saved_col_connection     = @@collation_connection */;
/*!50001 SET character_set_client      = utf8mb4 */;
/*!50001 SET character_set_results     = utf8mb4 */;
/*!50001 SET collation_connection      = utf8mb4_0900_ai_ci */;
/*!50001 CREATE ALGORITHM=UNDEFINED */
/*!50013 DEFINER=`root`@`localhost` SQL SECURITY DEFINER */
/*!50001 VIEW `VW_ORDEN_CLIENTE` AS select `O`.`OrdenID` AS `OrdenID`,`O`.`Fecha` AS `Fecha`,`O`.`ClienteID` AS `ClienteID`,`C`.`Nombre` AS `nombre` from (`Orden` `O` join `Cliente` `C` on((`O`.`ClienteID` = `C`.`ClienteID`))) */;
/*!50001 SET character_set_client      = @saved_cs_client */;
/*!50001 SET character_set_results     = @saved_cs_results */;
/*!50001 SET collation_connection      = @saved_col_connection */;

--
-- Final view structure for view `VW_ORDEN_DELIVERY`
--

/*!50001 DROP VIEW IF EXISTS `VW_ORDEN_DELIVERY`*/;
/*!50001 SET @saved_cs_client          = @@character_set_client */;
/*!50001 SET @saved_cs_results         = @@character_set_results */;
/*!50001 SET @saved_col_connection     = @@collation_connection */;
/*!50001 SET character_set_client      = utf8mb4 */;
/*!50001 SET character_set_results     = utf8mb4 */;
/*!50001 SET collation_connection      = utf8mb4_0900_ai_ci */;
/*!50001 CREATE ALGORITHM=UNDEFINED */
/*!50013 DEFINER=`root`@`localhost` SQL SECURITY DEFINER */
/*!50001 VIEW `VW_ORDEN_DELIVERY` AS select `O`.`OrdenID` AS `OrdenID`,`O`.`Fecha` AS `Fecha`,`D`.`Tipo` AS `Tipo`,`D`.`Estado` AS `Estado` from (`Orden` `O` join `Delivery` `D` on((`O`.`DeliveryID` = `D`.`DeliveryID`))) */;
/*!50001 SET character_set_client      = @saved_cs_client */;
/*!50001 SET character_set_results     = @saved_cs_results */;
/*!50001 SET collation_connection      = @saved_col_connection */;

--
-- Final view structure for view `VW_ORDEN_PRODUCTO`
--

/*!50001 DROP VIEW IF EXISTS `VW_ORDEN_PRODUCTO`*/;
/*!50001 SET @saved_cs_client          = @@character_set_client */;
/*!50001 SET @saved_cs_results         = @@character_set_results */;
/*!50001 SET @saved_col_connection     = @@collation_connection */;
/*!50001 SET character_set_client      = utf8mb4 */;
/*!50001 SET character_set_results     = utf8mb4 */;
/*!50001 SET collation_connection      = utf8mb4_0900_ai_ci */;
/*!50001 CREATE ALGORITHM=UNDEFINED */
/*!50013 DEFINER=`root`@`localhost` SQL SECURITY DEFINER */
/*!50001 VIEW `VW_ORDEN_PRODUCTO` AS select `O`.`OrdenID` AS `OrdenID`,`O`.`Fecha` AS `Fecha`,`P`.`Nombre` AS `Nombre` from (`Orden` `O` join `Producto` `P` on((`O`.`ProductoID` = `P`.`ProductoID`))) */;
/*!50001 SET character_set_client      = @saved_cs_client */;
/*!50001 SET character_set_results     = @saved_cs_results */;
/*!50001 SET collation_connection      = @saved_col_connection */;

--
-- Final view structure for view `VW_PRODUCTO_CATEGORIA`
--

/*!50001 DROP VIEW IF EXISTS `VW_PRODUCTO_CATEGORIA`*/;
/*!50001 SET @saved_cs_client          = @@character_set_client */;
/*!50001 SET @saved_cs_results         = @@character_set_results */;
/*!50001 SET @saved_col_connection     = @@collation_connection */;
/*!50001 SET character_set_client      = utf8mb4 */;
/*!50001 SET character_set_results     = utf8mb4 */;
/*!50001 SET collation_connection      = utf8mb4_0900_ai_ci */;
/*!50001 CREATE ALGORITHM=UNDEFINED */
/*!50013 DEFINER=`root`@`localhost` SQL SECURITY DEFINER */
/*!50001 VIEW `VW_PRODUCTO_CATEGORIA` AS select `P`.`Nombre` AS `Nombre`,`C`.`Tipo` AS `Tipo`,`C`.`CategoriaID` AS `CategoriaID` from (`Categoria` `C` join `Producto` `P` on((`C`.`CategoriaID` = `P`.`CategoriaID`))) */;
/*!50001 SET character_set_client      = @saved_cs_client */;
/*!50001 SET character_set_results     = @saved_cs_results */;
/*!50001 SET collation_connection      = @saved_col_connection */;

--
-- Final view structure for view `VW_PRODUCTO_ORDEN_COUNT`
--

/*!50001 DROP VIEW IF EXISTS `VW_PRODUCTO_ORDEN_COUNT`*/;
/*!50001 SET @saved_cs_client          = @@character_set_client */;
/*!50001 SET @saved_cs_results         = @@character_set_results */;
/*!50001 SET @saved_col_connection     = @@collation_connection */;
/*!50001 SET character_set_client      = utf8mb4 */;
/*!50001 SET character_set_results     = utf8mb4 */;
/*!50001 SET collation_connection      = utf8mb4_0900_ai_ci */;
/*!50001 CREATE ALGORITHM=UNDEFINED */
/*!50013 DEFINER=`root`@`localhost` SQL SECURITY DEFINER */
/*!50001 VIEW `VW_PRODUCTO_ORDEN_COUNT` AS select count(`O`.`OrdenID`) AS `COUNT(OrdenID)`,`P`.`Nombre` AS `Nombre` from (`Orden` `O` join `Producto` `P` on((`O`.`ProductoID` = `P`.`ProductoID`))) group by `P`.`Nombre` */;
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

-- Dump completed on 2023-12-21 11:57:47
