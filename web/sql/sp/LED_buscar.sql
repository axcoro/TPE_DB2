DELIMITER $$

DROP PROCEDURE IF EXISTS `LED_buscar`$$
CREATE PROCEDURE `LED_buscar`(

/*
===================================================
 Nombre: LED_buscar
 Descripcion: devuelve si el valor buscado está en la entidad
 Comentarios: 
 Autores: Coronel, Axel
 Audit Trail:
===================================================
*/
_keyName VARCHAR(255),
_keyValue VARCHAR(255),
_type VARCHAR(255)
)
BEGIN

case  
when _type = 'datos' then
    
    select c.id_cliente as id from led_datos d
    inner join led_clientes c on d.id_datos = c.id_datos
    where d.numero_cuil = _keyValue
    union
    select p.id_proveedores as id from led_datos d
    inner join led_proveedores p on d.id_datos = p.id_datos
    where d.numero_cuil = _keyValue
    union
    select t.id_terceros as id from led_datos d
    inner join led_terceros t on d.id_datos = t.id_datos
    where d.numero_cuil = _keyValue;

end case;

END$$

DELIMITER ;