<?php

define("SECCION_PRINCIPAL", "trabajos");

switch (PHP_OS) {
    case stristr(PHP_OS, 'WIN'):
        define("URL_BASE_SECCIONES", "/TPE?seccion=");
        break;
    case stristr(PHP_OS, 'DAR'):
        define("URL_BASE_SECCIONES", "/~sperez/TPE?seccion=");
        break;
    default:
        define("URL_BASE_SECCIONES", "/TPE?seccion=");
        break;
}

define("CONTENT_PATH", "content/");

define("MYSQL_DB_PREFIX", "LED_");

define("MYSQL_DB_HOST", "localhost");
define("MYSQL_DB_USERNAME", "root");
define("MYSQL_DB_PASSWORD", "");
define("MYSQL_DB_DATABASE", "efecto_led");

// definicion de los nombres de las clases de los delegates
define('DELEGATE_MISC', 'MiscDelegate');
define('DELEGATE_TRABAJOS', 'TrabajosDelegate');
define('DELEGATE_MYSQL', 'MySQLDelegate');

// "tipos" de entidades a generar (se mapean a la tabla datos)
define("TIPO_PROVEEDOR", 0);
define("TIPO_CLIENTE", 1);
define("TIPO_TERCERO", 2);
?>
