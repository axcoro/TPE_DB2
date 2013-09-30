<?php

function get_url_var($name, $default = '') {
    $value = $default;
    if (isset($_GET[$name]))
        $value = $_GET[$name];

    if (isset($_POST[$name]))
        $value = $_POST[$name];

    return $value;
}

function include_page($page_name, $base_path = CONTENT_PATH) {
    $path = "$base_path$page_name.php";
    if (file_exists($path))
        include $path;
}

?>
