DELIMITER $$

DROP PROCEDURE IF EXISTS `LED_eliminarArticulo`$$
CREATE PROCEDURE `LED_eliminarArticulo`(

/*
===================================================
 Nombre: LED_eliminarArticulo
 Descripcion: elimina un articulo
 Comentarios: 
 Autores: Coronel, Axel
 Audit Trail:
===================================================
*/
_id INT
)
BEGIN

    DELETE FROM led_articulos
    WHERE id_articulo = _id
    LIMIT 1;

END$$

DELIMITER ;