DELIMITER $$

DROP PROCEDURE IF EXISTS `LED_listarDatosFiltrando`$$
CREATE PROCEDURE `LED_listarDatosFiltrando`(

/*
===================================================
 Nombre: LED_listarDatosFiltrando
 Descripcion: Dado un tipo, lista datos segun la query
 Comentarios: 
 Autores: Coronel, Axel
 Audit Trail:
===================================================
*/
_tipo INT,
_query VARCHAR(255)
)
BEGIN

case  
when _tipo = 0 then -- proveedores
    select p.id_proveedores, d.* from led_datos d
	inner join led_proveedores p on d.id_datos = p.id_datos
	where (`numero_cuil` LIKE concat('%',_query,'%') OR `razon_social` LIKE concat('%',_query,'%') OR `direccion` LIKE concat('%',_query,'%') OR `codigo_postal` LIKE concat('%',_query,'%') OR `telefono_principal` LIKE concat('%',_query,'%') OR `correo_electronico_principal` LIKE concat('%',_query,'%'))
	and d.estado = 1
	order by d.estado desc, d.razon_social;
when _tipo = 1 then -- clientes
    select p.id_cliente, d.* from led_datos d
	inner join led_clientes p on d.id_datos = p.id_datos
	where (`numero_cuil` LIKE concat('%',_query,'%') OR `razon_social` LIKE concat('%',_query,'%') OR `direccion` LIKE concat('%',_query,'%') OR `codigo_postal` LIKE concat('%',_query,'%') OR `telefono_principal` LIKE concat('%',_query,'%') OR `correo_electronico_principal` LIKE concat('%',_query,'%'))
	and d.estado = 1
	order by d.estado desc, d.razon_social;
when _tipo = 2 then -- terceros
    select p.id_terceros, d.* from led_datos d
	inner join led_terceros p on d.id_datos = p.id_datos
	where (`numero_cuil` LIKE concat('%',_query,'%') OR `razon_social` LIKE concat('%',_query,'%') OR `direccion` LIKE concat('%',_query,'%') OR `codigo_postal` LIKE concat('%',_query,'%') OR `telefono_principal` LIKE concat('%',_query,'%') OR `correo_electronico_principal` LIKE concat('%',_query,'%'))
	and d.estado = 1
	order by d.estado desc, d.razon_social;
end case; 

END$$

DELIMITER ;