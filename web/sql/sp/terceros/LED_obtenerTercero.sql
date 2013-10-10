DELIMITER $$

DROP PROCEDURE IF EXISTS `LED_obtenerTercero`$$
CREATE PROCEDURE `LED_obtenerTercero`(

/*
 Nombre: LED_obtenerTercero
 Descripcion: obterner los datos de un tercero dado el id
 Comentarios: 
 Autores: Coronel, Axel
 Audit Trail:
===================================================
*/
_id INT
)
BEGIN

select t.id_terceros, d.* from led_datos d
inner join led_terceros t on t.id_datos = d.id_datos
where t.id_terceros = _id;

END$$

DELIMITER ;