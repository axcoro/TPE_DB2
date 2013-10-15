DROP TRIGGER IF EXISTS after_update_participa;

DELIMITER $$

CREATE TRIGGER `after_update_participa` AFTER UPDATE
	ON `led_participa`
	FOR EACH ROW BEGIN

		SET @jobId = OLD.id_trabajos;

		SET @total = 0;

		SELECT SUM(p.costo_prestacion) into @total
		FROM led_participa p
		WHERE p.id_trabajos = @jobId;

		UPDATE led_trabajos t 
		SET t.precio_prestaciones = @total
		WHERE t.id_trabajos = @jobId;

	END$$
DELIMITER ;