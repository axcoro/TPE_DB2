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

select a.*, u.* from led_articulos a
inner join led_utiliza u on u.id_articulos = a.id_articulo
where u.id_trabajos = _id;

END$$

DELIMITER ;