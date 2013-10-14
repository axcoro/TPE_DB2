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
					<th class="table-col-cuit"><center>CUIT / CUIL</center></th>
					<th class="table-col-razon"><center>Razón social</center></th>
					<th class="table-col-direccion"><center>Dirección</center></th>
					<th class="table-col-codigo"><center>Código postal</center></th>
					<th class="table-col-tel"><center>Tel. principal</center></th>
					<th class="table-col-email"><center>Correo el. principal</center></th>
					<th class="table-col-url"><center>Sitio web</center></th>
					<th class="table-col-custom"><center>Acciones</center></th>
				</tr>
			</thead> 
		</table> 
		<table class="table table-hover table-bordered table-header-fix">
			<tbody>

				<g:each var="cop" in="${cops}">
					<tr>
						<td class="table-col-cuit">${cop.numero_cuil}</td>
						<td class="table-col-razon">${cop.razon_social}</td>
						<td class="table-col-direccion">${cop.direccion}</td>
						<td class="table-col-codigo">${cop.codigo_postal}</td>
						<td class="table-col-tel">${cop.telefono_principal}</td>
						<td class="table-col-email">${cop.correo_electronico_principal}</td>
						<td class="table-col-url">${cop.sitio_web}</td>
						<td class="table-col-custom">
							<div class="btn-group">
								<a class="btn btn-primary btn-mini dropdown-toggle" data-toggle="dropdown" href="#"><i class="icon-align-justify icon-white"></i>   <span class="caret"></span></a>
								<ul class="dropdown-menu">
									
									<li><a name="editCop"   href="#" data-copId="${cop.id_datos}" data-copType="${copType}"><i class="icon-pencil"></i> Editar</a></li>
									<li><a name="deleteCop" href="#" data-copId="${cop.id_datos}" ><i class="icon-trash"></i> Eliminar</a></li>
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
			¿Está seguro que desea eliminar este <cops:label copType="${copType}" />?
		</div>
		<div class="modal-footer">
			<div class="control-group">
				<button id="noBtn" data-dismiss="modal" aria-hidden="true" name="cancel" class="btn btn-danger">No</button>
				<cops:deleteLink copType="${copType}" />Si</a>
			</div>
		</div>
	</div>

	<%-- TODO: esto puedo llevarlo al layout, ver si se reutiliza este modal y el js en jobs --%>
	<div id="createFormModal" class="modal hide fade modal-medium" tabindex="-1" role="dialog" aria-labelledby="modalPopUp" aria-hidden="true">
		<div class="modal-header">
			<button type="button" class="close" data-dismiss="modal" aria-hidden="true">×</button>
			<h3>Nuevo <cops:label copType="${copType}" /></h3>
		</div>
		<div id="createFormContent">
			<%-- Content --%>
		</div>
		<div class="modal-footer">
			<div class="control-group">
				<button id="cancel" name="cancel" data-dismiss="modal" aria-hidden="true" class="btn btn-danger">Cancelar</button>
				<button name="reset" class="btn" onclick="document.forms['formCreateCop'].reset();" >Limpiar</button>
				<button name="save" class="btn btn-success" onclick="document.forms['formCreateCop'].submitBtn.click();">Guardar</button>
			</div>
		</div>
	</div>
	<div id="editFormModal" class="modal hide fade modal-medium" tabindex="-1" role="dialog" aria-labelledby="modalPopUp" aria-hidden="true">
		<div class="modal-header">
			<button type="button" class="close" data-dismiss="modal" aria-hidden="true">×</button>
			<h3>Editar <cops:label copType="${copType}" /></h3>
		</div>
		<div id="editFormContent">
			<%-- Content --%>
		</div>
		<div class="modal-footer">
			<div class="control-group">
				<button id="cancel" name="cancel" data-dismiss="modal" aria-hidden="true" class="btn btn-danger">Cancelar</button>
				<button name="reset" class="btn" onclick="document.forms['formEditCop'].reset();" >Deshacer</button>
				<button name="save" class="btn btn-success" onclick="document.forms['formEditCop'].submitBtn.click();">Actualizar</button>
			</div>
		</div>
	</div>

	</body>

</html>