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
    select (1) from led_datos d
    where d.numero_cuil = _keyValue;

end case; 

END$$

DELIMITER ;