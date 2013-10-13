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
_fecha_aprobacion_presupuesto DATETIME,
_fecha_inicio_obra DATETIME,
_fecha_fin_obra DATETIME,
_precio_mano_obra FLOAT,
_id_cliente INT
)
BEGIN

INSERT INTO led_trabajos
    (descripcion, fecha_creacion, fecha_aprobacion_presupuesto, fecha_inicio_obra, fecha_fin_obra, precio_total, precio_mano_obra, precio_articulos, id_cliente)
VALUES
    (_descripcion, now(), _fecha_aprobacion_presupuesto, _fecha_inicio_obra, _fecha_fin_obra, 0, _precio_mano_obra, 0, _id_cliente);

select LAST_INSERT_ID() as id;

END$$

DELIMITER ;