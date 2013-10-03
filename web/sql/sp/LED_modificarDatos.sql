DELIMITER $$

DROP PROCEDURE IF EXISTS `LED_modificarDatos`$$
CREATE PROCEDURE `LED_modificarDatos`(

/*
===================================================
 Nombre: LED_modificarDatos
 Descripcion: Modifica un dato
 Comentarios: 
 Autores: Coronel, Axel
 Audit Trail:
===================================================
*/
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

END$$

DELIMITER ;