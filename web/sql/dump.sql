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
) ENGINE=InnoDB AUTO_INCREMENT=135 DEFAULT CHARSET=utf8;

-- Volcando datos para la tabla efecto_led.led_articulos: ~104 rows (aproximadamente)
/*!40000 ALTER TABLE `led_articulos` DISABLE KEYS */;
INSERT INTO `led_articulos` (`id_articulo`, `codigo_interno`, `descripcion`, `marca_fabricante`, `modelo`, `observaciones`) VALUES
	(31, 'ART-KCG1088', '', 'Osram', 'Tubos Liquid Tight', ''),
	(32, 'ART-XRP105', '', 'Atomlux', 'Tubos Fluorescentes VHO F96-T12/D', ''),
	(33, 'ART-YNR1049', '', 'Luminex', 'Socates Pico de Loro 5-FS', ''),
	(34, 'ART-GIY863', '', 'Cambre', 'Perfiles tipo V Liviano Pesado', ''),
	(35, 'ART-IMM121', '', 'G-E', 'Terminales Tipo Anillo', ''),
	(36, 'ART-LNH1053', '', 'Osram', 'Tubos Fluorescentes 40W', ''),
	(37, 'ART-ECY698', '', 'Bticino', 'Tubos Fluorescentes Ahorradores	', ''),
	(38, 'ART-IGI922', '', 'Leviton', 'Tubos Fluorescentes 40W', ''),
	(39, 'ART-UCY698', '', 'Elibet', 'Perfiles tipo V Liviano Pesado', ''),
	(40, 'ART-DDH239', '', 'Richi', 'Socates para Tubos Fluorescentes', ''),
	(41, 'ART-QQI904', '', 'Osram', 'Bandejas Porta cable', ''),
	(42, 'ART-EFM999', '', 'Luminex', 'Tubos Fluorescentes Electrónicos', ''),
	(43, 'ART-DMC1025', '', 'Roker', 'Reflectores de Sodio', ''),
	(44, 'ART-YDR288', '', 'SICA', 'Tubos Fluorescentes 40W', ''),
	(45, 'ART-WKJ670', '', '3M', 'Reflectores de Metal Halide', ''),
	(46, 'ART-CBD529', '', 'Atomlux', 'Tubos Fluorescentes SLF96-T12/D', ''),
	(47, 'ART-OYB532', '', 'Senlis', 'Tubos Fluorescentes 40W', ''),
	(48, 'ART-DSK872', '', 'Cambre', 'Perfiles tipo C Liviano Pesado', ''),
	(49, 'ART-YJY809', '', 'Cambre', 'Terminales Tipo Horquilla', ''),
	(50, 'ART-YKF987', '', 'Luminex', 'Tubos Liquid Tight', ''),
	(51, 'ART-TOM948', '', 'Richi', 'Tubos Fluorescentes SLF96-T12/D', ''),
	(52, 'ART-SEO444', '', 'Osram', 'Tubos Fluorescentes Circulares 22W/32W', ''),
	(53, 'ART-PXU405', '', 'Roker', 'Tubos Fluorescentes SLF96-T12/D', ''),
	(54, 'ART-MVT439', '', 'G-E', 'Reflectores R-20 40W (R-63)', ''),
	(55, 'ART-VMA596', '', 'Bticino', 'Socates Power Grove (PG)', ''),
	(56, 'ART-MLS457', '', 'Cambre', 'Tubos Conduit de Aluminio', ''),
	(57, 'ART-JDQ1006', '', 'Richi', 'Socates de Seguridad', ''),
	(58, 'ART-OYF209', '', 'Elibet', 'Contactores', ''),
	(59, 'ART-ERX748', '', 'Leviton', 'Pantalla Plana de 12"-18"', ''),
	(60, 'ART-JTU888', '', 'Leviton', 'Rele Para Contactores', ''),
	(61, 'ART-KCE801', '', 'G-E', 'Tubos EMT', ''),
	(62, 'ART-OJG265', '', 'Bticino', 'Reflectores de Mercurio', ''),
	(63, 'ART-XJC561', '', 'Cambre', 'Tubos Fluorescentes 40W', ''),
	(64, 'ART-AYU208', '', 'Moeller', 'Bandejas Porta cable', ''),
	(65, 'ART-QLH237', '', 'Atomlux', 'Transformadores monofásicos', ''),
	(66, 'ART-KDK807', '', 'Leviton', 'Tubos Fluorescentes SLF96-T12/D', ''),
	(67, 'ART-HRR540', '', 'Roker', 'Socates de Seguridad', ''),
	(68, 'ART-YAC541', '', 'Leviton', 'Reflectores R-20 60W (R-63)', ''),
	(69, 'ART-PWO316', '', 'Leviton', 'Rele Para Contactores', ''),
	(70, 'ART-RUC1049', '', 'Atomlux', 'Transformadores de Control', ''),
	(71, 'ART-ONW951', '', 'Phillips', 'Tapas Decorativas', ''),
	(72, 'ART-VDY629', '', 'SICA', 'Tubos Fluorescentes Circulares 22W/32W', ''),
	(73, 'ART-KPY1032', '', 'Richi', 'Pulsadores', ''),
	(74, 'ART-ESD599', '', 'Bticino', 'Rele Para Contactores', ''),
	(75, 'ART-SQY130', '', 'Luminex', 'Tapas Decorativas', ''),
	(76, 'ART-FRX660', '', '3M', 'Tubos Liquid Tight', ''),
	(77, 'ART-VFM911', '', 'Elibet', 'Perfiles tipo V Liviano Pesado', ''),
	(78, 'ART-DPR717', '', 'Roker', 'Pantalla Profunda de 12"-18"', ''),
	(79, 'ART-VJJ904', '', 'Cambre', 'Tubos Fluorescentes SLF96-T12/D', ''),
	(80, 'ART-YUC290', '', 'Luminex', 'Rele Para Contactores', ''),
	(81, 'ART-RNO400', '', 'Moeller', 'Tubos Fluorescentes Electrónicos', ''),
	(82, 'ART-CDK660', '', 'Atomlux', 'Transformadores Encapsulados Secos	', ''),
	(83, 'ART-QBJ756', '', 'Osram', 'Pantalla Profunda de 12"-18"', ''),
	(84, 'ART-PQM602', '', 'SICA', 'Tableros Industriales', ''),
	(85, 'ART-MOJ289', '', 'Luminex', 'Arrancadores', ''),
	(86, 'ART-ACJ803', '', 'Atomlux', 'Transformadores Encapsulados Secos	', ''),
	(87, 'ART-UPO1092', '', 'Richi', 'Transformadores de Control', ''),
	(88, 'ART-WWW792', '', 'Mixdeal', 'Pantalla Plana de 12"-18"', ''),
	(89, 'ART-FWV681', '', 'Bticino', 'Socates SLIM LINE (SL)', ''),
	(90, 'ART-JQD732', '', 'Cooper', 'Perfiles tipo V Liviano Pesado', ''),
	(91, 'ART-FCT790', '', 'Richi', 'Reflectores de Metal Halide', ''),
	(92, 'ART-BQC630', '', 'G-E', 'Tubos Fluorescentes 20W', ''),
	(93, 'ART-XBL167', '', 'G-E', 'Socates de Porcelana E40', ''),
	(94, 'ART-FXD993', '', 'SICA', 'Reflectores de Metal Halide', ''),
	(95, 'ART-KUW175', '', 'Bticino', 'Pulsadores', ''),
	(96, 'ART-XRS670', '', 'Richi', 'Reflectores de Halógeno 500W/1500W', ''),
	(97, 'ART-YNT362', '', 'Phillips', 'Selectores', ''),
	(98, 'ART-JFV720', '', 'Richi', 'Socates de Porcelana E27', ''),
	(99, 'ART-MVT465', '', 'Roker', 'Terminales Tipo Tope	', ''),
	(100, 'ART-OPJ178', '', 'Mixdeal', 'Rele Para Contactores', ''),
	(101, 'ART-AAC595', '', 'I.M.S.A.', 'Pulsadores', ''),
	(102, 'ART-EWA478', '', 'Cambre', 'Pantalla Plana de 12"-18"', ''),
	(103, 'ART-TBY861', '', 'Senlis', 'Tubos Fluorescentes SLF96-T12/D', ''),
	(104, 'ART-OWT269', '', 'Bticino', 'Terminales Tipo Anillo', ''),
	(105, 'ART-CVA589', '', 'Mixdeal', 'Tubos Fluorescentes 30W', ''),
	(106, 'ART-SFV770', '', 'Elibet', 'Tubos Counduit Galvanizado', ''),
	(107, 'ART-CLB959', '', 'Cooper', 'Tubos Fluorescentes Ahorradores	', ''),
	(108, 'ART-OIX746', '', 'G-E', 'Contactores', ''),
	(109, 'ART-IKY843', '', 'Senlis', 'Socates de Seguridad', ''),
	(110, 'ART-DIE1055', '', 'Leviton', 'Tubos PVC', ''),
	(111, 'ART-UOI163', '', 'Moeller', 'Bandejas Porta cable', ''),
	(112, 'ART-ESH257', '', 'Leviton', 'Socates de Porcelana E40', ''),
	(113, 'ART-NGQ606', '', '3M', 'Transformadores de Control', ''),
	(114, 'ART-OXX1000', '', 'Elibet', 'Transformadores de Control', ''),
	(115, 'ART-FPJ147', '', 'Cooper', 'Selectores', ''),
	(116, 'ART-EMY525', '', 'Roker', 'Socates de Porcelana E27', ''),
	(117, 'ART-YQI788', '', 'Mixdeal', 'Tubos Fluorescentes VHO F96-T12/D', ''),
	(118, 'ART-FXX1072', '', 'SICA', 'Tapas Decorativas', ''),
	(119, 'ART-QET598', '', 'Mixdeal', 'Transformadores:', ''),
	(120, 'ART-UIE1024', '', 'Osram', 'Reflectores de Mercurio', ''),
	(121, 'ART-UXF490', '', 'G-E', 'Tubos Fluorescentes Ahorradores	', ''),
	(122, 'ART-QXQ511', '', 'Elibet', 'Contactores', ''),
	(123, 'ART-BGE136', '', 'Moeller', 'Socates SLIM LINE (SL)', ''),
	(124, 'ART-FFK469', '', 'Luminex', 'Transformadores de Control', ''),
	(125, 'ART-DPQ582', '', 'Osram', 'Tubos Fluorescentes Electrónicos', ''),
	(126, 'ART-WVN254', '', 'Bticino', 'Terminales Tipo Tope	', ''),
	(127, 'ART-YEY422', '', 'G-E', 'Transformadores Encapsulados Secos	', ''),
	(128, 'ART-WNC889', '', 'Roker', 'Tubos Fluorescentes Electrónicos', ''),
	(129, 'ART-OTE583', '', 'SICA', 'Reflectores R-20 50W (R-63)', ''),
	(130, 'ART-ODY519', '', 'Cooper', 'Contactores', ''),
	(131, 'ART-SYQ482', '', 'Phillips', 'Selectores', ''),
	(132, 'ART-ONV877', '', 'Phillips', 'Tubos EMT', ''),
	(133, 'ART-DYL432', '', 'Phillips', 'Tableros Residenciales', ''),
	(134, 'ART-VRV292', '', 'SICA', 'Terminales Tipo Tope	', '');
/*!40000 ALTER TABLE `led_articulos` ENABLE KEYS */;


-- Volcando estructura para tabla efecto_led.led_clientes
DROP TABLE IF EXISTS `led_clientes`;
CREATE TABLE IF NOT EXISTS `led_clientes` (
  `id_cliente` int(11) NOT NULL AUTO_INCREMENT,
  `id_datos` int(11) NOT NULL,
  PRIMARY KEY (`id_cliente`),
  KEY `fk_led_cliente_led_datos1_idx` (`id_datos`),
  CONSTRAINT `fk_led_cliente_led_datos1` FOREIGN KEY (`id_datos`) REFERENCES `led_datos` (`id_datos`) ON DELETE CASCADE ON UPDATE NO ACTION
) ENGINE=InnoDB AUTO_INCREMENT=70 DEFAULT CHARSET=utf8;

-- Volcando datos para la tabla efecto_led.led_clientes: ~29 rows (aproximadamente)
/*!40000 ALTER TABLE `led_clientes` DISABLE KEYS */;
INSERT INTO `led_clientes` (`id_cliente`, `id_datos`) VALUES
	(41, 143),
	(42, 147),
	(43, 151),
	(44, 152),
	(45, 153),
	(46, 154),
	(47, 163),
	(48, 165),
	(49, 167),
	(50, 174),
	(51, 180),
	(52, 184),
	(53, 186),
	(54, 189),
	(55, 190),
	(56, 191),
	(57, 192),
	(58, 193),
	(59, 194),
	(60, 200),
	(61, 203),
	(62, 209),
	(63, 211),
	(64, 213),
	(65, 217),
	(66, 218),
	(67, 222),
	(68, 227),
	(69, 230);
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
  PRIMARY KEY (`id_datos`),
  UNIQUE KEY `Índice 2` (`numero_cuil`)
) ENGINE=InnoDB AUTO_INCREMENT=237 DEFAULT CHARSET=utf8;

-- Volcando datos para la tabla efecto_led.led_datos: ~98 rows (aproximadamente)
/*!40000 ALTER TABLE `led_datos` DISABLE KEYS */;
INSERT INTO `led_datos` (`id_datos`, `numero_cuil`, `razon_social`, `direccion`, `codigo_postal`, `telefono_principal`, `correo_electronico_principal`, `sitio_web`, `estado`) VALUES
	(139, '20447589079', 'Puel Blanco', 'Remedios 5136', '5700', '26641279809', 'pblanco@sitio.com.ar', 'http://www.sitio.com.ar', 1),
	(140, '20317216673', 'Karel Bravo', 'Galicia 5870', '5700', '26641137241', 'kbravo@sitio.com.ar', 'http://www.sitio.com.ar', 1),
	(141, '20260083166', 'Lihuel Vega', 'Fernando Pobrete 8943', '5700', '26641326780', 'lvega@sitio.com.ar', 'http://www.sitio.com.ar', 1),
	(142, '20341272598', 'Amorina Ponce', 'San Antón 422', '5700', '2664855149', 'aponce@sitio.com.ar', 'http://www.sitio.com.ar', 1),
	(143, '20263089557', 'Ernesta Vega', 'Luis Rosales 1903', '5700', '2664939792', 'evega@sitio.com.ar', 'http://www.sitio.com.ar', 1),
	(144, '20359301253', 'Humberto Vera', 'Diego de Almagro 110', '5700', '2664703601', 'hvera@sitio.com.ar', 'http://www.sitio.com.ar', 1),
	(145, '20371968838', 'Jack Correa', 'Valencia 6151', '5700', '26641187792', 'jcorrea@sitio.com.ar', 'http://www.sitio.com.ar', 1),
	(146, '20209556783', 'Ihuen Roldán', 'Lirio 1843', '5700', '2664953447', 'iroldan@sitio.com.ar', 'http://www.sitio.com.ar', 1),
	(147, '20568365996', 'Lupe Domínguez', 'San Francisco 2875', '5700', '2664805674', 'ldominguez@sitio.com.ar', 'http://www.sitio.com.ar', 1),
	(148, '20362294946', 'Rahab Godoy', 'Asturias 2968', '5700', '26641243443', 'rgodoy@sitio.com.ar', 'http://www.sitio.com.ar', 1),
	(149, '20473836178', 'Nestor Farías', 'Remedios 2117', '5700', '2664905691', 'nfarias@sitio.com.ar', 'http://www.sitio.com.ar', 1),
	(150, '20512703296', 'Deogracia Cáceres', 'Velázquez 7748', '5700', '26641073587', 'dcaceres@sitio.com.ar', 'http://www.sitio.com.ar', 1),
	(151, '20511491155', 'Mirian Toledo', 'Puente de Retama 2765', '5700', '26641458160', 'mtoledo@sitio.com.ar', 'http://www.sitio.com.ar', 1),
	(152, '20553262951', 'Lican Cabrera', 'Pozo Dulce 9000', '5700', '26641065028', 'lcabrera@sitio.com.ar', 'http://www.sitio.com.ar', 1),
	(153, '20519924876', 'Eleazar Franco', 'Francia 5588', '5700', '26641204502', 'efranco@sitio.com.ar', 'http://www.sitio.com.ar', 1),
	(154, '20375375577', 'Paolo Carrizo', 'Nador 4576', '5700', '2664909367', 'pcarrizo@sitio.com.ar', 'http://www.sitio.com.ar', 1),
	(155, '20452984656', 'Basilio Acuña', 'Baleares 8586', '5700', '2664693969', 'bacuna@sitio.com.ar', 'http://www.sitio.com.ar', 1),
	(156, '20589789611', 'Vera Soto', 'Sorolla 9235', '5700', '26641155622', 'vsoto@sitio.com.ar', 'http://www.sitio.com.ar', 1),
	(157, '20434461044', 'Anacarla Pereyra', 'Claudio Coello 3948', '5700', '2664844188', 'apereyra@sitio.com.ar', 'http://www.sitio.com.ar', 1),
	(158, '20262044251', 'Amandla Blanco', 'General Aguilera 5100', '5700', '26641191554', 'ablanco@sitio.com.ar', 'http://www.sitio.com.ar', 1),
	(159, '20578405931', 'Cirineo Acosta', 'Santa Catalina 6034', '5700', '2664768576', 'cacosta@sitio.com.ar', 'http://www.sitio.com.ar', 1),
	(160, '20363509881', 'Rolando Soria', 'Conde de la Cañada 546', '5700', '26641494778', 'rsoria@sitio.com.ar', 'http://www.sitio.com.ar', 1),
	(161, '20283895488', 'Donatella Sosa', 'Vicente Alexandre 2804', '5700', '26641281542', 'dsosa@sitio.com.ar', 'http://www.sitio.com.ar', 1),
	(162, '20276634496', 'Macabeo Vera', 'Infante de la cerda 7131', '5700', '2664913261', 'mvera@sitio.com.ar', 'http://www.sitio.com.ar', 1),
	(163, '20396375763', 'Galo Romero', 'De Valdepeñas, Avda 5630', '5700', '26641345523', 'gromero@sitio.com.ar', 'http://www.sitio.com.ar', 1),
	(164, '20305463807', 'Atenea Castro', 'Austria 7579', '5700', '26641094278', 'acastro@sitio.com.ar', 'http://www.sitio.com.ar', 1),
	(165, '20265323617', 'Iliana Cáceres', 'Menorca 6092', '5700', '2664894790', 'icaceres@sitio.com.ar', 'http://www.sitio.com.ar', 1),
	(166, '20591824659', 'Melibea Mansilla', 'Luxemburgo 3598', '5700', '26641426303', 'mmansilla@sitio.com.ar', 'http://www.sitio.com.ar', 1),
	(167, '20318211823', 'Ismael Paz', 'Venezuela 796', '5700', '26641215773', 'ipaz@sitio.com.ar', 'http://www.sitio.com.ar', 1),
	(168, '20342556056', 'Esther Navarro', 'Tinte 9126', '5700', '2664755230', 'enavarro@sitio.com.ar', 'http://www.sitio.com.ar', 1),
	(169, '20492412563', 'Amarilis Mendoza', 'Enmedio 6647', '5700', '2664682051', 'amendoza@sitio.com.ar', 'http://www.sitio.com.ar', 1),
	(170, '20508607349', 'Ilia Toledo', 'Greco 4028', '5700', '26641141956', 'itoledo@sitio.com.ar', 'http://www.sitio.com.ar', 1),
	(171, '20562882105', 'Amaranta Sánchez', 'Real 1150', '5700', '26641279035', 'asanchez@sitio.com.ar', 'http://www.sitio.com.ar', 1),
	(172, '20529077121', 'Esther Álvarez', 'Granada, Rda 517', '5700', '26641163893', 'ealvarez@sitio.com.ar', 'http://www.sitio.com.ar', 1),
	(173, '20541661736', 'Ibrian Fernández', 'Alamillo Alto 4849', '5700', '2664873856', 'ifernandez@sitio.com.ar', 'http://www.sitio.com.ar', 1),
	(174, '20470778718', 'Dinko Chávez', 'Maternidad 1815', '5700', '2664968801', 'dchavez@sitio.com.ar', 'http://www.sitio.com.ar', 1),
	(175, '20458984096', 'Aminadab Maldonado', 'Oretana 1143', '5700', '2664754274', 'amaldonado@sitio.com.ar', 'http://www.sitio.com.ar', 1),
	(176, '20521363532', 'Amadeo Carrizo', 'Sancho Panza 1810', '5700', '26641080443', 'acarrizo@sitio.com.ar', 'http://www.sitio.com.ar', 1),
	(177, '20444519446', 'Jerusalem Paz', 'Aparicio Arce 2394', '5700', '2664801372', 'jpaz@sitio.com.ar', 'http://www.sitio.com.ar', 1),
	(178, '20317913436', 'Valentina Valdéz', 'Venus 982', '5700', '2664742609', 'vvaldez@sitio.com.ar', 'http://www.sitio.com.ar', 1),
	(179, '20349243538', 'Sofocles Díaz', 'Virgen de la Blanca 8233', '5700', '2664876301', 'sdiaz@sitio.com.ar', 'http://www.sitio.com.ar', 1),
	(180, '20285156431', 'Andreas Gutiérrez', 'Puertollano, Avda 1221', '5700', '26641287725', 'agutierrez@sitio.com.ar', 'http://www.sitio.com.ar', 1),
	(181, '20333534751', 'Enzo Cabrera', 'Vereda del Vicario 1048', '5700', '2664973145', 'ecabrera@sitio.com.ar', 'http://www.sitio.com.ar', 1),
	(182, '20272147099', 'Naibi Quiroga', 'Calatrava 1319', '5700', '2664738842', 'nquiroga@sitio.com.ar', 'http://www.sitio.com.ar', 1),
	(183, '20360934399', 'Amatista García', 'Parque de los Poetas 9515', '5700', '26641117290', 'agarcia@sitio.com.ar', 'http://www.sitio.com.ar', 1),
	(184, '20306888128', 'Ivan Torres', 'Fernando Alonso de Coca 4325', '5700', '2664770165', 'itorres@sitio.com.ar', 'http://www.sitio.com.ar', 1),
	(185, '20365260482', 'Mirella Ledesma', 'Lentisco 1124', '5700', '26641067766', 'mledesma@sitio.com.ar', 'http://www.sitio.com.ar', 1),
	(186, '20264827684', 'Adriel Vargas', 'San Rafael 6541', '5700', '26641055808', 'avargas@sitio.com.ar', 'http://www.sitio.com.ar', 1),
	(187, '20232163269', 'Tehuel Giménez', 'Virgen de las Batallas 9421', '5700', '26641182939', 'tgimenez@sitio.com.ar', 'http://www.sitio.com.ar', 1),
	(188, '20337885201', 'Oliver Rivero', 'Venezuela 663', '5700', '26641490383', 'orivero@sitio.com.ar', 'http://www.sitio.com.ar', 1),
	(189, '20233443117', 'Wenceslada García', 'Combro 6658', '5700', '26641085983', 'wgarcia@sitio.com.ar', 'http://www.sitio.com.ar', 1),
	(190, '20501584027', 'Secundina Sosa', 'Finlandia 7264', '5700', '2664899998', 'ssosa@sitio.com.ar', 'http://www.sitio.com.ar', 1),
	(191, '20386337773', 'Fedora Hernández', 'Atalaya, Ctra 1457', '5700', '2664652410', 'fhernandez@sitio.com.ar', 'http://www.sitio.com.ar', 1),
	(192, '20475743953', 'Melisa Bravo', 'Santa María, Plaza 2173', '5700', '2664656385', 'mbravo@sitio.com.ar', 'http://www.sitio.com.ar', 1),
	(193, '20429592005', 'Barbara Núñez', 'Malagón 59', '5700', '26641129684', 'bnunez@sitio.com.ar', 'http://www.sitio.com.ar', 1),
	(194, '20542689438', 'Milagros Aguirre', 'Malagón 9919', '5700', '26641317557', 'maguirre@sitio.com.ar', 'http://www.sitio.com.ar', 1),
	(195, '20286514633', 'Rosana Rojas', 'De Valdepeñas, Ctra 8889', '5700', '26641449038', 'rrojas@sitio.com.ar', 'http://www.sitio.com.ar', 1),
	(196, '20486697999', 'Andes Gómez', 'Puertollano, Avda 2778', '5700', '26641115239', 'agomez@sitio.com.ar', 'http://www.sitio.com.ar', 1),
	(197, '20472993227', 'Sofonias Coronel', 'Atascadero 6520', '5700', '26641339558', 'scoronel@sitio.com.ar', 'http://www.sitio.com.ar', 1),
	(198, '20530724333', 'Ventura Ramírez', 'Alarcos 2305', '5700', '2664610094', 'vramirez@sitio.com.ar', 'http://www.sitio.com.ar', 1),
	(199, '20292186026', 'Aiena Vega', 'Calzada, Ctra 1497', '5700', '2664939192', 'avega@sitio.com.ar', 'http://www.sitio.com.ar', 1),
	(200, '20343818782', 'Tao Ferreyra', 'Virgen de la Estrella 976', '5700', '26641145596', 'tferreyra@sitio.com.ar', 'http://www.sitio.com.ar', 1),
	(201, '20410580351', 'Andrew Leiva', 'Alfonso Eanes 8307', '5700', '26641217551', 'aleiva@sitio.com.ar', 'http://www.sitio.com.ar', 1),
	(202, '20587686236', 'Coven Flores', 'La Rioja 7292', '5700', '2664717901', 'cflores@sitio.com.ar', 'http://www.sitio.com.ar', 1),
	(203, '20348898166', 'Samira Cruz', 'Ramirez de Arellano 9519', '5700', '2664683735', 'scruz@sitio.com.ar', 'http://www.sitio.com.ar', 1),
	(204, '20484340777', 'Belen Álvarez', 'Cigüela 4591', '5700', '26641256086', 'balvarez@sitio.com.ar', 'http://www.sitio.com.ar', 1),
	(205, '20373153286', 'Salma Maldonado', 'Aragón 7430', '5700', '26641092842', 'smaldonado@sitio.com.ar', 'http://www.sitio.com.ar', 1),
	(206, '20512319837', 'Delvalle Paz', 'Ciruela 3287', '5700', '26641024160', 'dpaz@sitio.com.ar', 'http://www.sitio.com.ar', 1),
	(207, '20304945893', 'Branco Coronel', 'Calatrava, Rda 4389', '5700', '26641070194', 'bcoronel@sitio.com.ar', 'http://www.sitio.com.ar', 1),
	(208, '20247299247', 'Baldomero Vega', 'San José 8778', '5700', '26641487724', 'bvega@sitio.com.ar', 'http://www.sitio.com.ar', 1),
	(209, '20313127105', 'Llaco Giménez', 'Holanda 5704', '5700', '26641319290', 'lgimenez@sitio.com.ar', 'http://www.sitio.com.ar', 1),
	(210, '20353730886', 'Eloy Agüero', 'Vicario, Ctra 8609', '5700', '26641263307', 'eagüero@sitio.com.ar', 'http://www.sitio.com.ar', 1),
	(211, '20366588096', 'Evo Juárez', 'Olmos 9825', '5700', '26641386781', 'ejuarez@sitio.com.ar', 'http://www.sitio.com.ar', 1),
	(212, '20221224777', 'Faustino Herrera', 'Mejorana 3302', '5700', '26641050011', 'fherrera@sitio.com.ar', 'http://www.sitio.com.ar', 1),
	(213, '20305379349', 'Violeta Pereyra', 'Santiago, Plaza 1208', '5700', '2664668889', 'vpereyra@sitio.com.ar', 'http://www.sitio.com.ar', 1),
	(214, '20224846377', 'Alba Olivera', 'Virgen de Begoña 9957', '5700', '26641039034', 'aolivera@sitio.com.ar', 'http://www.sitio.com.ar', 1),
	(215, '20410992708', 'Princesa Pérez', 'Brezo 1311', '5700', '26641099842', 'pperez@sitio.com.ar', 'http://www.sitio.com.ar', 1),
	(216, '20377829071', 'Sarai Flores', 'Rehala 4389', '5700', '26641311183', 'sflores@sitio.com.ar', 'http://www.sitio.com.ar', 1),
	(217, '20441767812', 'Inmaculada Toledo', 'Jabalón 986', '5700', '2664631113', 'itoledo@sitio.com.ar', 'http://www.sitio.com.ar', 1),
	(218, '20313567839', 'Ginebra Pérez', 'Agustín Salido 5466', '5700', '26641201224', 'gperez@sitio.com.ar', 'http://www.sitio.com.ar', 1),
	(219, '20293353614', 'Ofelia Luna', 'Cigüela 1506', '5700', '26641031386', 'oluna@sitio.com.ar', 'http://www.sitio.com.ar', 1),
	(220, '20427350136', 'Gervasio Chávez', 'Villanueva de los Infantes 1495', '5700', '2664960353', 'gchavez@sitio.com.ar', 'http://www.sitio.com.ar', 1),
	(221, '20471406742', 'Libia Acosta', 'Orense 3852', '5700', '2664663530', 'lacosta@sitio.com.ar', 'http://www.sitio.com.ar', 1),
	(222, '20201782041', 'Indio Miranda', 'Orión 3544', '5700', '2664922642', 'imiranda@sitio.com.ar', 'http://www.sitio.com.ar', 1),
	(223, '20443785788', 'Britany Roldán', 'Felipe II 634', '5700', '2664667747', 'broldan@sitio.com.ar', 'http://www.sitio.com.ar', 1),
	(224, '20566274919', 'Zelma Castillo', 'Constitución, Plaza 9525', '5700', '26641262083', 'zcastillo@sitio.com.ar', 'http://www.sitio.com.ar', 1),
	(225, '20411339092', 'Afrodita Arce', 'Perchel 9988', '5700', '2664840571', 'aarce@sitio.com.ar', 'http://www.sitio.com.ar', 1),
	(226, '20497780915', 'Fabiana Mendoza', 'Juan II 2930', '5700', '2664731762', 'fmendoza@sitio.com.ar', 'http://www.sitio.com.ar', 1),
	(227, '20256060204', 'Noris Figueroa', 'General Aguilera 8322', '5700', '2664880162', 'nfigueroa@sitio.com.ar', 'http://www.sitio.com.ar', 1),
	(228, '20416416124', 'Saul Correa', 'Diego de Almagro 3005', '5700', '2664641067', 'scorrea@sitio.com.ar', 'http://www.sitio.com.ar', 1),
	(229, '20525104989', 'Cuyen Ortíz', 'Alamillo Alto 7856', '5700', '2664752674', 'cortiz@sitio.com.ar', 'http://www.sitio.com.ar', 1),
	(230, '20425023585', 'Iesus Acosta', 'Vicario 6082', '5700', '26641097731', 'iacosta@sitio.com.ar', 'http://www.sitio.com.ar', 1),
	(231, '20407166937', 'Samar Correa', 'Julio Sousa 5805', '5700', '26641374993', 'scorrea@sitio.com.ar', 'http://www.sitio.com.ar', 1),
	(232, '20448318436', 'Natalio Ferreyra', 'Maestro D José Mena 7501', '5700', '2664813462', 'nferreyra@sitio.com.ar', 'http://www.sitio.com.ar', 1),
	(233, '20291430644', 'Romildo Vargas', 'Mirto 1969', '5700', '2664656874', 'rvargas@sitio.com.ar', 'http://www.sitio.com.ar', 1),
	(234, '20259618478', 'Anabela Núñez', 'Vicente Galiana 8125', '5700', '26641369705', 'anunez@sitio.com.ar', 'http://www.sitio.com.ar', 1),
	(235, '20252849769', 'Ezequiel Godoy', 'Jupiter 6803', '5700', '2664732270', 'egodoy@sitio.com.ar', 'http://www.sitio.com.ar', 1),
	(236, '20397396422', 'Bahia Benítez', 'Santa Barbara 7164', '5700', '2664796907', 'bbenitez@sitio.com.ar', 'http://www.sitio.com.ar', 1);
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
  UNIQUE KEY `Índice 3` (`correo_electronico`),
  KEY `tienen` (`id_proveedor`),
  CONSTRAINT `tienen` FOREIGN KEY (`id_proveedor`) REFERENCES `led_proveedores` (`id_proveedores`) ON DELETE CASCADE ON UPDATE NO ACTION
) ENGINE=InnoDB AUTO_INCREMENT=118 DEFAULT CHARSET=utf8;

-- Volcando datos para la tabla efecto_led.led_integrantes: ~1 rows (aproximadamente)
/*!40000 ALTER TABLE `led_integrantes` DISABLE KEYS */;
INSERT INTO `led_integrantes` (`id_integrantes`, `nombre`, `area`, `telefono`, `correo_electronico`, `id_proveedor`) VALUES
	(25, 'Azucena Duarte', 'Mano de Obra', '26641104571', 'aduarte@sitio.com.ar', 59),
	(26, 'Pía Ponce', 'Contabilidad', '26641204111', 'pponce@sitio.com.ar', 52),
	(27, 'Marilda Fernández', 'Gerencia', '26641185808', 'mfernandez@sitio.com.ar', 80),
	(28, 'Nicasio  Velázquez', 'Direccion', '26641372291', 'nvelazquez@sitio.com.ar', 47),
	(29, 'Hermelinda Quiroga', 'Gerencia', '26641482020', 'hquiroga@sitio.com.ar', 48),
	(30, 'Octavio  López', 'Administracion', '2664873425', 'olopez@sitio.com.ar', 47),
	(31, 'Julio  Ledesma', 'Otra', '26641365040', 'jledesma@sitio.com.ar', 76),
	(32, 'Orquidea Herrera', 'RRHH', '2664996298', 'oherrera@sitio.com.ar', 73),
	(33, 'Jordi  Núñez', 'Otra', '26641378580', 'jnunez@sitio.com.ar', 51),
	(34, 'Ireneo  Campos', 'Mano de Obra', '26641162443', 'icampos@sitio.com.ar', 49),
	(35, 'Geraldine Cáceres', 'Direccion', '26641477637', 'gcaceres@sitio.com.ar', 82),
	(36, 'Georgina Moreno', 'Contabilidad', '26641428027', 'gmoreno@sitio.com.ar', 47),
	(37, 'Laurencia Vega', 'RRHH', '26641317490', 'lvega@sitio.com.ar', 80),
	(38, 'Ilona Ojeda', 'Contabilidad', '2664954120', 'iojeda@sitio.com.ar', 70),
	(39, 'Eric  Cardozo', 'Mano de Obra', '2664740726', 'ecardozo@sitio.com.ar', 50),
	(40, 'Nahima Medina', 'Contabilidad', '26641162755', 'nmedina@sitio.com.ar', 62),
	(41, 'Calógero  Acuña', 'Mano de Obra', '26641061425', 'cacuna@sitio.com.ar', 76),
	(42, 'Gracia Vargas', 'Otra', '26641029537', 'gvargas@sitio.com.ar', 74),
	(43, 'Tina Bravo', 'Contabilidad', '26641001913', 'tbravo@sitio.com.ar', 80),
	(44, 'Alda Córdoba', 'Gerencia', '26641022711', 'acordoba@sitio.com.ar', 61),
	(45, 'Cosentino Martínez', 'Direccion', '2664668451', 'cmartinez@sitio.com.ar', 71),
	(46, 'Josue  Benítez', 'Direccion', '2664615937', 'jbenitez@sitio.com.ar', 51),
	(47, 'Casiel Páez', 'Mano de Obra', '26641067363', 'cpaez@sitio.com.ar', 47),
	(48, 'Constancio  Aguirre', 'Contabilidad', '2664643995', 'caguirre@sitio.com.ar', 73),
	(49, 'Policarpo  Ruiz', 'Contabilidad', '26641349812', 'pruiz@sitio.com.ar', 58),
	(50, 'America Rodríguez', 'Contabilidad', '26641010023', 'arodriguez@sitio.com.ar', 65),
	(51, 'Shirley Rojas', 'Direccion', '2664673107', 'srojas@sitio.com.ar', 53),
	(52, 'Magdalena Moreno', 'Gerencia', '26641222101', 'mmoreno@sitio.com.ar', 58),
	(53, 'Isaias  Domínguez', 'Mano de Obra', '2664671136', 'idominguez@sitio.com.ar', 76),
	(54, 'Nihuel Fernández', 'Otra', '2664891250', 'nfernandez@sitio.com.ar', 55),
	(55, 'Daniela López', 'Contabilidad', '2664720292', 'dlopez@sitio.com.ar', 57),
	(56, 'Monica Herrera', 'Administracion', '26641418170', 'mherrera@sitio.com.ar', 49),
	(57, 'Nerina Miranda', 'Mano de Obra', '2664853202', 'nmiranda@sitio.com.ar', 59),
	(58, 'Wallace Arce', 'Contabilidad', '2664798140', 'warce@sitio.com.ar', 82),
	(59, 'Charo Ramírez', 'Gerencia', '26641061385', 'cramirez@sitio.com.ar', 63),
	(60, 'Marcial  Duarte', 'Otra', '26641469864', 'mduarte@sitio.com.ar', 65),
	(61, 'Valentina Molina', 'Administracion', '26641123899', 'vmolina@sitio.com.ar', 59),
	(62, 'Duilio  Cabrera', 'Gerencia', '26641066006', 'dcabrera@sitio.com.ar', 66),
	(63, 'Verónica Ortíz', 'RRHH', '26641477205', 'vortiz@sitio.com.ar', 66),
	(64, 'Lucero Silva', 'Otra', '2664997484', 'lsilva@sitio.com.ar', 67),
	(65, 'Evo Vázquez', 'Direccion', '2664759022', 'evazquez@sitio.com.ar', 73),
	(66, 'Ilich Pereyra', 'RRHH', '26641375436', 'ipereyra@sitio.com.ar', 79),
	(67, 'Verna Gutiérrez', 'Gerencia', '26641281040', 'vgutierrez@sitio.com.ar', 67),
	(68, 'Ayesha Mendoza', 'Administracion', '26641481612', 'amendoza@sitio.com.ar', 59),
	(69, 'Geronimo  Carrizo', 'Otra', '26641031277', 'gcarrizo@sitio.com.ar', 49),
	(70, 'Hussein Domínguez', 'Gerencia', '26641123323', 'hdominguez@sitio.com.ar', 58),
	(71, 'Anunciacion Rivero', 'Otra', '26641469042', 'arivero@sitio.com.ar', 53),
	(72, 'Eduardo  García', 'Administracion', '26641376747', 'egarcia@sitio.com.ar', 62),
	(73, 'Michel  Mansilla', 'RRHH', '26641015608', 'mmansilla@sitio.com.ar', 76),
	(74, 'Amelie Maldonado', 'Otra', '2664753666', 'amaldonado@sitio.com.ar', 82),
	(75, 'Cuauhtemoc Córdoba', 'Gerencia', '26641264657', 'ccordoba@sitio.com.ar', 79),
	(76, 'Cirano  Ponce', 'RRHH', '2664978209', 'cponce@sitio.com.ar', 61),
	(77, 'Ronaldo  Ramírez', 'Mano de Obra', '26641328173', 'rramirez@sitio.com.ar', 82),
	(78, 'Maral Romero', 'Gerencia', '26641192758', 'mromero@sitio.com.ar', 62),
	(79, 'Willka  Ramos', 'Contabilidad', '26641297764', 'wramos@sitio.com.ar', 57),
	(80, 'Rubina Blanco', 'Otra', '2664945196', 'rblanco@sitio.com.ar', 62),
	(81, 'Amin Domínguez', 'Direccion', '2664858321', 'adominguez@sitio.com.ar', 53),
	(82, 'Dardo  Escobar', 'Administracion', '26641238432', 'descobar@sitio.com.ar', 67),
	(83, 'Lorenzo  Gómez', 'Otra', '2664785299', 'lgomez@sitio.com.ar', 51),
	(84, 'Heliana Rojas', 'Direccion', '2664799043', 'hrojas@sitio.com.ar', 81),
	(85, 'Olaya Córdoba', 'Gerencia', '2664621652', 'ocordoba@sitio.com.ar', 51),
	(86, 'Lubna Navarro', 'Administracion', '26641099671', 'lnavarro@sitio.com.ar', 61),
	(88, 'Mauro  Benítez', 'Contabilidad', '2664890064', 'mbenitez@sitio.com.ar', 75),
	(89, 'Mireya Gutiérrez', 'Contabilidad', '2664981750', 'mgutierrez@sitio.com.ar', 58),
	(90, 'Jesús Sánchez', 'Mano de Obra', '2664759847', 'jsanchez@sitio.com.ar', 60),
	(91, 'Melian Martin', 'Otra', '2664732246', 'mmartin@sitio.com.ar', 80),
	(92, 'Dinora Valdéz', 'Otra', '26641145410', 'dvaldez@sitio.com.ar', 73),
	(93, 'Danielo Mansilla', 'Contabilidad', '26641342098', 'dmansilla@sitio.com.ar', 74),
	(94, 'Hortencio  Villalba', 'Mano de Obra', '26641126920', 'hvillalba@sitio.com.ar', 73),
	(95, 'Wendy Farías', 'Mano de Obra', '2664892439', 'wfarias@sitio.com.ar', 76),
	(96, 'Otelo  Escobar', 'Otra', '26641150857', 'oescobar@sitio.com.ar', 72),
	(97, 'Abdul Silva', 'Direccion', '26641347928', 'asilva@sitio.com.ar', 79),
	(98, 'Azucena Ramírez', 'RRHH', '26641475620', 'aramirez@sitio.com.ar', 74),
	(99, 'Gavina Núñez', 'Contabilidad', '2664698547', 'gnunez@sitio.com.ar', 79),
	(100, 'Segunda Ávila', 'RRHH', '26641315856', 'savila@sitio.com.ar', 63),
	(101, 'Romanuela Farías', 'Direccion', '26641184055', 'rfarias@sitio.com.ar', 61),
	(102, 'Dandara García', 'Contabilidad', '26641079031', 'dgarcia@sitio.com.ar', 77),
	(103, 'Ariano Blanco', 'Administracion', '26641246345', 'ablanco@sitio.com.ar', 77),
	(104, 'Rodrigo  Franco', 'Mano de Obra', '26641151147', 'rfranco@sitio.com.ar', 50),
	(105, 'Ñancul Ortíz', 'Direccion', '26641316815', 'nortiz@sitio.com.ar', 69),
	(106, 'Llanque  Núñez', 'Gerencia', '2664843192', 'lnunez@sitio.com.ar', 53),
	(107, 'Abenamar Mardonado', 'Direccion', '2664921067', 'amardonado@sitio.com.ar', 50),
	(108, 'Ciriaco  Domínguez', 'Administracion', '26641111711', 'cdominguez@sitio.com.ar', 53),
	(109, 'Orlando  Barrios', 'Mano de Obra', '2664769134', 'obarrios@sitio.com.ar', 75),
	(110, 'Kai Ríos', 'Mano de Obra', '26641350895', 'krios@sitio.com.ar', 70),
	(111, 'Dinora Miranda', 'RRHH', '2664670998', 'dmiranda@sitio.com.ar', 51),
	(112, 'Rosina Ortíz', 'Administracion', '26641412219', 'rortiz@sitio.com.ar', 79),
	(113, 'Philippe  Rodríguez', 'Otra', '2664995732', 'prodriguez@sitio.com.ar', 64),
	(114, 'Leonel  Godoy', 'Gerencia', '26641395035', 'lgodoy@sitio.com.ar', 70),
	(115, 'Aluhe Correa', 'Gerencia', '2664782914', 'acorrea@sitio.com.ar', 75),
	(116, 'Alvina Giménez', 'Otra', '2664956686', 'agimenez@sitio.com.ar', 57),
	(117, 'Morgana Castro', 'Gerencia', '2664708453', 'mcastro@sitio.com.ar', 72);
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

-- Volcando datos para la tabla efecto_led.led_participa: ~62 rows (aproximadamente)
/*!40000 ALTER TABLE `led_participa` DISABLE KEYS */;
INSERT INTO `led_participa` (`id_terceros`, `id_trabajos`, `costo_prestacion`, `descripcion_trabajo_realizado`) VALUES
	(54, 79, 9170.52, ''),
	(54, 90, 9938.56, ''),
	(55, 55, 4581.21, ''),
	(55, 56, 6201.56, ''),
	(56, 71, 5612.34, ''),
	(57, 61, 5752.54, ''),
	(57, 68, 6193.23, ''),
	(58, 60, 6290.96, ''),
	(59, 72, 7526.08, ''),
	(60, 86, 5718.54, ''),
	(61, 63, 9081.07, ''),
	(61, 81, 631.83, ''),
	(62, 66, 4890.8, ''),
	(62, 71, 4875.67, ''),
	(62, 79, 3351.41, ''),
	(62, 80, 9780.16, ''),
	(63, 49, 4997.1, ''),
	(63, 52, 2787.63, ''),
	(63, 53, 3963.93, ''),
	(63, 68, 4471.5, ''),
	(64, 59, 246.29, ''),
	(66, 49, 3392.1, ''),
	(66, 54, 9735.38, ''),
	(66, 61, 2952.55, ''),
	(66, 72, 2655.55, ''),
	(67, 60, 6399.9, ''),
	(67, 71, 4228.69, ''),
	(67, 82, 874, ''),
	(67, 85, 1924.3, ''),
	(67, 87, 5072.57, ''),
	(68, 65, 9117.88, ''),
	(68, 71, 4093.29, ''),
	(68, 77, 5110.63, ''),
	(68, 89, 9, ''),
	(69, 50, 8267.94, ''),
	(69, 65, 9488.72, ''),
	(69, 73, 6147.12, ''),
	(69, 86, 1715.36, ''),
	(70, 87, 2527.12, ''),
	(71, 54, 9615.02, ''),
	(71, 65, 8667.06, ''),
	(73, 54, 5601.68, ''),
	(73, 89, 8892.04, ''),
	(74, 53, 3421.3, ''),
	(75, 89, 2899.54, ''),
	(76, 61, 6328.34, ''),
	(76, 68, 6426.7, ''),
	(77, 64, 114.04, ''),
	(77, 79, 5381.98, ''),
	(79, 51, 7167.08, ''),
	(80, 59, 1510.91, ''),
	(81, 69, 8025.12, ''),
	(81, 70, 3859.55, ''),
	(81, 87, 2827.53, ''),
	(82, 80, 1252.62, ''),
	(82, 82, 148.94, ''),
	(83, 61, 6320.73, ''),
	(83, 67, 876.37, ''),
	(83, 82, 7136.15, ''),
	(84, 75, 314.26, ''),
	(85, 52, 1310.32, ''),
	(85, 76, 2154.68, '');
/*!40000 ALTER TABLE `led_participa` ENABLE KEYS */;


-- Volcando estructura para tabla efecto_led.led_proveedores
DROP TABLE IF EXISTS `led_proveedores`;
CREATE TABLE IF NOT EXISTS `led_proveedores` (
  `id_proveedores` int(11) NOT NULL AUTO_INCREMENT,
  `id_datos` int(11) NOT NULL,
  PRIMARY KEY (`id_proveedores`),
  KEY `fk_led_proveedores_led_datos_idx` (`id_datos`),
  CONSTRAINT `fk_led_proveedores_led_datos` FOREIGN KEY (`id_datos`) REFERENCES `led_datos` (`id_datos`) ON DELETE CASCADE ON UPDATE NO ACTION
) ENGINE=InnoDB AUTO_INCREMENT=83 DEFAULT CHARSET=utf8;

-- Volcando datos para la tabla efecto_led.led_proveedores: ~36 rows (aproximadamente)
/*!40000 ALTER TABLE `led_proveedores` DISABLE KEYS */;
INSERT INTO `led_proveedores` (`id_proveedores`, `id_datos`) VALUES
	(47, 139),
	(48, 140),
	(49, 141),
	(50, 146),
	(51, 149),
	(52, 157),
	(53, 158),
	(54, 161),
	(55, 170),
	(56, 171),
	(57, 172),
	(58, 176),
	(59, 177),
	(60, 183),
	(61, 185),
	(62, 187),
	(63, 196),
	(64, 198),
	(65, 199),
	(66, 201),
	(67, 204),
	(68, 205),
	(69, 206),
	(70, 212),
	(71, 214),
	(72, 215),
	(73, 219),
	(74, 220),
	(75, 223),
	(76, 226),
	(77, 228),
	(78, 229),
	(79, 231),
	(80, 232),
	(81, 233),
	(82, 235);
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

-- Volcando datos para la tabla efecto_led.led_provistos: ~104 rows (aproximadamente)
/*!40000 ALTER TABLE `led_provistos` DISABLE KEYS */;
INSERT INTO `led_provistos` (`id_articulos`, `id_proveedores`, `id_trabajos`, `codigo_catalogo_proveedor`, `cantidad_articulos`, `costo_unitario`) VALUES
	(31, 59, 50, 'PROV-EYG492', 32, 940.1),
	(32, 66, 63, 'PROV-EWW939', 1, 383.77),
	(33, 66, 59, 'PROV-PGJ284', 40, 10.14),
	(34, 49, 85, 'PROV-WHR789', 17, 808.73),
	(35, 65, 80, 'PROV-OUH152', 4, 356.82),
	(36, 56, 51, 'PROV-UFS1016', 14, 289.35),
	(37, 81, 51, 'PROV-BLF776', 30, 933.35),
	(38, 50, 87, 'PROV-DDK666', 42, 930.48),
	(39, 53, 67, 'PROV-BNN171', 1, 90.43),
	(40, 80, 71, 'PROV-SGD946', 27, 510.35),
	(41, 54, 78, 'PROV-XIU112', 27, 679.03),
	(42, 62, 87, 'PROV-YDU728', 46, 135.79),
	(43, 66, 62, 'PROV-IAA158', 21, 310.95),
	(44, 81, 54, 'PROV-TKR300', 30, 659.66),
	(45, 55, 50, 'PROV-SAU154', 3, 131.53),
	(46, 56, 66, 'PROV-SLC182', 23, 397.09),
	(47, 48, 79, 'PROV-XLL940', 18, 45.88),
	(48, 61, 67, 'PROV-PVL854', 32, 668.83),
	(49, 67, 50, 'PROV-PBI706', 26, 191.95),
	(50, 49, 57, 'PROV-SYP382', 41, 43.48),
	(51, 52, 74, 'PROV-RXN994', 40, 734.6),
	(52, 64, 49, 'PROV-ACK975', 10, 744.09),
	(53, 52, 51, 'PROV-BKX434', 19, 98.77),
	(54, 70, 58, 'PROV-IQG490', 12, 561.43),
	(55, 73, 64, 'PROV-LUT461', 46, 582.87),
	(56, 65, 51, 'PROV-OUI427', 17, 742.54),
	(57, 82, 63, 'PROV-MVQ942', 28, 816.6),
	(58, 60, 88, 'PROV-WED300', 32, 539.72),
	(59, 53, 88, 'PROV-JXP345', 5, 91.45),
	(60, 64, 87, 'PROV-LUV910', 35, 716.31),
	(61, 71, 73, 'PROV-XOB700', 17, 75.11),
	(62, 81, 87, 'PROV-APB594', 41, 830.8),
	(63, 56, 49, 'PROV-XIW597', 5, 173.16),
	(64, 61, 76, 'PROV-DGA410', 36, 192.64),
	(65, 56, 52, 'PROV-UON1070', 14, 233.04),
	(66, 60, 54, 'PROV-HHO159', 49, 488.39),
	(67, 47, 49, 'PROV-BXL634', 29, 872.75),
	(68, 58, 49, 'PROV-WGO226', 49, 311.08),
	(69, 57, 59, 'PROV-IBH404', 38, 720.34),
	(70, 71, 63, 'PROV-LNF534', 44, 244.34),
	(71, 50, 67, 'PROV-PLN433', 7, 684.42),
	(72, 49, 65, 'PROV-RYQ609', 21, 749.35),
	(73, 77, 59, 'PROV-SYR698', 24, 309.02),
	(74, 49, 56, 'PROV-BWF524', 36, 474.87),
	(75, 56, 89, 'PROV-ETJ672', 18, 23.89),
	(76, 71, 65, 'PROV-YEY429', 23, 32.63),
	(77, 67, 51, 'PROV-ONV754', 35, 205.86),
	(78, 64, 87, 'PROV-YAG278', 36, 809.5),
	(79, 67, 65, 'PROV-URC414', 16, 227.15),
	(80, 53, 90, 'PROV-OKH339', 1, 26.09),
	(81, 48, 70, 'PROV-SUV915', 1, 110.37),
	(82, 52, 82, 'PROV-OHS935', 41, 648.1),
	(83, 62, 49, 'PROV-DTL131', 22, 489.44),
	(84, 54, 80, 'PROV-YLG102', 25, 610.39),
	(85, 51, 87, 'PROV-UMD213', 48, 98.45),
	(86, 68, 70, 'PROV-IMN211', 34, 467.17),
	(87, 48, 70, 'PROV-GIY964', 10, 367.87),
	(88, 74, 51, 'PROV-UXG671', 26, 908.01),
	(89, 78, 60, 'PROV-HUG809', 5, 736.19),
	(90, 65, 69, 'PROV-TCB191', 22, 595.19),
	(91, 50, 84, 'PROV-BGD941', 18, 511.51),
	(92, 67, 60, 'PROV-IDP858', 12, 361.65),
	(93, 55, 80, 'PROV-AUD237', 44, 823.33),
	(94, 72, 64, 'PROV-AJW442', 18, 205.04),
	(95, 69, 61, 'PROV-QAC624', 37, 98.74),
	(96, 79, 70, 'PROV-PLI431', 17, 575.05),
	(97, 68, 78, 'PROV-YDT582', 22, 750.32),
	(98, 75, 65, 'PROV-NWW915', 47, 418.01),
	(99, 60, 85, 'PROV-LDI323', 12, 897.84),
	(100, 67, 51, 'PROV-ESC436', 40, 786.6),
	(101, 81, 55, 'PROV-DEO341', 17, 890.27),
	(102, 59, 59, 'PROV-UAO1037', 50, 598.58),
	(103, 73, 54, 'PROV-UTJ765', 49, 690.69),
	(104, 65, 81, 'PROV-NEF773', 50, 788.14),
	(105, 48, 61, 'PROV-JMI347', 28, 560.72),
	(106, 82, 74, 'PROV-TTR236', 42, 804.64),
	(107, 60, 67, 'PROV-DCD437', 34, 761.94),
	(108, 66, 76, 'PROV-LHE163', 43, 232.85),
	(109, 65, 86, 'PROV-SMH1071', 39, 173.73),
	(110, 77, 65, 'PROV-FDD406', 42, 324.95),
	(111, 50, 77, 'PROV-GCQ178', 10, 387.98),
	(112, 68, 66, 'PROV-XEC127', 18, 884.3),
	(113, 61, 53, 'PROV-NFL741', 26, 668.24),
	(114, 74, 86, 'PROV-RTS455', 16, 323.09),
	(115, 72, 66, 'PROV-CJQ210', 9, 556.84),
	(116, 65, 75, 'PROV-DMY511', 41, 297.96),
	(117, 67, 75, 'PROV-LFQ744', 21, 371.29),
	(118, 63, 53, 'PROV-ACK984', 21, 958.76),
	(119, 65, 75, 'PROV-CYP267', 37, 346.49),
	(120, 50, 67, 'PROV-BOS1060', 14, 837.15),
	(121, 58, 75, 'PROV-GBO794', 35, 231.13),
	(122, 81, 88, 'PROV-DKQ142', 41, 808.99),
	(123, 53, 60, 'PROV-RJV162', 50, 964.81),
	(124, 56, 85, 'PROV-PAF1098', 16, 128.21),
	(125, 74, 59, 'PROV-KOT111', 2, 346.96),
	(126, 63, 56, 'PROV-EIF213', 44, 505.77),
	(127, 69, 68, 'PROV-RKD523', 13, 94.37),
	(128, 59, 64, 'PROV-QXU238', 33, 123.21),
	(129, 77, 83, 'PROV-WCV999', 36, 341.63),
	(130, 66, 73, 'PROV-FSE752', 29, 435.59),
	(131, 49, 83, 'PROV-WJF1071', 30, 751.66),
	(132, 48, 52, 'PROV-GBL184', 24, 919.46),
	(133, 47, 62, 'PROV-HPB538', 45, 127.84),
	(134, 47, 52, 'PROV-KME487', 44, 511.15);
/*!40000 ALTER TABLE `led_provistos` ENABLE KEYS */;


-- Volcando estructura para tabla efecto_led.led_terceros
DROP TABLE IF EXISTS `led_terceros`;
CREATE TABLE IF NOT EXISTS `led_terceros` (
  `id_terceros` int(11) NOT NULL AUTO_INCREMENT,
  `id_datos` int(11) NOT NULL,
  PRIMARY KEY (`id_terceros`),
  KEY `fk_led_terceros_led_datos1_idx` (`id_datos`),
  CONSTRAINT `fk_led_terceros_led_datos1` FOREIGN KEY (`id_datos`) REFERENCES `led_datos` (`id_datos`) ON DELETE CASCADE ON UPDATE NO ACTION
) ENGINE=InnoDB AUTO_INCREMENT=86 DEFAULT CHARSET=utf8;

-- Volcando datos para la tabla efecto_led.led_terceros: ~33 rows (aproximadamente)
/*!40000 ALTER TABLE `led_terceros` DISABLE KEYS */;
INSERT INTO `led_terceros` (`id_terceros`, `id_datos`) VALUES
	(53, 142),
	(54, 144),
	(55, 145),
	(56, 148),
	(57, 150),
	(58, 155),
	(59, 156),
	(60, 159),
	(61, 160),
	(62, 162),
	(63, 164),
	(64, 166),
	(65, 168),
	(66, 169),
	(67, 173),
	(68, 175),
	(69, 178),
	(70, 179),
	(71, 181),
	(72, 182),
	(73, 188),
	(74, 195),
	(75, 197),
	(76, 202),
	(77, 207),
	(78, 208),
	(79, 210),
	(80, 216),
	(81, 221),
	(82, 224),
	(83, 225),
	(84, 234),
	(85, 236);
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
  PRIMARY KEY (`id_trabajos`,`id_cliente`),
  KEY `solicita` (`id_cliente`),
  CONSTRAINT `solicita` FOREIGN KEY (`id_cliente`) REFERENCES `led_clientes` (`id_cliente`) ON DELETE CASCADE ON UPDATE NO ACTION
) ENGINE=InnoDB AUTO_INCREMENT=91 DEFAULT CHARSET=utf8;

-- Volcando datos para la tabla efecto_led.led_trabajos: ~42 rows (aproximadamente)
/*!40000 ALTER TABLE `led_trabajos` DISABLE KEYS */;
INSERT INTO `led_trabajos` (`id_trabajos`, `descripcion`, `fecha_creacion`, `fecha_aprobacion_presupuesto`, `fecha_inicio_obra`, `fecha_fin_obra`, `precio_total`, `precio_mano_obra`, `precio_articulos`, `precio_prestaciones`, `id_cliente`) VALUES
	(49, '', '2013-11-03 12:20:28', '2013-11-03 00:00:00', '2013-11-03 00:00:00', '2013-11-03 00:00:00', 68670.2, 654, 59627.1, 8389.2, 42),
	(50, '', '2013-11-03 12:31:09', '2013-07-25 00:00:00', '2013-07-25 00:00:00', '2014-12-10 00:00:00', 51966.8, 8230.39, 35468.5, 8267.94, 48),
	(51, '', '2013-11-03 12:31:10', '2013-09-08 00:00:00', '2013-09-10 00:00:00', '2014-02-28 00:00:00', 119158, 3162.81, 108829, 7167.08, 49),
	(52, '', '2013-11-03 12:31:11', '2013-01-29 00:00:00', '2013-01-30 00:00:00', '2013-10-03 00:00:00', 57035.4, 5117.26, 47820.2, 4097.95, 59),
	(53, '', '2013-11-03 12:31:11', '2013-06-07 00:00:00', '2013-06-07 00:00:00', '2015-04-01 00:00:00', 53963.6, 9070.15, 37508.2, 7385.23, 62),
	(54, '', '2013-11-03 12:31:12', '2013-11-13 00:00:00', '2013-11-15 00:00:00', '2015-03-07 00:00:00', 108485, 5967.99, 77564.7, 24952.1, 41),
	(55, '', '2013-11-03 12:31:12', '2012-08-07 00:00:00', '2012-08-08 00:00:00', '2013-04-30 00:00:00', 28313.2, 8597.41, 15134.6, 4581.21, 61),
	(56, '', '2013-11-03 12:31:12', '2012-03-16 00:00:00', '2012-03-16 00:00:00', '2014-01-16 00:00:00', 54177.7, 8626.95, 39349.2, 6201.56, 48),
	(57, '', '2013-11-03 12:31:13', '2012-05-27 00:00:00', '2012-05-27 00:00:00', '2013-07-03 00:00:00', 2443.14, 660.46, 1782.68, 0, 50),
	(58, '', '2013-11-03 12:31:13', '2013-01-26 00:00:00', '2013-01-28 00:00:00', '2013-09-06 00:00:00', 12475.6, 5738.43, 6737.16, 0, 51),
	(59, '', '2013-11-03 12:31:13', '2012-04-25 00:00:00', '2012-04-25 00:00:00', '2013-02-07 00:00:00', 72130.3, 4555.18, 65817.9, 1757.2, 57),
	(60, '', '2013-11-03 12:31:14', '2013-10-28 00:00:00', '2013-10-29 00:00:00', '2014-06-25 00:00:00', 72990.5, 4038.43, 56261.2, 12690.9, 41),
	(61, '', '2013-11-03 12:31:15', '2013-12-01 00:00:00', '2013-12-02 00:00:00', '2014-07-25 00:00:00', 43600.9, 2893.16, 19353.5, 21354.2, 65),
	(62, '', '2013-11-03 12:31:15', '2013-03-02 00:00:00', '2013-03-04 00:00:00', '2014-08-24 00:00:00', 22242.2, 9959.46, 12282.8, 0, 65),
	(63, '', '2013-11-03 12:31:16', '2013-03-01 00:00:00', '2013-03-01 00:00:00', '2014-01-05 00:00:00', 47308.9, 4228.3, 33999.5, 9081.07, 43),
	(64, '', '2013-11-03 12:31:16', '2012-04-11 00:00:00', '2012-04-13 00:00:00', '2013-01-17 00:00:00', 41034.8, 6352.11, 34568.7, 114.04, 41),
	(65, '', '2013-11-03 12:31:17', '2013-06-19 00:00:00', '2013-06-19 00:00:00', '2014-03-18 00:00:00', 89902.6, 9213.34, 53415.6, 27273.7, 58),
	(66, '', '2013-11-03 12:31:17', '2012-11-27 00:00:00', '2012-11-27 00:00:00', '2014-08-06 00:00:00', 39987.6, 5034.72, 30062, 4890.8, 53),
	(67, '', '2013-11-03 12:31:17', '2013-10-13 00:00:00', '2013-10-13 00:00:00', '2014-07-01 00:00:00', 72478.3, 7691.98, 63910, 876.37, 65),
	(68, '', '2013-11-03 12:31:18', '2012-09-04 00:00:00', '2012-09-04 00:00:00', '2012-11-29 00:00:00', 23456.1, 5137.82, 1226.81, 17091.4, 47),
	(69, '', '2013-11-03 12:31:18', '2013-09-20 00:00:00', '2013-09-21 00:00:00', '2015-02-13 00:00:00', 26432.8, 5313.45, 13094.2, 8025.12, 49),
	(70, '', '2013-11-03 12:31:18', '2012-10-21 00:00:00', '2012-10-23 00:00:00', '2014-04-06 00:00:00', 36038.8, 2730.57, 29448.7, 3859.55, 52),
	(71, '', '2013-11-03 12:31:19', '2013-10-03 00:00:00', '2013-10-03 00:00:00', '2014-06-21 00:00:00', 34536.4, 1946.96, 13779.5, 18810, 59),
	(72, '', '2013-11-03 12:31:19', '2012-09-25 00:00:00', '2012-09-26 00:00:00', '2014-09-20 00:00:00', 17259.8, 7078.19, 0, 10181.6, 45),
	(73, '', '2013-11-03 12:31:20', '2012-07-24 00:00:00', '2012-07-24 00:00:00', '2013-08-31 00:00:00', 25302.3, 5246.24, 13909, 6147.12, 50),
	(74, '', '2013-11-03 12:31:20', '2012-07-08 00:00:00', '2012-07-09 00:00:00', '2013-04-23 00:00:00', 69866.6, 6687.73, 63178.9, 0, 59),
	(75, '', '2013-11-03 12:31:21', '2012-09-11 00:00:00', '2012-09-12 00:00:00', '2013-03-03 00:00:00', 43370.3, 2132.89, 40923.1, 314.26, 65),
	(76, '', '2013-11-03 12:31:21', '2013-09-12 00:00:00', '2013-09-14 00:00:00', '2015-05-30 00:00:00', 21394.3, 2292.05, 16947.6, 2154.68, 51),
	(77, '', '2013-11-03 12:31:44', '2013-07-06 00:00:00', '2013-07-06 00:00:00', '2015-02-11 00:00:00', 18706.5, 9716.05, 3879.8, 5110.63, 64),
	(78, '', '2013-11-03 12:31:45', '2013-08-28 00:00:00', '2013-08-30 00:00:00', '2014-02-03 00:00:00', 37380.3, 2539.45, 34840.9, 0, 68),
	(79, '', '2013-11-03 12:31:45', '2012-09-18 00:00:00', '2012-09-18 00:00:00', '2013-05-13 00:00:00', 22641.6, 3911.8, 825.84, 17903.9, 47),
	(80, '', '2013-11-03 12:31:46', '2012-08-31 00:00:00', '2012-09-01 00:00:00', '2014-07-10 00:00:00', 68765.6, 4819.29, 52913.6, 11032.8, 56),
	(81, '', '2013-11-03 12:31:46', '2012-06-08 00:00:00', '2012-06-08 00:00:00', '2013-02-16 00:00:00', 47376.6, 7337.74, 39407, 631.83, 51),
	(82, '', '2013-11-03 12:31:46', '2012-04-09 00:00:00', '2012-04-11 00:00:00', '2012-05-27 00:00:00', 37087.2, 2356.06, 26572.1, 8159.09, 54),
	(83, '', '2013-11-03 12:31:46', '2013-10-06 00:00:00', '2013-10-07 00:00:00', '2014-07-25 00:00:00', 42551.2, 7702.75, 34848.5, 0, 47),
	(84, '', '2013-11-03 12:31:47', '2012-09-14 00:00:00', '2012-09-14 00:00:00', '2013-07-26 00:00:00', 17892, 8684.84, 9207.18, 0, 41),
	(85, '', '2013-11-03 12:31:47', '2012-06-26 00:00:00', '2012-06-27 00:00:00', '2014-05-18 00:00:00', 29743.1, 1244.98, 26573.8, 1924.3, 44),
	(86, '', '2013-11-03 12:32:02', '2012-05-08 00:00:00', '2012-05-09 00:00:00', '2013-06-21 00:00:00', 24828.3, 5449.51, 11944.9, 7433.9, 60),
	(87, '', '2013-11-03 12:32:03', '2012-04-27 00:00:00', '2012-04-29 00:00:00', '2012-11-05 00:00:00', 149340, 585.45, 138328, 10427.2, 65),
	(88, '', '2013-11-03 12:32:03', '2013-05-19 00:00:00', '2013-05-20 00:00:00', '2015-03-27 00:00:00', 55246.5, 4349.67, 50896.9, 0, 56),
	(89, '', '2013-11-03 12:32:03', '2013-05-26 00:00:00', '2013-05-26 00:00:00', '2013-10-10 00:00:00', 13912.3, 1681.73, 430.02, 11800.6, 47),
	(90, '', '2013-11-03 12:32:04', '2012-04-12 00:00:00', '2012-04-12 00:00:00', '2012-12-05 00:00:00', 11784, 1819.31, 26.09, 9938.56, 42);
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


-- Volcando estructura para procedimiento efecto_led.LED_buscar
DROP PROCEDURE IF EXISTS `LED_buscar`;
DELIMITER //
CREATE PROCEDURE `LED_buscar`(


_keyName VARCHAR(255),
_keyValue VARCHAR(255),
_type VARCHAR(255)
)
BEGIN

case  

when _type = 'datos' then
    select c.id_cliente as id from led_datos d
    inner join led_clientes c on d.id_datos = c.id_datos
    where d.numero_cuil = _keyValue
    union
    select p.id_proveedores as id from led_datos d
    inner join led_proveedores p on d.id_datos = p.id_datos
    where d.numero_cuil = _keyValue
    union
    select t.id_terceros as id from led_datos d
    inner join led_terceros t on d.id_datos = t.id_datos
    where d.numero_cuil = _keyValue;

when _type = 'articulos' then
    select a.id_articulo as id from led_articulos a
    where a.codigo_interno = _keyValue;

when _type = 'integrantes' then
    select i.id_integrantes as id from led_integrantes i
    where i.correo_electronico = _keyValue;

else
    select -1 as id;
end case;

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
d.razon_social,
d.estado
from led_trabajos t
inner join led_clientes c on c.id_cliente = t.id_cliente
inner join led_datos d on d.id_datos = c.id_datos
order by d.estado desc, fecha_creacion;

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

		SELECT IFNULL(SUM(p.costo_prestacion),0) into @total
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

		SELECT IFNULL(SUM(s.costo),0) into @total
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
