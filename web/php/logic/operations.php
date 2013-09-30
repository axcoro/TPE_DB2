<?php

/**
 * operations.php
 * 
 * Punto de entrada para las operaciones del ws
 */
include dirname(__FILE__) . '/../configs.conf.inc';
include dirname(__FILE__) . '/delegates/DelegateFactory.php';
include dirname(__FILE__) . '/../utils/funciones.php';

$operacion = get_url_var('operacion', '');
// contemplar jsonp
$callback = get_url_var('callback', FALSE);

// respuesta por defecto
$response = "<h1>Se produjo un error al procesar la operacion</h1>";
switch ($operacion) {
    // operaciones de usuario
    case "get_secciones": // crear la cuenta del usuario
        $delegate = DelegateFactory::getDelegateFor(DELEGATE_MISC);
        if ($delegate)
            $response = $delegate->get_secciones();
        break;

    case "listar_trabajos":
        $delegate = DelegateFactory::getDelegateFor(DELEGATE_TRABAJOS);
        if ($delegate)
            $response = $delegate->get_listado_trabajos();
        break;

    // respuesta por defecto
    default:
        $response = "<h1>Operacion '$operacion' no definida..</h1>";
        break;
}

if ($callback) { // jsonp para los pibes
    $r = htmlentities($response);
    header('Content-type: application/javascript');
    echo "$callback('$r');";
} else { // json
    header('Content-type: text/html');
    echo $response;
}
?>