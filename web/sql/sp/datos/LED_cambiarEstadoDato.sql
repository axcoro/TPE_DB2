DELIMITER $$

DROP PROCEDURE IF EXISTS `LED_cambiarEstadoDato`$$
CREATE PROCEDURE `LED_cambiarEstadoDato`(

/*
===================================================
 Nombre: LED_cambiarEstadoDato
 Descripcion: cambia el estado de un dato
 Comentarios: 
 Autores: Coronel, Axel
 Audit Trail:
===================================================
*/
_id INT,
_estado TINYINT
)
BEGIN

UPDATE led_datos
SET
    estado = _estado
WHERE
    id_datos = _id
LIMIT 1;

select _id as id, _estado as estado;

END$$

DELIMITER ;