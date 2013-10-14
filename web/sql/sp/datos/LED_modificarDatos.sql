DELIMITER $$

DROP PROCEDURE IF EXISTS `LED_modificarDatos`$$
CREATE PROCEDURE `LED_modificarDatos`(

/*
===================================================
 Nombre: LED_modificarDatos
 Descripcion: Modifica un dato
 Comentarios: 
 Autores: Coronel, Axel
 Audit Trail:
===================================================
*/
_id INT,
_tipo INT,
_numero_cuil VARCHAR(45),
_razon_social VARCHAR(45),
_direccion VARCHAR(255),
_codigo_postal VARCHAR(45),
_telefono_principal VARCHAR(45),
_correo_electronico_principal VARCHAR(45),
_sitio_web VARCHAR(255),
_estado TINYINT
)
BEGIN

DECLARE _id_dato INT DEFAULT -1;

case  
when _tipo = 0 then -- proveedores
    SELECT p.id_datos INTO _id_dato FROM led_proveedores p where p.id_proveedores = _id;
when _tipo = 1 then -- clientes
    SELECT p.id_datos INTO _id_dato FROM led_clientes p where p.id_cliente = _id;
when _tipo = 2 then -- terceros
    SELECT p.id_datos INTO _id_dato FROM led_terceros p where p.id_terceros = _id;
end case; 

    UPDATE led_datos
    SET
        numero_cuil = _numero_cuil,
        razon_social = _razon_social,
        direccion = _direccion,
        codigo_postal = _codigo_postal,
        telefono_principal = _telefono_principal,
        correo_electronico_principal = _correo_electronico_principal,
        sitio_web = _sitio_web,
        estado = _estado
    WHERE
        id_datos = _id_dato
    LIMIT 1;

select _id as id, _tipo as tipo;

END$$

DELIMITER ;