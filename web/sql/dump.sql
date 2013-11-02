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
  PRIMARY KEY (`id_articulo`),
  UNIQUE KEY `Índice 2` (`codigo_interno`)
) ENGINE=InnoDB AUTO_INCREMENT=16 DEFAULT CHARSET=utf8;

-- Volcando datos para la tabla efecto_led.led_articulos: ~15 rows (aproximadamente)
/*!40000 ALTER TABLE `led_articulos` DISABLE KEYS */;
INSERT INTO `led_articulos` (`id_articulo`, `codigo_interno`, `descripcion`, `marca_fabricante`, `modelo`, `observaciones`) VALUES
	(1, 'COD-INT-1', 'Descripcion 1', 'MarcaA', 'ProductoA', ''),
	(2, 'COD-INT-2', 'Descripcion 2', 'MarcaB', 'ProductoB', ''),
	(3, 'COD-INT-3', 'Descripcion 3', 'MarcaC', 'ProductoC', ''),
	(4, 'COD-INT-4', 'Descripcion 4', 'MarcaD', 'ProductoD', ''),
	(5, 'COD-INT-5', 'Descripcion 5', 'MarcaE', 'ProductoE', ''),
	(6, 'COD-INT-6', 'Descripcion 6', 'MarcaF', 'ProductoF', ''),
	(7, 'COD-INT-7', 'Descripcion 7', 'MarcaG', 'ProductoG', ''),
	(8, 'COD-INT-8', 'Descripcion 8', 'MarcaH', 'ProductoH', ''),
	(9, 'COD-INT-9', 'Descripcion 9', 'MarcaI', 'ProductoI', ''),
	(10, 'COD-INT-10', 'Descripcion 10', 'MarcaJ', 'ProductoJ', ''),
	(11, 'COD-INT-11', 'Descripcion 11', 'MarcaK', 'ProductoK', ''),
	(12, 'COD-INT-12', 'Descripcion 12', 'MarcaL', 'ProductoL', ''),
	(13, 'COD-INT-13', 'Descripcion 13', 'MarcaM', 'ProductoM', ''),
	(14, 'cod1', '', 'proveedor', 'mod1', ''),
	(15, 'test', 'qweq', 'qwe', 'qwe', '');
/*!40000 ALTER TABLE `led_articulos` ENABLE KEYS */;


-- Volcando estructura para tabla efecto_led.led_clientes
DROP TABLE IF EXISTS `led_clientes`;
CREATE TABLE IF NOT EXISTS `led_clientes` (
  `id_cliente` int(11) NOT NULL AUTO_INCREMENT,
  `id_datos` int(11) NOT NULL,
  PRIMARY KEY (`id_cliente`),
  KEY `fk_led_cliente_led_datos1_idx` (`id_datos`),
  CONSTRAINT `fk_led_cliente_led_datos1` FOREIGN KEY (`id_datos`) REFERENCES `led_datos` (`id_datos`) ON DELETE CASCADE ON UPDATE NO ACTION
) ENGINE=InnoDB AUTO_INCREMENT=10 DEFAULT CHARSET=utf8;

-- Volcando datos para la tabla efecto_led.led_clientes: ~9 rows (aproximadamente)
/*!40000 ALTER TABLE `led_clientes` DISABLE KEYS */;
INSERT INTO `led_clientes` (`id_cliente`, `id_datos`) VALUES
	(1, 1),
	(2, 2),
	(3, 3),
	(4, 4),
	(5, 5),
	(6, 6),
	(7, 7),
	(8, 8),
	(9, 9);
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
) ENGINE=InnoDB AUTO_INCREMENT=27 DEFAULT CHARSET=utf8;

-- Volcando datos para la tabla efecto_led.led_datos: ~26 rows (aproximadamente)
/*!40000 ALTER TABLE `led_datos` DISABLE KEYS */;
INSERT INTO `led_datos` (`id_datos`, `numero_cuil`, `razon_social`, `direccion`, `codigo_postal`, `telefono_principal`, `correo_electronico_principal`, `sitio_web`, `estado`) VALUES
	(1, '1111111111', 'Razon Social cliente Test', 'Dirección cliente1', '1', '2664111111', '', 'http://cliente1.com', 1),
	(2, '2222222222', 'Razon Social cliente2', 'Dirección cliente2', '2', '2664222222', 'emailcliente2@tpe.com', 'http://cliente2.com', 1),
	(3, '3333333333', 'Razon Social cliente3', 'Dirección cliente3', '3', '2664333333', 'emailcliente3@tpe.com', 'http://cliente3.com', 1),
	(4, '4444444444', 'Razon Social cliente4', 'Dirección cliente4', '4', '2664444444', 'emailcliente4@tpe.com', 'http://cliente4.com', 1),
	(5, '5555555555', 'Razon Social cliente5', 'Dirección cliente5', '5', '2664555555', '', '', 1),
	(6, '6666666666', 'Razon Social cliente6', 'Dirección cliente6', '6', '2664666666', 'emailcliente6@tpe.com', 'http://cliente6.com', 1),
	(7, '7777777777', 'Razon Social cliente7', 'Dirección cliente7', '7', '2664777777', 'emailcliente7@tpe.com', 'http://cliente7.com', 1),
	(8, '8888888888', 'Razon Social cliente8', 'Dirección cliente8', '8', '2664888888', 'emailcliente8@tpe.com', 'http://cliente8.com', 1),
	(9, '9999999999', 'Razon Social cliente9', 'Dirección cliente9', '9', '2664999999', 'emailcliente9@tpe.com', 'http://cliente9.com', 1),
	(10, '1000000000', 'Razon Social proveedor1', 'Dirección proveedor1', '10', '2657111111', 'emailproveedor1@tpe.com', 'http://proveedor1.com', 1),
	(11, '20000000000', 'Razon Social proveedor2', 'Dirección proveedor2', '20', '2657222222', 'emailproovedor2@tpe.com', 'http://proveedor2.com', 1),
	(12, '3000000000', 'Razon Social proveedor3', 'Dirección proveedor3', '30', '2657333333', 'emailproveedor3@tpe.com', 'http://proveedor3.com', 1),
	(13, '4000000000', 'Razon Social proveedor4', 'Dirección proveedor4', '40', '2657444444', 'emailproveedor4@tpe.com', 'http://proveedor4.com', 1),
	(14, '5000000000', 'Razon Social proveedor5', 'Dirección proveedor5', '50', '2657555555', 'emailproveedor5@tpe.com', 'http://proveedor5.com', 1),
	(15, '6000000000', 'Razon Social proveedor6', 'Dirección proveedor6', '60', '2657666666', 'emailproveedor6@tpe.com', 'http://proveedor6.com', 1),
	(16, '7000000000', 'Razon Social proveedor7', 'Dirección proveedor7', '70', '2657777777', 'emailproveedor7@tpe.com', 'http://proveedor7.com', 1),
	(17, '1111110000', 'Razon Social tercero1', 'Dirección tercero1', '9911', '9999111111', 'emailtercero1@tpe.com', 'http://tercero1.ar', 0),
	(18, '2222220000', 'Razon Social tercero2', 'Dirección tercero2', '9922', '9999222222', 'emailtercero2@tpe.com', 'http://tercero2.ar', 0),
	(19, '3333330000', 'Razon Social tercero3', 'Dirección tercero3', '9933', '9999333333', 'emailtercero3@tpe.com', 'http://tercero3.ar', 1),
	(20, '4444440000', 'Razon Social tercero4', 'Dirección tercero4', '9944', '9999444444', 'emailtercero4@tpe.com', 'http://tercero4.ar', 1),
	(21, '5555550000', 'Razon Social tercero5', 'Dirección tercero5', '9955', '9999555555', 'emailtercero5@tpe.com', 'http://tercero5.ar', 1),
	(22, '6666660000', 'Razon Social tercero6', 'Dirección tercero6', '9966', '9999666666', 'emailtercero6@tpe.com', 'http://tercero6.ar', 1),
	(23, '7777770000', 'Razon Social tercero7', 'Dirección tercero7', '9977', '9999777777', 'emailtercero7@tpe.com', 'http://tercero7.ar', 1),
	(24, '8888880000', 'Razon Social tercero8', 'Dirección tercero8', '9988', '9999888888', 'emailtercero8@tpe.com', 'http://tercero8.ar', 1),
	(25, '123', 'unsl', 'direccion', '5700', '6667777', '', '', 1),
	(26, '2222220000', 'Test', 'direccion 1', '5700', '2664', '', '', 1);
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
) ENGINE=InnoDB AUTO_INCREMENT=12 DEFAULT CHARSET=utf8;

-- Volcando datos para la tabla efecto_led.led_integrantes: ~11 rows (aproximadamente)
/*!40000 ALTER TABLE `led_integrantes` DISABLE KEYS */;
INSERT INTO `led_integrantes` (`id_integrantes`, `nombre`, `area`, `telefono`, `correo_electronico`, `id_proveedor`) VALUES
	(1, 'int1prov1', 'area_int1prov1', '2657111111', 'int1prov1@o', 1),
	(2, 'int2prov1', 'area_int2prov1', '2657111111', 'int2prov1@o', 1),
	(3, 'int3prov1', 'area_int3prov1', '2657222222', 'int3prov1@o', 1),
	(4, 'int1prov2', 'area_int1prov2', '2657333333', 'int1prov2@o', 2),
	(5, 'int2prov2', 'area_int1prov2', '2657444444', 'int1prov2@o', 2),
	(6, 'int1prov4', 'area_int1prov4', '2657444444', 'int1prov4@o.com', 4),
	(7, 'int2prov4', 'area_int2prov4', '2657444444', 'int2prov4@o.com', 4),
	(8, 'int3prov4', 'area_int3prov4', '2657764823', 'int3prov4@lala.com', 4),
	(9, 'int1prov7', 'area_int1prov7', '351777777', 'int1prov7@tpe.com', 7),
	(10, 'int2prov7', 'area_int2prov7', '351777772', 'int2prov7@tpe7.u', 7),
	(11, 'test', 'test', '1113123', 'asdas@asdasdaasdas.com', 1);
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

-- Volcando datos para la tabla efecto_led.led_participa: ~28 rows (aproximadamente)
/*!40000 ALTER TABLE `led_participa` DISABLE KEYS */;
INSERT INTO `led_participa` (`id_terceros`, `id_trabajos`, `costo_prestacion`, `descripcion_trabajo_realizado`) VALUES
	(1, 8, 964.15, 'Descripcion Prestacion 806'),
	(1, 13, 139.58, 'Descripcion Prestacion 605'),
	(1, 16, 1058.18, 'Descripcion Prestacion 764'),
	(2, 6, 77.5, 'Descripcion Prestacion 1'),
	(2, 7, 485.62, 'Descripcion Prestacion 118'),
	(2, 12, 839.11, 'Descripcion Prestacion 831'),
	(2, 13, 835.97, 'Descripcion Prestacion 191'),
	(2, 18, 109.76, 'Descripcion Prestacion 602'),
	(3, 4, 514.25, 'Descripcion Prestacion 2'),
	(3, 8, 691.14, 'Descripcion Prestacion 290'),
	(3, 12, 651.43, 'Descripcion Prestacion 824'),
	(3, 17, 55.76, 'Descripcion Prestacion 5'),
	(4, 4, 12.5, 'Descripcion Prestacion 500'),
	(4, 14, 717.37, 'Descripcion Prestacion 395'),
	(5, 6, 395.5, 'Descripcion Prestacion 734'),
	(5, 11, 1192.33, 'Descripcion Prestacion 274'),
	(5, 15, 955.2, 'Descripcion Prestacion 158'),
	(5, 18, 695.65, 'Descripcion Prestacion 882'),
	(5, 20, 88.75, 'Descripcion Prestacion 4'),
	(5, 21, 28.78, 'descripcion'),
	(6, 12, 950.38, 'Descripcion Prestacion 988'),
	(6, 18, 346.47, 'Descripcion Prestacion 641'),
	(6, 20, 880.95, 'Descripcion Prestacion 21'),
	(7, 9, 1216.72, 'Descripcion Prestacion 188'),
	(7, 15, 124.3, 'Descripcion Prestacion 244'),
	(8, 6, 55.54, 'Descripcion Prestacion 3'),
	(8, 10, 1135.29, 'Descripcion Prestacion 189'),
	(8, 11, 1360.99, 'Descripcion Prestacion 231');
/*!40000 ALTER TABLE `led_participa` ENABLE KEYS */;


-- Volcando estructura para tabla efecto_led.led_proveedores
DROP TABLE IF EXISTS `led_proveedores`;
CREATE TABLE IF NOT EXISTS `led_proveedores` (
  `id_proveedores` int(11) NOT NULL AUTO_INCREMENT,
  `id_datos` int(11) NOT NULL,
  PRIMARY KEY (`id_proveedores`),
  KEY `fk_led_proveedores_led_datos_idx` (`id_datos`),
  CONSTRAINT `fk_led_proveedores_led_datos` FOREIGN KEY (`id_datos`) REFERENCES `led_datos` (`id_datos`) ON DELETE CASCADE ON UPDATE NO ACTION
) ENGINE=InnoDB AUTO_INCREMENT=9 DEFAULT CHARSET=utf8;

-- Volcando datos para la tabla efecto_led.led_proveedores: ~8 rows (aproximadamente)
/*!40000 ALTER TABLE `led_proveedores` DISABLE KEYS */;
INSERT INTO `led_proveedores` (`id_proveedores`, `id_datos`) VALUES
	(1, 10),
	(2, 11),
	(3, 12),
	(4, 13),
	(5, 14),
	(6, 15),
	(7, 16),
	(8, 25);
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
  CONSTRAINT `fk_led_provistos_led_articulos1` FOREIGN KEY (`id_articulos`) REFERENCES `led_articulos` (`id_articulo`) ON DELETE CASCADE ON UPDATE NO ACTION,
  CONSTRAINT `fk_led_provistos_led_proveedores1` FOREIGN KEY (`id_proveedores`) REFERENCES `led_proveedores` (`id_proveedores`) ON DELETE CASCADE ON UPDATE NO ACTION,
  CONSTRAINT `fk_led_provistos_led_trabajos1` FOREIGN KEY (`id_trabajos`) REFERENCES `led_trabajos` (`id_trabajos`) ON DELETE CASCADE ON UPDATE NO ACTION
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- Volcando datos para la tabla efecto_led.led_provistos: ~30 rows (aproximadamente)
/*!40000 ALTER TABLE `led_provistos` DISABLE KEYS */;
INSERT INTO `led_provistos` (`id_articulos`, `id_proveedores`, `id_trabajos`, `codigo_catalogo_proveedor`, `cantidad_articulos`, `costo_unitario`) VALUES
	(1, 1, 4, 'CAT001', 8, 320.75),
	(1, 1, 6, 'CAT002', 4, 873.23),
	(2, 2, 6, 'CAT003', 3, 899.99),
	(2, 6, 8, 'CAT005', 5, 533.5),
	(3, 2, 6, 'CAT004', 3, 899.99),
	(3, 3, 12, 'CAT548', 5, 108.71),
	(3, 7, 19, 'CAT989', 5, 180.63),
	(4, 5, 8, 'CAT964', 5, 1023.51),
	(5, 5, 19, 'CAT902', 5, 1050.79),
	(6, 2, 15, 'CAT122', 5, 572.54),
	(6, 5, 15, 'CAT948', 5, 756.67),
	(6, 5, 18, 'CAT518', 5, 1405.13),
	(7, 1, 4, 'CAT412', 5, 859.63),
	(7, 1, 18, 'CAT68', 5, 1103.47),
	(7, 2, 19, 'CAT703', 5, 1171.79),
	(8, 1, 19, 'CAT255', 5, 785.85),
	(8, 4, 14, 'CAT843', 5, 391.77),
	(9, 2, 11, 'CAT679', 5, 1345.45),
	(9, 6, 17, 'CAT807', 5, 865.46),
	(9, 6, 19, 'CAT327', 5, 1303.36),
	(10, 6, 20, 'CAT340', 5, 1159.84),
	(11, 1, 19, 'CAT547', 5, 1338.81),
	(11, 4, 15, 'CAT214', 5, 1442),
	(11, 6, 6, 'CAT60', 5, 778.41),
	(12, 2, 13, 'CAT506', 5, 893.46),
	(12, 7, 18, 'CAT757', 5, 139.19),
	(12, 7, 20, 'CAT70', 5, 714.17),
	(13, 3, 20, 'CAT842', 5, 336.59),
	(14, 3, 21, 'proov2', 9, 23.7),
	(15, 8, 4, 'test', 3, 2);
/*!40000 ALTER TABLE `led_provistos` ENABLE KEYS */;


-- Volcando estructura para tabla efecto_led.led_terceros
DROP TABLE IF EXISTS `led_terceros`;
CREATE TABLE IF NOT EXISTS `led_terceros` (
  `id_terceros` int(11) NOT NULL AUTO_INCREMENT,
  `id_datos` int(11) NOT NULL,
  PRIMARY KEY (`id_terceros`),
  KEY `fk_led_terceros_led_datos1_idx` (`id_datos`),
  CONSTRAINT `fk_led_terceros_led_datos1` FOREIGN KEY (`id_datos`) REFERENCES `led_datos` (`id_datos`) ON DELETE CASCADE ON UPDATE NO ACTION
) ENGINE=InnoDB AUTO_INCREMENT=10 DEFAULT CHARSET=utf8;

-- Volcando datos para la tabla efecto_led.led_terceros: ~9 rows (aproximadamente)
/*!40000 ALTER TABLE `led_terceros` DISABLE KEYS */;
INSERT INTO `led_terceros` (`id_terceros`, `id_datos`) VALUES
	(1, 17),
	(2, 18),
	(3, 19),
	(4, 20),
	(5, 21),
	(6, 22),
	(7, 23),
	(8, 24),
	(9, 26);
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
  `precio_prestaciones` float NOT NULL DEFAULT '0',
  `id_cliente` int(11) NOT NULL,
  PRIMARY KEY (`id_trabajos`),
  KEY `solicita` (`id_cliente`),
  CONSTRAINT `solicita` FOREIGN KEY (`id_cliente`) REFERENCES `led_clientes` (`id_cliente`) ON DELETE CASCADE ON UPDATE NO ACTION
) ENGINE=InnoDB AUTO_INCREMENT=45 DEFAULT CHARSET=utf8;

-- Volcando datos para la tabla efecto_led.led_trabajos: ~34 rows (aproximadamente)
/*!40000 ALTER TABLE `led_trabajos` DISABLE KEYS */;
INSERT INTO `led_trabajos` (`id_trabajos`, `descripcion`, `fecha_creacion`, `fecha_aprobacion_presupuesto`, `fecha_inicio_obra`, `fecha_fin_obra`, `precio_total`, `precio_mano_obra`, `precio_articulos`, `precio_prestaciones`, `id_cliente`) VALUES
	(4, 'Descripcion Trabajo 1', '2013-10-15 00:46:35', '2013-06-15 00:00:00', '2013-12-16 00:00:00', '2014-01-16 00:00:00', 8967.15, 1570.25, 6870.15, 526.75, 1),
	(6, 'Descripción Trabajo 2', '2013-10-15 01:20:29', '2013-10-25 00:00:00', '2013-12-17 00:00:00', '2013-10-20 00:00:00', 13664.2, 350.75, 12784.9, 528.54, 1),
	(7, 'Descripcion Trabajo 3', '2013-10-15 00:46:35', NULL, NULL, NULL, 485.62, 0, 0, 485.62, 1),
	(8, 'Descripcion Trabajo 4', '2013-10-15 00:46:35', '2013-10-04 00:00:00', '2013-10-10 00:00:00', '2013-10-11 00:00:00', 9440.34, 0, 7785.05, 1655.29, 1),
	(9, 'Descripcion Trabajo 5', '2013-10-15 00:46:35', NULL, NULL, NULL, 1216.72, 0, 0, 1216.72, 1),
	(10, 'Descripcion Trabajo 6', '2013-10-15 00:46:35', '2013-10-10 00:00:00', '2013-10-20 00:00:00', '2014-02-23 00:00:00', 1135.29, 0, 0, 1135.29, 2),
	(11, 'Descripcion Trabajo 7', '2013-10-15 00:46:35', '2013-10-07 00:00:00', NULL, NULL, 9280.57, 0, 6727.25, 2553.32, 2),
	(12, 'Descripcion Trabajo 8', '2013-10-15 00:46:35', NULL, NULL, NULL, 2984.47, 0, 543.55, 2440.92, 2),
	(13, 'Descripcion Trabajo 9', '2013-10-15 00:46:35', '2013-10-08 00:00:00', '2013-11-21 00:00:00', '2014-02-21 00:00:00', 5442.85, 0, 4467.3, 975.55, 2),
	(14, 'Descripcion Trabajo 10', '2013-10-15 00:46:35', '2013-10-12 00:00:00', NULL, NULL, 2676.22, 0, 1958.85, 717.37, 2),
	(15, 'Descripcion Trabajo 11', '2013-10-15 00:46:35', NULL, NULL, NULL, 14935.5, 0, 13856, 1079.5, 3),
	(16, 'Descripcion Trabajo 12', '2013-10-15 00:46:35', '2013-09-28 00:00:00', '2013-10-29 00:00:00', '2014-03-28 00:00:00', 1058.18, 0, 0, 1058.18, 3),
	(17, 'Descripcion Trabajo 13', '2013-10-15 00:46:35', '2013-08-31 00:00:00', NULL, NULL, 4383.06, 0, 4327.3, 55.76, 3),
	(18, 'Descripcion Trabajo 14', '2013-10-15 00:46:35', NULL, NULL, NULL, 14390.8, 0, 13239, 1151.88, 3),
	(19, 'Descripcion Trabajo 15', '2013-10-15 00:46:35', '2013-06-15 00:00:00', '2013-11-08 00:00:00', '2013-12-14 00:00:00', 29156.2, 0, 29156.2, 0, 3),
	(20, 'Descripcion Trabajo 16', '2013-10-15 00:46:35', NULL, NULL, NULL, 12022.7, 0, 11053, 969.7, 3),
	(21, 'Descripcion Trabajo 17', '2013-10-15 08:55:03', NULL, '2013-10-15 00:00:00', '2013-10-15 00:00:00', 1031.88, 789.8, 213.3, 28.78, 1),
	(28, '', '2013-11-01 14:02:34', NULL, NULL, NULL, 0, 0, 0, 0, 1),
	(29, '', '2013-11-01 14:04:30', NULL, NULL, NULL, 0, 0, 0, 0, 1),
	(30, '', '2013-11-01 15:11:16', NULL, NULL, NULL, 0, 0, 0, 0, 1),
	(31, '', '2013-11-01 15:20:28', NULL, NULL, NULL, 0, 0, 0, 0, 1),
	(32, '', '2013-11-01 15:56:36', NULL, NULL, NULL, 0, 0, 0, 0, 1),
	(33, '', '2013-11-01 15:59:13', NULL, NULL, NULL, 0, 0, 0, 0, 1),
	(34, '', '2013-11-01 16:02:50', NULL, NULL, NULL, 0, 0, 0, 0, 1),
	(35, '', '2013-11-01 16:23:58', NULL, NULL, NULL, 0, 0, 0, 0, 1),
	(36, '', '2013-11-01 18:09:21', NULL, NULL, NULL, 0, 0, 0, 0, 1),
	(37, '', '2013-11-01 18:13:09', NULL, NULL, NULL, 0, 0, 0, 0, 1),
	(38, '', '2013-11-01 20:16:35', NULL, NULL, NULL, 0, 0, 0, 0, 1),
	(39, 'asd', '2013-11-01 23:02:34', NULL, NULL, NULL, 0, 0, 0, 0, 1),
	(40, 'typeahead', '2013-11-01 23:02:58', NULL, NULL, NULL, 0, 0, 0, 0, 1),
	(41, 'gggg', '2013-11-01 23:05:02', NULL, NULL, NULL, 0, 0, 0, 0, 1),
	(42, '', '2013-11-01 23:13:46', NULL, NULL, NULL, 0, 0, 0, 0, 1),
	(43, '', '2013-11-01 23:18:27', NULL, NULL, NULL, 0, 0, 0, 0, 1),
	(44, '', '2013-11-01 23:19:49', NULL, NULL, NULL, 0, 0, 0, 0, 1);
/*!40000 ALTER TABLE `led_trabajos` ENABLE KEYS */;


-- Volcando estructura para procedimiento efecto_led.LED_asociarArticuloTrabajo
DROP PROCEDURE IF EXISTS `LED_asociarArticuloTrabajo`;
DELIMITER //
CREATE PROCEDURE `LED_asociarArticuloTrabajo`(


_id_articulo INT,
_id_trabajo INT,
_id_proveedor INT,
_codigo_catalogo_proveedor VARCHAR(45),
_cantidad_articulos INT,
_costo_unitario FLOAT
)
BEGIN

INSERT INTO led_provistos
(id_articulos, id_proveedores, id_trabajos, codigo_catalogo_proveedor, cantidad_articulos, costo_unitario)
VALUES (_id_articulo, _id_proveedor, _id_trabajo, _codigo_catalogo_proveedor, _cantidad_articulos, _costo_unitario);

select LAST_INSERT_ID() as id;

END//
DELIMITER ;


-- Volcando estructura para procedimiento efecto_led.LED_asociarTerceroTrabajo
DROP PROCEDURE IF EXISTS `LED_asociarTerceroTrabajo`;
DELIMITER //
CREATE PROCEDURE `LED_asociarTerceroTrabajo`(


_id_terceros INT,
_id_trabajos INT,
_costo_prestacion FLOAT,
_descripcion_trabajo_realizado VARCHAR(45)
)
BEGIN

INSERT INTO
led_participa
(
id_terceros,
id_trabajos,
costo_prestacion,
descripcion_trabajo_realizado
)
VALUES (
_id_terceros,
_id_trabajos,
_costo_prestacion,
_descripcion_trabajo_realizado
);

select LAST_INSERT_ID() as id;

END//
DELIMITER ;


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
_correo_electronico VARCHAR(255),
_id_proveedor int(11)
)
BEGIN

INSERT INTO 
led_integrantes
    (nombre, area, telefono, correo_electronico, id_proveedor)
VALUES
    (_nombre, _area, _telefono, _correo_electronico, _id_proveedor);

select LAST_INSERT_ID() as id;

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


-- Volcando estructura para procedimiento efecto_led.LED_eliminarTercero
DROP PROCEDURE IF EXISTS `LED_eliminarTercero`;
DELIMITER //
CREATE PROCEDURE `LED_eliminarTercero`(


_id INT
)
BEGIN

    DELETE FROM led_participa
    WHERE led_participa.id_terceros = _id
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

select a.*, p.*, d.* from led_articulos a
inner join led_provistos p on p.id_articulos = a.id_articulo
inner join led_proveedores pr on pr.id_proveedores = p.id_proveedores
inner join led_datos d on d.id_datos = pr.id_datos
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
	order by d.estado desc, d.razon_social;
when _tipo = 1 then 
    select p.id_cliente, d.* from led_datos d
	inner join led_clientes p on d.id_datos = p.id_datos
	order by d.estado desc, d.razon_social;
when _tipo = 2 then 
    select p.id_terceros, d.* from led_datos d
	inner join led_terceros p on d.id_datos = p.id_datos
	order by d.estado desc, d.razon_social;
end case; 

END//
DELIMITER ;


-- Volcando estructura para procedimiento efecto_led.LED_listarDatosFiltrando
DROP PROCEDURE IF EXISTS `LED_listarDatosFiltrando`;
DELIMITER //
CREATE PROCEDURE `LED_listarDatosFiltrando`(


_tipo INT,
_query VARCHAR(255)
)
BEGIN

case  
when _tipo = 0 then 
    select p.id_proveedores, d.* from led_datos d
	inner join led_proveedores p on d.id_datos = p.id_datos
	where (`numero_cuil` LIKE concat('%',_query,'%') OR `razon_social` LIKE concat('%',_query,'%') OR `direccion` LIKE concat('%',_query,'%') OR `codigo_postal` LIKE concat('%',_query,'%') OR `telefono_principal` LIKE concat('%',_query,'%') OR `correo_electronico_principal` LIKE concat('%',_query,'%'))
	and d.estado = 1
	order by d.estado desc, d.razon_social;
when _tipo = 1 then 
    select p.id_cliente, d.* from led_datos d
	inner join led_clientes p on d.id_datos = p.id_datos
	where (`numero_cuil` LIKE concat('%',_query,'%') OR `razon_social` LIKE concat('%',_query,'%') OR `direccion` LIKE concat('%',_query,'%') OR `codigo_postal` LIKE concat('%',_query,'%') OR `telefono_principal` LIKE concat('%',_query,'%') OR `correo_electronico_principal` LIKE concat('%',_query,'%'))
	and d.estado = 1
	order by d.estado desc, d.razon_social;
when _tipo = 2 then 
    select p.id_terceros, d.* from led_datos d
	inner join led_terceros p on d.id_datos = p.id_datos
	where (`numero_cuil` LIKE concat('%',_query,'%') OR `razon_social` LIKE concat('%',_query,'%') OR `direccion` LIKE concat('%',_query,'%') OR `codigo_postal` LIKE concat('%',_query,'%') OR `telefono_principal` LIKE concat('%',_query,'%') OR `correo_electronico_principal` LIKE concat('%',_query,'%'))
	and d.estado = 1
	order by d.estado desc, d.razon_social;
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

SELECT
t.id_trabajos,
t.descripcion,
date(t.fecha_creacion) as fecha_creacion,
date(t.fecha_aprobacion_presupuesto) as fecha_aprobacion_presupuesto,
date(t.fecha_inicio_obra) as fecha_inicio_obra,
date(t.fecha_fin_obra) as fecha_fin_obra,
t.precio_total,
t.precio_mano_obra,
t.precio_articulos,
t.precio_prestaciones,
t.id_cliente,
d.razon_social
from led_trabajos t
inner join led_clientes c on c.id_cliente = t.id_cliente
inner join led_datos d on d.id_datos = c.id_datos;

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
_tipo INT,
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

DECLARE _id_dato INT DEFAULT -1;

case  
when _tipo = 0 then 
    SELECT p.id_datos INTO _id_dato FROM led_proveedores p where p.id_proveedores = _id;
when _tipo = 1 then 
    SELECT p.id_datos INTO _id_dato FROM led_clientes p where p.id_cliente = _id;
when _tipo = 2 then 
    SELECT p.id_datos INTO _id_dato FROM led_terceros p where p.id_terceros = _id;
end case; 

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
        id_datos = _id_dato
    LIMIT 1;

select _id as id, _tipo as tipo;

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
_fecha_aprobacion_presupuesto DATE,
_fecha_inicio_obra DATE,
_fecha_fin_obra DATE,
_precio_mano_obra FLOAT
)
BEGIN

UPDATE led_trabajos
    SET descripcion = _descripcion,
        fecha_aprobacion_presupuesto = _fecha_aprobacion_presupuesto,
        fecha_inicio_obra = _fecha_inicio_obra,
        fecha_fin_obra = _fecha_fin_obra,
        precio_mano_obra = _precio_mano_obra
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

SELECT
t.id_trabajos,
t.descripcion,
date(t.fecha_creacion) as fecha_creacion,
date(t.fecha_aprobacion_presupuesto) as fecha_aprobacion_presupuesto,
date(t.fecha_inicio_obra) as fecha_inicio_obra,
date(t.fecha_fin_obra) as fecha_fin_obra,
t.precio_total,
t.precio_mano_obra,
t.precio_articulos,
t.id_cliente
from led_trabajos t
where t.id_trabajos = _id;

END//
DELIMITER ;


-- Volcando estructura para disparador efecto_led.after_delete_participa
DROP TRIGGER IF EXISTS `after_delete_participa`;
SET @OLDTMP_SQL_MODE=@@SQL_MODE, SQL_MODE='STRICT_TRANS_TABLES';
DELIMITER //
CREATE TRIGGER `after_delete_participa` AFTER DELETE ON `led_participa` FOR EACH ROW BEGIN

		SET @jobId = OLD.id_trabajos;

		SET @total = 0;

		SELECT SUM(p.costo_prestacion) into @total
		FROM led_participa p
		WHERE p.id_trabajos = @jobId;

		UPDATE led_trabajos t 
		SET t.precio_prestaciones = @total
		WHERE t.id_trabajos = @jobId;

	END//
DELIMITER ;
SET SQL_MODE=@OLDTMP_SQL_MODE;


-- Volcando estructura para disparador efecto_led.after_delete_provistos
DROP TRIGGER IF EXISTS `after_delete_provistos`;
SET @OLDTMP_SQL_MODE=@@SQL_MODE, SQL_MODE='STRICT_TRANS_TABLES';
DELIMITER //
CREATE TRIGGER `after_delete_provistos` AFTER DELETE ON `led_provistos` FOR EACH ROW BEGIN

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

	END//
DELIMITER ;
SET SQL_MODE=@OLDTMP_SQL_MODE;


-- Volcando estructura para disparador efecto_led.after_insert_participa
DROP TRIGGER IF EXISTS `after_insert_participa`;
SET @OLDTMP_SQL_MODE=@@SQL_MODE, SQL_MODE='STRICT_TRANS_TABLES';
DELIMITER //
CREATE TRIGGER `after_insert_participa` AFTER INSERT ON `led_participa` FOR EACH ROW BEGIN

		SET @jobId = NEW.id_trabajos;

		SET @total = 0;

		SELECT SUM(p.costo_prestacion) into @total
		FROM led_participa p
		WHERE p.id_trabajos = @jobId;

		UPDATE led_trabajos t 
		SET t.precio_prestaciones = @total
		WHERE t.id_trabajos = @jobId;

	END//
DELIMITER ;
SET SQL_MODE=@OLDTMP_SQL_MODE;


-- Volcando estructura para disparador efecto_led.after_insert_provistos
DROP TRIGGER IF EXISTS `after_insert_provistos`;
SET @OLDTMP_SQL_MODE=@@SQL_MODE, SQL_MODE='STRICT_TRANS_TABLES';
DELIMITER //
CREATE TRIGGER `after_insert_provistos` AFTER INSERT ON `led_provistos` FOR EACH ROW BEGIN

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

	END//
DELIMITER ;
SET SQL_MODE=@OLDTMP_SQL_MODE;


-- Volcando estructura para disparador efecto_led.after_update_participa
DROP TRIGGER IF EXISTS `after_update_participa`;
SET @OLDTMP_SQL_MODE=@@SQL_MODE, SQL_MODE='STRICT_TRANS_TABLES';
DELIMITER //
CREATE TRIGGER `after_update_participa` AFTER UPDATE ON `led_participa` FOR EACH ROW BEGIN

		SET @jobId = OLD.id_trabajos;

		SET @total = 0;

		SELECT SUM(p.costo_prestacion) into @total
		FROM led_participa p
		WHERE p.id_trabajos = @jobId;

		UPDATE led_trabajos t 
		SET t.precio_prestaciones = @total
		WHERE t.id_trabajos = @jobId;

	END//
DELIMITER ;
SET SQL_MODE=@OLDTMP_SQL_MODE;


-- Volcando estructura para disparador efecto_led.after_update_provistos
DROP TRIGGER IF EXISTS `after_update_provistos`;
SET @OLDTMP_SQL_MODE=@@SQL_MODE, SQL_MODE='STRICT_TRANS_TABLES';
DELIMITER //
CREATE TRIGGER `after_update_provistos` AFTER UPDATE ON `led_provistos` FOR EACH ROW BEGIN

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

	END//
DELIMITER ;
SET SQL_MODE=@OLDTMP_SQL_MODE;


-- Volcando estructura para disparador efecto_led.before_insert_trabajos
DROP TRIGGER IF EXISTS `before_insert_trabajos`;
SET @OLDTMP_SQL_MODE=@@SQL_MODE, SQL_MODE='STRICT_TRANS_TABLES';
DELIMITER //
CREATE TRIGGER `before_insert_trabajos` BEFORE INSERT ON `led_trabajos` FOR EACH ROW BEGIN

		SET NEW.precio_total = NEW.precio_mano_obra + NEW.precio_articulos + NEW.precio_prestaciones;

	END//
DELIMITER ;
SET SQL_MODE=@OLDTMP_SQL_MODE;


-- Volcando estructura para disparador efecto_led.before_update_trabajos
DROP TRIGGER IF EXISTS `before_update_trabajos`;
SET @OLDTMP_SQL_MODE=@@SQL_MODE, SQL_MODE='STRICT_TRANS_TABLES';
DELIMITER //
CREATE TRIGGER `before_update_trabajos` BEFORE UPDATE ON `led_trabajos` FOR EACH ROW BEGIN

		SET NEW.precio_total = NEW.precio_mano_obra + NEW.precio_articulos + NEW.precio_prestaciones;

	END//
DELIMITER ;
SET SQL_MODE=@OLDTMP_SQL_MODE;
/*!40101 SET SQL_MODE=IFNULL(@OLD_SQL_MODE, '') */;
/*!40014 SET FOREIGN_KEY_CHECKS=IF(@OLD_FOREIGN_KEY_CHECKS IS NULL, 1, @OLD_FOREIGN_KEY_CHECKS) */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
