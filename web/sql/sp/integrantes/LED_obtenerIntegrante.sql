DELIMITER $$

DROP PROCEDURE IF EXISTS `LED_obtenerIntegrante`$$
CREATE PROCEDURE `LED_obtenerIntegrante`(

/*
===================================================
 Nombre: LED_obtenerIntegrante
 Descripcion: dado un id, obtiene los datos de integrante
 Comentarios: 
 Autores: Coronel, Axel
 Audit Trail:
===================================================
*/
_id INT
)
BEGIN

select i.* from led_integrantes i
where i.id_integrantes = _id
limit 1;

END$$

DELIMITER ;