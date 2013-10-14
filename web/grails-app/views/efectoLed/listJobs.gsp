<!doctype html>
<html>

	<head>

		<r:require modules="core" />

	</head>

	<body>
	  <div class="container">

		<div id="notifications"></div>

		<table class="table table-hover table-bordered table-header-fix">
			<thead>
				<tr>
					<th class="table-col-nombre"><center>Cliente</center></th>
					<th class="table-col-descripcion"><center>Descripción</center></th>
					<th class="table-col-fecha"><center>F. Creación</center></th>
					<th class="table-col-fecha"><center>F. Aprobación</center></th>
					<th class="table-col-fecha"><center>F. Inicio Obra</center></th>
					<th class="table-col-fecha"><center>F. Fin Obra</center></th>
					<th class="table-col-precio"><center>P. Total</center></th>
					<th class="table-col-precio"><center>P. M. Obra</center></th>
					<th class="table-col-precio"><center>P. Art.</center></th>
					<th class="table-col-custom"><center>Mas Info.</center></th>
					<th class="table-col-custom"><center>Acciones</center></th>
				</tr>
			</thead>
		</table>
		<table class="table table-hover table-bordered table-header-fix">
			<tbody>

				<g:each var="job" in="${jobs}">

					<tr data-jobId="${job.id_trabajos}">

						<td class="table-col-nombre"><button type="button" class="btn btn-link" data-toggle="modal" data-target="#myModal">${job.id_cliente}</button></td>
						<td class="table-col-descripcion">${job.descripcion}</td>
						<td class="table-col-fecha">${job.fecha_creacion}</td>
						<td class="table-col-fecha">${job.fecha_aprobacion_presupuesto}</td>
						<td class="table-col-fecha">${job.fecha_inicio_obra}</td>
						<td class="table-col-fecha">${job.fecha_fin_obra}</td>
						<td class="table-col-precio">$ ${job.precio_total}</td>
						<td class="table-col-precio">$ ${job.precio_mano_obra}</td>
						<td class="table-col-precio">$ ${job.precio_articulos}</td>
						<td class="table-col-custom">
							<div class="btn-group">
								<button class="btn btn-mini dropdown-toggle" data-toggle="dropdown">Ver <span class="caret"></span></button>
								<ul name="view" class="dropdown-menu" role="menu">
									<li><a name="othersByJob" data-jobId="${job.id_trabajos}">Terceros</a></li>
									<li><a name="itemsByJob" data-jobId="${job.id_trabajos}">Artículos</a></li>
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
									<li><a name="editJob" href="#" data-jobId="${job.id_trabajos}"><i class="icon-pencil"></i> Editar</a></li>
									<li><a name="deleteJob" href="#" data-jobId="${job.id_trabajos}"><i class="icon-trash"></i> Eliminar</a></li>
								</ul>
							</div>
						</td>
					</tr>
				</g:each>
			</tbody>
		</table>
	  </div>

		<%-- Modals --%>

        <div id="deleteModal" class="modal hide fade modal-small" tabindex="-1" role="dialog" aria-labelledby="modalPopUp" aria-hidden="true">
            <div class="modal-header">
                <h3>Esta acción requiere confirmación</h3>
            </div>
            <div class="modal-body">
                Eliminar este trabajo implica perder constancia de los artículos utilizados durante el mismo.
            </div>
            <div class="modal-footer">
                <div class="control-group">
                    <button id="noBtn" data-dismiss="modal" aria-hidden="true" name="cancel" class="btn btn-danger">
                        Cancelar
                    </button>
                    <a id="yesBtn" class="btn btn-success" data-uri="/eliminar-trabajo">Eliminar</a>
                </div>
            </div>
        </div>

		<div id="itemsByJobModal" class="modal hide fade modal-large" tabindex="-1" role="dialog" aria-labelledby="modalPopUp" aria-hidden="true">
			<div class="modal-header">
				<h3>Artículos</h3>
			</div>
			<div id="itemsByJobModalContent" class="modal-body">
				<%-- Content --%>
			</div>
			<div class="modal-footer">
				<div class="control-group">
					<button id="noBtn" data-dismiss="modal" aria-hidden="true" name="cancel" class="btn btn-danger">
					Cerrar
					</button>
				</div>
			</div>
		</div>

		<div id="othersByJobModal" class="modal hide fade modal-large" tabindex="-1" role="dialog" aria-labelledby="modalPopUp" aria-hidden="true">
			<div class="modal-header">
				<h3>Terceros</h3>
			</div>
			<div id="othersByJobModalContent" class="modal-body">
				<%-- Content --%>
			</div>
			<div class="modal-footer">
				<div class="control-group">
					<button id="noBtn" data-dismiss="modal" aria-hidden="true" name="cancel" class="btn btn-danger">
					Cerrar
					</button>
				</div>
			</div>
		</div>

		<div id="createFormModal" class="modal hide fade" tabindex="-1" role="dialog" aria-labelledby="modalPopUp" aria-hidden="true">
			<div class="modal-header">
				<button type="button" class="close" data-dismiss="modal" aria-hidden="true">×</button>
				<h3>Nuevo Trabajo</h3>
			</div>

			<ul class="nav nav-tabs">
			  <li class="active" name="step" id="step1">
			    <a href="#">Datos del Trabajo</a>
			  </li>
			  <li class="disabled" name="step" id="step2">
			    <a href="#">Artículos del Trabajo</a>
			  </li>
			</ul>
			<div id="createFormContent" class="row-fluid">
				<%-- Content --%>
			</div>
			<div class="modal-footer">
				<div class="control-group">
					<button id="createCancel" name="cancel" data-dismiss="modal" aria-hidden="true" class="btn btn-danger">Cancelar</button>
					<button id="createReset" name="reset" class="btn" onclick="document.forms['formCreateJob'].reset();" >Limpiar</button>
					<button id="createNext" data-copType="" name="next" class="btn btn-success">Siguiente</button>
				</div>
			</div>
		</div>

		<div id="editFormModal" class="modal hide fade" tabindex="-1" role="dialog" aria-labelledby="modalPopUp" aria-hidden="true">
			<div class="modal-header">
				<button type="button" class="close" data-dismiss="modal" aria-hidden="true">×</button>
				<h3>Editar Trabajo</h3>
			</div>

			<ul class="nav nav-tabs">
			  <li class="active" name="stepEdit" id="step1Edit">
			    <a href="#">Datos del Trabajo</a>
			  </li>
			  <li class="disabled" name="stepEdit" id="step2Edit">
			    <a href="#">Artículos del Trabajo</a>
			  </li>
			</ul>
			<div id="editFormContent" class="row-fluid">
				<%-- Content --%>
			</div>
			<div class="modal-footer">
				<div class="control-group">
					<button id="editCancel" name="cancel" data-dismiss="modal" aria-hidden="true" class="btn btn-danger">Cancelar</button>
					<button id="editReset" name="reset" class="btn" onclick="document.forms['formEditJob'].reset();" >Limpiar</button>
					<button id="editNext"  name="next" class="btn btn-success">Siguiente</button>
				</div>
			</div>
		</div>

	</body>

</html>