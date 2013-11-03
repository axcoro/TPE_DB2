DROP TRIGGER IF EXISTS after_delete_provistos;

DELIMITER $$

CREATE
	TRIGGER `after_delete_provistos` AFTER DELETE
	ON `led_provistos`
	FOR EACH ROW BEGIN

		SET @jobId = OLD.id_trabajos;

		SET @total = 0;

		SELECT IFNULL(SUM(s.costo),0) into @total
		FROM(
			SELECT (p.costo_unitario * p.cantidad_articulos) as costo
		    FROM led_provistos p
		    WHERE p.id_trabajos = @jobId) s;

		UPDATE led_trabajos t 
		SET t.precio_articulos = @total
		WHERE t.id_trabajos = @jobId;

	END$$
DELIMITER ;