DELIMITER $$

DROP PROCEDURE IF EXISTS `LED_obtenerTrabajo`$$
CREATE PROCEDURE `LED_obtenerTrabajo`(

/*
===================================================
 Nombre: LED_obtenerTrabajo
 Descripcion: obtiene un trabajo dado el id
 Comentarios: 
 Autores: Coronel, Axel
 Audit Trail:
===================================================
*/
_id INT
)
BEGIN

select t.*
from led_trabajos t
where t.id_trabajos = _id;

END$$

DELIMITER ;