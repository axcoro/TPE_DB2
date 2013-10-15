DELIMITER $$

DROP PROCEDURE IF EXISTS `LED_asociarTerceroTrabajo`$$
CREATE PROCEDURE `LED_asociarTerceroTrabajo`(

/*
===================================================
 Nombre: LED_asociarTerceroTrabajo
 Descripcion: Relaciona un tercero con un trabajo y describe que hizo
 Descripcion: 
 Comentarios: 
 Autores: Coronel, Axel
 Audit Trail:
===================================================
*/
_id_terceros INT,
_id_trabajos INT,
_costo_prestacion FLOAT,
_descripcion_trabajo_realizado VARCHAR(45)
)
BEGIN

INSERT INTO
led_participa
(
id_terceros,
id_trabajos,
costo_prestacion,
descripcion_trabajo_realizado
)
VALUES (
_id_terceros,
_id_trabajos,
_costo_prestacion,
_descripcion_trabajo_realizado
);

select LAST_INSERT_ID() as id;

END$$

DELIMITER ;