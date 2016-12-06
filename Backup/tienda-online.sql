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
  `descripcion` int(60) DEFAULT NULL,
  PRIMARY KEY (`_id_categoria`)
) ENGINE=MyISAM AUTO_INCREMENT=3 DEFAULT CHARSET=latin1 COMMENT='categoria de videojuegos';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `categoria`
--

LOCK TABLES `categoria` WRITE;
/*!40000 ALTER TABLE `categoria` DISABLE KEYS */;
INSERT INTO `categoria` VALUES (1,'Acción',NULL),(2,'Estratégia',NULL);
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
  PRIMARY KEY (`_id_cliente`),
  UNIQUE KEY `email` (`email`)
) ENGINE=MyISAM AUTO_INCREMENT=42 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `cliente`
--

LOCK TABLES `cliente` WRITE;
/*!40000 ALTER TABLE `cliente` DISABLE KEYS */;
INSERT INTO `cliente` VALUES (17,'jhon@hotmail.com','1992-05-17','colombia','lan','lan'),(22,'jhon@mis','4444-04-04','SA','K','K'),(21,'client@hotmail.com','1993-03-14','colombia','LAN','L+'),(23,'kk@hotmail.com','1111-02-14','l','l','l'),(27,'filubels@misena.edu.co','1979-01-01','Colombia','Distrito Capital','Bogotá'),(28,'pp@s','0000-00-00','22','2','2'),(29,'jj@p','2001-05-14','DS','D','D'),(30,'jjiii@ws','2210-05-14','15','dd','d'),(31,'qyu@mi','1411-02-14','sq','qe',''),(32,'qyu@mie','1411-02-14','sq','qe',''),(33,'qye@asd','0222-05-14','sasd','dw',''),(34,'qye@asdfd','0222-05-14','sasd','dw','q'),(35,'ier@jok','0000-00-00','wqdewq','|dr','ws'),(36,'ier@joks','0000-00-00','wqdewq','|dr','ws'),(37,'jj@pq','0055-12-15','1','fewq','rfw'),(38,'Jjhon123@hot','1992-05-14','aq','s','a'),(39,'jj@ppJjhon123','0000-00-00','kj','k','k'),(40,'jj@ppp','0000-00-00','kj','k','k'),(41,'jhonn@hot','1992-07-21','colombia','lan','lan');
/*!40000 ALTER TABLE `cliente` ENABLE KEYS */;
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
) ENGINE=MyISAM DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `factura_detalle`
--

LOCK TABLES `factura_detalle` WRITE;
/*!40000 ALTER TABLE `factura_detalle` DISABLE KEYS */;
/*!40000 ALTER TABLE `factura_detalle` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `factura_encabezado`
--

DROP TABLE IF EXISTS `factura_encabezado`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `factura_encabezado` (
  `_id_factura` int(6) NOT NULL,
  `_id_cliente` int(5) NOT NULL,
  `fecha` date NOT NULL,
  `valor_total` double NOT NULL,
  `estado_activo` tinyint(1) NOT NULL,
  PRIMARY KEY (`_id_factura`),
  KEY `_id_cliente` (`_id_cliente`)
) ENGINE=MyISAM DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `factura_encabezado`
--

LOCK TABLES `factura_encabezado` WRITE;
/*!40000 ALTER TABLE `factura_encabezado` DISABLE KEYS */;
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
  `_id_stock` varchar(3) NOT NULL,
  PRIMARY KEY (`_id_juego`),
  KEY `_id_juego_id_categoria` (`_id_categoria`),
  KEY `_id_juego_id_stock` (`_id_stock`)
) ENGINE=MyISAM AUTO_INCREMENT=13 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `juego`
--

LOCK TABLES `juego` WRITE;
/*!40000 ALTER TABLE `juego` DISABLE KEYS */;
INSERT INTO `juego` VALUES (9,'heroes','rol','img/preview/heroes.jpg','img/banner/',100,'2016-10-15',0,' 1','1'),(4,'skyrim','rol','img/preview/4.jpg','img/banner/',200,'2016-09-14',0,' 2','1'),(5,'header','rol','img/preview/header.jpg','img/banner/',80,'2016-09-14',0,' 1','1'),(6,'wow','rol','img/preview/wow-box1.jpg','img/banner/',300,'2016-09-14',0,' 1','1'),(11,'luchamex','','img/preview/luchamex.png','img/banner/',400,'2016-10-15',0,' 1','1'),(10,'Diablo','rol','img/preview/diablo.JPG','img/banner/',200,'2016-10-15',0,' 1','1'),(12,'wow','rol','img/preview/wow-box1.jpg','',80,'2016-10-16',0,'','1');
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
) ENGINE=MyISAM AUTO_INCREMENT=45 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `user`
--

LOCK TABLES `user` WRITE;
/*!40000 ALTER TABLE `user` DISABLE KEYS */;
INSERT INTO `user` VALUES (35,'qyu@mie','$2y$10$Nbc.Cpdstz0dUYZAVYHmFOqhOL06nE1oXk2xdzY0bOZ4qZuVkFWbS','cliente'),(34,'qyu@mi','$2y$10$3zqqxMmEXwwW3Sw0u.LKMecuB8afgbjQaT/fjZKXKEcQkGSwYJEhy','cliente'),(33,'jjiii@ws','$2y$10$vOFWzCOrbEx1fyoNIUU.QuwwlB5gf5AZLQPlvmfomRtg92qCC3UEi','cliente'),(32,'jj@p','$2y$10$p5.zK78pxZkyq261KRI/rOBj7u2vudGCmBrjinW5JYkDXbKKNTnXu','cliente'),(31,'pp@s','$2y$10$KB.uFjfZZG.Rf.GQqrSrye1dwf8qL27JTS.mM7JS82wzL.2aL0twC','cliente'),(30,'filubels@misena.edu.co','$2y$10$zZXb.29Ek6rx9YLscLiXWu9Fo3iPpzE0uJ1Vv.QtUh7uoC9ogF20W','cliente'),(27,'jhon@mis','$2y$10$Ncqg9eD9Z7HCmUcy0dUQB.ontZM5xdU481j8pk.YLUxOhoGZIN4TC','cliente'),(28,'kk@hotmail.com','$2y$10$pvZ221wlvLAz2Rt8NHxW7esol5url5yncEo7goDWJ3MYCJ8QHMXly','cliente'),(22,'jhon@hotmail.com','$2y$10$CzwH848SN/JBgLML7ZnChuq45DE6FejZoKh0fzKJZAh/bbyZ3kLfC','admin'),(36,'qye@asd','$2y$10$yModvPFRQbQ212AUBNp5EOvFcEP4HmBZ4hpnNHF9ToBt4mRV8W5F.','cliente'),(37,'qye@asdfd','$2y$10$K3Md9mLu/tCCD1ekqrjsvu0yHuzBnZsb5.mV7RrLLmMlg1DYfrE2W','cliente'),(38,'ier@jok','$2y$10$bc4XauV2nYWhGATJb6AUkesuHbbxFddWIGMVrXSyUPoCZxETZPSBi','cliente'),(39,'ier@joks','$2y$10$dapYkhT8sF7vMEojXQm1a.GFmZOwGNczZrQC1L0ZSLAkwmiwxzdVW','cliente'),(40,'jj@pq','$2y$10$RrRWSMlY0DbQvWKXtZyF0ekSOfc4i19.UZNtTJKtub38.BSfjAeAi','cliente'),(41,'Jjhon123@hot','$2y$10$S4x2UV4ZcEE3T/WoX/rZKOYrcVWRony2pMq/yK5ARMzsZSeU1Kfgq','cliente'),(42,'jj@ppJjhon123','$2y$10$QaJF5B11TNy.EXRCWUHixOFDnI7B9xMuz0TLGuf2DgLbHESxU2rk6','cliente'),(43,'jj@ppp','$2y$10$/PDhZIrTGF5iiPad1WgAB.8AbK2ivzwN3SScL//JpUu/06b6g1Yuy','cliente'),(44,'jhonn@hot','$2y$10$884SHPS/OGmxAKtHwtIxOO5GD/qomvSkSo4PiNcVneFXYiOwUDhJ6','admin');
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

-- Dump completed on 2016-10-29 12:43:52
