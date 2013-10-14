DROP TRIGGER IF EXISTS before_insert_trabajos;

DELIMITER $$

CREATE
	TRIGGER `before_insert_trabajos` BEFORE INSERT
	ON `led_trabajos`
	FOR EACH ROW BEGIN

		SET NEW.precio_total = NEW.precio_mano_obra + NEW.precio_articulos;

	END$$
DELIMITER ;