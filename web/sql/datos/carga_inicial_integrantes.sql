select concat(A.nombre, ' ' , B.apellido), lower(concat(A.nombre, '.' , B.apellido, '@sitio.com.ar')) into @razon_social, @username from
(
	select t.nombre from tablanombres t
	order by rand()
	limit 1
) A,
(
	select a.apellido from tablaapellidos a
	order by rand()
	limit 1
) B;

select concat(c.calle, ' ', FLOOR(0 + RAND() * 9999)) into @direccion from tablacalle c
order by rand()
limit 1;

select concat(20, FLOOR(20000000 + RAND() * 40000000),  FLOOR(1 + RAND() * 9)) into @cuil;

select concat(2664, FLOOR(600000 + RAND() * 899999)) into @telefono;

select p.id_proveedores into @proveedorId from led_proveedores p
order by rand()
limit 1;

select a.area into @area from tablaareas a 
order by rand()
limit 1;

call LED_crearIntegrante(@razon_social, @area, @telefono, @username, @proveedorId);