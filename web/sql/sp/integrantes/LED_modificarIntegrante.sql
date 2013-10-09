DELIMITER $$

DROP PROCEDURE IF EXISTS `LED_modificarArticulo`$$
CREATE PROCEDURE `LED_modificarArticulo`(

/*
===================================================
 Nombre: LED_modificarArticulo
 Descripcion: Modifica un articulo
 Comentarios: 
 Autores: Coronel, Axel
 Audit Trail:
===================================================
*/
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

END$$

DELIMITER ;