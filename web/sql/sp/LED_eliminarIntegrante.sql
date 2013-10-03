DELIMITER $$

DROP PROCEDURE IF EXISTS `LED_eliminarIntegrante`$$
CREATE PROCEDURE `LED_eliminarIntegrante`(

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

    DELETE FROM led_integrantes WHERE  id_integrantes = _id;

END$$

DELIMITER ;