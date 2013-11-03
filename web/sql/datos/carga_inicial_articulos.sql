select
round((10 + (RAND() * 999.33)), 2) into @costoUnitario;

select
floor((1 + (RAND() * 50))) into @cantidadArticulos;

SELECT CONCAT(
  'ART-',
  CHAR( FLOOR(65 + (RAND() * 25))),
  CHAR( FLOOR(65 + (RAND() * 25))),
  CHAR( FLOOR(65 + (RAND() * 25))),
  (FLOOR(100 + (RAND() * 1000)))
  ) into @codArticulo;
  
  SELECT CONCAT(
  'PROV-',
  CHAR( FLOOR(65 + (RAND() * 25))),
  CHAR( FLOOR(65 + (RAND() * 25))),
  CHAR( FLOOR(65 + (RAND() * 25))),
  (FLOOR(100 + (RAND() * 1000)))
  ) into @codProv;

select f.fabricante into @fabricante from tablafabricantes f
order by rand()
limit 1;

select p.producto into @producto from tablaproductos p
order by rand()
limit 1;

select t.id_trabajos into @trabajoId from led_trabajos t
order by rand()
limit 1;

select p.id_proveedores into @proveedorId from led_proveedores p
order by rand()
limit 1;

call LED_crearArticulo(@codArticulo, 'Descripcion', @fabricante, @producto , '');

call LED_asociarArticuloTrabajo
(LAST_INSERT_ID(), @trabajoId, @proveedorId, @codProv, @cantidadArticulos, @costoUnitario);