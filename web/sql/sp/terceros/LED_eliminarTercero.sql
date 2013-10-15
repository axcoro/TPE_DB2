DELIMITER $$

DROP PROCEDURE IF EXISTS `LED_eliminarTercero`$$
CREATE PROCEDURE `LED_eliminarTercero`(

/*
===================================================
 Nombre: LED_eliminarTercero
 Descripcion: desasocia un tercero a un trabajo
 Comentarios: 
 Autores: Coronel, Axel
 Audit Trail:
===================================================
*/
_id INT
)
BEGIN

    DELETE FROM led_participa
    WHERE led_participa.id_terceros = _id
    LIMIT 1;

END$$

DELIMITER ;