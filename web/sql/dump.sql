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
) ENGINE=InnoDB AUTO_INCREMENT=325 DEFAULT CHARSET=utf8;

-- Volcando datos para la tabla efecto_led.led_articulos: ~2 rows (aproximadamente)
/*!40000 ALTER TABLE `led_articulos` DISABLE KEYS */;
INSERT INTO `led_articulos` (`id_articulo`, `codigo_interno`, `descripcion`, `marca_fabricante`, `modelo`, `observaciones`) VALUES
	(322, 'gfds', 'gsdfa', '432', '1234', 'gfsdads'),
	(324, 'gfds', 'gfd', 'gfds', 'gfd', 'hgfd');
/*!40000 ALTER TABLE `led_articulos` ENABLE KEYS */;


-- Volcando estructura para tabla efecto_led.led_clientes
DROP TABLE IF EXISTS `led_clientes`;
CREATE TABLE IF NOT EXISTS `led_clientes` (
  `id_cliente` int(11) NOT NULL AUTO_INCREMENT,
  `id_datos` int(11) NOT NULL,
  PRIMARY KEY (`id_cliente`),
  KEY `fk_led_cliente_led_datos1_idx` (`id_datos`),
  CONSTRAINT `fk_led_cliente_led_datos1` FOREIGN KEY (`id_datos`) REFERENCES `led_datos` (`id_datos`) ON DELETE CASCADE ON UPDATE NO ACTION
) ENGINE=InnoDB AUTO_INCREMENT=12 DEFAULT CHARSET=utf8;

-- Volcando datos para la tabla efecto_led.led_clientes: ~3 rows (aproximadamente)
/*!40000 ALTER TABLE `led_clientes` DISABLE KEYS */;
INSERT INTO `led_clientes` (`id_cliente`, `id_datos`) VALUES
	(7, 7),
	(8, 8),
	(11, 35);
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
) ENGINE=InnoDB AUTO_INCREMENT=36 DEFAULT CHARSET=utf8;

-- Volcando datos para la tabla efecto_led.led_datos: ~24 rows (aproximadamente)
/*!40000 ALTER TABLE `led_datos` DISABLE KEYS */;
INSERT INTO `led_datos` (`id_datos`, `numero_cuil`, `razon_social`, `direccion`, `codigo_postal`, `telefono_principal`, `correo_electronico_principal`, `sitio_web`, `estado`) VALUES
	(7, '7', 'asdasda', '7', '7', '7', 'a@a.com.ar', 'http://www.com.ar', 1),
	(8, '8', '8', '8', '8', '8', '', '', 1),
	(9, '9', '9', '9', '9', '9', '9', '9', 1),
	(13, '123123', 'test', 'test 123', '5700', '2664863396', 'a@a.com.ar', 'http://www.example.com', 1),
	(14, '1234', 'test', 'test 123', '5700', '266486336', 'a@a.com.ar', 'http://www.com.ar', 1),
	(17, '123123', 'ytr', 'tr', '7777', '43345', 'a@a.com.ar', 'http://www.asdf.com.ar', 1),
	(18, '', '', '', '', '', '', 'http://', 1),
	(19, '123', '12312', '13123', '13123', '123123', '', '', 1),
	(20, '', '', '', '', '', '', 'http://', 1),
	(21, 'asda', 'asd', 'asd', 'asd', 'asd', 'asd', 'http://www.com.ar', 1),
	(22, '123', 'MIRO', '123', '123', '123', '123@123.com.ar', 'http://www.sdf.com.ar', 1),
	(23, '', '', '', '', '', '', 'http://', 1),
	(24, '', '', '', '', '', '', 'http://', 1),
	(25, '', '', '', '', '', '', 'http://', 1),
	(26, '', '', '', '', '', '', 'http://', 1),
	(27, '', '', '', '', '', '', 'http://', 1),
	(28, '132', '132', '123', '123', '123', '123@123.com.ar', 'http://www.asdf.com.ar', 1),
	(29, '123', '123', '123', '123', '123', '123@gmail.com', 'http://123.asd.cm', 1),
	(30, '2345', 'gggg', 'fffff', '5700', '2222', '', 'http://www.com.ar', 1),
	(31, '266486', 'asd', 'asd', '5700', '2664', 'asd@ad.com', 'http://wwww.com.ar', 1),
	(32, '123123', 'asdasd', 'asdads', '23432', '123123', '', '', 1),
	(33, '123', '123', '123', '123', '123', '', '', 1),
	(34, '123', '123', '123', '123', '123', '', '', 1),
	(35, '132', 'gfd', 'aeasd', '3213', '13123', '', '', 1);
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
) ENGINE=InnoDB AUTO_INCREMENT=66 DEFAULT CHARSET=utf8;

-- Volcando datos para la tabla efecto_led.led_integrantes: ~21 rows (aproximadamente)
/*!40000 ALTER TABLE `led_integrantes` DISABLE KEYS */;
INSERT INTO `led_integrantes` (`id_integrantes`, `nombre`, `area`, `telefono`, `correo_electronico`, `id_proveedor`) VALUES
	(18, '10', '10', '10', '10', 8),
	(26, 'test', 'test', 'asdasdas', 'te@st.com.ar', 16),
	(27, 'asd', 'asd', 'asd', 'asd@com.ar', 16),
	(30, 'werew', 'werew', 'eewrw', 'asd@com.ar', 7),
	(31, 'TEST', 'TEST', '266486312', 'ASD@asd.com.ar', 17),
	(33, 'dddd', 'aaa', '222', '', 23),
	(34, 'ddd', 'aaa', '2345', '', 23),
	(35, 'asd', 'as', 'sdf', '', 23),
	(36, 'rrrr', 'ttt', 'aaaa', '', 24),
	(38, 'ggg', 'ggggg', '4444', '', 24),
	(52, 'test', 'test', '123123', 'asda@a.com.ar', 14),
	(53, 'test', 'test', '123123', 'asda@a.com.ar', 14),
	(54, 'test', 'test', '123123', 'asda@a.com.ar', 14),
	(55, 'test', 'test', '123123', 'asda@a.com.ar', 14),
	(56, 'test', 'test', '123123', 'asda@a.com.ar', 14),
	(57, 'test', 'test', '123123', 'asda@a.com.ar', 14),
	(58, 'test', 'test', '123123', 'asda@a.com.ar', 14),
	(60, 'test', 'test', '123123', 'asda@a.com.ar', 14),
	(61, 'test', 'test', '123123', 'asda@a.com.ar', 14),
	(63, 'fd', 'gfds', '123', '', 29),
	(65, 'sdf', 'gfd', '342', '', 8);
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

-- Volcando datos para la tabla efecto_led.led_participa: ~6 rows (aproximadamente)
/*!40000 ALTER TABLE `led_participa` DISABLE KEYS */;
INSERT INTO `led_participa` (`id_terceros`, `id_trabajos`, `costo_prestacion`, `descripcion_trabajo_realizado`) VALUES
	(7, 110, 5432, 'asdf'),
	(7, 125, 9, 'asdasdasdas'),
	(7, 127, 6, 'gfds'),
	(7, 128, 5, 'asdasdasd'),
	(8, 128, 5, 'dsfdsfdsf'),
	(9, 126, 12, 'others');
/*!40000 ALTER TABLE `led_participa` ENABLE KEYS */;


-- Volcando estructura para tabla efecto_led.led_proveedores
DROP TABLE IF EXISTS `led_proveedores`;
CREATE TABLE IF NOT EXISTS `led_proveedores` (
  `id_proveedores` int(11) NOT NULL AUTO_INCREMENT,
  `id_datos` int(11) NOT NULL,
  PRIMARY KEY (`id_proveedores`),
  KEY `fk_led_proveedores_led_datos_idx` (`id_datos`),
  CONSTRAINT `fk_led_proveedores_led_datos` FOREIGN KEY (`id_datos`) REFERENCES `led_datos` (`id_datos`) ON DELETE CASCADE ON UPDATE NO ACTION
) ENGINE=InnoDB AUTO_INCREMENT=30 DEFAULT CHARSET=utf8;

-- Volcando datos para la tabla efecto_led.led_proveedores: ~21 rows (aproximadamente)
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
	(17, 22),
	(18, 23),
	(19, 24),
	(20, 25),
	(21, 26),
	(22, 27),
	(23, 28),
	(24, 29),
	(25, 30),
	(26, 31),
	(27, 32),
	(28, 33),
	(29, 34);
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

-- Volcando datos para la tabla efecto_led.led_provistos: ~2 rows (aproximadamente)
/*!40000 ALTER TABLE `led_provistos` DISABLE KEYS */;
INSERT INTO `led_provistos` (`id_articulos`, `id_proveedores`, `id_trabajos`, `codigo_catalogo_proveedor`, `cantidad_articulos`, `costo_unitario`) VALUES
	(322, 7, 106, 'xcvb', 1, 100),
	(324, 17, 107, 'gfds', 5, 4);
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
) ENGINE=InnoDB AUTO_INCREMENT=129 DEFAULT CHARSET=utf8;

-- Volcando datos para la tabla efecto_led.led_trabajos: ~21 rows (aproximadamente)
/*!40000 ALTER TABLE `led_trabajos` DISABLE KEYS */;
INSERT INTO `led_trabajos` (`id_trabajos`, `descripcion`, `fecha_creacion`, `fecha_aprobacion_presupuesto`, `fecha_inicio_obra`, `fecha_fin_obra`, `precio_total`, `precio_mano_obra`, `precio_articulos`, `id_cliente`) VALUES
	(106, 'test', '2013-10-14 20:53:22', '2013-10-14 00:00:00', '2013-10-14 00:00:00', '2013-10-14 00:00:00', 106, 6, 100, 8),
	(107, 'ggggg', '2013-10-14 20:54:12', '2013-10-14 00:00:00', '2013-10-14 00:00:00', '2013-10-14 00:00:00', 25, 5, 20, 7),
	(110, '', '2013-10-14 21:30:58', NULL, NULL, NULL, 0, 0, 0, 8),
	(111, '', '2013-10-14 21:57:33', NULL, NULL, NULL, 0, 0, 0, 8),
	(112, '', '2013-10-14 21:58:27', NULL, NULL, NULL, 0, 0, 0, 8),
	(113, '', '2013-10-14 21:58:42', NULL, NULL, NULL, 0, 0, 0, 8),
	(114, '', '2013-10-14 21:58:45', NULL, NULL, NULL, 0, 0, 0, 8),
	(115, '', '2013-10-14 22:01:42', NULL, NULL, NULL, 0, 0, 0, 8),
	(116, '', '2013-10-14 22:02:53', NULL, NULL, NULL, 0, 0, 0, 8),
	(117, '', '2013-10-14 22:08:48', NULL, NULL, NULL, 0, 0, 0, 8),
	(118, '', '2013-10-14 22:29:47', NULL, NULL, NULL, 0, 0, 0, 8),
	(119, '', '2013-10-14 22:38:04', NULL, NULL, NULL, 0, 0, 0, 8),
	(120, '', '2013-10-14 22:44:53', NULL, NULL, NULL, 0, 0, 0, 8),
	(121, '', '2013-10-14 22:45:39', NULL, NULL, NULL, 0, 0, 0, 8),
	(122, '', '2013-10-14 23:11:38', NULL, NULL, NULL, 0, 0, 0, 8),
	(123, '', '2013-10-14 23:11:59', NULL, NULL, NULL, 0, 0, 0, 8),
	(124, '', '2013-10-14 23:14:09', NULL, NULL, NULL, 0, 0, 0, 7),
	(125, '', '2013-10-14 23:14:36', NULL, NULL, NULL, 0, 0, 0, 7),
	(126, 'others', '2013-10-14 23:18:21', '2013-10-14 00:00:00', '2013-10-14 00:00:00', '2013-10-14 00:00:00', 5, 5, 0, 7),
	(127, '', '2013-10-14 23:24:39', NULL, NULL, NULL, 0, 0, 0, 7),
	(128, '', '2013-10-14 23:25:59', NULL, NULL, NULL, 0, 0, 0, 7);
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

		SET NEW.precio_total = NEW.precio_mano_obra + NEW.precio_articulos;

	END//
DELIMITER ;
SET SQL_MODE=@OLDTMP_SQL_MODE;


-- Volcando estructura para disparador efecto_led.before_update_trabajos
DROP TRIGGER IF EXISTS `before_update_trabajos`;
SET @OLDTMP_SQL_MODE=@@SQL_MODE, SQL_MODE='STRICT_TRANS_TABLES';
DELIMITER //
CREATE TRIGGER `before_update_trabajos` BEFORE UPDATE ON `led_trabajos` FOR EACH ROW BEGIN

		SET NEW.precio_total = NEW.precio_mano_obra + NEW.precio_articulos;

	END//
DELIMITER ;
SET SQL_MODE=@OLDTMP_SQL_MODE;
/*!40101 SET SQL_MODE=IFNULL(@OLD_SQL_MODE, '') */;
/*!40014 SET FOREIGN_KEY_CHECKS=IF(@OLD_FOREIGN_KEY_CHECKS IS NULL, 1, @OLD_FOREIGN_KEY_CHECKS) */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
