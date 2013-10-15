DROP TRIGGER IF EXISTS after_update_provistos;

DELIMITER $$

CREATE TRIGGER `after_update_provistos` AFTER UPDATE
	ON `led_provistos`
	FOR EACH ROW BEGIN

		SET @jobId = OLD.id_trabajos;

		SET @total = 0;

		SELECT SUM(s.costo) into @total
		FROM(
			SELECT (p.costo_unitario * p.cantidad_articulos) as costo
		    FROM led_provistos p
		    WHERE p.id_trabajos = @jobId) s;

		UPDATE led_trabajos t 
		SET t.precio_articulos = @total
		WHERE t.id_trabajos = @jobId;

	END$$
DELIMITER ;