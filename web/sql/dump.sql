-- --------------------------------------------------------
-- Host:                         127.0.0.1
-- Versión del servidor:         5.5.27 - MySQL Community Server (GPL)
-- SO del servidor:              Win32
-- HeidiSQL Versión:             8.1.0.4545
-- --------------------------------------------------------

/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET NAMES utf8 */;
/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;

-- Volcando estructura de base de datos para efecto_led
DROP DATABASE IF EXISTS `efecto_led`;
CREATE DATABASE IF NOT EXISTS `efecto_led` /*!40100 DEFAULT CHARACTER SET utf8 */;
USE `efecto_led`;


-- Volcando estructura para tabla efecto_led.led_articulos
DROP TABLE IF EXISTS `led_articulos`;
CREATE TABLE IF NOT EXISTS `led_articulos` (
  `id_articulo` int(11) NOT NULL AUTO_INCREMENT,
  `codigo_interno` varchar(45) NOT NULL,
  `descripcion` varchar(255) NOT NULL,
  `marca_fabricante` varchar(255) NOT NULL,
  `modelo` varchar(255) NOT NULL,
  `observaciones` varchar(255) NOT NULL,
  PRIMARY KEY (`id_articulo`)
) ENGINE=InnoDB AUTO_INCREMENT=30 DEFAULT CHARSET=utf8;

-- Volcando datos para la tabla efecto_led.led_articulos: ~21 rows (aproximadamente)
/*!40000 ALTER TABLE `led_articulos` DISABLE KEYS */;
INSERT INTO `led_articulos` (`id_articulo`, `codigo_interno`, `descripcion`, `marca_fabricante`, `modelo`, `observaciones`) VALUES
	(1, 'asd', 'asd', 'asd', 'asd', 'asd'),
	(9, 'asd', 'asd', 'asd', 'asd', 'asd'),
	(10, 'asd', 'asd', 'asd', 'asd', 'asd'),
	(11, 'asd', 'asd', 'asd', 'asd', 'asd'),
	(12, 'asd', 'asd', 'asd', 'asd', 'asd'),
	(13, 'asd', 'asd', 'asd', 'asd', 'asd'),
	(14, 'asd', 'asd', 'asd', 'asd', 'asd'),
	(15, 'asd', 'asd', 'asd', 'asd', 'asd'),
	(16, 'asd', 'asd', 'asd', 'asd', 'asd'),
	(17, 'asd', 'asd', 'asd', 'asd', 'asd'),
	(18, 'asd', 'asd', 'asd', 'asd', 'asd'),
	(19, 'asd', 'asd', 'asd', 'asd', 'asd'),
	(20, 'asd', 'asd', 'asd', 'asd', 'asd'),
	(21, 'asd', 'asd', 'asd', 'asd', 'asd'),
	(23, 'asd', 'asd', 'asd', 'asd', 'asd'),
	(24, 'asdasd', 'asdasd', 'asdas', 'asdas', 'asdasd'),
	(25, 'asdasd', 'asdasd', 'asdas', 'asdas', 'asdasd'),
	(26, 'asdasd', 'asdasd', 'asdas', 'asdas', 'asdasd'),
	(27, 'asdasd', 'asdasd', 'asdas', 'asdas', 'asdasd'),
	(28, 'asdasd', 'asdasd', 'asdas', 'asdas', 'asdasd'),
	(29, 'asdasd', 'asdasd', 'asdas', 'asdas', 'asdasd'),
	(30, 'asda', 'asdsad', 'asdas', 'asdas', 'asdasdasd'),
	(31, 'asda', 'asdsad', 'asdas', 'asdas', 'asdasdasd'),
	(33, 'asda', 'asdsad', 'asdas', 'asdas', 'asdasdasd'),
	(34, 'asda', 'asdsad', 'asdas', 'asdas', 'asdasdasd'),
	(35, 'asda', 'asdsad', 'asdas', 'asdas', 'asdasdasd'),
	(36, 'asda', 'asdsad', 'asdas', 'asdas', 'asdasdasd');
/*!40000 ALTER TABLE `led_articulos` ENABLE KEYS */;


-- Volcando estructura para tabla efecto_led.led_clientes
DROP TABLE IF EXISTS `led_clientes`;
CREATE TABLE IF NOT EXISTS `led_clientes` (
  `id_cliente` int(11) NOT NULL AUTO_INCREMENT,
  `id_datos` int(11) NOT NULL,
  PRIMARY KEY (`id_cliente`),
  KEY `fk_led_cliente_led_datos1_idx` (`id_datos`),
  CONSTRAINT `fk_led_cliente_led_datos1` FOREIGN KEY (`id_datos`) REFERENCES `led_datos` (`id_datos`) ON DELETE CASCADE ON UPDATE NO ACTION
) ENGINE=InnoDB AUTO_INCREMENT=11 DEFAULT CHARSET=utf8;

-- Volcando datos para la tabla efecto_led.led_clientes: ~3 rows (aproximadamente)
/*!40000 ALTER TABLE `led_clientes` DISABLE KEYS */;
INSERT INTO `led_clientes` (`id_cliente`, `id_datos`) VALUES
	(7, 7),
	(8, 8),
	(9, 15);
/*!40000 ALTER TABLE `led_clientes` ENABLE KEYS */;


-- Volcando estructura para tabla efecto_led.led_datos
DROP TABLE IF EXISTS `led_datos`;
CREATE TABLE IF NOT EXISTS `led_datos` (
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
) ENGINE=InnoDB AUTO_INCREMENT=17 DEFAULT CHARSET=utf8;

-- Volcando datos para la tabla efecto_led.led_datos: ~6 rows (aproximadamente)
/*!40000 ALTER TABLE `led_datos` DISABLE KEYS */;
INSERT INTO `led_datos` (`id_datos`, `numero_cuil`, `razon_social`, `direccion`, `codigo_postal`, `telefono_principal`, `correo_electronico_principal`, `sitio_web`, `estado`) VALUES
	(7, '7', 'asdasda', '7', '7', '7', 'a@a.com.ar', 'http://www.com.ar', 1),
	(8, '8', '8', '8', '8', '8', '8', '8', 1),
	(9, '9', '9', '9', '9', '9', '9', '9', 1),
	(13, '123123', 'test', 'test 123', '5700', '2664863396', 'a@a.com.ar', 'http://www.example.com', 1),
	(14, '1234', 'test', 'test 123', '5700', '266486336', 'a@a.com.ar', 'http://www.com.ar', 1),
	(15, '123123', 'test', '123123', '12312', '12312', 'a@a.com.ar', 'http://www.com.ar', 1);
/*!40000 ALTER TABLE `led_datos` ENABLE KEYS */;


-- Volcando estructura para tabla efecto_led.led_integrantes
DROP TABLE IF EXISTS `led_integrantes`;
CREATE TABLE IF NOT EXISTS `led_integrantes` (
  `id_integrantes` int(11) NOT NULL AUTO_INCREMENT,
  `nombre` varchar(45) NOT NULL,
  `area` varchar(45) NOT NULL,
  `telefono` varchar(45) NOT NULL,
  `correo_electronico` varchar(45) NOT NULL,
  `id_proveedor` int(11) NOT NULL,
  PRIMARY KEY (`id_integrantes`),
  KEY `tienen` (`id_proveedor`),
  CONSTRAINT `tienen` FOREIGN KEY (`id_proveedor`) REFERENCES `led_proveedores` (`id_proveedores`) ON DELETE CASCADE ON UPDATE NO ACTION
) ENGINE=InnoDB AUTO_INCREMENT=25 DEFAULT CHARSET=utf8;

-- Volcando datos para la tabla efecto_led.led_integrantes: ~5 rows (aproximadamente)
/*!40000 ALTER TABLE `led_integrantes` DISABLE KEYS */;
INSERT INTO `led_integrantes` (`id_integrantes`, `nombre`, `area`, `telefono`, `correo_electronico`, `id_proveedor`) VALUES
	(14, '10', '10', '10', '10', 7),
	(15, '10', '10', '10', '10', 7),
	(16, '10', '10', '10', '10', 8),
	(17, '10', '10', '10', '10', 8),
	(18, '10', '10', '10', '10', 8);
/*!40000 ALTER TABLE `led_integrantes` ENABLE KEYS */;


-- Volcando estructura para tabla efecto_led.led_participa
DROP TABLE IF EXISTS `led_participa`;
CREATE TABLE IF NOT EXISTS `led_participa` (
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

-- Volcando datos para la tabla efecto_led.led_participa: ~1 rows (aproximadamente)
/*!40000 ALTER TABLE `led_participa` DISABLE KEYS */;
INSERT INTO `led_participa` (`id_terceros`, `id_trabajos`, `costo_prestacion`, `descripcion_trabajo_realizado`) VALUES
	(7, 16, 4534, 'eger');
/*!40000 ALTER TABLE `led_participa` ENABLE KEYS */;


-- Volcando estructura para tabla efecto_led.led_proveedores
DROP TABLE IF EXISTS `led_proveedores`;
CREATE TABLE IF NOT EXISTS `led_proveedores` (
  `id_proveedores` int(11) NOT NULL AUTO_INCREMENT,
  `id_datos` int(11) NOT NULL,
  PRIMARY KEY (`id_proveedores`),
  KEY `fk_led_proveedores_led_datos_idx` (`id_datos`),
  CONSTRAINT `fk_led_proveedores_led_datos` FOREIGN KEY (`id_datos`) REFERENCES `led_datos` (`id_datos`) ON DELETE CASCADE ON UPDATE NO ACTION
) ENGINE=InnoDB AUTO_INCREMENT=12 DEFAULT CHARSET=utf8;

-- Volcando datos para la tabla efecto_led.led_proveedores: ~3 rows (aproximadamente)
/*!40000 ALTER TABLE `led_proveedores` DISABLE KEYS */;
INSERT INTO `led_proveedores` (`id_proveedores`, `id_datos`) VALUES
	(7, 7),
	(8, 8),
	(11, 14);
/*!40000 ALTER TABLE `led_proveedores` ENABLE KEYS */;


-- Volcando estructura para tabla efecto_led.led_provistos
DROP TABLE IF EXISTS `led_provistos`;
CREATE TABLE IF NOT EXISTS `led_provistos` (
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

-- Volcando datos para la tabla efecto_led.led_provistos: ~1 rows (aproximadamente)
/*!40000 ALTER TABLE `led_provistos` DISABLE KEYS */;
INSERT INTO `led_provistos` (`id_articulos`, `id_proveedores`, `id_trabajos`, `codigo_catalogo_proveedor`, `cantidad_articulos`, `costo_unitario`) VALUES
	(1, 7, 14, 'Das', 0, 0),
	(23, 7, 14, 'asdasdasd', 123, 12.65),
	(31, 8, 58, 'null', 6, 19.5),
	(33, 8, 58, 'null', 6, 19.5),
	(34, 8, 58, 'null', 6, 19.5),
	(35, 8, 58, 'null', 6, 19.5),
	(36, 8, 58, 'null', 6, 19.5);
/*!40000 ALTER TABLE `led_provistos` ENABLE KEYS */;


-- Volcando estructura para tabla efecto_led.led_terceros
DROP TABLE IF EXISTS `led_terceros`;
CREATE TABLE IF NOT EXISTS `led_terceros` (
  `id_terceros` int(11) NOT NULL AUTO_INCREMENT,
  `id_datos` int(11) NOT NULL,
  PRIMARY KEY (`id_terceros`),
  KEY `fk_led_terceros_led_datos1_idx` (`id_datos`),
  CONSTRAINT `fk_led_terceros_led_datos1` FOREIGN KEY (`id_datos`) REFERENCES `led_datos` (`id_datos`) ON DELETE CASCADE ON UPDATE NO ACTION
) ENGINE=InnoDB AUTO_INCREMENT=16 DEFAULT CHARSET=utf8;

-- Volcando datos para la tabla efecto_led.led_terceros: ~4 rows (aproximadamente)
/*!40000 ALTER TABLE `led_terceros` DISABLE KEYS */;
INSERT INTO `led_terceros` (`id_terceros`, `id_datos`) VALUES
	(7, 7),
	(8, 8),
	(9, 9),
	(15, 13);
/*!40000 ALTER TABLE `led_terceros` ENABLE KEYS */;


-- Volcando estructura para tabla efecto_led.led_trabajos
DROP TABLE IF EXISTS `led_trabajos`;
CREATE TABLE IF NOT EXISTS `led_trabajos` (
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
) ENGINE=InnoDB AUTO_INCREMENT=59 DEFAULT CHARSET=utf8;

-- Volcando datos para la tabla efecto_led.led_trabajos: ~45 rows (aproximadamente)
/*!40000 ALTER TABLE `led_trabajos` DISABLE KEYS */;
INSERT INTO `led_trabajos` (`id_trabajos`, `descripcion`, `fecha_creacion`, `fecha_aprobacion_presupuesto`, `fecha_inicio_obra`, `fecha_fin_obra`, `precio_total`, `precio_mano_obra`, `precio_articulos`, `id_cliente`) VALUES
	(14, '1', '2013-10-08 21:08:36', '2013-10-08 21:08:37', '2013-10-08 21:08:38', '2013-10-08 21:08:38', 0, 0, 0, 7),
	(15, '1', '2013-10-08 21:08:36', '2013-10-08 21:08:37', '2013-10-08 21:08:38', '2013-10-08 21:08:38', 0, 0, 0, 7),
	(16, '1', '2013-10-08 21:08:36', '2013-10-08 21:08:37', '2013-10-08 21:08:38', '2013-10-08 21:08:38', 0, 0, 0, 8),
	(17, '1', '2013-10-08 21:08:36', '2013-10-08 21:08:37', '2013-10-08 21:08:38', '2013-10-08 21:08:38', 0, 0, 0, 8),
	(18, '1', '2013-10-08 21:08:36', '2013-10-08 21:08:37', '2013-10-08 21:08:38', '2013-10-08 21:08:38', 0, 0, 0, 8),
	(19, '1', '2013-10-08 21:08:36', '2013-10-08 21:08:37', '2013-10-08 21:08:38', '2013-10-08 21:08:38', 0, 0, 0, 8),
	(20, 'test', '2013-10-13 19:36:38', '2013-10-10 00:00:00', NULL, '2013-10-10 00:00:00', 0, 10, 0, 8),
	(21, 'test', '2013-10-13 19:36:45', '2013-10-10 00:00:00', NULL, '2013-10-10 00:00:00', 0, 10, 0, 8),
	(22, 'test', '2013-10-13 19:37:06', '2013-10-10 00:00:00', NULL, '2013-10-10 00:00:00', 0, 10, 0, 8),
	(23, 'asdasdasd', '2013-10-14 08:31:48', '2013-10-14 00:00:00', '2013-10-14 00:00:00', '2013-10-14 00:00:00', 0, 7.8, 0, 7),
	(24, 'asdasda', '2013-10-14 08:32:56', '2013-10-14 00:00:00', '2013-10-14 00:00:00', '2013-10-14 00:00:00', 0, 7.8, 0, 7),
	(25, 'sdasasd', '2013-10-14 08:34:28', '2013-10-14 00:00:00', '2013-10-14 00:00:00', '2013-10-14 00:00:00', 0, 4, 0, 7),
	(26, 'asdasdasd', '2013-10-14 08:36:45', '2013-10-14 00:00:00', '2013-10-14 00:00:00', '2013-10-14 00:00:00', 0, 7.8, 0, 7),
	(27, 'asdasdasd', '2013-10-14 08:42:16', '2013-10-14 00:00:00', '2013-10-14 00:00:00', '2013-10-14 00:00:00', 0, 11.9, 0, 7),
	(28, 'asdasdasdasdasd', '2013-10-14 08:43:45', '2013-10-14 00:00:00', '2013-10-14 00:00:00', '2013-10-14 00:00:00', 0, 6, 0, 7),
	(29, 'asdasd', '2013-10-14 08:54:31', '2013-10-14 00:00:00', '2013-10-14 00:00:00', '2013-10-14 00:00:00', 0, 5, 0, 7),
	(30, 'asdasdas', '2013-10-14 08:59:46', '2013-10-14 00:00:00', '2013-10-14 00:00:00', '2013-10-14 00:00:00', 0, 7, 0, 7),
	(31, 'asdasdasd', '2013-10-14 09:02:48', '2013-10-14 00:00:00', '2013-10-14 00:00:00', '2013-10-14 00:00:00', 0, 5, 0, 7),
	(32, 'asdasdasd', '2013-10-14 09:12:51', '2013-10-14 00:00:00', '2013-10-14 00:00:00', '2013-10-14 00:00:00', 0, 6, 0, 7),
	(33, 'asdasdasd', '2013-10-14 09:13:40', '2013-10-14 00:00:00', '2013-10-14 00:00:00', '2013-10-14 00:00:00', 0, 6, 0, 7),
	(34, 'asdasdas', '2013-10-14 09:14:37', '2013-10-14 00:00:00', '2013-10-14 00:00:00', '2013-10-14 00:00:00', 0, 6, 0, 7),
	(35, 'asdasdasdasdasdasd', '2013-10-14 09:16:03', '2013-10-14 00:00:00', '2013-10-14 00:00:00', '2013-10-14 00:00:00', 0, 7, 0, 7),
	(36, 'asdasdasd', '2013-10-14 09:17:22', '2013-10-14 00:00:00', '2013-10-14 00:00:00', '2013-10-14 00:00:00', 0, 4, 0, 7),
	(37, 'asdasdasdasdas', '2013-10-14 09:19:48', '2013-10-14 00:00:00', '2013-10-14 00:00:00', '2013-10-14 00:00:00', 0, 5, 0, 7),
	(38, 'asdasdas', '2013-10-14 09:21:02', '2013-10-14 00:00:00', '2013-10-14 00:00:00', '2013-10-14 00:00:00', 0, 4, 0, 7),
	(39, 'asdasdasdas', '2013-10-14 09:25:23', '2013-10-14 00:00:00', '2013-10-14 00:00:00', '2013-10-14 00:00:00', 0, 6, 0, 7),
	(40, 'asdada', '2013-10-14 09:28:23', '2013-10-14 00:00:00', '2013-10-14 00:00:00', '2013-10-14 00:00:00', 0, 3, 0, 7),
	(41, 'asdasdasdaasdasdas', '2013-10-14 09:45:05', '2013-10-14 00:00:00', '2013-10-14 00:00:00', '2013-10-14 00:00:00', 0, 3, 0, 7),
	(42, 'asdasds', '2013-10-14 09:51:02', '2013-10-14 00:00:00', '2013-10-14 00:00:00', '2013-10-14 00:00:00', 0, 4, 0, 7),
	(43, 'asdasdas', '2013-10-14 09:52:39', '2013-10-14 00:00:00', '2013-10-14 00:00:00', '2013-10-14 00:00:00', 0, 6, 0, 7),
	(44, 'asdasdasd', '2013-10-14 09:54:35', '2013-10-14 00:00:00', '2013-10-14 00:00:00', '2013-10-14 00:00:00', 0, 5, 0, 7),
	(45, 'asdasd', '2013-10-14 09:55:16', '2013-10-14 00:00:00', '2013-10-14 00:00:00', '2013-10-14 00:00:00', 0, 4, 0, 7),
	(46, 'asdasdasd', '2013-10-14 09:58:20', '2013-10-14 00:00:00', '2013-10-14 00:00:00', '2013-10-14 00:00:00', 0, 6, 0, 7),
	(47, 'asdasdas', '2013-10-14 09:59:33', '2013-10-14 00:00:00', '2013-10-14 00:00:00', '2013-10-14 00:00:00', 0, 4, 0, 7),
	(48, 'asdasdasd', '2013-10-14 10:00:48', '2013-10-14 00:00:00', '2013-10-14 00:00:00', '2013-10-14 00:00:00', 0, 4, 0, 7),
	(49, 'adasdasdsa', '2013-10-14 10:02:28', '2013-10-14 00:00:00', '2013-10-14 00:00:00', '2013-10-14 00:00:00', 0, 5, 0, 8),
	(50, 'asdasdas', '2013-10-14 10:07:23', '2013-10-14 00:00:00', '2013-10-14 00:00:00', '2013-10-14 00:00:00', 0, 5, 0, 7),
	(51, 'asdasdsa', '2013-10-14 10:15:00', '2013-10-14 00:00:00', '2013-10-14 00:00:00', '2013-10-14 00:00:00', 0, 5, 0, 7),
	(52, 'asdasdsa', '2013-10-14 10:15:47', '2013-10-14 00:00:00', '2013-10-14 00:00:00', '2013-10-14 00:00:00', 0, 5, 0, 7),
	(53, '\'asdasdsa\'', '2013-10-14 10:16:48', NULL, NULL, NULL, 0, 5, 0, 7),
	(54, 'adasdas', '2013-10-14 10:21:17', '2013-10-14 00:00:00', '2013-10-14 00:00:00', '2013-10-14 00:00:00', 0, 5, 0, 7),
	(55, 'adasdas', '2013-10-14 10:25:26', '2013-10-14 00:00:00', '2013-10-14 00:00:00', '2013-10-14 00:00:00', 0, 5, 0, 7),
	(56, 'asdasdas', '2013-10-14 10:27:27', '2013-10-14 00:00:00', '2013-10-14 00:00:00', '2013-10-14 00:00:00', 0, 4, 0, 7),
	(57, 'asdasdasdas', '2013-10-14 10:29:04', '2013-10-14 00:00:00', '2013-10-14 00:00:00', '2013-10-14 00:00:00', 0, 7, 0, 7),
	(58, 'asdasdasdasd', '2013-10-14 10:29:41', '2013-10-14 00:00:00', '2013-10-14 00:00:00', '2013-10-14 00:00:00', 0, 8, 0, 7);
/*!40000 ALTER TABLE `led_trabajos` ENABLE KEYS */;


-- Volcando estructura para procedimiento efecto_led.LED_cambiarEstadoDato
DROP PROCEDURE IF EXISTS `LED_cambiarEstadoDato`;
DELIMITER //
CREATE PROCEDURE `LED_cambiarEstadoDato`(


_id INT,
_estado TINYINT
)
BEGIN

UPDATE led_datos
SET
    estado = _estado
WHERE
    id_datos = _id
LIMIT 1;

select _id as id, _estado as estado;

END//
DELIMITER ;


-- Volcando estructura para procedimiento efecto_led.LED_crearArticulo
DROP PROCEDURE IF EXISTS `LED_crearArticulo`;
DELIMITER //
CREATE PROCEDURE `LED_crearArticulo`(


_codigo_interno VARCHAR(45),
_descripcion VARCHAR(255),
_marca_fabricante VARCHAR(255),
_modelo VARCHAR(255),
_observaciones VARCHAR(255)
)
BEGIN

INSERT INTO led_articulos
    (codigo_interno, descripcion, marca_fabricante, modelo, observaciones)
VALUES
    (_codigo_interno, _descripcion, _marca_fabricante, _modelo, _observaciones);

select LAST_INSERT_ID() as id;

END//
DELIMITER ;


-- Volcando estructura para procedimiento efecto_led.LED_crearDatos
DROP PROCEDURE IF EXISTS `LED_crearDatos`;
DELIMITER //
CREATE PROCEDURE `LED_crearDatos`(


_numero_cuil VARCHAR(45),
_razon_social VARCHAR(45),
_direccion VARCHAR(255),
_codigo_postal VARCHAR(45),
_telefono_principal VARCHAR(45),
_correo_electronico_principal VARCHAR(45),
_sitio_web VARCHAR(255),
_tipo INT,
_estado TINYINT
)
BEGIN

INSERT INTO `led_datos` (`numero_cuil`, `razon_social`, `direccion`, `codigo_postal`, `telefono_principal`, `correo_electronico_principal`, `sitio_web`, `estado`)
VALUES (_numero_cuil, _razon_social, _direccion, _codigo_postal, _telefono_principal, _correo_electronico_principal, _sitio_web, _estado);

case  
when _tipo = 0 then 
    INSERT INTO `led_proveedores` (`id_datos`) VALUES (LAST_INSERT_ID());
when _tipo = 1 then 
    INSERT INTO `led_clientes` (`id_datos`) VALUES (LAST_INSERT_ID());
when _tipo = 2 then 
    INSERT INTO `led_terceros` (`id_datos`) VALUES (LAST_INSERT_ID());
end case; 

select LAST_INSERT_ID() as id, _tipo as tipo;

END//
DELIMITER ;


-- Volcando estructura para procedimiento efecto_led.LED_crearIntegrante
DROP PROCEDURE IF EXISTS `LED_crearIntegrante`;
DELIMITER //
CREATE PROCEDURE `LED_crearIntegrante`(


_nombre VARCHAR(45),
_area VARCHAR(255),
_telefono VARCHAR(255),
_correo_electronico VARCHAR(255)
)
BEGIN

INSERT INTO 
led_integrantes
    (nombre, area, telefono, correo_electronico)
VALUES
    (_nombre, _area, _telefono, _correo_electronico);

END//
DELIMITER ;


-- Volcando estructura para procedimiento efecto_led.LED_crearTrabajo
DROP PROCEDURE IF EXISTS `LED_crearTrabajo`;
DELIMITER //
CREATE PROCEDURE `LED_crearTrabajo`(


_descripcion VARCHAR(45),
_fecha_aprobacion_presupuesto DATE,
_fecha_inicio_obra DATE,
_fecha_fin_obra DATE,
_precio_mano_obra FLOAT,
_id_cliente INT
)
BEGIN

INSERT INTO led_trabajos
    (descripcion, fecha_creacion, fecha_aprobacion_presupuesto, fecha_inicio_obra, fecha_fin_obra, precio_total, precio_mano_obra, precio_articulos, id_cliente)
VALUES
    (_descripcion, now(), _fecha_aprobacion_presupuesto, _fecha_inicio_obra, _fecha_fin_obra, 0, _precio_mano_obra, 0, _id_cliente);

select LAST_INSERT_ID() as id;

END//
DELIMITER ;


-- Volcando estructura para procedimiento efecto_led.LED_eliminarArticulo
DROP PROCEDURE IF EXISTS `LED_eliminarArticulo`;
DELIMITER //
CREATE PROCEDURE `LED_eliminarArticulo`(


_id INT
)
BEGIN

    DELETE FROM led_articulos
    WHERE id_articulo = _id
    LIMIT 1;

END//
DELIMITER ;


-- Volcando estructura para procedimiento efecto_led.LED_eliminarDatos
DROP PROCEDURE IF EXISTS `LED_eliminarDatos`;
DELIMITER //
CREATE PROCEDURE `LED_eliminarDatos`(


_id INT
)
BEGIN

    DELETE FROM led_datos
    WHERE id_datos = _id
    LIMIT 1;

END//
DELIMITER ;


-- Volcando estructura para procedimiento efecto_led.LED_eliminarIntegrante
DROP PROCEDURE IF EXISTS `LED_eliminarIntegrante`;
DELIMITER //
CREATE PROCEDURE `LED_eliminarIntegrante`(


_id INT
)
BEGIN

    DELETE FROM led_integrantes
    WHERE id_integrantes = _id
    LIMIT 1;

END//
DELIMITER ;


-- Volcando estructura para procedimiento efecto_led.LED_eliminarTrabajo
DROP PROCEDURE IF EXISTS `LED_eliminarTrabajo`;
DELIMITER //
CREATE PROCEDURE `LED_eliminarTrabajo`(


_id INT
)
BEGIN

    DELETE FROM led_trabajos WHERE  id_trabajos = _id;

END//
DELIMITER ;


-- Volcando estructura para procedimiento efecto_led.LED_listarArticulosPorTrabajo
DROP PROCEDURE IF EXISTS `LED_listarArticulosPorTrabajo`;
DELIMITER //
CREATE PROCEDURE `LED_listarArticulosPorTrabajo`(


_id INT
)
BEGIN

select a.*, p.* from led_articulos a
inner join led_provistos p on p.id_articulos = a.id_articulo
where p.id_trabajos = _id;

END//
DELIMITER ;


-- Volcando estructura para procedimiento efecto_led.LED_listarDatos
DROP PROCEDURE IF EXISTS `LED_listarDatos`;
DELIMITER //
CREATE PROCEDURE `LED_listarDatos`(


_tipo INT
)
BEGIN

case  
when _tipo = 0 then 
    select p.id_proveedores, d.* from led_datos d
	inner join led_proveedores p on d.id_datos = p.id_datos
	where d.estado = 1;
when _tipo = 1 then 
    select p.id_cliente, d.* from led_datos d
	inner join led_clientes p on d.id_datos = p.id_datos
	where d.estado = 1;
when _tipo = 2 then 
    select p.id_terceros, d.* from led_datos d
	inner join led_terceros p on d.id_datos = p.id_datos
	where d.estado = 1;
end case; 

END//
DELIMITER ;


-- Volcando estructura para procedimiento efecto_led.LED_listarIntegrantesPorProveedor
DROP PROCEDURE IF EXISTS `LED_listarIntegrantesPorProveedor`;
DELIMITER //
CREATE PROCEDURE `LED_listarIntegrantesPorProveedor`(


_id INT
)
BEGIN

select i.* from led_integrantes i
where i.id_proveedor = _id;

END//
DELIMITER ;


-- Volcando estructura para procedimiento efecto_led.LED_listarProveedoresPorArticulo
DROP PROCEDURE IF EXISTS `LED_listarProveedoresPorArticulo`;
DELIMITER //
CREATE PROCEDURE `LED_listarProveedoresPorArticulo`(


_id INT
)
BEGIN

select p.id_proveedores, d.*, pr.codigo_catalogo_proveedor from led_proveedores p
inner join led_provistos pr on pr.id_proveedores = p.id_proveedores
inner join led_datos d on d.id_datos = p.id_datos
where pr.id_articulos = _id;

END//
DELIMITER ;


-- Volcando estructura para procedimiento efecto_led.LED_listarTercerosPorTrabajo
DROP PROCEDURE IF EXISTS `LED_listarTercerosPorTrabajo`;
DELIMITER //
CREATE PROCEDURE `LED_listarTercerosPorTrabajo`(


_id INT
)
BEGIN

select t.*, d.*, p.costo_prestacion, p.descripcion_trabajo_realizado from led_terceros t
inner join led_participa p on p.id_terceros = t.id_terceros
inner join led_datos d on d.id_datos = t.id_datos
where p.id_trabajos = _id;

END//
DELIMITER ;


-- Volcando estructura para procedimiento efecto_led.LED_listarTrabajos
DROP PROCEDURE IF EXISTS `LED_listarTrabajos`;
DELIMITER //
CREATE PROCEDURE `LED_listarTrabajos`(


)
BEGIN

select t.* from led_trabajos t;

END//
DELIMITER ;


-- Volcando estructura para procedimiento efecto_led.LED_listarTrabajosPorCliente
DROP PROCEDURE IF EXISTS `LED_listarTrabajosPorCliente`;
DELIMITER //
CREATE PROCEDURE `LED_listarTrabajosPorCliente`(


_id INT
)
BEGIN

select t.* from led_trabajos t
where t.id_cliente = _id;

END//
DELIMITER ;


-- Volcando estructura para procedimiento efecto_led.LED_modificarArticulo
DROP PROCEDURE IF EXISTS `LED_modificarArticulo`;
DELIMITER //
CREATE PROCEDURE `LED_modificarArticulo`(


_id INT,
_codigo_interno VARCHAR(45),
_descripcion VARCHAR(255),
_marca_fabricante VARCHAR(255),
_modelo VARCHAR(255),
_observaciones VARCHAR(255)
)
BEGIN

UPDATE led_articulos
    SET codigo_interno = _codigo_interno,
        descripcion = _descripcion,
        marca_fabricante = _marca_fabricante,
        modelo = _modelo,
        observaciones = _observaciones
WHERE
    id_articulos = _id
LIMIT 1;

END//
DELIMITER ;


-- Volcando estructura para procedimiento efecto_led.LED_modificarDatos
DROP PROCEDURE IF EXISTS `LED_modificarDatos`;
DELIMITER //
CREATE PROCEDURE `LED_modificarDatos`(


_id INT,
_numero_cuil VARCHAR(45),
_razon_social VARCHAR(45),
_direccion VARCHAR(255),
_codigo_postal VARCHAR(45),
_telefono_principal VARCHAR(45),
_correo_electronico_principal VARCHAR(45),
_sitio_web VARCHAR(255),
_estado TINYINT
)
BEGIN

UPDATE led_datos
SET
    numero_cuil = _numero_cuil,
    razon_social = _razon_social,
    direccion = _direccion,
    codigo_postal = _codigo_postal,
    telefono_principal = _telefono_principal,
    correo_electronico_principal = _correo_electronico_principal,
    sitio_web = _sitio_web,
    estado = _estado
WHERE
    id_datos = _id
LIMIT 1;

select _id as id;

END//
DELIMITER ;


-- Volcando estructura para procedimiento efecto_led.LED_modificarIntegrante
DROP PROCEDURE IF EXISTS `LED_modificarIntegrante`;
DELIMITER //
CREATE PROCEDURE `LED_modificarIntegrante`(


_id INT,
_nombre VARCHAR(45),
_area VARCHAR(255),
_telefono VARCHAR(255),
_correo_electronico VARCHAR(255)
)
BEGIN

UPDATE led_integrantes
    SET
        nombre = _nombre,
        area = _area,
        telefono = _telefono,
        correo_electronico = _correo_electronico
WHERE 
    id_integrantes = _id
LIMIT 1;

END//
DELIMITER ;


-- Volcando estructura para procedimiento efecto_led.LED_modificarTrabajo
DROP PROCEDURE IF EXISTS `LED_modificarTrabajo`;
DELIMITER //
CREATE PROCEDURE `LED_modificarTrabajo`(


_id INT,
_descripcion VARCHAR(45),
_fecha_aprobacion_presupuesto DATETIME,
_fecha_inicio_obra DATETIME,
_fecha_fin_obra DATETIME,
_precio_total FLOAT,
_precio_mano_obra FLOAT,
_precio_articulos FLOAT
)
BEGIN

UPDATE led_trabajos
    SET descripcion = _descripcion,
        fecha_aprobacion_presupuesto = _fecha_aprobacion_presupuesto,
        fecha_inicio_obra = _fecha_inicio_obra,
        fecha_fin_obra = _fecha_fin_obra,
        precio_total = _precio_total,
        precio_mano_obra = _precio_mano_obra,
        precio_articulos = _precio_articulos
WHERE
        id_trabajos = _id;

END//
DELIMITER ;


-- Volcando estructura para procedimiento efecto_led.LED_obtenerClientePorTrabajo
DROP PROCEDURE IF EXISTS `LED_obtenerClientePorTrabajo`;
DELIMITER //
CREATE PROCEDURE `LED_obtenerClientePorTrabajo`(


_id INT
)
BEGIN

select c.id_cliente, d.* from led_clientes c
inner join led_datos d on d.id_datos = c.id_datos
inner join led_trabajos t on t.id_cliente = c.id_cliente
where t.id_trabajos = _id;

END//
DELIMITER ;


-- Volcando estructura para procedimiento efecto_led.LED_obtenerDato
DROP PROCEDURE IF EXISTS `LED_obtenerDato`;
DELIMITER //
CREATE PROCEDURE `LED_obtenerDato`(


_id INT,
_tipo INT
)
BEGIN

case  
when _tipo = 0 then 
    select p.id_proveedores as id, _tipo as tipo, d.* from led_datos d
	inner join led_proveedores p on d.id_datos = p.id_datos
        where p.id_datos = _id
        limit 1;

when _tipo = 1 then 
    select p.id_cliente as id, _tipo as tipo, d.* from led_datos d
	inner join led_clientes p on d.id_datos = p.id_datos
        where p.id_datos = _id
        limit 1;

when _tipo = 2 then 
    select p.id_terceros as id, _tipo as tipo, d.* from led_datos d
	inner join led_terceros p on d.id_datos = p.id_datos
        where p.id_datos = _id
        limit 1;

end case; 


END//
DELIMITER ;


-- Volcando estructura para procedimiento efecto_led.LED_obtenerIntegrante
DROP PROCEDURE IF EXISTS `LED_obtenerIntegrante`;
DELIMITER //
CREATE PROCEDURE `LED_obtenerIntegrante`(


_id INT
)
BEGIN

select i.* from led_integrantes i
where i.id_integrantes = _id
limit 1;

END//
DELIMITER ;


-- Volcando estructura para procedimiento efecto_led.LED_obtenerTercero
DROP PROCEDURE IF EXISTS `LED_obtenerTercero`;
DELIMITER //
CREATE PROCEDURE `LED_obtenerTercero`(


_id INT
)
BEGIN

select t.id_terceros, d.* from led_datos d
inner join led_terceros t on t.id_datos = d.id_datos
where t.id_terceros = _id
limit 1;

END//
DELIMITER ;


-- Volcando estructura para procedimiento efecto_led.LED_obtenerTrabajo
DROP PROCEDURE IF EXISTS `LED_obtenerTrabajo`;
DELIMITER //
CREATE PROCEDURE `LED_obtenerTrabajo`(


_id INT
)
BEGIN

select t.*
from led_trabajos t
where t.id_trabajos = _id;

END//
DELIMITER ;
/*!40101 SET SQL_MODE=IFNULL(@OLD_SQL_MODE, '') */;
/*!40014 SET FOREIGN_KEY_CHECKS=IF(@OLD_FOREIGN_KEY_CHECKS IS NULL, 1, @OLD_FOREIGN_KEY_CHECKS) */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
