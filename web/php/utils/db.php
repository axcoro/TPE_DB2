<?php

function get_db()
{
    $db = new MySQLDelegate(MYSQL_DB_HOST, MYSQL_DB_USERNAME, MYSQL_DB_PASSWORD, MYSQL_DB_DATABASE);
    return $db;
}

?>
