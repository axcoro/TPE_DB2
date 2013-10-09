DELIMITER $$

DROP PROCEDURE IF EXISTS `LED_listarDatos`$$
CREATE PROCEDURE `LED_listarDatos`(

/*
===================================================
 Nombre: LED_listarDatos
 Descripcion: Dado un tipo, lista datos
 Comentarios: 
 Autores: Coronel, Axel
 Audit Trail:
===================================================
*/
_tipo INT
)
BEGIN

case  
when _tipo = 0 then -- proveedores
    select p.id_proveedores, d.* from led_datos d
	inner join led_proveedores p on d.id_datos = p.id_datos;
when _tipo = 1 then -- clientes
    select p.id_cliente, d.* from led_datos d
	inner join led_clientes p on d.id_datos = p.id_datos;
when _tipo = 2 then -- terceros
    select p.id_terceros, d.* from led_datos d
	inner join led_terceros p on d.id_datos = p.id_datos;
end case; 

END$$

DELIMITER ;