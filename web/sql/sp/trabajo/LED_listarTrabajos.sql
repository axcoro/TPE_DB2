DELIMITER $$

DROP PROCEDURE IF EXISTS `LED_listarTrabajos`$$
CREATE PROCEDURE `LED_listarTrabajos`(

/*
===================================================
 Nombre: LED_listarTrabajos
 Descripcion: lista los trabajos
 Comentarios: 
 Autores: Coronel, Axel
 Audit Trail:
===================================================
*/
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
t.precio_prestaciones,
t.id_cliente,
d.razon_social
from led_trabajos t
inner join led_clientes c on c.id_cliente = t.id_cliente
inner join led_datos d on d.id_datos = c.id_datos;

END$$

DELIMITER ;