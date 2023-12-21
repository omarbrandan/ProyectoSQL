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
-- Table structure for table `Orden`
--

DROP TABLE IF EXISTS `Orden`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `Orden` (
  `OrdenID` int NOT NULL AUTO_INCREMENT COMMENT 'Clave primaria Orden',
  `Fecha` date NOT NULL COMMENT 'Fecha del pedido',
  `DeliveryID` int NOT NULL COMMENT 'Delivery',
  `ClienteID` int NOT NULL COMMENT 'Cliente',
  `ProductoID` int NOT NULL COMMENT 'Producto',
  `Cantidad` float NOT NULL,
  PRIMARY KEY (`OrdenID`),
  KEY `ClienteID` (`ClienteID`),
  KEY `DeliveryID` (`DeliveryID`),
  KEY `FK_ORDEN_PRODUCTO` (`ProductoID`),
  CONSTRAINT `FK_ORDEN_PRODUCTO` FOREIGN KEY (`ProductoID`) REFERENCES `Producto` (`ProductoID`) ON DELETE CASCADE,
  CONSTRAINT `Orden_ibfk_1` FOREIGN KEY (`ClienteID`) REFERENCES `Cliente` (`ClienteID`),
  CONSTRAINT `Orden_ibfk_2` FOREIGN KEY (`DeliveryID`) REFERENCES `Delivery` (`DeliveryID`),
  CONSTRAINT `Orden_ibfk_3` FOREIGN KEY (`ProductoID`) REFERENCES `Producto` (`ProductoID`)
) ENGINE=InnoDB AUTO_INCREMENT=59 DEFAULT CHARSET=latin1 COMMENT='tabla de órdenes';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `Orden`
--

LOCK TABLES `Orden` WRITE;
/*!40000 ALTER TABLE `Orden` DISABLE KEYS */;
INSERT INTO `Orden` VALUES (1,'2023-07-04',1,1,1,1),(2,'2023-05-02',2,2,2,10),(3,'2023-04-20',3,3,3,16),(4,'2023-02-12',4,4,4,7),(5,'2023-05-08',5,5,5,17),(6,'2023-05-15',6,6,6,3),(7,'2023-04-23',7,7,1,9),(8,'2023-02-08',8,8,7,6),(9,'2023-03-18',9,9,8,18),(10,'2023-11-22',10,10,9,7),(11,'2023-11-08',11,11,4,17),(12,'2023-05-18',12,12,10,12),(13,'2023-04-19',13,13,5,13),(14,'2023-04-20',14,14,11,18),(15,'2023-09-05',15,15,2,15),(16,'2023-05-26',16,16,8,14),(17,'2023-12-20',17,17,9,2),(18,'2023-03-16',18,18,5,2),(19,'2023-09-05',19,19,12,7),(20,'2023-08-08',20,20,8,14),(21,'2023-07-31',21,21,6,10),(22,'2023-08-21',22,22,4,20),(23,'2023-12-03',23,23,7,17),(24,'2023-04-15',24,24,7,5),(25,'2023-08-18',25,25,3,1),(26,'2023-04-14',26,26,8,20),(27,'2023-01-10',27,27,12,12),(28,'2023-07-23',28,28,1,16),(29,'2023-07-04',29,29,6,14),(30,'2023-03-19',30,30,4,5),(31,'2023-10-04',31,31,3,9),(32,'2023-06-19',32,32,1,10),(33,'2023-10-30',33,33,2,2),(34,'2023-01-30',34,34,6,20),(35,'2023-04-13',35,35,3,3),(36,'2023-08-05',36,36,7,2),(37,'2023-10-01',37,37,11,12),(38,'2023-06-08',38,38,10,15),(39,'2023-03-17',39,39,10,4),(40,'2023-05-29',40,40,12,7),(41,'2023-04-02',41,41,11,15),(42,'2023-08-07',42,42,12,15),(43,'2023-03-13',43,43,3,10),(44,'2023-09-27',44,44,4,2),(45,'2023-01-14',45,45,5,14),(46,'2023-08-16',46,46,6,20),(47,'2023-02-18',47,47,7,10),(48,'2023-09-02',48,48,8,2),(49,'2023-03-20',49,49,9,1),(50,'2023-07-30',50,50,1,20),(51,'2023-12-02',51,51,3,7),(52,'2023-12-02',52,52,9,5),(53,'2023-12-02',53,53,4,3),(54,'2023-12-02',54,54,2,7),(55,'2023-12-02',55,55,1,1),(56,'2023-12-02',56,56,6,4),(57,'2023-12-02',57,57,8,9),(58,'2023-12-02',58,58,5,5);
/*!40000 ALTER TABLE `Orden` ENABLE KEYS */;
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
