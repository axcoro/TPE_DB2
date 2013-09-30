<?php

function get_url_var($name, $default = '') {
    $value = $default;
    if (isset($_GET[$name]))
        $value = $_GET[$name];

    if (isset($_POST[$name]))
        $value = $_POST[$name];

    return $value;
}

?>
