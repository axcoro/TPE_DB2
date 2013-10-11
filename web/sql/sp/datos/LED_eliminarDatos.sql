DELIMITER $$

DROP PROCEDURE IF EXISTS `LED_eliminarDatos`$$
CREATE PROCEDURE `LED_eliminarDatos`(

/*
===================================================
 Nombre: LED_eliminarDatos
 Descripcion: elimina un dato
 Comentarios: 
 Autores: Coronel, Axel
 Audit Trail:
===================================================
*/
_id INT
)
BEGIN

    DELETE FROM led_datos
    WHERE id_datos = _id
    LIMIT 1;

END$$

DELIMITER ;