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
-- Table structure for table `Delivery`
--

DROP TABLE IF EXISTS `Delivery`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `Delivery` (
  `DeliveryID` int NOT NULL AUTO_INCREMENT COMMENT 'Clave primaria Delivery',
  `Tipo` varchar(50) DEFAULT NULL COMMENT 'Tipo de delivery',
  `Estado` varchar(50) DEFAULT NULL COMMENT 'Estado del delivery',
  PRIMARY KEY (`DeliveryID`)
) ENGINE=InnoDB AUTO_INCREMENT=54 DEFAULT CHARSET=latin1 COMMENT='tabla de deliverys';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `Delivery`
--

LOCK TABLES `Delivery` WRITE;
/*!40000 ALTER TABLE `Delivery` DISABLE KEYS */;
INSERT INTO `Delivery` VALUES (1,'Wabi','Pedido Listo'),(2,'másDelivery','En Camino'),(4,'PedidosYa','Entregado'),(5,'Rappi','Entregado'),(6,'PedidosYa','Pedido Listo'),(8,'másDelivery','En Camino'),(9,'Rappi','En Camino'),(10,'Cabify','En Camino'),(11,'Rappi','En Camino'),(12,'PedidosYa','Pedido Listo'),(13,'PedidosYa','Entregado'),(14,'Cabify','Pedido Listo'),(15,'Wabi','Entregado'),(16,'Cabify','En Camino'),(17,'másDelivery','Pedido Listo'),(18,'másDelivery','En Camino'),(19,'Wabi','En Camino'),(20,'másDelivery','Entregado'),(21,'PedidosYa','Entregado'),(22,'PedidosYa','Pedido Listo'),(23,'PedidosYa','En Camino'),(24,'másDelivery','Entregado'),(25,'PedidosYa','Pedido Listo'),(26,'PedidosYa','Pedido Listo'),(27,'Wabi','Pedido Listo'),(28,'PedidosYa','Pedido Listo'),(29,'Cabify','Pedido Listo'),(30,'Wabi','En Camino'),(31,'Cabify','Entregado'),(32,'Rappi','En Camino'),(33,'Cabify','Pedido Listo'),(34,'PedidosYa','Pedido Listo'),(35,'másDelivery','Pedido Listo'),(36,'másDelivery','En Camino'),(37,'Rappi','Pedido Listo'),(38,'PedidosYa','Entregado'),(39,'PedidosYa','En Camino'),(40,'Wabi','En Camino'),(41,'PedidosYa','Entregado'),(42,'PedidosYa','Pedido Listo'),(43,'Cabify','Entregado'),(44,'másDelivery','Pedido Listo'),(45,'PedidosYa','Pedido Listo'),(46,'másDelivery','Pedido Listo'),(47,'PedidosYa','Pedido Listo'),(48,'Cabify','Pedido Listo'),(49,'Cabify','Entregado'),(50,'PedidosYa','Pedido Listo'),(51,'PedidosYa','En Camino'),(52,'Wabi','Entregado');
/*!40000 ALTER TABLE `Delivery` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2023-12-21 11:48:20
