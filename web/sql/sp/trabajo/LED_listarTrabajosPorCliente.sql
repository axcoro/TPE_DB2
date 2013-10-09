DELIMITER $$

DROP PROCEDURE IF EXISTS `LED_listarTrabajosPorCliente`$$
CREATE PROCEDURE `LED_listarTrabajosPorCliente`(

/*
===================================================
 Nombre: LED_listarTrabajosPorCliente
 Descripcion: dado un cliente, lista los trabajos
 Comentarios: 
 Autores: Coronel, Axel
 Audit Trail:
===================================================
*/
_id INT
)
BEGIN

select t.* from led_trabajos t
where t.id_cliente = _id;

END$$

DELIMITER ;