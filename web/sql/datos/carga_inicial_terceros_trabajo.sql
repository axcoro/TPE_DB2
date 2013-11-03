select
round((10 + (RAND() * 9999.33)), 2) into @precio;

select t.id_terceros into @terceroId from led_terceros t
order by rand()
limit 1;

select t.id_trabajos into @trabajoId from led_trabajos t
order by rand()
limit 1;

call LED_asociarTerceroTrabajo(@terceroId, @trabajoId, @precio, 'Descripcion Trabajo');