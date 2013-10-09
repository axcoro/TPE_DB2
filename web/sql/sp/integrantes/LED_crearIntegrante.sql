DELIMITER $$

DROP PROCEDURE IF EXISTS `LED_crearArticulo`$$
CREATE PROCEDURE `LED_crearArticulo`(

/*
===================================================
 Nombre: LED_crearArticulo
 Descripcion: Da de alta un articulo
 Comentarios: 
 Autores: Coronel, Axel
 Audit Trail:
===================================================
*/
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

END$$

DELIMITER ;