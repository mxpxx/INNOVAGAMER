-- MySQL dump 10.16  Distrib 10.1.13-MariaDB, for Win32 (AMD64)
--
-- Host: localhost    Database: tienda-online
-- ------------------------------------------------------
-- Server version	10.1.13-MariaDB

/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8 */;
/*!40103 SET @OLD_TIME_ZONE=@@TIME_ZONE */;
/*!40103 SET TIME_ZONE='+00:00' */;
/*!40014 SET @OLD_UNIQUE_CHECKS=@@UNIQUE_CHECKS, UNIQUE_CHECKS=0 */;
/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;
/*!40111 SET @OLD_SQL_NOTES=@@SQL_NOTES, SQL_NOTES=0 */;

--
-- Table structure for table `categoria`
--

DROP TABLE IF EXISTS `categoria`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `categoria` (
  `_id_categoria` int(3) NOT NULL AUTO_INCREMENT,
  `nombre` varchar(50) NOT NULL,
  `descripcion` text,
  PRIMARY KEY (`_id_categoria`)
) ENGINE=MyISAM AUTO_INCREMENT=6 DEFAULT CHARSET=latin1 COMMENT='categoria de videojuegos';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `categoria`
--

LOCK TABLES `categoria` WRITE;
/*!40000 ALTER TABLE `categoria` DISABLE KEYS */;
INSERT INTO `categoria` VALUES (1,'Acción',NULL),(2,'Estratégia',NULL),(3,'qwer','0'),(4,'qer','0'),(5,'qerdsfds','qwerqwertt');
/*!40000 ALTER TABLE `categoria` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `cliente`
--

DROP TABLE IF EXISTS `cliente`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `cliente` (
  `_id_cliente` int(5) NOT NULL AUTO_INCREMENT,
  `email` varchar(30) NOT NULL,
  `fec_nac` date NOT NULL,
  `nacionalidad` varchar(30) NOT NULL,
  `region` varchar(30) NOT NULL,
  `ciudad` varchar(30) NOT NULL,
  `nombre` varchar(50) NOT NULL,
  `identificacion` varchar(15) NOT NULL,
  PRIMARY KEY (`_id_cliente`),
  UNIQUE KEY `email` (`email`)
) ENGINE=MyISAM AUTO_INCREMENT=52 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `cliente`
--

LOCK TABLES `cliente` WRITE;
/*!40000 ALTER TABLE `cliente` DISABLE KEYS */;
INSERT INTO `cliente` VALUES (48,'jhon@as','1111-05-14','asd','asd','asd','Jhon Perez','123456789'),(47,'jhon-pereza@hotmail.com','1992-05-14','LAN','LAN','LAN','',''),(46,'jhon-perez@hotmail.com','1992-05-14','LAN','LAN','LAN','',''),(49,'wakingthedemon7@hotmail.com','1995-08-07','Colombiano','Bogota DC','Bogota DC','',''),(50,'kimenux@gmail.com','1996-08-07','sdfsdf','kgk','kjhkjj','',''),(51,'qwe@sd','5222-02-14','sad','d','w','','');
/*!40000 ALTER TABLE `cliente` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `contacto`
--

DROP TABLE IF EXISTS `contacto`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `contacto` (
  `nombre` varchar(50) NOT NULL,
  `email` varchar(100) NOT NULL,
  `mensaje` text NOT NULL,
  `id_contacto` int(11) NOT NULL AUTO_INCREMENT,
  PRIMARY KEY (`id_contacto`)
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `contacto`
--

LOCK TABLES `contacto` WRITE;
/*!40000 ALTER TABLE `contacto` DISABLE KEYS */;
INSERT INTO `contacto` VALUES ('jhon','jhon@kak','hola. solicito información sobre  el juego wow legion.  ',1),('weq','wqe','weqewq',2);
/*!40000 ALTER TABLE `contacto` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `empresa`
--

DROP TABLE IF EXISTS `empresa`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `empresa` (
  `identificacion` varchar(25) NOT NULL,
  `razon_social` varchar(25) NOT NULL,
  `direccion` varchar(25) NOT NULL,
  `telefono` varchar(50) NOT NULL,
  `uploadedpreview` varchar(255) NOT NULL,
  `n_cuenta` varchar(12) NOT NULL,
  `sitio` varchar(50) NOT NULL,
  PRIMARY KEY (`identificacion`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `empresa`
--

LOCK TABLES `empresa` WRITE;
/*!40000 ALTER TABLE `empresa` DISABLE KEYS */;
INSERT INTO `empresa` VALUES ('12349595-0','innovaGamer','Bogotá Distrito Capital','3174563245','img/preview/logoblanco.png','884-8489932','www.innovaGamer.com');
/*!40000 ALTER TABLE `empresa` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `factura_detalle`
--

DROP TABLE IF EXISTS `factura_detalle`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `factura_detalle` (
  `cantidad` int(2) NOT NULL,
  `valor` double NOT NULL,
  `_id_juego` varchar(5) NOT NULL,
  `_id_factura` int(5) NOT NULL,
  `_id_detalle` int(6) NOT NULL AUTO_INCREMENT,
  PRIMARY KEY (`_id_detalle`),
  KEY `_id_juego` (`_id_juego`),
  KEY `_id_factura` (`_id_factura`)
) ENGINE=MyISAM AUTO_INCREMENT=42 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `factura_detalle`
--

LOCK TABLES `factura_detalle` WRITE;
/*!40000 ALTER TABLE `factura_detalle` DISABLE KEYS */;
INSERT INTO `factura_detalle` VALUES (1,300,'6',5,10),(1,300,'6',4,9),(1,700000,'15',4,8),(1,200,'4',4,7),(1,300,'6',4,6),(1,200,'4',5,11),(1,700000,'15',5,12),(1,300,'6',5,13),(1,300,'6',6,14),(1,200,'4',6,15),(1,700000,'15',6,16),(1,300,'6',6,17),(1,300,'6',7,18),(1,200,'4',7,19),(1,700000,'15',7,20),(1,300,'6',7,21),(1,300,'6',8,22),(1,200,'4',8,23),(1,700000,'15',8,24),(1,300,'6',8,25),(1,300,'6',9,26),(1,200,'4',9,27),(1,700000,'15',9,28),(1,300,'6',9,29),(1,300,'6',10,30),(1,200,'4',10,31),(1,700000,'15',10,32),(1,300,'6',10,33),(1,300,'6',11,34),(1,200,'4',11,35),(1,700000,'15',11,36),(1,300,'6',11,37),(1,300,'6',12,38),(1,200,'4',12,39),(1,700000,'15',12,40),(1,300,'6',12,41);
/*!40000 ALTER TABLE `factura_detalle` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `factura_encabezado`
--

DROP TABLE IF EXISTS `factura_encabezado`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `factura_encabezado` (
  `_id_factura` int(6) NOT NULL AUTO_INCREMENT,
  `_id_cliente` int(5) NOT NULL,
  `fecha` date NOT NULL,
  `valor_total` double NOT NULL,
  `estado` char(1) NOT NULL DEFAULT 'A',
  PRIMARY KEY (`_id_factura`),
  KEY `_id_cliente` (`_id_cliente`)
) ENGINE=MyISAM AUTO_INCREMENT=13 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `factura_encabezado`
--

LOCK TABLES `factura_encabezado` WRITE;
/*!40000 ALTER TABLE `factura_encabezado` DISABLE KEYS */;
INSERT INTO `factura_encabezado` VALUES (6,48,'2016-11-27',700800,'A'),(5,48,'2016-11-27',700800,'A'),(4,48,'2016-11-27',700800,'A'),(7,48,'2016-11-27',700800,'A'),(8,48,'2016-11-27',700800,'A'),(9,48,'2016-11-27',700800,'A'),(10,48,'2016-11-27',700800,'A'),(11,48,'2016-11-27',700800,'A'),(12,48,'2016-11-27',700800,'A');
/*!40000 ALTER TABLE `factura_encabezado` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `juego`
--

DROP TABLE IF EXISTS `juego`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `juego` (
  `_id_juego` int(5) NOT NULL AUTO_INCREMENT,
  `nombre` varchar(50) NOT NULL,
  `sinopsis` text NOT NULL,
  `img_preview` varchar(255) NOT NULL,
  `img_banner` varchar(255) NOT NULL,
  `valor` double NOT NULL,
  `fecha_entrada` date NOT NULL,
  `visitas` int(5) NOT NULL,
  `_id_categoria` varchar(3) NOT NULL,
  `stock` int(3) NOT NULL,
  PRIMARY KEY (`_id_juego`),
  KEY `_id_juego_id_categoria` (`_id_categoria`)
) ENGINE=MyISAM AUTO_INCREMENT=16 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `juego`
--

LOCK TABLES `juego` WRITE;
/*!40000 ALTER TABLE `juego` DISABLE KEYS */;
INSERT INTO `juego` VALUES (9,'heroes','rol','img/preview/heroes.jpg','img/banner/',100,'2016-10-15',0,' 1',1),(4,'skyrim','rol','img/preview/4.jpg','img/banner/',200,'2016-09-14',0,' 2',1),(5,'header','rol','img/preview/header.jpg','img/banner/',80000,'2016-09-14',0,'1',1),(6,'wow','rol','img/preview/wow-box1.jpg','img/banner/',300,'2016-09-14',0,' 1',1),(11,'luchamex','','img/preview/luchamex.png','img/banner/',400,'2016-10-15',0,' 1',1),(10,'Diablo','rol','img/preview/diablo.JPG','img/banner/',200,'2016-10-15',0,' 1',1),(15,'wqrew','rwq','img/preview/images.jpg','img/banner/',700000,'2016-11-20',0,' 2',1);
/*!40000 ALTER TABLE `juego` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `stock`
--

DROP TABLE IF EXISTS `stock`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `stock` (
  `_id_stock` int(3) NOT NULL AUTO_INCREMENT,
  `minimo` int(2) NOT NULL,
  `maximo` int(2) NOT NULL,
  PRIMARY KEY (`_id_stock`)
) ENGINE=MyISAM AUTO_INCREMENT=3 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `stock`
--

LOCK TABLES `stock` WRITE;
/*!40000 ALTER TABLE `stock` DISABLE KEYS */;
INSERT INTO `stock` VALUES (1,10,20),(2,20,35);
/*!40000 ALTER TABLE `stock` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `transaccion`
--

DROP TABLE IF EXISTS `transaccion`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `transaccion` (
  `_id_transaccion` int(5) NOT NULL AUTO_INCREMENT,
  `numero_transaccion` varchar(20) NOT NULL,
  `valor` double NOT NULL,
  `banco` varchar(20) NOT NULL,
  `cuenta_destino` varchar(20) NOT NULL,
  `_id_factura` int(5) NOT NULL,
  PRIMARY KEY (`_id_transaccion`),
  KEY `_id_factura` (`_id_factura`)
) ENGINE=MyISAM DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `transaccion`
--

LOCK TABLES `transaccion` WRITE;
/*!40000 ALTER TABLE `transaccion` DISABLE KEYS */;
/*!40000 ALTER TABLE `transaccion` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `user`
--

DROP TABLE IF EXISTS `user`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `user` (
  `_id_user` int(11) NOT NULL AUTO_INCREMENT,
  `email` varchar(50) NOT NULL,
  `contrasena` varchar(256) NOT NULL,
  `rol` varchar(10) NOT NULL,
  PRIMARY KEY (`_id_user`),
  UNIQUE KEY `email` (`email`)
) ENGINE=MyISAM AUTO_INCREMENT=55 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `user`
--

LOCK TABLES `user` WRITE;
/*!40000 ALTER TABLE `user` DISABLE KEYS */;
INSERT INTO `user` VALUES (54,'qwe@sd','$2y$10$iliRML989CKUH0xwQsCVpe4feBWeTGNnAj4TimPI5SNDOcLj8bMMm','cliente'),(53,'kimenux@gmail.com','$2y$10$tDMGI7dVTEkOAznTX/l/T.DMeQ8Z/1aUhpaVrJuoj8dZIPVRHbBPq','cliente'),(52,'wakingthedemon7@hotmail.com','$2y$10$Ghk1.zID44CE3S/KijXxqOUKvZ75Njk9ki6gJVKJ3j0AfM1bqJdxK','cliente'),(51,'jhon@as','$2y$10$mnaAl5.cOpAJO16CsP.ZR.DBfK5FQg8PTn3QGr6kzAFfK8l53OREi','cliente'),(50,'jhon-pereza@hotmail.com','$2y$10$cMbyMTOLTInK3aG4P090xeAUAHW4GgVWCNnAStG9E3F7CkqumH72a','user'),(49,'jhon-perez@hotmail.com','$2y$10$4M8o8G4bj0WzoRCZlVWzd.on8rpFFjaQpzuYFIMOk2jb0g1.vdQB.','admin');
/*!40000 ALTER TABLE `user` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `version`
--

DROP TABLE IF EXISTS `version`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `version` (
  `codigo` int(4) NOT NULL AUTO_INCREMENT,
  `nombre` varchar(50) NOT NULL,
  `_id_juego` int(5) NOT NULL,
  `img_preview` varchar(255) NOT NULL,
  `valor` double NOT NULL,
  `fecha_entrada` date NOT NULL,
  `existencia` int(4) NOT NULL,
  PRIMARY KEY (`codigo`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `version`
--

LOCK TABLES `version` WRITE;
/*!40000 ALTER TABLE `version` DISABLE KEYS */;
/*!40000 ALTER TABLE `version` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2016-11-27 14:51:11
