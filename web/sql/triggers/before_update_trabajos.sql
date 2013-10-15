DROP TRIGGER IF EXISTS before_update_trabajos;

DELIMITER $$

CREATE
	TRIGGER `before_update_trabajos` BEFORE UPDATE
	ON `led_trabajos`
	FOR EACH ROW BEGIN

		SET NEW.precio_total = NEW.precio_mano_obra + NEW.precio_articulos + NEW.precio_prestaciones;

	END$$
DELIMITER ;