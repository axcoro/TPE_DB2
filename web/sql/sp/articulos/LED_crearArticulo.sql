DELIMITER $$

DROP PROCEDURE IF EXISTS `LED_crearArticulo`$$
CREATE PROCEDURE `LED_crearArticulo`(

/*
===================================================
 Nombre: LED_crearArticulo
 Descripcion: Da de alta un articulo
 Comentarios: 
 Autores: Coronel, Axel
 Audit Trail:
===================================================
*/
_codigo_interno VARCHAR(45),
_descripcion VARCHAR(255),
_marca_fabricante VARCHAR(255),
_modelo VARCHAR(255),
_observaciones VARCHAR(255)
)
BEGIN

INSERT INTO led_articulos
    (codigo_interno, descripcion, marca_fabricante, modelo, observaciones)
VALUES
    (_codigo_interno, _descripcion, _marca_fabricante, _modelo, _observaciones);

select LAST_INSERT_ID() as id;

END$$

DELIMITER ;