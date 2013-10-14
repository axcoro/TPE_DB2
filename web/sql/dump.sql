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
) ENGINE=InnoDB AUTO_INCREMENT=314 DEFAULT CHARSET=utf8;

-- Volcando datos para la tabla efecto_led.led_articulos: ~168 rows (aproximadamente)
/*!40000 ALTER TABLE `led_articulos` DISABLE KEYS */;
INSERT INTO `led_articulos` (`id_articulo`, `codigo_interno`, `descripcion`, `marca_fabricante`, `modelo`, `observaciones`) VALUES
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
	(24, 'asdasd', 'asdasd', 'asdas', 'asdas', 'asdasd'),
	(25, 'asdasd', 'asdasd', 'asdas', 'asdas', 'asdasd'),
	(26, 'asdasd', 'asdasd', 'asdas', 'asdas', 'asdasd'),
	(27, 'asdasd', 'asdasd', 'asdas', 'asdas', 'asdasd'),
	(28, 'asdasd', 'asdasd', 'asdas', 'asdas', 'asdasd'),
	(29, 'asdasd', 'asdasd', 'asdas', 'asdas', 'asdasd'),
	(30, 'asda', 'asdsad', 'asdas', 'asdas', 'asdasdasd'),
	(33, 'asda', 'asdsad', 'asdas', 'asdas', 'asdasdasd'),
	(35, 'asda', 'asdsad', 'asdas', 'asdas', 'asdasdasd'),
	(36, 'asda', 'asdsad', 'asdas', 'asdas', 'asdasdasd'),
	(39, 'asdasd', 'asdas', 'asdas', 'asdas', 'asdasdasdas'),
	(42, 'asdasd', 'asdas', 'asdas', 'asdas', 'asdasdasdas'),
	(43, 'asdasd', 'asdas', 'asdas', 'asdas', 'asdasdasdas'),
	(56, 'asdas', 'asdas', 'asdas', 'asdas', 'asdasd'),
	(64, 'asd', 'asdasd', 'asdsad', 'asdasd', 'asdad'),
	(68, 'asd', 'asdasd', 'asdsad', 'asdasd', 'asdad'),
	(69, 'asd', 'asdasd', 'asdsad', 'asdasd', 'asdad'),
	(70, 'asd', 'asdasd', 'asdsad', 'asdasd', 'asdad'),
	(71, 'asd', 'asdasd', 'asdsad', 'asdasd', 'asdad'),
	(72, 'asd', 'asdasd', 'asdsad', 'asdasd', 'asdad'),
	(73, 'asd', 'asdasd', 'asdsad', 'asdasd', 'asdad'),
	(74, 'asd', 'asdasd', 'asdsad', 'asdasd', 'asdad'),
	(75, 'asd', 'asdasd', 'asdsad', 'asdasd', 'asdad'),
	(76, 'asd', 'asdasd', 'asdsad', 'asdasd', 'asdad'),
	(77, 'asda', 'asdas', 'asda', 'asd', 'asdasd'),
	(83, 'asda', 'asdas', 'asda', 'asd', 'asdasd'),
	(84, 'asda', 'asdas', 'asda', 'asd', 'asdasd'),
	(85, 'asda', 'asdas', 'asda', 'asd', 'asdasd'),
	(86, 'asda', 'asdas', 'asda', 'asd', 'asdasd'),
	(87, 'asda', 'asdas', 'asda', 'asd', 'asdasd'),
	(88, 'asda', 'asdas', 'asda', 'asd', 'asdasd'),
	(89, 'asda', 'asdas', 'asda', 'asd', 'asdasd'),
	(91, 'asda', 'asdas', 'asdas', 'asdas', 'asdasdasasd'),
	(92, 'asda', 'asdas', 'asdas', 'asdas', 'asdasdasasd'),
	(93, 'asda', 'asdas', 'asdas', 'asdas', 'asdasdasasd'),
	(94, 'asda', 'asdas', 'asdas', 'asdas', 'asdasdasasd'),
	(95, 'asda', 'asdas', 'asdas', 'asdas', 'asdasdasasd'),
	(96, 'asda', 'asdas', 'asdas', 'asdas', 'asdasdasasd'),
	(97, 'asda', 'asdas', 'asdas', 'asdas', 'asdasdasasd'),
	(98, 'asda', 'asdas', 'asdas', 'asdas', 'asdasdasasd'),
	(99, 'asda', 'asdas', 'asdas', 'asdas', 'asdasdasasd'),
	(100, 'asda', 'asdas', 'asdas', 'asdas', 'asdasdasasd'),
	(101, 'asda', 'asdas', 'asdas', 'asdas', 'asdasdasasd'),
	(102, 'asda', 'asdas', 'asdas', 'asdas', 'asdasdasasd'),
	(103, 'asda', 'asdas', 'asdas', 'asdas', 'asdasdasasd'),
	(104, 'asda', 'asdas', 'asdas', 'asdas', 'asdasdasasd'),
	(105, 'asda', 'asdas', 'asdas', 'asdas', 'asdasdasasd'),
	(119, 'asdasd', 'asdasd', 'asdas', 'sdasd', 'asdasdasdasd'),
	(120, 'asdasd', 'asdasd', 'asdas', 'sdasd', 'asdasdasdasd'),
	(127, 'asdasd', 'asdasd', 'asdas', 'sdasd', 'asdasdasdasd'),
	(129, 'asdasd', 'asdasd', 'asdas', 'sdasd', 'asdasdasdasd'),
	(130, 'asdasd', 'asdasd', 'asdas', 'sdasd', 'asdasdasdasd'),
	(131, 'asdasd', 'asdasd', 'asdas', 'sdasd', 'asdasdasdasd'),
	(132, 'asdasd', 'asdasd', 'asdas', 'sdasd', 'asdasdasdasd'),
	(138, 'asdasd', 'asdasd', 'asdas', 'sdasd', 'asdasdasdasd'),
	(139, 'asdasd', 'asdasd', 'asdas', 'sdasd', 'asdasdasdasd'),
	(140, 'asdasd', 'asdasd', 'asdas', 'sdasd', 'asdasdasdasd'),
	(141, 'asdasd', 'asdasd', 'asdas', 'sdasd', 'asdasdasdasd'),
	(162, 'asdas', 'asdasd', 'asdas', 'asdas', 'asdasdas'),
	(163, 'asdas', 'asdasd', 'asdas', 'asdas', 'asdasdas'),
	(164, 'asdas', 'asdasd', 'asdas', 'asdas', 'asdasdas'),
	(165, 'asdas', 'asdasd', 'asdas', 'asdas', 'asdasdas'),
	(166, 'asdas', 'asdasd', 'asdas', 'asdas', 'asdasdas'),
	(167, 'asdas', 'asdasd', 'asdas', 'asdas', 'asdasdas'),
	(168, 'asdas', 'asdasd', 'asdas', 'asdas', 'asdasdas'),
	(169, 'asdas', 'asdasd', 'asdas', 'asdas', 'asdasdas'),
	(170, 'asdas', 'asdasd', 'asdas', 'asdas', 'asdasdas'),
	(171, 'asdas', 'asdasd', 'asdas', 'asdas', 'asdasdas'),
	(172, 'asdas', 'asdasd', 'asdas', 'asdas', 'asdasdas'),
	(173, 'asdas', 'asdasd', 'asdas', 'asdas', 'asdasdas'),
	(174, 'asdas', 'asdasd', 'asdas', 'asdas', 'asdasdas'),
	(175, 'asdas', 'asdasd', 'asdas', 'asdas', 'asdasdas'),
	(176, 'asdasd', '', 'asddas', 'asdasd', ''),
	(177, 'asdasd', '', 'asddas', 'asdasd', ''),
	(178, 'asdasd', '', 'asddas', 'asdasd', ''),
	(179, 'asdasd', '', 'asddas', 'asdasd', ''),
	(180, 'asdasd', '', 'asddas', 'asdasd', ''),
	(181, 'asdasd', '', 'asddas', 'asdasd', ''),
	(182, 'asdasd', '', 'asddas', 'asdasd', ''),
	(183, 'asdasd', '', 'asddas', 'asdasd', ''),
	(184, 'asdasd', '', 'asddas', 'asdasd', ''),
	(185, 'asdasd', '', 'asddas', 'asdasd', ''),
	(186, 'asdasd', '', 'asddas', 'asdasd', ''),
	(187, 'asdasd', '', 'asdasd', 'asdasdas', ''),
	(188, 'asdasd', '', 'asdasd', 'asdasdas', ''),
	(189, 'asdasd', '', 'asdasd', 'asdasdas', ''),
	(190, 'asdasd', '', 'asdasd', 'asdasdas', ''),
	(191, 'asdasd', '', 'asdasd', 'asdasdas', ''),
	(192, 'asdasd', '', 'asdasd', 'asdasdas', ''),
	(193, 'asdasd', '', 'asdasd', 'asdasdas', ''),
	(194, 'asdasd', '', 'asdasd', 'asdasdas', ''),
	(195, 'asdasd', '', 'asdasd', 'asdasdas', ''),
	(196, 'asdasd', '', 'asdasd', 'asdasdas', ''),
	(197, 'asdasd', '', 'asdasd', 'asdasdas', ''),
	(198, 'asdasd', '', 'asdasd', 'asdasdas', ''),
	(199, 'asdasd', '', 'asdasd', 'asdasdas', ''),
	(200, 'asdasd', '', 'asdasdas', 'asdasd', ''),
	(201, 'asdasd', '', 'asdasdas', 'asdasd', ''),
	(202, 'asdasd', '', 'asdasdas', 'asdasd', ''),
	(203, 'asdasd', '', 'asdasdas', 'asdasd', ''),
	(204, 'asdasd', '', 'asdasdas', 'asdasd', ''),
	(205, 'asdasd', '', 'asdasdas', 'asdasd', ''),
	(206, 'asdasd', '', 'asdasdas', 'asdasd', ''),
	(207, 'asdasd', '', 'asdasdas', 'asdasd', ''),
	(208, 'asdasd', '', 'asdasdas', 'asdasd', ''),
	(209, 'asdasd', '', 'asdasdas', 'asdasd', ''),
	(210, 'asdasd', '', 'asdasdas', 'asdasd', ''),
	(211, 'asdasd', '', 'asdasdas', 'asdasd', ''),
	(212, 'asdasd', '', 'asdasdas', 'asdasd', ''),
	(254, 'asdasd', 'asdasd', 'asdasd', 'asdasd', 'asdasd'),
	(255, 'asdas', 'sadasd', 'asdasd', 'asdasd', 'asdasds'),
	(256, 'asdas', '', 'asdas', 'asdasdas', ''),
	(257, 'asdas', '', 'asdas', 'asdasdas', ''),
	(258, 'asdas', '', 'asdas', 'asdasdas', ''),
	(259, 'asdas', '', 'asdas', 'asdasdas', ''),
	(260, 'asdas', '', 'asdas', 'asdasdas', ''),
	(261, 'asdas', '', 'asdas', 'asdasdas', ''),
	(262, 'asda', '', 'asdasd', 'asdas', ''),
	(263, 'asda', '', 'asdasd', 'asdas', ''),
	(264, 'asda', '', 'asdasd', 'asdas', ''),
	(265, 'asda', '', 'asdasd', 'asdas', ''),
	(266, 'asdasd', '', 'asdas', 'asdasd', ''),
	(267, 'asdasd', '', 'asdas', 'asdasd', ''),
	(268, 'asdasd', '', 'asdas', 'asdasd', ''),
	(269, 'asd', '', 'asd', 'asd', ''),
	(270, 'asd', '', 'asd', 'asd', ''),
	(271, 'asd', '', 'asd', 'asd', ''),
	(272, 'asd', '', 'asd', 'asd', ''),
	(273, 'asd', '', 'asd', 'asd', ''),
	(274, 'asd', '', 'asd', 'asd', ''),
	(275, 'asd', 'asd', 'asd', 'asd', 'asdasd'),
	(276, 'asdasd', 'asdasd', 'asdas', 'sdasd', 'asdasd'),
	(277, 'asdasd', 'asdasd', 'asdas', 'sdasd', 'asdasd'),
	(278, 'asdasd', 'asdasd', 'asdas', 'sdasd', 'asdasd'),
	(279, 'asdasd', 'asdasd', 'asdas', 'sdasd', 'asdasd'),
	(280, 'asdas', '', 'asdas', 'asdasdas', ''),
	(281, 'asdas', '', 'asdas', 'asdasdas', ''),
	(282, 'asdas', '', 'asdas', 'asdasdas', ''),
	(283, 'asdas', '', 'asdas', 'asdasdas', ''),
	(291, 'asda', 'asdasd', 'asdasd', 'asdasd', 'asdasd'),
	(292, 'asdas', 'asdas', 'asdasd', 'asdas', 'asdasdasd'),
	(293, 'asdasd', 'asdas', 'asdas', 'asdasd', 'asdasdasd'),
	(294, 'asdasd', 'asdasd', 'asdas', 'asdasd', 'asdasdasd'),
	(295, 'asdasd', 'sadasdasdas', 'asdasd', 'asdasd', 'asdasdsds'),
	(296, 'asdas', 'asdasd', 'asdas', 'sadasd', 'asdasdasd'),
	(297, 'asdas', 'asdas', 'asdas', 'asdasd', 'asdasd'),
	(298, 'asdasd', 'asdasd', 'asdasd', 'asdasd', 'asdasds'),
	(299, 'asdasd', 'asdasd', 'asdas', 'asdas', 'asdasdasadasd'),
	(300, '', '', '', '', ''),
	(301, '', '', '', '', ''),
	(302, 'asdasd', 'asdas', 'asdas', 'asdasd', 'asdas'),
	(306, 'qweqw', 'qqq', 'qq', 'qq', 'dasd'),
	(307, 'asdas', 'asdasdasd', 'asds', 'asdasd', 'asdasasd'),
	(308, 'asd', 'asdasd', 'asd', 'asd', 'asdasdasdasdas'),
	(311, '', '', '', '', '');
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
) ENGINE=InnoDB AUTO_INCREMENT=23 DEFAULT CHARSET=utf8;

-- Volcando datos para la tabla efecto_led.led_datos: ~12 rows (aproximadamente)
/*!40000 ALTER TABLE `led_datos` DISABLE KEYS */;
INSERT INTO `led_datos` (`id_datos`, `numero_cuil`, `razon_social`, `direccion`, `codigo_postal`, `telefono_principal`, `correo_electronico_principal`, `sitio_web`, `estado`) VALUES
	(7, '7', 'asdasda', '7', '7', '7', 'a@a.com.ar', 'http://www.com.ar', 0),
	(8, '8', '8', '8', '8', '8', '8', '8', 0),
	(9, '9', '9', '9', '9', '9', '9', '9', 1),
	(13, '123123', 'test', 'test 123', '5700', '2664863396', 'a@a.com.ar', 'http://www.example.com', 1),
	(14, '1234', 'test', 'test 123', '5700', '266486336', 'a@a.com.ar', 'http://www.com.ar', 0),
	(15, '999999', 'test', '123123', '12312', '12312', 'a@a.com.ar', 'http://www.com.ar', 1),
	(17, '123123', 'ytr', 'tr', '7777', '43345', 'a@a.com.ar', 'http://www.asdf.com.ar', 0),
	(18, '', '', '', '', '', '', 'http://', 1),
	(19, '', '', '', '', '', '', 'http://', 1),
	(20, '', '', '', '', '', '', 'http://', 1),
	(21, 'asda', 'asd', 'asd', 'asd', 'asd', 'asd', 'http://www.com.ar', 0),
	(22, '123', 'MIRO', '123', '123', '123', '123@123.com.ar', 'http://www.sdf.com.ar', 1);
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
) ENGINE=InnoDB AUTO_INCREMENT=32 DEFAULT CHARSET=utf8;

-- Volcando datos para la tabla efecto_led.led_integrantes: ~8 rows (aproximadamente)
/*!40000 ALTER TABLE `led_integrantes` DISABLE KEYS */;
INSERT INTO `led_integrantes` (`id_integrantes`, `nombre`, `area`, `telefono`, `correo_electronico`, `id_proveedor`) VALUES
	(16, '10', '10', '10', '10', 8),
	(17, '10', '10', '10', '10', 8),
	(18, '10', '10', '10', '10', 8),
	(25, 'test', 'test', '123123', 'asda@a.com.ar', 14),
	(26, 'test', 'test', 'asdasdas', 'te@st.com.ar', 16),
	(27, 'asd', 'asd', 'asd', 'asd@com.ar', 16),
	(30, 'werew', 'werew', 'eewrw', 'asd@com.ar', 7),
	(31, 'TEST', 'TEST', '266486312', 'ASD@asd.com.ar', 17);
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
) ENGINE=InnoDB AUTO_INCREMENT=18 DEFAULT CHARSET=utf8;

-- Volcando datos para la tabla efecto_led.led_proveedores: ~9 rows (aproximadamente)
/*!40000 ALTER TABLE `led_proveedores` DISABLE KEYS */;
INSERT INTO `led_proveedores` (`id_proveedores`, `id_datos`) VALUES
	(7, 7),
	(8, 8),
	(11, 14),
	(12, 17),
	(13, 18),
	(14, 19),
	(15, 20),
	(16, 21),
	(17, 22);
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

-- Volcando datos para la tabla efecto_led.led_provistos: ~148 rows (aproximadamente)
/*!40000 ALTER TABLE `led_provistos` DISABLE KEYS */;
INSERT INTO `led_provistos` (`id_articulos`, `id_proveedores`, `id_trabajos`, `codigo_catalogo_proveedor`, `cantidad_articulos`, `costo_unitario`) VALUES
	(33, 8, 58, 'null', 6, 19.5),
	(35, 8, 58, 'null', 6, 19.5),
	(36, 8, 58, 'null', 6, 19.5),
	(39, 7, 59, 'null', 5, 4),
	(42, 7, 59, 'null', 5, 4),
	(43, 7, 59, 'null', 5, 4),
	(56, 7, 60, 'null', 4, 4),
	(64, 7, 61, 'null', 4, 3),
	(68, 7, 61, 'null', 4, 3),
	(69, 7, 61, 'null', 4, 3),
	(70, 7, 61, 'null', 4, 3),
	(71, 7, 61, 'null', 4, 3),
	(72, 7, 61, 'null', 4, 3),
	(73, 7, 61, 'null', 4, 3),
	(74, 7, 61, 'null', 4, 3),
	(75, 7, 61, 'null', 4, 3),
	(76, 7, 61, 'null', 4, 3),
	(77, 7, 62, 'null', 5, 4),
	(83, 7, 62, 'null', 5, 4),
	(84, 7, 62, 'null', 5, 4),
	(85, 7, 62, 'null', 5, 4),
	(86, 7, 62, 'null', 5, 4),
	(87, 7, 62, 'null', 5, 4),
	(88, 7, 62, 'null', 5, 4),
	(89, 7, 62, 'null', 5, 4),
	(91, 7, 63, 'null', 4, 4),
	(92, 7, 63, 'null', 4, 4),
	(93, 7, 63, 'null', 4, 4),
	(94, 7, 63, 'null', 4, 4),
	(95, 7, 63, 'null', 4, 4),
	(96, 7, 63, 'null', 4, 4),
	(97, 7, 63, 'null', 4, 4),
	(98, 7, 63, 'null', 4, 4),
	(99, 7, 63, 'null', 4, 4),
	(100, 7, 63, 'null', 4, 4),
	(101, 7, 63, 'null', 4, 4),
	(102, 7, 63, 'null', 4, 4),
	(103, 7, 63, 'null', 4, 4),
	(104, 7, 63, 'null', 4, 4),
	(105, 7, 63, 'null', 4, 4),
	(119, 7, 64, 'null', 6, 5),
	(120, 7, 64, 'null', 6, 5),
	(127, 7, 64, 'null', 6, 5),
	(129, 7, 64, 'null', 6, 5),
	(130, 7, 64, 'null', 6, 5),
	(131, 7, 64, 'null', 6, 5),
	(132, 7, 64, 'null', 6, 5),
	(138, 7, 64, 'null', 6, 5),
	(139, 7, 64, 'null', 6, 5),
	(140, 7, 64, 'null', 6, 5),
	(141, 7, 64, 'null', 6, 5),
	(162, 7, 66, 'null', 4, 9.8),
	(163, 7, 66, 'null', 4, 9.8),
	(164, 7, 66, 'null', 4, 9.8),
	(165, 7, 66, 'null', 4, 9.8),
	(166, 7, 66, 'null', 4, 9.8),
	(167, 7, 66, 'null', 4, 9.8),
	(168, 7, 66, 'null', 4, 9.8),
	(169, 7, 66, 'null', 4, 9.8),
	(170, 7, 66, 'null', 4, 9.8),
	(171, 7, 66, 'null', 4, 9.8),
	(172, 7, 66, 'null', 4, 9.8),
	(173, 7, 66, 'null', 4, 9.8),
	(174, 7, 66, 'null', 4, 9.8),
	(175, 7, 66, 'null', 4, 9.8),
	(176, 7, 67, 'null', 0, 0),
	(177, 7, 67, 'null', 0, 0),
	(178, 7, 67, 'null', 0, 0),
	(179, 7, 67, 'null', 0, 0),
	(180, 7, 67, 'null', 0, 0),
	(181, 7, 67, 'null', 0, 0),
	(182, 7, 67, 'null', 0, 0),
	(183, 7, 67, 'null', 0, 0),
	(184, 7, 67, 'null', 0, 0),
	(185, 7, 67, 'null', 0, 0),
	(186, 7, 67, 'null', 0, 0),
	(187, 7, 68, 'null', 0, 0),
	(188, 7, 68, 'null', 0, 0),
	(189, 7, 68, 'null', 0, 0),
	(190, 7, 68, 'null', 0, 0),
	(191, 7, 68, 'null', 0, 0),
	(192, 7, 68, 'null', 0, 0),
	(193, 7, 68, 'null', 0, 0),
	(194, 7, 68, 'null', 0, 0),
	(195, 7, 68, 'null', 0, 0),
	(196, 7, 68, 'null', 0, 0),
	(197, 7, 68, 'null', 0, 0),
	(198, 7, 68, 'null', 0, 0),
	(199, 7, 68, 'null', 0, 0),
	(200, 7, 69, 'null', 0, 0),
	(201, 7, 69, 'null', 0, 0),
	(202, 7, 69, 'null', 0, 0),
	(203, 7, 69, 'null', 0, 0),
	(204, 7, 69, 'null', 0, 0),
	(205, 7, 69, 'null', 0, 0),
	(206, 7, 69, 'null', 0, 0),
	(207, 7, 69, 'null', 0, 0),
	(208, 7, 69, 'null', 0, 0),
	(209, 7, 69, 'null', 0, 0),
	(210, 7, 69, 'null', 0, 0),
	(211, 7, 69, 'null', 0, 0),
	(212, 7, 69, 'null', 0, 0),
	(254, 7, 72, 'null', 4, 3),
	(255, 7, 81, 'null', 3, 4),
	(256, 7, 82, 'null', 0, 0),
	(257, 7, 82, 'null', 0, 0),
	(258, 7, 82, 'null', 0, 0),
	(259, 7, 82, 'null', 0, 0),
	(260, 7, 82, 'null', 0, 0),
	(261, 7, 82, 'null', 0, 0),
	(262, 7, 83, 'null', 0, 0),
	(263, 7, 83, 'null', 0, 0),
	(264, 7, 83, 'null', 0, 0),
	(265, 7, 83, 'null', 0, 0),
	(266, 7, 84, 'null', 0, 0),
	(267, 7, 84, 'null', 0, 0),
	(268, 7, 84, 'null', 0, 0),
	(269, 7, 85, 'null', 0, 0),
	(270, 7, 86, 'null', 0, 0),
	(271, 7, 86, 'null', 0, 0),
	(272, 7, 86, 'null', 0, 0),
	(273, 7, 86, 'null', 0, 0),
	(274, 7, 86, 'null', 0, 0),
	(275, 7, 87, 'null', 4, 4),
	(276, 7, 88, 'null', 2, 3),
	(277, 7, 88, 'null', 2, 3),
	(278, 7, 88, 'null', 2, 3),
	(279, 7, 88, 'null', 2, 3),
	(280, 7, 89, 'null', 0, 0),
	(281, 7, 89, 'null', 0, 0),
	(282, 7, 89, 'null', 0, 0),
	(283, 7, 89, 'null', 0, 0),
	(291, 7, 90, 'null', 4, 4),
	(292, 7, 90, 'null', 4, 3),
	(293, 7, 91, 'null', 6, 5),
	(294, 7, 91, 'null', 4, 3),
	(295, 8, 92, 'null', 5, 5),
	(296, 7, 92, 'null', 4, 3),
	(297, 7, 93, 'null', 3, 3),
	(298, 7, 93, 'null', 4, 4),
	(299, 7, 93, 'null', 3, 3),
	(300, 7, 93, 'null', 0, 0),
	(301, 7, 93, 'null', 0, 0),
	(302, 7, 84, 'null', 4, 4),
	(306, 11, 94, 'null', 3, 2),
	(307, 7, 95, 'null', 3, 4),
	(308, 7, 97, 'null', 5, 4),
	(311, 7, 101, 'null', 0, 0);
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
) ENGINE=InnoDB AUTO_INCREMENT=104 DEFAULT CHARSET=utf8;

-- Volcando datos para la tabla efecto_led.led_trabajos: ~90 rows (aproximadamente)
/*!40000 ALTER TABLE `led_trabajos` DISABLE KEYS */;
INSERT INTO `led_trabajos` (`id_trabajos`, `descripcion`, `fecha_creacion`, `fecha_aprobacion_presupuesto`, `fecha_inicio_obra`, `fecha_fin_obra`, `precio_total`, `precio_mano_obra`, `precio_articulos`, `id_cliente`) VALUES
	(14, 'test2asd', '2013-10-08 21:08:36', '2013-10-12 00:00:00', '2013-10-10 00:00:00', '2013-10-11 00:00:00', 0, 3, 0, 7),
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
	(58, 'asdasdasdasd', '2013-10-14 10:29:41', '2013-10-14 00:00:00', '2013-10-14 00:00:00', '2013-10-14 00:00:00', 0, 8, 0, 7),
	(59, '', '2013-10-14 10:57:32', NULL, '2013-10-14 00:00:00', NULL, 0, 0, 0, 7),
	(60, '', '2013-10-14 11:00:03', NULL, NULL, NULL, 0, 0, 0, 7),
	(61, '', '2013-10-14 11:04:20', NULL, NULL, NULL, 0, 0, 0, 7),
	(62, '', '2013-10-14 11:07:41', NULL, NULL, NULL, 0, 0, 0, 7),
	(63, '', '2013-10-14 11:10:31', NULL, NULL, NULL, 0, 0, 0, 7),
	(64, '', '2013-10-14 11:15:55', NULL, NULL, NULL, 0, 0, 0, 7),
	(65, '', '2013-10-14 11:22:39', NULL, NULL, NULL, 0, 0, 0, 7),
	(66, '', '2013-10-14 11:28:35', NULL, NULL, NULL, 0, 0, 0, 7),
	(67, '', '2013-10-14 11:29:57', NULL, NULL, NULL, 0, 0, 0, 7),
	(68, '', '2013-10-14 11:30:20', NULL, NULL, NULL, 0, 0, 0, 7),
	(69, '', '2013-10-14 11:31:08', NULL, NULL, NULL, 0, 0, 0, 7),
	(70, '', '2013-10-14 11:31:38', NULL, NULL, NULL, 0, 0, 0, 7),
	(71, '', '2013-10-14 11:33:11', NULL, NULL, NULL, 0, 0, 0, 7),
	(72, '', '2013-10-14 11:34:16', NULL, NULL, NULL, 0, 0, 0, 7),
	(73, '', '2013-10-14 11:36:33', NULL, NULL, NULL, 0, 0, 0, 7),
	(74, '', '2013-10-14 11:36:59', NULL, NULL, NULL, 0, 0, 0, 7),
	(75, '', '2013-10-14 11:37:07', NULL, NULL, NULL, 0, 0, 0, 7),
	(76, '', '2013-10-14 11:37:27', NULL, NULL, NULL, 0, 0, 0, 7),
	(77, '', '2013-10-14 11:38:56', NULL, NULL, NULL, 0, 0, 0, 7),
	(78, '', '2013-10-14 11:39:16', NULL, NULL, NULL, 0, 0, 0, 7),
	(79, '', '2013-10-14 11:40:23', NULL, NULL, NULL, 0, 0, 0, 7),
	(80, '', '2013-10-14 11:40:41', NULL, NULL, NULL, 0, 0, 0, 7),
	(81, '', '2013-10-14 11:51:50', NULL, NULL, NULL, 0, 0, 0, 7),
	(82, '', '2013-10-14 11:52:13', NULL, NULL, NULL, 0, 0, 0, 7),
	(83, '', '2013-10-14 11:54:20', NULL, NULL, NULL, 0, 0, 0, 7),
	(84, '', '2013-10-14 12:00:25', NULL, NULL, NULL, 0, 0, 0, 7),
	(85, '', '2013-10-14 12:03:04', NULL, NULL, NULL, 0, 0, 0, 7),
	(86, '', '2013-10-14 12:04:03', NULL, NULL, NULL, 0, 0, 0, 7),
	(87, '', '2013-10-14 12:06:47', NULL, NULL, NULL, 0, 0, 0, 7),
	(88, '', '2013-10-14 12:07:29', NULL, NULL, NULL, 0, 0, 0, 7),
	(89, '', '2013-10-14 12:09:03', NULL, NULL, NULL, 0, 0, 0, 7),
	(90, '', '2013-10-14 13:12:32', NULL, NULL, NULL, 0, 0, 0, 7),
	(91, '', '2013-10-14 13:13:59', NULL, NULL, NULL, 0, 0, 0, 7),
	(92, '', '2013-10-14 13:14:31', NULL, NULL, NULL, 0, 0, 0, 7),
	(93, '', '2013-10-14 13:17:39', NULL, NULL, NULL, 0, 0, 0, 7),
	(94, '', '2013-10-14 13:33:13', NULL, NULL, NULL, 0, 0, 0, 7),
	(95, 'asdasdasd', '2013-10-14 15:11:42', '2013-10-14 00:00:00', '2013-10-14 00:00:00', '2013-10-14 00:00:00', 0, 4, 0, 7),
	(96, '', '2013-10-14 15:12:28', NULL, NULL, NULL, 0, 0, 0, 7),
	(97, '', '2013-10-14 15:13:00', NULL, NULL, NULL, 0, 0, 0, 7),
	(98, '', '2013-10-14 15:17:43', NULL, NULL, NULL, 0, 0, 0, 7),
	(99, '', '2013-10-14 15:19:19', NULL, NULL, NULL, 0, 0, 0, 7),
	(100, '', '2013-10-14 15:22:12', NULL, NULL, NULL, 0, 0, 0, 7),
	(101, '', '2013-10-14 15:22:22', NULL, NULL, NULL, 0, 0, 0, 7),
	(102, '', '2013-10-14 16:59:21', NULL, NULL, NULL, 0, 0, 0, 7),
	(103, '', '2013-10-14 16:59:42', NULL, NULL, NULL, 0, 0, 0, 7);
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
/*!40101 SET SQL_MODE=IFNULL(@OLD_SQL_MODE, '') */;
/*!40014 SET FOREIGN_KEY_CHECKS=IF(@OLD_FOREIGN_KEY_CHECKS IS NULL, 1, @OLD_FOREIGN_KEY_CHECKS) */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
