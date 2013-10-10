<!doctype html>
<html>

	<head>

		<r:require modules="core" />

	</head>

	<body>

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

				<g:each var="job" in="${jobs}">

					<tr class="rowlink">
						<td><button type="button" class="btn btn-link" data-toggle="modal" data-target="#myModal">${job.id_cliente}</button></td>
						<td>${job.descripcion}</td>
						<td>${job.fecha_creacion}</td>
						<td>${job.fecha_aprobacion_presupuesto}</td>
						<td>${job.fecha_inicio_obra}</td>
						<td>${job.fecha_fin_obra}</td>
						<td>${job.precio_total}</td>
						<td>${job.precio_mano_obra}</td>
						<td>${job.precio_articulos}</td>
						<td>
							<div class="btn-group">
								<button class="btn btn-mini dropdown-toggle" data-toggle="dropdown">seleccionar <span class="caret"></span></button>
								<ul class="dropdown-menu">

									<% def list = othersByJob."${job.id_trabajos}" %>

									<g:each var="other" in="${list}">
										<li><a href="#myModal2" data-toggle="modal">${other.id_terceros}</a></li>
									</g:each>

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
				</g:each>
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
			</table>

			<!-- Clients Modal -->
			<div id="myModal" class="modal hide fade" tabindex="-1" role="dialog" aria-labelledby="myModalLabel" aria-hidden="true">
				<div class="modal-header">
					<button type="button" class="close" data-dismiss="modal" aria-hidden="true">×</button>
					<h3 id="myModalLabel">Cliente</h3>
				</div>
				<div class="modal-body">
					Datos...
				</div>
			</div>

			<!-- Others Modal -->
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

	</body>

</html>