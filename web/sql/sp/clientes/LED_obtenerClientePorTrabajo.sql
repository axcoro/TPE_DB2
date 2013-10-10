DELIMITER $$

DROP PROCEDURE IF EXISTS `LED_obtenerClientePorTrabajo`$$
CREATE PROCEDURE `LED_obtenerClientePorTrabajo`(

/*
 Nombre: LED_obtenerClientePorTrabajo
 Descripcion: dado un trabajo, obtiene el cliente
 Comentarios: 
 Autores: Coronel, Axel
 Audit Trail:
===================================================
*/
_id INT
)
BEGIN

select c.id_cliente, d.* from led_clientes c
inner join led_datos d on d.id_datos = c.id_datos
inner join led_trabajos t on t.id_cliente = c.id_cliente
where t.id_trabajos = _id;

END$$

DELIMITER ;