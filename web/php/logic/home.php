<?php
include '../configs.conf.inc';
include '../utils/MySQLDelegate.php';
include '../utils/db.php';

function test() {
    $db = get_db();

    try {
//        $result = $db->query("select version();");
        $result = $db->test("asd", 1);
        print_r($result->fetch_object());
    } catch (Exception $exc) {
        echo $exc->getMessage();
    }
}

test();
?>
