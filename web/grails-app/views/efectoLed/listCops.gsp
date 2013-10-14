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
					<th class="table-col-cuit"><center>CUIL/CUIT</center></th>
					<th class="table-col-razon"><center>Razón Social</center></th>
					<th class="table-col-direccion"><center>Dirección</center></th>
					<th class="table-col-codigo"><center>Código Postal</center></th>
					<th class="table-col-tel"><center>Tel. Principal</center></th>
					<th class="table-col-email"><center>Correo Electrónico</center></th>
					<th class="table-col-url"><center>Sitio Web</center></th>
					<g:if test="${copType == 0}">
						<th class="table-col-custom"><center>Integrantes</center></th>
					</g:if>
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

						<g:if test="${copType == 0}">
							<td class="table-col-custom"><a name="membersByProvider" data-providerId="${cop.id_proveedores}">Ver</a></td>
						</g:if>

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

	<div id="membersByProviderModal" class="modal hide fade modal-large" tabindex="-1" role="dialog" aria-labelledby="modalPopUp" aria-hidden="true">
		<div class="modal-header">
			<h3>Integrantes</h3>
		</div>
		<div id="membersByProviderModalContent" class="modal-body">
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

	<div id="createFormModal" class="modal hide fade modal-medium" tabindex="-1" role="dialog" aria-labelledby="modalPopUp" aria-hidden="true">
		<div class="modal-header">
			<button type="button" class="close" data-dismiss="modal" aria-hidden="true">×</button>
			<h3>Nuevo <cops:label copType="${copType}" /></h3>
		</div>

		<g:if test="${copType == 0}">
			<ul class="nav nav-tabs">
			  <li class="active" name="step" id="step1">
			    <a href="#">Datos del Proveedor</a>
			  </li>
			  <li class="disabled" name="step" id="step2">
			    <a href="#">Integrantes del proveedor</a>
			  </li>
			</ul>
		</g:if>

		<div id="createFormContent" class="row-fluid">
			<%-- Content --%>
		</div>
		<div class="modal-footer">
			<div class="control-group">
				<button id="createCancel" name="cancel" name="cancel" data-dismiss="modal" aria-hidden="true" class="btn btn-danger">Cancelar</button>
				<button id="createReset" name="reset" class="btn" onclick="document.forms['formCreateCop'].reset();" >Limpiar</button>
				<g:if test="${copType == 0}">
					<button id="createNext" data-copType="${copType}" name="next" class="btn btn-success">Siguiente</button>
				</g:if>
				<g:else>
					<button name="save" class="btn btn-success" onclick="document.forms['formCreateCop'].submitBtn.click();">Guardar</button>
				</g:else>
			</div>
		</div>
	</div>
	<div id="editFormModal" class="modal hide fade modal-medium" tabindex="-1" role="dialog" aria-labelledby="modalPopUp" aria-hidden="true">
		<div class="modal-header">
			<button type="button" class="close" data-dismiss="modal" aria-hidden="true">×</button>
			<h3>Editar <cops:label copType="${copType}" /></h3>
		</div>
	  
	  <g:if test="${copType == 0}">
		<ul class="nav nav-tabs">
		  <li class="active" name="stepEdit" id="step1Edit">
		    <a href="#">Datos del Proveedor</a>
		  </li>
		  <li class="disabled" name="stepEdit" id="step2Edit">
		    <a href="#">Integrantes del Proveedor</a>
		  </li>
		</ul>
	  </g:if>
		<div id="editFormContent" class="row-fluid">
			<%-- Content --%>
		</div>
		<div class="modal-footer">
			<div class="control-group">
				<button id="editCancel" name="cancel" data-dismiss="modal" aria-hidden="true" class="btn btn-danger">Cancelar</button>
				<button id="editReset" name="reset" class="btn" onclick="document.forms['formEditCop'].reset();" >Deshacer</button>
				<g:if test="${copType == 0}">
					<button id="editNext" name="edit" data-copType="${copType}" name="save" class="btn btn-success">Siguiente</button>
				</g:if>
				<g:else>
					<button name="save" class="btn btn-success" onclick="document.forms['formEditCop'].submitBtn.click();">Guardar</button>
				</g:else>
			</div>
		</div>
	</div>

	</body>

</html>