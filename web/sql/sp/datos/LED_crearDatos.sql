DELIMITER $$

DROP PROCEDURE IF EXISTS `LED_crearDatos`$$
CREATE PROCEDURE `LED_crearDatos`(

/*
===================================================
 Nombre: LED_crearDatos
 Descripcion: Da de alta un dato
 Comentarios: 
 Autores: Coronel, Axel
 Audit Trail:
===================================================
*/
_numero_cuil VARCHAR(45),
_razon_social VARCHAR(45),
_direccion VARCHAR(255),
_codigo_postal VARCHAR(45),
_telefono_principal VARCHAR(45),
_correo_electrónico_principal VARCHAR(45),
_sitio_web VARCHAR(255),
_tipo INT,
_estado TINYINT
)
BEGIN

INSERT INTO `led_datos` (`numero_cuil`, `razon_social`, `direccion`, `codigo_postal`, `telefono_principal`, `correo_electrónico_principal`, `sitio_web`, `estado`)
VALUES (_numero_cuil, _razon_social, _direccion, _codigo_postal, _telefono_principal, _correo_electrónico_principal, _sitio_web, _estado);

case  
when _tipo = 0 then -- proveedores
    INSERT INTO `led_proveedores` (`id_datos`) VALUES (LAST_INSERT_ID());
when _tipo = 1 then -- clientes
    INSERT INTO `led_clientes` (`id_datos`) VALUES (LAST_INSERT_ID());
when _tipo = 2 then -- terceros
    INSERT INTO `led_terceros` (`id_datos`) VALUES (LAST_INSERT_ID());
end case; 

select LAST_INSERT_ID() as id, _tipo as tipo;

END$$

DELIMITER ;