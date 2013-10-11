DELIMITER $$

DROP PROCEDURE IF EXISTS `LED_eliminarIntegrante`$$
CREATE PROCEDURE `LED_eliminarIntegrante`(

/*
===================================================
 Nombre: LED_eliminarIntegrante
 Descripcion: elimina un dato
 Comentarios: 
 Autores: Coronel, Axel
 Audit Trail:
===================================================
*/
_id INT
)
BEGIN

    DELETE FROM led_integrantes
    WHERE id_integrantes = _id
    LIMIT 1;

END$$

DELIMITER ;