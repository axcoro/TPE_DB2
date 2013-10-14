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

SELECT
t.id_trabajos,
t.descripcion,
date(t.fecha_creacion) as fecha_creacion,
date(t.fecha_aprobacion_presupuesto) as fecha_aprobacion_presupuesto,
date(t.fecha_inicio_obra) as fecha_inicio_obra,
date(t.fecha_fin_obra) as fecha_fin_obra,
t.precio_total,
t.precio_mano_obra,
t.precio_articulos,
t.id_cliente
from led_trabajos t
where t.id_trabajos = _id;

END$$

DELIMITER ;