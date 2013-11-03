DROP TRIGGER IF EXISTS after_delete_participa;

DELIMITER $$

CREATE
	TRIGGER `after_delete_participa` AFTER DELETE
	ON `led_participa`
	FOR EACH ROW BEGIN

		SET @jobId = OLD.id_trabajos;

		SET @total = 0;

		SELECT IFNULL(SUM(p.costo_prestacion),0) into @total
		FROM led_participa p
		WHERE p.id_trabajos = @jobId;

		UPDATE led_trabajos t 
		SET t.precio_prestaciones = @total
		WHERE t.id_trabajos = @jobId;

	END$$
DELIMITER ;