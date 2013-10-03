DELIMITER $$

DROP PROCEDURE IF EXISTS `LED_modificarArticulo`$$
CREATE PROCEDURE `LED_modificarArticulo`(

/*
===================================================
 Nombre: LED_modificarArticulo
 Descripcion: modifica un articulo
 Comentarios: 
 Autores: Coronel, Axel
 Audit Trail:
===================================================
*/
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
    id_articulos = _id;

END$$

DELIMITER ;