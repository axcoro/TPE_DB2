DELIMITER $$

DROP PROCEDURE IF EXISTS `LED_obtenerDato`$$
CREATE PROCEDURE `LED_obtenerDato`(

/*
===================================================
 Nombre: LED_obtenerDato
 Descripcion: devuelve los datos de un tipo dado
 Comentarios: 
 Autores: Coronel, Axel
 Audit Trail:
===================================================
*/
_id INT,
_tipo INT
)
BEGIN

case  
when _tipo = 0 then -- proveedores
    select p.id_proveedores as id, _tipo as tipo, d.* from led_datos d
	inner join led_proveedores p on d.id_datos = p.id_datos
        where p.id_datos = _id
        limit 1;

when _tipo = 1 then -- clientes
    select p.id_cliente as id, _tipo as tipo, d.* from led_datos d
	inner join led_clientes p on d.id_datos = p.id_datos
        where p.id_datos = _id
        limit 1;

when _tipo = 2 then -- terceros
    select p.id_terceros as id, _tipo as tipo, d.* from led_datos d
	inner join led_terceros p on d.id_datos = p.id_datos
        where p.id_datos = _id
        limit 1;

end case; 


END$$

DELIMITER ;