DROP TRIGGER IF EXISTS after_insert_participa;

DELIMITER $$

CREATE
	TRIGGER `after_insert_participa` AFTER INSERT
	ON `led_participa`
	FOR EACH ROW BEGIN

		SET @jobId = NEW.id_trabajos;

		SET @total = 0;

		SELECT SUM(p.costo_prestacion) into @total
		FROM led_participa p
		WHERE p.id_trabajos = @jobId;

		UPDATE led_trabajos t 
		SET t.precio_prestaciones = @total
		WHERE t.id_trabajos = @jobId;

	END$$
DELIMITER ;