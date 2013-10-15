-- MySQL dump 10.13  Distrib 5.6.14, for osx10.7 (x86_64)
--
-- Host: localhost    Database: efecto_led
-- ------------------------------------------------------
-- Server version	5.6.14

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
-- Table structure for table `led_articulos`
--

DROP TABLE IF EXISTS `led_articulos`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `led_articulos` (
  `id_articulo` int(11) NOT NULL AUTO_INCREMENT,
  `codigo_interno` varchar(45) NOT NULL,
  `descripcion` varchar(255) NOT NULL,
  `marca_fabricante` varchar(255) NOT NULL,
  `modelo` varchar(255) NOT NULL,
  `observaciones` varchar(255) NOT NULL,
  PRIMARY KEY (`id_articulo`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `led_articulos`
--

LOCK TABLES `led_articulos` WRITE;
/*!40000 ALTER TABLE `led_articulos` DISABLE KEYS */;
/*!40000 ALTER TABLE `led_articulos` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `led_clientes`
--

DROP TABLE IF EXISTS `led_clientes`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `led_clientes` (
  `id_cliente` int(11) NOT NULL AUTO_INCREMENT,
  `id_datos` int(11) NOT NULL,
  PRIMARY KEY (`id_cliente`),
  KEY `fk_led_cliente_led_datos1_idx` (`id_datos`),
  CONSTRAINT `fk_led_cliente_led_datos1` FOREIGN KEY (`id_datos`) REFERENCES `led_datos` (`id_datos`) ON DELETE CASCADE ON UPDATE NO ACTION
) ENGINE=InnoDB AUTO_INCREMENT=10 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `led_clientes`
--

LOCK TABLES `led_clientes` WRITE;
/*!40000 ALTER TABLE `led_clientes` DISABLE KEYS */;
INSERT INTO `led_clientes` VALUES (1,1),(2,2),(3,3),(4,4),(5,5),(6,6),(7,7),(8,8),(9,9);
/*!40000 ALTER TABLE `led_clientes` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `led_datos`
--

DROP TABLE IF EXISTS `led_datos`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `led_datos` (
  `id_datos` int(11) NOT NULL AUTO_INCREMENT,
  `numero_cuil` varchar(45) NOT NULL,
  `razon_social` varchar(45) NOT NULL,
  `direccion` varchar(45) NOT NULL,
  `codigo_postal` varchar(45) NOT NULL,
  `telefono_principal` varchar(45) NOT NULL,
  `correo_electronico_principal` varchar(45) NOT NULL,
  `sitio_web` varchar(45) DEFAULT NULL,
  `estado` tinyint(4) NOT NULL DEFAULT '0' COMMENT '0 = desactivado / 1 = habilitado',
  PRIMARY KEY (`id_datos`)
) ENGINE=InnoDB AUTO_INCREMENT=25 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `led_datos`
--

LOCK TABLES `led_datos` WRITE;
/*!40000 ALTER TABLE `led_datos` DISABLE KEYS */;
INSERT INTO `led_datos` VALUES (1,'1111111111','Razon Social cliente1','Dirección cliente1','1','2664111111','emailcliente1@tpe.com','http://cliente1.com',1),(2,'2222222222','Razon Social cliente2','Dirección cliente2','2','2664222222','emailcliente2@tpe.com','http://cliente2.com',1),(3,'3333333333','Razon Social cliente3','Dirección cliente3','3','2664333333','emailcliente3@tpe.com','http://cliente3.com',1),(4,'4444444444','Razon Social cliente4','Dirección cliente4','4','2664444444','emailcliente4@tpe.com','http://cliente4.com',1),(5,'5555555555','Razon Social cliente5','Dirección cliente5','5','2664555555','emailcliente5@tpe.com','http://cliente5.com',1),(6,'6666666666','Razon Social cliente6','Dirección cliente6','6','2664666666','emailcliente6@tpe.com','http://cliente6.com',1),(7,'7777777777','Razon Social cliente7','Dirección cliente7','7','2664777777','emailcliente7@tpe.com','http://cliente7.com',1),(8,'8888888888','Razon Social cliente8','Dirección cliente8','8','2664888888','emailcliente8@tpe.com','http://cliente8.com',1),(9,'9999999999','Razon Social cliente9','Dirección cliente9','9','2664999999','emailcliente9@tpe.com','http://cliente9.com',1),(10,'1000000000','Razon Social proveedor1','Dirección proveedor1','10','2657111111','emailproveedor1@tpe.com','http://proveedor1.com',1),(11,'20000000000','Razon Social proveedor2','Dirección proveedor2','20','2657222222','emailproovedor2@tpe.com','http://proveedor2.com',1),(12,'3000000000','Razon Social proveedor3','Dirección proveedor3','30','2657333333','emailproveedor3@tpe.com','http://proveedor3.com',1),(13,'4000000000','Razon Social proveedor4','Dirección proveedor4','40','2657444444','emailproveedor4@tpe.com','http://proveedor4.com',1),(14,'5000000000','Razon Social proveedor5','Dirección proveedor5','50','2657555555','emailproveedor5@tpe.com','http://proveedor5.com',1),(15,'6000000000','Razon Social proveedor6','Dirección proveedor6','60','2657666666','emailproveedor6@tpe.com','http://proveedor6.com',1),(16,'7000000000','Razon Social proveedor7','Dirección proveedor7','70','2657777777','emailproveedor7@tpe.com','http://proveedor7.com',1),(17,'1111110000','Razon Social tercero1','Dirección tercero1','9911','9999111111','emailtercero1@tpe.com','http://tercero1.ar',1),(18,'2222220000','tercero2','Dirección tercero2','9922','9999222222','emailtercero2@tpe.com','http://tercero2.ar',1),(19,'3333330000','Razon Social tercero3','Dirección tercero3','9933','9999333333','emailtercero3@tpe.com','http://tercero3.ar',1),(20,'4444440000','Razon Social tercero4','Dirección tercero4','9944','9999444444','emailtercero4@tpe.com','http://tercero4.ar',1),(21,'5555550000','Razon Social tercero5','Dirección tercero5','9955','9999555555','emailtercero5@tpe.com','http://tercero5.ar',1),(22,'6666660000','Razon Social tercero6','Dirección tercero6','9966','9999666666','emailtercero6@tpe.com','http://tercero6.ar',1),(23,'7777770000','Razon Social tercero7','Dirección tercero7','9977','9999777777','emailtercero7@tpe.com','http://tercero7.ar',1),(24,'8888880000','Razon Social tercero8','Dirección tercero8','9988','9999888888','emailtercero8@tpe.com','http://tercero8.ar',1);
/*!40000 ALTER TABLE `led_datos` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `led_integrantes`
--

DROP TABLE IF EXISTS `led_integrantes`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `led_integrantes` (
  `id_integrantes` int(11) NOT NULL AUTO_INCREMENT,
  `nombre` varchar(45) NOT NULL,
  `area` varchar(45) NOT NULL,
  `telefono` varchar(45) NOT NULL,
  `correo_electronico` varchar(45) NOT NULL,
  `id_proveedor` int(11) NOT NULL,
  PRIMARY KEY (`id_integrantes`),
  KEY `tienen` (`id_proveedor`),
  CONSTRAINT `tienen` FOREIGN KEY (`id_proveedor`) REFERENCES `led_proveedores` (`id_proveedores`) ON DELETE CASCADE ON UPDATE NO ACTION
) ENGINE=InnoDB AUTO_INCREMENT=11 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `led_integrantes`
--

LOCK TABLES `led_integrantes` WRITE;
/*!40000 ALTER TABLE `led_integrantes` DISABLE KEYS */;
INSERT INTO `led_integrantes` VALUES (1,'int1prov1','area_int1prov1','2657111111','int1prov1@o',1),(2,'int2prov1','area_int2prov1','2657111111','int2prov1@o',1),(3,'int3prov1','area_int3prov1','2657222222','int3prov1@o',1),(4,'int1prov2','area_int1prov2','2657333333','int1prov2@o',2),(5,'int2prov2','area_int1prov2','2657444444','int1prov2@o',2),(6,'int1prov4','area_int1prov4','2657444444','int1prov4@o.com',4),(7,'int2prov4','area_int2prov4','2657444444','int2prov4@o.com',4),(8,'int3prov4','area_int3prov4','2657764823','int3prov4@lala.com',4),(9,'int1prov7','area_int1prov7','351777777','int1prov7@tpe.com',7),(10,'int2prov7','area_int2prov7','351777772','int2prov7@tpe7.u',7);
/*!40000 ALTER TABLE `led_integrantes` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `led_participa`
--

DROP TABLE IF EXISTS `led_participa`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `led_participa` (
  `id_terceros` int(11) NOT NULL,
  `id_trabajos` int(11) NOT NULL,
  `costo_prestacion` float DEFAULT '0',
  `descripcion_trabajo_realizado` varchar(255) NOT NULL,
  PRIMARY KEY (`id_terceros`,`id_trabajos`),
  KEY `fk_led_participa_led_terceros1_idx` (`id_terceros`),
  KEY `fk_led_participa_led_trabajos1_idx` (`id_trabajos`),
  CONSTRAINT `fk_led_participa_led_terceros1` FOREIGN KEY (`id_terceros`) REFERENCES `led_terceros` (`id_terceros`) ON DELETE CASCADE ON UPDATE NO ACTION,
  CONSTRAINT `fk_led_participa_led_trabajos1` FOREIGN KEY (`id_trabajos`) REFERENCES `led_trabajos` (`id_trabajos`) ON DELETE CASCADE ON UPDATE NO ACTION
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `led_participa`
--

LOCK TABLES `led_participa` WRITE;
/*!40000 ALTER TABLE `led_participa` DISABLE KEYS */;
/*!40000 ALTER TABLE `led_participa` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `led_proveedores`
--

DROP TABLE IF EXISTS `led_proveedores`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `led_proveedores` (
  `id_proveedores` int(11) NOT NULL AUTO_INCREMENT,
  `id_datos` int(11) NOT NULL,
  PRIMARY KEY (`id_proveedores`),
  KEY `fk_led_proveedores_led_datos_idx` (`id_datos`),
  CONSTRAINT `fk_led_proveedores_led_datos` FOREIGN KEY (`id_datos`) REFERENCES `led_datos` (`id_datos`) ON DELETE CASCADE ON UPDATE NO ACTION
) ENGINE=InnoDB AUTO_INCREMENT=8 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `led_proveedores`
--

LOCK TABLES `led_proveedores` WRITE;
/*!40000 ALTER TABLE `led_proveedores` DISABLE KEYS */;
INSERT INTO `led_proveedores` VALUES (1,10),(2,11),(3,12),(4,13),(5,14),(6,15),(7,16);
/*!40000 ALTER TABLE `led_proveedores` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `led_provistos`
--

DROP TABLE IF EXISTS `led_provistos`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `led_provistos` (
  `id_articulos` int(11) NOT NULL,
  `id_proveedores` int(11) NOT NULL,
  `id_trabajos` int(11) NOT NULL,
  `codigo_catalogo_proveedor` varchar(45) NOT NULL,
  `cantidad_articulos` float NOT NULL DEFAULT '0',
  `costo_unitario` float NOT NULL DEFAULT '0',
  PRIMARY KEY (`id_articulos`,`id_proveedores`,`id_trabajos`),
  KEY `fk_led_provistos_led_articulos1_idx` (`id_articulos`),
  KEY `fk_led_provistos_led_proveedores1_idx` (`id_proveedores`),
  KEY `fk_led_provistos_led_trabajos1_idx` (`id_trabajos`),
  CONSTRAINT `fk_led_provistos_led_trabajos1` FOREIGN KEY (`id_trabajos`) REFERENCES `led_trabajos` (`id_trabajos`) ON DELETE CASCADE ON UPDATE NO ACTION,
  CONSTRAINT `fk_led_provistos_led_articulos1` FOREIGN KEY (`id_articulos`) REFERENCES `led_articulos` (`id_articulo`) ON DELETE CASCADE ON UPDATE NO ACTION,
  CONSTRAINT `fk_led_provistos_led_proveedores1` FOREIGN KEY (`id_proveedores`) REFERENCES `led_proveedores` (`id_proveedores`) ON DELETE CASCADE ON UPDATE NO ACTION
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `led_provistos`
--

LOCK TABLES `led_provistos` WRITE;
/*!40000 ALTER TABLE `led_provistos` DISABLE KEYS */;
/*!40000 ALTER TABLE `led_provistos` ENABLE KEYS */;
UNLOCK TABLES;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8 */ ;
/*!50003 SET character_set_results = utf8 */ ;
/*!50003 SET collation_connection  = utf8_general_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'STRICT_TRANS_TABLES' */ ;
DELIMITER ;;
/*!50003 CREATE*/ /*!50017 DEFINER=`root`@`localhost`*/ /*!50003 TRIGGER `after_insert_provistos` AFTER INSERT ON `led_provistos` FOR EACH ROW BEGIN

		SET @jobId = NEW.id_trabajos;

		SET @total = 0;

		SELECT SUM(s.costo) into @total
		FROM(
			SELECT (p.costo_unitario * p.cantidad_articulos) as costo
		    FROM led_provistos p
		    WHERE p.id_trabajos = @jobId) s;

		UPDATE led_trabajos t 
		SET t.precio_articulos = @total
		WHERE t.id_trabajos = @jobId;

	END */;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8 */ ;
/*!50003 SET character_set_results = utf8 */ ;
/*!50003 SET collation_connection  = utf8_general_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'STRICT_TRANS_TABLES' */ ;
DELIMITER ;;
/*!50003 CREATE*/ /*!50017 DEFINER=`root`@`localhost`*/ /*!50003 TRIGGER `after_update_provistos` AFTER UPDATE ON `led_provistos` FOR EACH ROW BEGIN

		SET @jobId = OLD.id_trabajos;

		SET @total = 0;

		SELECT SUM(s.costo) into @total
		FROM(
			SELECT (p.costo_unitario * p.cantidad_articulos) as costo
		    FROM led_provistos p
		    WHERE p.id_trabajos = @jobId) s;

		UPDATE led_trabajos t 
		SET t.precio_articulos = @total
		WHERE t.id_trabajos = @jobId;

	END */;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8 */ ;
/*!50003 SET character_set_results = utf8 */ ;
/*!50003 SET collation_connection  = utf8_general_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'STRICT_TRANS_TABLES' */ ;
DELIMITER ;;
/*!50003 CREATE*/ /*!50017 DEFINER=`root`@`localhost`*/ /*!50003 TRIGGER `after_delete_provistos` AFTER DELETE ON `led_provistos` FOR EACH ROW BEGIN

		SET @jobId = OLD.id_trabajos;

		SET @total = 0;

		SELECT SUM(s.costo) into @total
		FROM(
			SELECT (p.costo_unitario * p.cantidad_articulos) as costo
		    FROM led_provistos p
		    WHERE p.id_trabajos = @jobId) s;

		UPDATE led_trabajos t 
		SET t.precio_articulos = @total
		WHERE t.id_trabajos = @jobId;

	END */;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;

--
-- Table structure for table `led_terceros`
--

DROP TABLE IF EXISTS `led_terceros`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `led_terceros` (
  `id_terceros` int(11) NOT NULL AUTO_INCREMENT,
  `id_datos` int(11) NOT NULL,
  PRIMARY KEY (`id_terceros`),
  KEY `fk_led_terceros_led_datos1_idx` (`id_datos`),
  CONSTRAINT `fk_led_terceros_led_datos1` FOREIGN KEY (`id_datos`) REFERENCES `led_datos` (`id_datos`) ON DELETE CASCADE ON UPDATE NO ACTION
) ENGINE=InnoDB AUTO_INCREMENT=9 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `led_terceros`
--

LOCK TABLES `led_terceros` WRITE;
/*!40000 ALTER TABLE `led_terceros` DISABLE KEYS */;
INSERT INTO `led_terceros` VALUES (1,17),(2,18),(3,19),(4,20),(5,21),(6,22),(7,23),(8,24);
/*!40000 ALTER TABLE `led_terceros` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `led_trabajos`
--

DROP TABLE IF EXISTS `led_trabajos`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `led_trabajos` (
  `id_trabajos` int(11) NOT NULL AUTO_INCREMENT,
  `descripcion` varchar(255) NOT NULL,
  `fecha_creacion` datetime NOT NULL,
  `fecha_aprobacion_presupuesto` datetime DEFAULT NULL,
  `fecha_inicio_obra` datetime DEFAULT NULL,
  `fecha_fin_obra` datetime DEFAULT NULL,
  `precio_total` float NOT NULL DEFAULT '0',
  `precio_mano_obra` float NOT NULL DEFAULT '0',
  `precio_articulos` float NOT NULL DEFAULT '0',
  `id_cliente` int(11) NOT NULL,
  PRIMARY KEY (`id_trabajos`),
  KEY `solicita` (`id_cliente`),
  CONSTRAINT `solicita` FOREIGN KEY (`id_cliente`) REFERENCES `led_clientes` (`id_cliente`) ON DELETE CASCADE ON UPDATE NO ACTION
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `led_trabajos`
--

LOCK TABLES `led_trabajos` WRITE;
/*!40000 ALTER TABLE `led_trabajos` DISABLE KEYS */;
/*!40000 ALTER TABLE `led_trabajos` ENABLE KEYS */;
UNLOCK TABLES;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8 */ ;
/*!50003 SET character_set_results = utf8 */ ;
/*!50003 SET collation_connection  = utf8_general_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'STRICT_TRANS_TABLES' */ ;
DELIMITER ;;
/*!50003 CREATE*/ /*!50017 DEFINER=`root`@`localhost`*/ /*!50003 TRIGGER `before_insert_trabajos` BEFORE INSERT ON `led_trabajos` FOR EACH ROW BEGIN

		SET NEW.precio_total = NEW.precio_mano_obra + NEW.precio_articulos;

	END */;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8 */ ;
/*!50003 SET character_set_results = utf8 */ ;
/*!50003 SET collation_connection  = utf8_general_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'STRICT_TRANS_TABLES' */ ;
DELIMITER ;;
/*!50003 CREATE*/ /*!50017 DEFINER=`root`@`localhost`*/ /*!50003 TRIGGER `before_update_trabajos` BEFORE UPDATE ON `led_trabajos` FOR EACH ROW BEGIN

		SET NEW.precio_total = NEW.precio_mano_obra + NEW.precio_articulos;

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

-- Dump completed on 2013-10-14 23:31:43
