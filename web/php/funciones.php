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
    $secciones[] = array("Home", SECCION_PRINCIPAL);
    $secciones[] = array("Seccion 1", "seccion1");
    $secciones[] = array("Seccion 2", "seccion2");
    $secciones[] = array("Seccion 3", "seccion3");
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
