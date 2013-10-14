DELIMITER $$

DROP PROCEDURE IF EXISTS `LED_crearIntegrante`$$
CREATE PROCEDURE `LED_crearIntegrante`(

/*
===================================================
 Nombre: LED_crearIntegrante
 Descripcion: Da de alta un integrante
 Comentarios: 
 Autores: Coronel, Axel
 Audit Trail:
===================================================
*/
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

END$$

DELIMITER ;