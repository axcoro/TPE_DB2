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

select t.*, d.razon_social from led_trabajos t
inner join led_clientes c on c.id_cliente = t.id_cliente
inner join led_datos d on d.id_datos = c.id_datos;

END$$

DELIMITER ;