DELIMITER $$

DROP PROCEDURE IF EXISTS `LED_listarArticulosPorTrabajo`$$
CREATE PROCEDURE `LED_listarArticulosPorTrabajo`(

/*
===================================================
 Nombre: LED_listarArticulosPorTrabajo
 Descripcion: dado un trabajo, lista los articulos
 Comentarios: 
 Autores: Coronel, Axel
 Audit Trail:
===================================================
*/
_id INT
)
BEGIN

select a.*, p.* from led_articulos a
inner join led_provistos p on p.id_articulos = a.id_articulo
where p.id_trabajos = _id;

END$$

DELIMITER ;