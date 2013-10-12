<!doctype html>
<html>

	<head>

		<r:require modules="core" />

	</head>

	<body>
		<table class="table table-hover table-bordered table-header-fix">
			<thead>
				<tr>
					<th class="table-col-nombre">Cliente</th>
					<th class="table-col-descripcion">Descripción</th>
					<th class="table-col-fecha">F. creación</th>
					<th class="table-col-fecha">F. aprobación</th>
					<th class="table-col-fecha">F. inicio obra</th>
					<th class="table-col-fecha">F. fin obra</th>
					<th class="table-col-precio">P. total</th>
					<th class="table-col-precio">P. m. obra</th>
					<th class="table-col-precio">P. art.</th>
					<th class="table-col-custom">Terceros</th>
					<th class="table-col-custom">Acciones</th>
				</tr>
			</thead>
		</table>
		<table class="table table-hover table-bordered table-header-fix">
			<tbody data-provides="rowlink">

				<g:each var="job" in="${jobs}">

					<tr name="jobRow" class="rowlink" data-jobId="${job.id_trabajos}">

						<td class="table-col-nombre"><button type="button" class="btn btn-link" data-toggle="modal" data-target="#myModal">${job.id_cliente}</button></td>
						<td class="table-col-descripcion">${job.descripcion}</td>
						<td class="table-col-fecha">${job.fecha_creacion}</td>
						<td class="table-col-fecha">${job.fecha_aprobacion_presupuesto}</td>
						<td class="table-col-fecha">${job.fecha_inicio_obra}</td>
						<td class="table-col-fecha">${job.fecha_fin_obra}</td>
						<td class="table-col-precio">${job.precio_total}</td>
						<td class="table-col-precio">${job.precio_mano_obra}</td>
						<td class="table-col-precio">${job.precio_articulos}</td>
						<td class="table-col-custom">
							<div class="btn-group">
								<button class="btn btn-mini dropdown-toggle" data-toggle="dropdown">seleccionar <span class="caret"></span></button>
								<ul class="dropdown-menu">

									<% def list = [[id_terceros:""]] + othersByJob."${job.id_trabajos}" %>

									<g:each var="other" in="${list}">
										<li>
											<a href="#myModal2" data-toggle="modal">${other.id_terceros}</a>
										</li>
									</g:each>

								</ul>
							</div>
						</td>
						<td class="table-col-custom">
							<div class="btn-group">
								<button class="btn btn-primary btn-mini dropdown-toggle" data-toggle="dropdown">
									<i class="icon-align-justify icon-white"></i>
									<span class="caret"></span>
								</button>

								<ul class="dropdown-menu">
									<li><a href="#"><i class="icon-pencil"></i> Editar</a></li>
									<li><a href="#"><i class="icon-trash"></i> Eliminar</a></li>
								</ul>
							</div>
						</td>
					</tr>
				</g:each>
			</tbody>
		</table>
	  </div>
		<div id="itemsTable">
			<table class="table table-condensed">
				<caption><p>Artículos</p></caption>
				<thead><tr><td>Selecciona un trabajo para ver los artículos utilizados en el mismo.</tr></td></thead>
			</table>
		</div>

        <div id="deleteModal" class="modal hide fade" tabindex="-1" role="dialog" aria-labelledby="modalPopUp" aria-hidden="true">
            <div class="modal-header">
                <h3>Esta acción requiere confirmación</h3>
            </div>
            <div class="modal-body" style="min-width: 350px; min-height: 50px;">
                ¿Está seguro que desea eliminar este trabajo?
            </div>
            <div class="modal-footer">
                <div class="control-group">
                    <button id="noBtn" data-dismiss="modal" aria-hidden="true" name="cancel" class="btn btn-danger">
                        No
                    </button>
                        <cops:deleteLink copType="${copType}" />Si</a>
                </div>
            </div>
        </div>

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

	</body>

</html>