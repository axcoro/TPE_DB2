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
					<th class="table-col-fecha"><center>F. creación</center></th>
					<th class="table-col-fecha"><center>F. aprobación</center></th>
					<th class="table-col-fecha"><center>F. inicio obra</center></th>
					<th class="table-col-fecha"><center>F. fin obra</center></th>
					<th class="table-col-precio"><center>P. total</center></th>
					<th class="table-col-precio"><center>P. m. obra</center></th>
					<th class="table-col-precio"><center>P. art.</center></th>
					<th class="table-col-custom"><center>Terceros</center></th>
					<th class="table-col-custom"><center>Acciones</center></th>
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
								<button class="btn btn-mini dropdown-toggle" data-toggle="dropdown">Ver <span class="caret"></span></button>
								<ul class="dropdown-menu" role="menu">

									<%-- def list = [[id_terceros:""]] + othersByJob."${job.id_trabajos}" 

									<g:each var="other" in="${list}">
										<li>
											<a href="#myModal2" data-toggle="modal">${other.id_terceros}</a>
										</li>
									</g:each>--%>
									<li><a href="#"></a></li>
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
									<li><a href="#"><i class="icon-pencil"></i> Editar</a></li>
									<li><a name="deleteJob" href="#" data-jobId="${job.id_trabajos}"><i class="icon-trash"></i> Eliminar</a></li>
								</ul>
							</div>
						</td>
					</tr>
				</g:each>
			</tbody>
		</table>
	  </div>
		<%-- div id="itemsTable">
			<table class="table table-condensed">
				<caption><p>Artículos</p></caption>
				<thead><tr><td>Selecciona un trabajo para ver los artículos utilizados en el mismo.</tr></td></thead>
			</table>
		</div--%>

		<%-- Modals --%>

        <div id="deleteModal" class="modal hide fade" tabindex="-1" role="dialog" aria-labelledby="modalPopUp" aria-hidden="true">
            <div class="modal-header">
                <h3>Esta acción requiere confirmación</h3>
            </div>
            <div class="modal-body" style="min-width: 350px; min-height: 50px;">
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

        <div id="itemsByJobModal" class="modal hide fade" tabindex="-1" role="dialog" aria-labelledby="modalPopUp" aria-hidden="true">
            <div class="modal-header">
                <h3>Artículos</h3>
            </div>
            <div id="itemsByJobModalContent" class="modal-body" style="min-width: 350px; min-height: 50px;">
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

        <div id="othersByJobModal" class="modal hide fade" tabindex="-1" role="dialog" aria-labelledby="modalPopUp" aria-hidden="true">
            <div class="modal-header">
                <h3>Terceros</h3>
            </div>
            <div id="othersByJobModalContent" class="modal-body" style="min-width: 350px; min-height: 50px;">
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

	</body>

</html>