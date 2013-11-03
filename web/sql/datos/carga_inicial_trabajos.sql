select
date(FROM_UNIXTIME(UNIX_TIMESTAMP('2012-01-01') + FLOOR(0 + (RAND() * 63072000)))) into @inicioObra;

select
@inicioObra + interval (FLOOR(0 + (RAND() * 3))) day into @inicioAprobacion;

select
date(FROM_UNIXTIME(UNIX_TIMESTAMP(@inicioAprobacion) + FLOOR(0 + (RAND() * 63072000)))) into @inicioFin;

select
round((10 + (RAND() * 9999.33)), 2) into @precio;

select c.id_cliente into @clienteId from led_clientes c
order by rand()
limit 1;

call LED_crearTrabajo('Descripcion', @inicioObra, @inicioAprobacion, @inicioFin, @precio, @clienteId);