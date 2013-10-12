<!doctype html>
<html>

	<head>

		<meta http-equiv="Content-Type" content="text/html; charset=UTF-8" />
		<meta name="viewport" content="width=device-width, initial-scale=1.0, maximum-scale=1.0, user-scalable=no">

		<title>TPE - DB2</title>

		<!-- TODO: ESTO VAMOS A VER QUE ONDA EL AXEL -->
		<link href='http://fonts.googleapis.com/css?family=Ubuntu' rel='stylesheet' type='text/css'>
		<r:layoutResources/>

		<g:layoutHead />

	</head>

	<body>

		<div class="container-fluid">

			<div id="header" class="row-fluid">
				<div class="page-header">
					<h1>Efecto LED <small>Sistema de gestión de trabajos</small></h1>
				</div>
			</div>
			<br>
			<div class="row-fluid">
				<div class="span12">
					<ul class="nav nav-tabs">
						<li id="listar-trabajos"><a href="/listar-trabajos">Trabajos</a></li>
						<li id="listar-clientes"><a href="/listar-clientes">Clientes</a></li>
						<li id="listar-proveedores"><a href="/listar-proveedores">Proveedores</a></li>
						<li id="listar-terceros"><a href="/listar-terceros">Terceros</a></li>
					</ul>
				</div>
			</div>
			<br>
			<div id="content" class="row-fluid">
				<div class="span12">
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