DELIMITER $$

DROP PROCEDURE IF EXISTS `LED_listarProveedoresPorArticulo`$$
CREATE PROCEDURE `LED_listarProveedoresPorArticulo`(

/*
 Nombre: LED_listarProveedoresPorArticulo
 Descripcion: dado un articulo, lista los proveedores y los codigos asociados
 Comentarios: 
 Autores: Coronel, Axel
 Audit Trail:
===================================================
*/
_id INT
)
BEGIN

select p.id_proveedores, d.*, pr.codigo_catalogo_proveedor from led_proveedores p
inner join led_provistos pr on pr.id_proveedores = p.id_proveedores
inner join led_datos d on d.id_datos = p.id_datos
where pr.id_articulos = _id;

END$$

DELIMITER ;