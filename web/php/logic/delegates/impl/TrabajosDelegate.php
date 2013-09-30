<?php

/**
 * Encapsula funciones varias
 * @author Axel
 */
class TrabajosDelegate extends AbstractDelegate {

    public function __construct() {
        parent::__construct();
    }

    function get_listado_trabajos() {

        $db = DelegateFactory::getDelegateFor(DELEGATE_MYSQL);
        $listado = array();
        if ($db) {
            $result = $db->ListarTrabajos(); // Call LED_ListarTrabajos();
            if ($result && $result->num_rows > 0) {
                while ($r = $result->fetch_object()) {
                    $listado[] = $r;
                }
            }
        }

        return $listado;
    }

}

?>
