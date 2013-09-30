<?php

function get_url_var($name, $default = '') {
    $value = $default;
    if (isset($_GET[$name]))
        $value = $_GET[$name];

    if (isset($_POST[$name]))
        $value = $_POST[$name];

    return $value;
}

function seccionBuilder($active = SECCION_PRINCIPAL, $url_base = URL_BASE_SECCIONES) {
    $secciones = array();
    $secciones[] = array("Trabajos", "trabajos");
    $secciones[] = array("Clientes", "clientes");
    $secciones[] = array("Proveedores", "proveedores");
    $secciones[] = array("Terceros", "terceros");
    $html = '';
    $c = count($secciones);
    $active_class = '';
    for ($i = 0; $i < $c; $i++) {
        $seccion = $secciones[$i];
        $active_class = ($seccion[1] == $active) ? 'active' : '';
        $html .="<li class='$active_class'><a href='$url_base$seccion[1]'>$seccion[0]</a></li>";
    }

    return $html;
}

?>
