DELIMITER $$

DROP PROCEDURE IF EXISTS `LED_listarIntegrantesPorProveedor`$$
CREATE PROCEDURE `LED_listarIntegrantesPorProveedor`(

/*
===================================================
 Nombre: LED_listarIntegrantesPorProveedor
 Descripcion: dado un proveedor, lista los integrantes
 Comentarios: 
 Autores: Coronel, Axel
 Audit Trail:
===================================================
*/
_id INT
)
BEGIN

select i.* from led_integrantes i
where i.id_proveedor = _id;

END$$

DELIMITER ;