<?php

/**
 * Encapsula funciones varias
 * @author Axel
 */
class MiscDelegate extends AbstractDelegate {

    public function __construct() {
        parent::__construct();
    }

    function get_secciones($active = SECCION_PRINCIPAL, $url_base = URL_BASE_SECCIONES) {
        $secciones = array();
        // nombre secion / nombre archivo
        $secciones[] = array("Trabajos", SECCION_PRINCIPAL);
        $secciones[] = array("Clientes", "clientes");
        $secciones[] = array("Proveedores", "proveedores");
        $secciones[] = array("Terceros", "terceros");
        $html = '';
        $c = count($secciones);
        $active_class = '';
        // crear el listado de secciones
        for ($i = 0; $i < $c; $i++) {
            $seccion = $secciones[$i];
            // asignar la clase "active" a la seccion que se corresponda con $active
            $active_class = ($seccion[1] == $active) ? 'active' : '';
            $html .="<li class='$active_class'><a href='$url_base$seccion[1]'>$seccion[0]</a></li>";
        }

        return $html;
    }

}

?>
