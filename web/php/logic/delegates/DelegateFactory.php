<?php

/**
 * Factory de Delegates
 *
 * @author Axel
 */
include __DIR__ . '/abstract/AbstractDelegate.php';
include __DIR__ . '/abstract/AbstractDatabaseDelegate.php';

/**
 * Factory de Delegates
 */
class DelegateFactory {

    /**
     * Devuelve un delegete
     * @param String $type nombre/clase del delegeta a obtener
     * @return mixed el delegate solicitado o bien FALSE si no existe
     */
    static function getDelegateFor($type) {
        $delegate = FALSE;
        if (file_exists(dirname(__FILE__) . "/impl/$type.php")) {
            include_once dirname(__FILE__) . "/impl/$type.php";

            switch ($type) {
                case DELEGATE_MYSQL:
                    $delegate = new $type(MYSQL_DB_HOST, MYSQL_DB_USERNAME, MYSQL_DB_PASSWORD, MYSQL_DB_DATABASE);
                    break;
                case DELEGATE_MISC:
                    $delegate = new $type();
                case DELEGATE_TRABAJOS:
                    $delegate = new $type();
                    break;
                default:
                    break;
            }
        }
        return $delegate;
    }

}

?>
