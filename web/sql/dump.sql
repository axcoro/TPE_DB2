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
CREATE DATABASE IF NOT EXISTS `efecto_led` /*!40100 DEFAULT CHARACTER SET utf8 */;
USE `efecto_led`;


-- Volcando estructura para tabla efecto_led.led_articulos
CREATE TABLE IF NOT EXISTS `led_articulos` (
  `id_articulo` int(11) NOT NULL AUTO_INCREMENT,
  `codigo_interno` varchar(45) NOT NULL,
  `descripcion` varchar(255) NOT NULL,
  `marca_fabricante` varchar(255) NOT NULL,
  `modelo` varchar(255) NOT NULL,
  `observaciones` varchar(255) NOT NULL,
  PRIMARY KEY (`id_articulo`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8;

-- Volcando datos para la tabla efecto_led.led_articulos: ~1 rows (aproximadamente)
DELETE FROM `led_articulos`;
/*!40000 ALTER TABLE `led_articulos` DISABLE KEYS */;
INSERT INTO `led_articulos` (`id_articulo`, `codigo_interno`, `descripcion`, `marca_fabricante`, `modelo`, `observaciones`) VALUES
	(1, 'b', 'b', 'b', 'b', 'b');
/*!40000 ALTER TABLE `led_articulos` ENABLE KEYS */;


-- Volcando estructura para tabla efecto_led.led_clientes
CREATE TABLE IF NOT EXISTS `led_clientes` (
  `id_cliente` int(11) NOT NULL AUTO_INCREMENT,
  `id_datos` int(11) NOT NULL,
  PRIMARY KEY (`id_cliente`),
  KEY `fk_led_cliente_led_datos1_idx` (`id_datos`),
  CONSTRAINT `fk_led_cliente_led_datos1` FOREIGN KEY (`id_datos`) REFERENCES `led_datos` (`id_datos`) ON DELETE CASCADE ON UPDATE NO ACTION
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8;

-- Volcando datos para la tabla efecto_led.led_clientes: ~1 rows (aproximadamente)
DELETE FROM `led_clientes`;
/*!40000 ALTER TABLE `led_clientes` DISABLE KEYS */;
INSERT INTO `led_clientes` (`id_cliente`, `id_datos`) VALUES
	(1, 1);
/*!40000 ALTER TABLE `led_clientes` ENABLE KEYS */;


-- Volcando estructura para tabla efecto_led.led_datos
CREATE TABLE IF NOT EXISTS `led_datos` (
  `id_datos` int(11) NOT NULL AUTO_INCREMENT,
  `numero_cuil` varchar(45) NOT NULL,
  `razon_social` varchar(45) NOT NULL,
  `direccion` varchar(45) NOT NULL,
  `codigo_postal` varchar(45) NOT NULL,
  `telefono_principal` varchar(45) NOT NULL,
  `correo_electronico_principal` varchar(45) NOT NULL,
  `sitio_web` varchar(45) DEFAULT NULL,
  PRIMARY KEY (`id_datos`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8;

-- Volcando datos para la tabla efecto_led.led_datos: ~1 rows (aproximadamente)
DELETE FROM `led_datos`;
/*!40000 ALTER TABLE `led_datos` DISABLE KEYS */;
INSERT INTO `led_datos` (`id_datos`, `numero_cuil`, `razon_social`, `direccion`, `codigo_postal`, `telefono_principal`, `correo_electronico_principal`, `sitio_web`) VALUES
	(1, '1', '1', '1', '1', '1', '1', '1');
/*!40000 ALTER TABLE `led_datos` ENABLE KEYS */;


-- Volcando estructura para tabla efecto_led.led_integrantes
CREATE TABLE IF NOT EXISTS `led_integrantes` (
  `id_integrantes` int(11) NOT NULL AUTO_INCREMENT,
  `nombre` varchar(45) NOT NULL,
  `area` varchar(45) NOT NULL,
  `telefono` varchar(45) NOT NULL,
  `correo_electronico` varchar(45) NOT NULL,
  `id_proveedor` int(11) NOT NULL,
  PRIMARY KEY (`id_integrantes`),
  KEY `tienen` (`id_proveedor`),
  CONSTRAINT `tienen` FOREIGN KEY (`id_proveedor`) REFERENCES `led_proveedores` (`id_proveedores`) ON DELETE NO ACTION ON UPDATE NO ACTION
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8;

-- Volcando datos para la tabla efecto_led.led_integrantes: ~1 rows (aproximadamente)
DELETE FROM `led_integrantes`;
/*!40000 ALTER TABLE `led_integrantes` DISABLE KEYS */;
INSERT INTO `led_integrantes` (`id_integrantes`, `nombre`, `area`, `telefono`, `correo_electronico`, `id_proveedor`) VALUES
	(1, '1', '1', '1', '1', 1);
/*!40000 ALTER TABLE `led_integrantes` ENABLE KEYS */;


-- Volcando estructura para tabla efecto_led.led_participa
CREATE TABLE IF NOT EXISTS `led_participa` (
  `id_terceros` int(11) NOT NULL,
  `id_trabajos` int(11) NOT NULL,
  `costo_prestacion` float DEFAULT '0',
  `descripcion_trabajo_realizado` varchar(255) NOT NULL,
  PRIMARY KEY (`id_terceros`,`id_trabajos`),
  KEY `fk_led_participa_led_terceros1_idx` (`id_terceros`),
  KEY `fk_led_participa_led_trabajos1_idx` (`id_trabajos`),
  CONSTRAINT `fk_led_participa_led_terceros1` FOREIGN KEY (`id_terceros`) REFERENCES `led_terceros` (`id_terceros`) ON DELETE NO ACTION ON UPDATE NO ACTION,
  CONSTRAINT `fk_led_participa_led_trabajos1` FOREIGN KEY (`id_trabajos`) REFERENCES `led_trabajos` (`id_trabajos`) ON DELETE NO ACTION ON UPDATE NO ACTION
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- Volcando datos para la tabla efecto_led.led_participa: ~1 rows (aproximadamente)
DELETE FROM `led_participa`;
/*!40000 ALTER TABLE `led_participa` DISABLE KEYS */;
INSERT INTO `led_participa` (`id_terceros`, `id_trabajos`, `costo_prestacion`, `descripcion_trabajo_realizado`) VALUES
	(1, 1, 0, 'asdasd');
/*!40000 ALTER TABLE `led_participa` ENABLE KEYS */;


-- Volcando estructura para tabla efecto_led.led_proveedores
CREATE TABLE IF NOT EXISTS `led_proveedores` (
  `id_proveedores` int(11) NOT NULL AUTO_INCREMENT,
  `id_datos` int(11) NOT NULL,
  PRIMARY KEY (`id_proveedores`),
  KEY `fk_led_proveedores_led_datos_idx` (`id_datos`),
  CONSTRAINT `fk_led_proveedores_led_datos` FOREIGN KEY (`id_datos`) REFERENCES `led_datos` (`id_datos`) ON DELETE CASCADE ON UPDATE NO ACTION
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8;

-- Volcando datos para la tabla efecto_led.led_proveedores: ~1 rows (aproximadamente)
DELETE FROM `led_proveedores`;
/*!40000 ALTER TABLE `led_proveedores` DISABLE KEYS */;
INSERT INTO `led_proveedores` (`id_proveedores`, `id_datos`) VALUES
	(1, 1);
/*!40000 ALTER TABLE `led_proveedores` ENABLE KEYS */;


-- Volcando estructura para tabla efecto_led.led_provistos
CREATE TABLE IF NOT EXISTS `led_provistos` (
  `id_articulos` int(11) NOT NULL,
  `id_proveedores` int(11) NOT NULL,
  `codigo_catalogo_proveedor` varchar(45) NOT NULL,
  PRIMARY KEY (`id_proveedores`,`id_articulos`),
  KEY `fk_led_provistos_led_articulos1_idx` (`id_articulos`),
  KEY `fk_led_provistos_led_proveedores1_idx` (`id_proveedores`),
  CONSTRAINT `fk_led_provistos_led_articulos1` FOREIGN KEY (`id_articulos`) REFERENCES `led_articulos` (`id_articulo`) ON DELETE NO ACTION ON UPDATE NO ACTION,
  CONSTRAINT `fk_led_provistos_led_proveedores1` FOREIGN KEY (`id_proveedores`) REFERENCES `led_proveedores` (`id_proveedores`) ON DELETE NO ACTION ON UPDATE NO ACTION
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- Volcando datos para la tabla efecto_led.led_provistos: ~1 rows (aproximadamente)
DELETE FROM `led_provistos`;
/*!40000 ALTER TABLE `led_provistos` DISABLE KEYS */;
INSERT INTO `led_provistos` (`id_articulos`, `id_proveedores`, `codigo_catalogo_proveedor`) VALUES
	(1, 1, 'asdasda');
/*!40000 ALTER TABLE `led_provistos` ENABLE KEYS */;


-- Volcando estructura para tabla efecto_led.led_terceros
CREATE TABLE IF NOT EXISTS `led_terceros` (
  `id_terceros` int(11) NOT NULL AUTO_INCREMENT,
  `id_datos` int(11) NOT NULL,
  PRIMARY KEY (`id_terceros`),
  KEY `fk_led_terceros_led_datos1_idx` (`id_datos`),
  CONSTRAINT `fk_led_terceros_led_datos1` FOREIGN KEY (`id_datos`) REFERENCES `led_datos` (`id_datos`) ON DELETE CASCADE ON UPDATE NO ACTION
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8;

-- Volcando datos para la tabla efecto_led.led_terceros: ~1 rows (aproximadamente)
DELETE FROM `led_terceros`;
/*!40000 ALTER TABLE `led_terceros` DISABLE KEYS */;
INSERT INTO `led_terceros` (`id_terceros`, `id_datos`) VALUES
	(1, 1);
/*!40000 ALTER TABLE `led_terceros` ENABLE KEYS */;


-- Volcando estructura para tabla efecto_led.led_trabajos
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
  CONSTRAINT `solicita` FOREIGN KEY (`id_cliente`) REFERENCES `led_clientes` (`id_cliente`) ON DELETE NO ACTION ON UPDATE NO ACTION
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=utf8;

-- Volcando datos para la tabla efecto_led.led_trabajos: ~2 rows (aproximadamente)
DELETE FROM `led_trabajos`;
/*!40000 ALTER TABLE `led_trabajos` DISABLE KEYS */;
INSERT INTO `led_trabajos` (`id_trabajos`, `descripcion`, `fecha_creacion`, `fecha_aprobacion_presupuesto`, `fecha_inicio_obra`, `fecha_fin_obra`, `precio_total`, `precio_mano_obra`, `precio_articulos`, `id_cliente`) VALUES
	(1, '1', '2013-10-08 21:08:36', '2013-10-08 21:08:37', '2013-10-08 21:08:38', '2013-10-08 21:08:38', 0, 0, 0, 1),
	(2, '2', '2013-10-09 20:41:53', '2013-10-09 20:41:55', '2013-10-09 20:41:56', '2013-10-09 20:41:57', 0, 0, 0, 1);
/*!40000 ALTER TABLE `led_trabajos` ENABLE KEYS */;


-- Volcando estructura para tabla efecto_led.led_utiliza
CREATE TABLE IF NOT EXISTS `led_utiliza` (
  `id_articulos` int(11) NOT NULL,
  `id_trabajos` int(11) NOT NULL,
  `id_proveedor` int(11) NOT NULL,
  `costo_unitario` float DEFAULT '0',
  `cantidad_articulos` int(11) DEFAULT '0',
  PRIMARY KEY (`id_articulos`,`id_trabajos`),
  KEY `fk_led_utiliza_led_articulos1_idx` (`id_articulos`),
  KEY `fk_led_utiliza_led_trabajos1_idx` (`id_trabajos`),
  KEY `FK_led_utiliza_led_proveedores` (`id_proveedor`),
  CONSTRAINT `fk_led_utiliza_led_articulos1` FOREIGN KEY (`id_articulos`) REFERENCES `led_articulos` (`id_articulo`) ON DELETE NO ACTION ON UPDATE NO ACTION,
  CONSTRAINT `FK_led_utiliza_led_proveedores` FOREIGN KEY (`id_proveedor`) REFERENCES `led_proveedores` (`id_proveedores`) ON DELETE NO ACTION ON UPDATE NO ACTION,
  CONSTRAINT `fk_led_utiliza_led_trabajos1` FOREIGN KEY (`id_trabajos`) REFERENCES `led_trabajos` (`id_trabajos`) ON DELETE NO ACTION ON UPDATE NO ACTION
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- Volcando datos para la tabla efecto_led.led_utiliza: ~1 rows (aproximadamente)
DELETE FROM `led_utiliza`;
/*!40000 ALTER TABLE `led_utiliza` DISABLE KEYS */;
INSERT INTO `led_utiliza` (`id_articulos`, `id_trabajos`, `id_proveedor`, `costo_unitario`, `cantidad_articulos`) VALUES
	(1, 1, 1, 0, 0);
/*!40000 ALTER TABLE `led_utiliza` ENABLE KEYS */;


-- Volcando estructura para procedimiento efecto_led.LED_crearArticulo
DELIMITER //
CREATE PROCEDURE `LED_crearArticulo`(


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


-- Volcando estructura para procedimiento efecto_led.LED_crearDatos
DELIMITER //
CREATE PROCEDURE `LED_crearDatos`(


_numero_cuil VARCHAR(45),
_razon_social VARCHAR(45),
_direccion VARCHAR(255),
_codigo_postal VARCHAR(45),
_telefono_principal VARCHAR(45),
_correo_electrónico_principal VARCHAR(45),
_sitio_web VARCHAR(255),
_tipo INT
)
BEGIN

INSERT INTO `led_datos` (`numero_cuil`, `razon_social`, `direccion`, `codigo_postal`, `telefono_principal`, `correo_electrónico_principal`, `sitio_web`)
VALUES (_numero_cuil, _razon_social, _direccion, _codigo_postal, _telefono_principal, _correo_electrónico_principal, _sitio_web);

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


-- Volcando estructura para procedimiento efecto_led.LED_crearTrabajo
DELIMITER //
CREATE PROCEDURE `LED_crearTrabajo`(


_descripcion VARCHAR(45),
_fecha_creacion DATETIME,
_fecha_aprobacion_presupuesto DATETIME,
_fecha_inicio_obra DATETIME,
_fecha_fin_obra DATETIME,
_precio_total FLOAT,
_precio_mano_obra FLOAT,
_precio_articulos FLOAT
)
BEGIN

INSERT INTO led_trabajos
    (descripcion, fecha_creacion, fecha_aprobacion_presupuesto, fecha_inicio_obra, fecha_fin_obra, precio_total, precio_mano_obra, precio_articulos)
VALUES
    (_descripcion, _fecha_creacion, _fecha_aprobacion_presupuesto, _fecha_inicio_obra, _fecha_fin_obra, _precio_total, _precio_mano_obra, _precio_articulos);

END//
DELIMITER ;


-- Volcando estructura para procedimiento efecto_led.LED_eliminarArticulo
DELIMITER //
CREATE PROCEDURE `LED_eliminarArticulo`(


_id INT
)
BEGIN

    DELETE FROM led_articulo WHERE  id_articulo = _id;

END//
DELIMITER ;


-- Volcando estructura para procedimiento efecto_led.LED_eliminarDatos
DELIMITER //
CREATE PROCEDURE `LED_eliminarDatos`(


_id INT
)
BEGIN

    DELETE FROM led_datos WHERE  id_datos = _id;

END//
DELIMITER ;


-- Volcando estructura para procedimiento efecto_led.LED_eliminarTrabajo
DELIMITER //
CREATE PROCEDURE `LED_eliminarTrabajo`(


_id INT
)
BEGIN

    DELETE FROM led_trabajos WHERE  id_trabajos = _id;

END//
DELIMITER ;


-- Volcando estructura para procedimiento efecto_led.LED_listarArticulosPorTrabajo
DELIMITER //
CREATE PROCEDURE `LED_listarArticulosPorTrabajo`(


_id INT
)
BEGIN

select a.*, u.* from led_articulos a
inner join led_utiliza u on u.id_articulos = a.id_articulo
where u.id_trabajos = _id;

END//
DELIMITER ;


-- Volcando estructura para procedimiento efecto_led.LED_listarDatos
DELIMITER //
CREATE PROCEDURE `LED_listarDatos`(


_tipo INT
)
BEGIN

case  
when _tipo = 0 then 
    select p.id_proveedores, d.* from led_datos d
	inner join led_proveedores p on d.id_datos = p.id_datos;
when _tipo = 1 then 
    select p.id_cliente, d.* from led_datos d
	inner join led_clientes p on d.id_datos = p.id_datos;
when _tipo = 2 then 
    select p.id_terceros, d.* from led_datos d
	inner join led_terceros p on d.id_datos = p.id_datos;
end case; 

END//
DELIMITER ;


-- Volcando estructura para procedimiento efecto_led.LED_listarIntegrantesPorProveedor
DELIMITER //
CREATE PROCEDURE `LED_listarIntegrantesPorProveedor`(

/*
===================================================
 Nombre: LED_listarIntegrantesPorProveedor
 Descripcion: dado un proveedor, lista los integrantes
 Comentarios: 
 Autores: Coronel, Axel
 Audit Trail:
===================================================
*/
_id INT
)
BEGIN

select i.* from led_integrantes i
where i.id_proveedor = _id;

END//
DELIMITER ;


-- Volcando estructura para procedimiento efecto_led.LED_listarProveedoresPorArticulo
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
DELIMITER //
CREATE PROCEDURE `LED_listarTercerosPorTrabajo`(


_id INT
)
BEGIN

select t.*, p.costo_prestacion, p.descripcion_trabajo_realizado from led_terceros t
inner join led_participa p on p.id_terceros = t.id_terceros
where p.id_trabajos = _id;

END//
DELIMITER ;


-- Volcando estructura para procedimiento efecto_led.LED_listarTrabajosPorCliente
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
DELIMITER //
CREATE PROCEDURE `LED_modificarArticulo`(


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
WHERE  id_integrantes = _id;

END//
DELIMITER ;


-- Volcando estructura para procedimiento efecto_led.LED_modificarDatos
DELIMITER //
CREATE PROCEDURE `LED_modificarDatos`(


_id INT,
_numero_cuil VARCHAR(45),
_razon_social VARCHAR(45),
_direccion VARCHAR(255),
_codigo_postal VARCHAR(45),
_telefono_principal VARCHAR(45),
_correo_electrónico_principal VARCHAR(45),
_sitio_web VARCHAR(255)
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
    sitio_web = _sitio_web
WHERE
    id_datos = _id;

select _id as id;

END//
DELIMITER ;


-- Volcando estructura para procedimiento efecto_led.LED_modificarTrabajo
DELIMITER //
CREATE PROCEDURE `LED_modificarTrabajo`(


_id INT,
_descripcion VARCHAR(45),
_fecha_creacion DATETIME,
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
        fecha_creacion = _fecha_creacion,
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
/*!40101 SET SQL_MODE=IFNULL(@OLD_SQL_MODE, '') */;
/*!40014 SET FOREIGN_KEY_CHECKS=IF(@OLD_FOREIGN_KEY_CHECKS IS NULL, 1, @OLD_FOREIGN_KEY_CHECKS) */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
