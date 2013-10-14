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
_fecha_aprobacion_presupuesto DATE,
_fecha_inicio_obra DATE,
_fecha_fin_obra DATE,
_precio_mano_obra FLOAT
)
BEGIN

UPDATE led_trabajos
    SET descripcion = _descripcion,
        fecha_aprobacion_presupuesto = _fecha_aprobacion_presupuesto,
        fecha_inicio_obra = _fecha_inicio_obra,
        fecha_fin_obra = _fecha_fin_obra,
        precio_mano_obra = _precio_mano_obra
WHERE
        id_trabajos = _id;

END$$

DELIMITER ;