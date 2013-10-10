DELIMITER $$

DROP PROCEDURE IF EXISTS `LED_listarTrabajos`$$
CREATE PROCEDURE `LED_listarTrabajos`(

/*
===================================================
 Nombre: LED_listarTrabajos
 Descripcion: lista los trabajos
 Comentarios: 
 Autores: Coronel, Axel
 Audit Trail:
===================================================
*/
)
BEGIN

select t.* from led_trabajos t;

END$$

DELIMITER ;