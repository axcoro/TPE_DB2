<?php
include './php/configs.conf.inc';
include './php/utils/funciones.php';
include './php/logic/delegates/DelegateFactory.php';

$seccion = get_url_var("seccion", SECCION_PRINCIPAL);

// generar menu secciones
$delegate = DelegateFactory::getDelegateFor(DELEGATE_MISC);
$secciones = $delegate->get_secciones($seccion);
?>
<!DOCTYPE html>
<html lang="es">
    <head>
        <title>TPE - DB2</title>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <meta name="viewport" content="width=device-width, initial-scale=1.0, maximum-scale=1.0, user-scalable=no">

        <link href='http://fonts.googleapis.com/css?family=Ubuntu' rel='stylesheet' type='text/css'>
        <link rel="stylesheet" href="css/bootstrap.min.css">
        <link rel="stylesheet" href="css/bootstrap-responsive.min.css">
        <link rel="stylesheet" href="css/styles.css">
    </head>
    <body>
        <div class="container-fluid">
            <div class="row-fluid">
                <div class="span12">
                    <h1>Sistema</h1>
                </div>
            </div>
            <div id="content" class="row-fluid">
                <div class="span2">
                    <ul class="nav nav-list">
                        <?php echo $secciones; ?>
                    </ul>
                </div>
                <div class="span10">
                    <?php
                    include_page($seccion);
                    ?>
                </div>
            </div>
            <div id="footer" class="row-fluid">
                <div class="span6">
                    <div id="materia">
                        <h5>Trabajo Practico Especial</h5>
                        <h5>Base de Datos 2, 2013</h5>
                    </div>
                </div>
                <div class="span6">
                    <div id="integrantes">
                        <h5>Coronel, Axel Ariel</h5>
                        <h5>Perez, Federico Sebastian</h5>
                    </div>
                </div>
            </div>    
        </div>
        <script type="text/javascript" src="http://code.jquery.com/jquery.js"></script>
        <script type="text/javascript" src="js/bootstrap.min.js"></script>
    </body>
</html>
