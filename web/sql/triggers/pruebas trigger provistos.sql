SELECT 
    *
FROM
    led_provistos p
WHERE
    p.id_trabajos = 58;
-- ------------------------------------------------------------

SELECT
	t.precio_articulos
FROM
	led_trabajos t
WHERE
	t.id_trabajos = 58;

-- ------------------------------------------------------------


DELETE FROM
	led_provistos
WHERE
	id_trabajos = 58 AND
	id_proveedores = 8 AND
	id_articulos = 42;

-- ------------------------------------------------------------

INSERT INTO 
	led_provistos (id_articulos, id_proveedores, id_trabajos, codigo_catalogo_proveedor, cantidad_articulos, costo_unitario)
VALUES (42, 8, 58, 12345, 1, 100);

-- ------------------------------------------------------------

UPDATE
	led_provistos p
SET
	p.costo_unitario = 0
WHERE
	p.id_trabajos = 58 AND
	p.id_proveedores = 8 AND
	p.id_articulos = 33;