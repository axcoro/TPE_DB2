DELIMITER $$

DROP PROCEDURE IF EXISTS `LED_crearTrabajo`$$
CREATE PROCEDURE `LED_crearTrabajo`(

/*
===================================================
 Nombre: LED_crearTrabajo
 Descripcion: Da de alta un trabajo
 Comentarios: 
 Autores: Coronel, Axel
 Audit Trail:
===================================================
*/
_descripcion VARCHAR(45),
_fecha_creacion DATETIME,
_fecha_aprobacion_presupuesto DATETIME,
_fecha_inicio_obra DATETIME,
_fecha_fin_obra DATETIME,
_precio_total FLOAT,
_precio_mano_obra FLOAT,
_precio_articulos FLOAT
)
BEGIN

INSERT INTO led_trabajos
    (descripcion, fecha_creacion, fecha_aprobacion_presupuesto, fecha_inicio_obra, fecha_fin_obra, precio_total, precio_mano_obra, precio_articulos)
VALUES
    (_descripcion, _fecha_creacion, _fecha_aprobacion_presupuesto, _fecha_inicio_obra, _fecha_fin_obra, _precio_total, _precio_mano_obra, _precio_articulos);

END$$

DELIMITER ;