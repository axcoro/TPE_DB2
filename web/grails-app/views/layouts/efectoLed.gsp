<!doctype html>
<html>

	<head>

		<meta http-equiv="Content-Type" content="text/html; charset=UTF-8" />
		<meta name="viewport" content="width=device-width, initial-scale=1.0, maximum-scale=1.0, user-scalable=no">

		<title>TPE - DB2</title>

		<!-- TODO: ESTO VAMOS A VER QUE ONDA EL AXEL -->
		<link href='http://fonts.googleapis.com/css?family=Ubuntu' rel='stylesheet' type='text/css'>
		<link rel="shortcut icon" type="image/x-icon" href="img/fav.ico" />
		<r:layoutResources/>

		<g:layoutHead />

	</head>

	<body>
		<span id="copType" class="hide">${copType}</span>
		<div class="container-fluid">

			<div id="header" class="row-fluid">
				<div class="page-header">
				  <h1>&nbsp;&nbsp;&nbsp;Efecto LED <small>Sistema de gestión de trabajos</small></h1>
				</div>
			</div>
			<br>
			<div class="row-fluid">
				<div class="span12">
					<ul class="nav nav-tabs">
						<li id="copType-"><a href="/listar-trabajos">Trabajos</a></li>
						<li id="copType-1"><a href="/listar-clientes">Clientes</a></li>
						<li id="copType-0"><a href="/listar-proveedores">Proveedores</a></li>
						<li id="copType-2"><a href="/listar-terceros">Terceros</a></li>
						<li id="alta" class="pull-right">
						</li>
					</ul>
				</div>
			</div>
			<br>

			<div id="content" class="row-fluid">
				<div class="span12 table-container">
					<g:layoutBody />
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

		<r:layoutResources/>

	</body>

</html>