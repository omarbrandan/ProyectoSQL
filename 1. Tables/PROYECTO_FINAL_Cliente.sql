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
-- Table structure for table `Cliente`
--

DROP TABLE IF EXISTS `Cliente`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `Cliente` (
  `ClienteID` int NOT NULL AUTO_INCREMENT COMMENT 'Clave primaria',
  `Nombre` varchar(100) NOT NULL COMMENT 'Nombre cliente',
  `Apellido` varchar(100) NOT NULL COMMENT 'Apellido cliente',
  `Email` varchar(100) DEFAULT NULL,
  `Telefono` varchar(10) NOT NULL,
  `CP` varchar(10) DEFAULT NULL,
  `Edad` int DEFAULT NULL,
  `Sexo` enum('Female','Male','Non-binary','Polygender','Genderqueer','Bigender') DEFAULT NULL,
  PRIMARY KEY (`ClienteID`)
) ENGINE=InnoDB AUTO_INCREMENT=51 DEFAULT CHARSET=latin1 COMMENT='tabla de clientes';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `Cliente`
--

LOCK TABLES `Cliente` WRITE;
/*!40000 ALTER TABLE `Cliente` DISABLE KEYS */;
INSERT INTO `Cliente` VALUES (1,'Amelita','Castiblanco','acastiblanco0@bing.com','9161389980','35650-000',64,'Female'),(2,'Jard','Templeton','jtempleton1@ameblo.jp','4055298114','981 22',55,'Male'),(3,'Elora','Weadick','eweadick2@google.de','5154818288',NULL,97,'Female'),(4,'Grenville','Vicioso','gvicioso3@ca.gov','9997241277',NULL,48,'Male'),(5,'Padgett','Mixon','pmixon4@posterous.com','6522437898','999-0601',25,'Male'),(6,'Danit','Wreak','dwreak5@microsoft.com','9606752212','44300-000',67,'Female'),(7,'Egbert','Consadine','econsadine6@uiuc.edu','3071548340',NULL,58,'Male'),(8,'Pincus','Ochterlony','pochterlony7@blinklist.com','6063559205',NULL,25,'Non-binary'),(9,'Cecil','Osbourne','cosbourne8@scientificamerican.com','6633322110',NULL,92,'Male'),(10,'Sydney','Mayhou','smayhou9@elegantthemes.com','1528037912',NULL,1,'Male'),(11,'Audie','Prestedge','aprestedgea@go.com','3773246546','MD-3652',69,'Female'),(12,'Avie','Bull','abullb@spotify.com','3191285063','5856',32,'Female'),(13,'Adham','Hellen','ahellenc@arstechnica.com','5589161307',NULL,26,'Male'),(14,'Doralynn','Letixier','dletixierd@soundcloud.com','3389932021',NULL,73,'Female'),(15,'Caldwell','Prettyjohn','cprettyjohne@mapy.cz','9339968379',NULL,45,'Male'),(16,'Ansell','Spiniello','aspiniellof@storify.com','6925076038',NULL,71,'Male'),(17,'Patten','Backshaw','pbackshawg@elpais.com','2899994740','6700',99,'Polygender'),(18,'Cherri','Mc Elory','cmceloryh@nifty.com','7127563489',NULL,65,'Female'),(19,'Randee','Dellenbroker','rdellenbrokeri@webs.com','5829708510','22501',56,'Female'),(20,'Shamus','McIan','smcianj@narod.ru','8046834714',NULL,49,'Male'),(21,'Joey','Huonic','jhuonick@statcounter.com','9773525885','055018',96,'Male'),(22,'Khalil','Amiranda','kamirandal@newsvine.com','4454611146','11920-000',87,'Bigender'),(23,'Dickie','Hannent','dhannentm@nymag.com','6419018206','385129',43,'Male'),(24,'Joela','Le Count','jlecountn@ustream.tv','7749504734','411 12',77,'Female'),(25,'Federica','Brend','fbrendo@umn.edu','4345244797',NULL,34,'Female'),(26,'Edyth','Novello','enovellop@dailymail.co.uk','3045500989',NULL,18,'Female'),(27,'Ruth','Geelan','rgeelanq@edublogs.org','8432748461','29424',63,'Female'),(28,'Hedi','Challener','hchallenerr@myspace.com','1632521817',NULL,50,'Polygender'),(29,'Gaby','Dougharty','gdoughartys@ca.gov','2507361925',NULL,65,'Female'),(30,'Stanfield','Richford','srichfordt@addthis.com','1731269715',NULL,33,'Male'),(31,'Lanie','Chrystal','lchrystalu@admin.ch','6766928162',NULL,79,'Male'),(32,'Ring','Forsdyke','rforsdykev@twitter.com','5611859038','347502',89,'Male'),(33,'Gill','Wollaston','gwollastonw@forbes.com','6763370072',NULL,38,'Polygender'),(34,'Homere','Duckering','hduckeringx@princeton.edu','6596222237','450049',9,'Male'),(35,'Teddi','Zanetti','tzanettiy@loc.gov','4511159194','531 93',76,'Female'),(36,'Renata','Baudin','rbaudinz@biglobe.ne.jp','3758404713',NULL,11,'Polygender'),(37,'Mahalia','Roebottom','mroebottom10@ask.com','1933967584','19600-000',26,'Female'),(38,'Joleen','Nannoni','jnannoni11@nytimes.com','5106963572','38190-000',24,'Female'),(39,'Elbertina','Beare','ebeare12@uiuc.edu','1887878379',NULL,47,'Female'),(40,'Kiah','Swalteridge','kswalteridge13@myspace.com','3256098573','4755-463',98,'Female'),(41,'Della','Facchini','dfacchini14@wired.com','3116565803','62600-000',44,'Genderqueer'),(42,'Kata','Hammerman','khammerman15@hostgator.com','4617965686','58353',54,'Female'),(43,'Lalo','Bumpas','lbumpas16@ezinearticles.com','2845821107',NULL,62,'Male'),(44,'Meredithe','Pinnington','mpinnington17@cocolog-nifty.com','2435353057','397440',46,'Female'),(45,'Salvidor','Stive','sstive18@joomla.org','5961135604','78-410',34,'Male'),(46,'Peyter','Juszkiewicz','pjuszkiewicz19@usa.gov','7478145384',NULL,81,'Male'),(47,'Trefor','Nathan','tnathan1a@cam.ac.uk','3729031424','4600-758',22,'Male'),(48,'Christophorus','Dyka','cdyka1b@pcworld.com','5047477734',NULL,38,'Male'),(49,'Julia','Mullinder','jmullinder1c@aboutads.info','2414357854','3730',87,'Female'),(50,'Tomás','Eschelle','teschelle1d@gizmodo.com','2379768420','1000-005',91,'Male');
/*!40000 ALTER TABLE `Cliente` ENABLE KEYS */;
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
