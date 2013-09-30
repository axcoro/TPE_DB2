<?php
include './php/configs.conf.inc';
include './php/utils/funciones.php';
include './php/logic/delegates/DelegateFactory.php';

$delegate = DelegateFactory::getDelegateFor(DELEGATE_TRABAJOS);

$listado = $delegate->get_listado_trabajos();

$c = count($listado);
for ($index = 0; $index < $c; $index++) {
    echo "<td></td>";
}

?>
<table class="table table-hover table-bordered">
    <caption><h3>Trabajos</h3></caption>
    <thead>
        <tr>
            <th>Cliente</th>
            <th>Descripción</th>
            <th>Fecha creación</th>
            <th>Fecha aprobación</th>
            <th>Fecha inicio obra</th>
            <th>Fecha fin obra</th>
            <th>Precio total</th>
            <th>Precio mano obra</th>
            <th>Precio artículos</th>
            <th>Terceros</th>
            <th>Acciones</th>
        </tr>
    </thead>
    <tbody data-provides="rowlink">
        <tr class="rowlink">
            <td><button type="button" class="btn btn-link" data-toggle="modal" data-target="#myModal">cliente1</button></td>
            <td>2</td>
            <td>3</td>
            <td>4</td>
            <td>5</td>
            <td>6</td>
            <td>7</td>
            <td>8</td>
            <td>9</td>
            <td>
                <div class="btn-group">
                    <button class="btn btn-mini dropdown-toggle" data-toggle="dropdown">seleccionar <span class="caret"></span></button>
                    <ul class="dropdown-menu">
                        <li><a href="#myModal2" data-toggle="modal">Tercero1</a></li>
                        <li><a href="#myModal2" data-toggle="modal">Tercero2</a></li>
                    </ul>
                </div>
            </td>
            <td>
                <div class="btn-group">
                    <a class="btn btn-primary btn-mini dropdown-toggle" data-toggle="dropdown" href="#"><i class="icon-align-justify icon-white"></i>   <span class="caret"></span></a>
                    <ul class="dropdown-menu">

                        <li><a href="#"><i class="icon-pencil"></i> Editar</a></li>
                        <li><a href="#"><i class="icon-trash"></i> Eliminar</a></li>
                    </ul>
                </div>
            </td>
        </tr>
    </tbody>

    <table class="table table-condensed">
        <caption><p>Artículos</p></caption>
        <thead>
            <tr>
                <th>Código interno</th>
                <th>Descripción</th>
                <th>Dirección</th>
                <th>marca / Fabricante</th>
                <th>Modelo</th>
                <th>Observaciones</th>
            </tr>
        </thead>
        <tbody>
            <tr>
                <td>1</td>
                <td>2</td>
                <td>3</td>
                <td>4</td>
                <td>5</td>
                <td>6</td>
            </tr>
            <tr>
                <td>1</td>
                <td>2</td>
                <td>3</td>
                <td>4</td>
                <td>5</td>
                <td>6</td>
            </tr>
            <tr>
                <td>1</td>
                <td>2</td>
                <td>3</td>
                <td>4</td>
                <td>5</td>
                <td>6</td>
            </tr>
        </tbody>
        </tbody>
    </table>

    <!-- Modal -->
    <div id="myModal" class="modal hide fade" tabindex="-1" role="dialog" aria-labelledby="myModalLabel" aria-hidden="true">
        <div class="modal-header">
            <button type="button" class="close" data-dismiss="modal" aria-hidden="true">×</button>
            <h3 id="myModalLabel">Cliente</h3>
        </div>
        <div class="modal-body">
            Datos...
        </div>
    </div>

    <!-- Modal -->
    <div id="myModal2" class="modal hide fade" tabindex="-1" role="dialog" aria-labelledby="myModalLabel" aria-hidden="true">
        <div class="modal-header">
            <button type="button" class="close" data-dismiss="modal" aria-hidden="true">×</button>
            <h3 id="myModalLabel">Tercero</h3>
        </div>
        <div class="modal-body">
            Datos...
        </div>
    </div>
</table>