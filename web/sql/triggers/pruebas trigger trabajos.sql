-- ------------------------------------------------------------

SELECT
	precio_total, precio_mano_obra, precio_articulos
FROM
	led_trabajos t
WHERE
	t.id_trabajos = 14;

-- ------------------------------------------------------------

INSERT INTO led_trabajos
    (descripcion, fecha_creacion, fecha_aprobacion_presupuesto, fecha_inicio_obra, fecha_fin_obra, precio_total, precio_mano_obra, precio_articulos, id_cliente)
VALUES
    ('desc', now(), now(), now(), now(), 0, 100, 100, 7);

-- ------------------------------------------------------------

UPDATE
	led_trabajos t
SET
	t.precio_mano_obra = 100.0
WHERE
	t.id_trabajos = 14;

-- ------------------------------------------------------------