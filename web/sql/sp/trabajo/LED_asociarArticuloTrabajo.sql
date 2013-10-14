DELIMITER $$

DROP PROCEDURE IF EXISTS `LED_asociarArticuloTrabajo`$$
CREATE PROCEDURE `LED_asociarArticuloTrabajo`(

/*
===================================================
 Nombre: LED_asociarArticuloTrabajo
 Descripcion: Asocia un articulo a un trabajo
 Comentarios: 
 Autores: Coronel, Axel
 Audit Trail:
===================================================
*/
_id_articulo INT,
_id_trabajo INT,
_id_proveedor INT,
_codigo_catalogo_proveedor VARCHAR(45),
_cantidad_articulos INT,
_costo_unitario FLOAT
)
BEGIN

INSERT INTO led_provistos
(id_articulos, id_proveedores, id_trabajos, codigo_catalogo_proveedor, cantidad_articulos, costo_unitario)
VALUES (_id_articulo, _id_proveedor, _id_trabajo, _codigo_catalogo_proveedor, _cantidad_articulos, _costo_unitario);

select LAST_INSERT_ID() as id;

END$$

DELIMITER ;