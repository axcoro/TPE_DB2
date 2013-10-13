DELIMITER $$

DROP PROCEDURE IF EXISTS `LED_modificarTrabajo`$$
CREATE PROCEDURE `LED_modificarTrabajo`(

/*
===================================================
 Nombre: LED_modificarTrabajo
 Descripcion: Modifica un trabajo
 Comentarios: 
 Autores: Coronel, Axel
 Audit Trail:
===================================================
*/
_id INT,
_descripcion VARCHAR(45),
_fecha_aprobacion_presupuesto DATETIME,
_fecha_inicio_obra DATETIME,
_fecha_fin_obra DATETIME,
_precio_total FLOAT,
_precio_mano_obra FLOAT,
_precio_articulos FLOAT
)
BEGIN

UPDATE led_trabajos
    SET descripcion = _descripcion,
        fecha_aprobacion_presupuesto = _fecha_aprobacion_presupuesto,
        fecha_inicio_obra = _fecha_inicio_obra,
        fecha_fin_obra = _fecha_fin_obra,
        precio_total = _precio_total,
        precio_mano_obra = _precio_mano_obra,
        precio_articulos = _precio_articulos
WHERE
        id_trabajos = _id;

END$$

DELIMITER ;