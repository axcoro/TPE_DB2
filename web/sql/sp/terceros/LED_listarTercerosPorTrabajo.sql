DELIMITER $$

DROP PROCEDURE IF EXISTS `LED_listarTercerosPorTrabajo`$$
CREATE PROCEDURE `LED_listarTercerosPorTrabajo`(

/*
 Nombre: LED_listarTercerosPorTrabajo
 Descripcion: dado un trabajo, lista los terceros y los datos de las prestaciones para ese trabajo
 Comentarios: 
 Autores: Coronel, Axel
 Audit Trail:
===================================================
*/
_id INT
)
BEGIN

select t.*, d.*, p.costo_prestacion, p.descripcion_trabajo_realizado from led_terceros t
inner join led_participa p on p.id_terceros = t.id_terceros
inner join led_datos d on d.id_datos = t.id_datos
where p.id_trabajos = _id;

END$$

DELIMITER ;