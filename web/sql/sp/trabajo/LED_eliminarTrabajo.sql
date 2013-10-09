DELIMITER $$

DROP PROCEDURE IF EXISTS `LED_eliminarTrabajo`$$
CREATE PROCEDURE `LED_eliminarTrabajo`(

/*
===================================================
 Nombre: LED_eliminarTrabajo
 Descripcion: elimina un trabajo
 Comentarios: 
 Autores: Coronel, Axel
 Audit Trail:
===================================================
*/
_id INT
)
BEGIN

    DELETE FROM led_trabajos WHERE  id_trabajos = _id;

END$$

DELIMITER ;