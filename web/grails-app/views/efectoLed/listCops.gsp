<!doctype html>
<html>

	<head>

		<r:require modules="core" />

	</head>

	<body>
	<center>
	  <div class="container"  style="max-width: 1030px;">

		<div id="notifications"></div>

		<table class="table table-bordered table-header-fix">

			<thead>
				<tr>
					<th class="table-col-cuit"><center>CUIL/CUIT</center></th>
					<th class="table-col-razon"><center>Razón Social</center></th>
					<th class="table-col-direccion"><center>Dirección</center></th>
					<th class="table-col-codigo"><center>C. Postal</center></th>
					<th class="table-col-tel"><center>Tel. Principal</center></th>
					<th class="table-col-email"><center>Correo Electrónico</center></th>
					<th class="table-col-url"><center>Sitio Web</center></th>
					<g:if test="${copType == 0}">
						<th class="table-col-integrantes"><center>Int.</center></th>
					</g:if>
					<th class="table-col-custom"><center>Acciones</center></th>
				</tr>
			</thead> 
		</table> 
		<table class="table table-bordered table-header-fix">
			<tbody>

				<g:if test="${cops == []}">
					<tr>
						<td colspan="8" style="width: 1167px;">
							Hasta el momento no se ha cargado ningún <cops:label copType="${copType}" />.
						</td>
					</tr>
				</g:if>
				<g:else>
					<g:each var="cop" in="${cops}">
						<g:if test="${cop.estado == 0}">
							<tr style="background-color:#F0F0F0;">
						</g:if>
						<g:else>
							<tr>
						</g:else>

							<td class="table-col-cuit">${cop.numero_cuil}</td>
							<td class="table-col-razon">${cop.razon_social}</td>
							<td class="table-col-direccion">${cop.direccion}</td>
							<td class="table-col-codigo">${cop.codigo_postal}</td>
							<td class="table-col-tel">${cop.telefono_principal}</td>
							<td class="table-col-email"><a href="mailto:${cop.correo_electronico_principal}">${cop.correo_electronico_principal}</a></td>
							<td class="table-col-url"><a target="_blank" href="${cop.sitio_web}">${cop.sitio_web}</a></td>

							<g:if test="${copType == 0}">
								<td class="table-col-integrantes"><a name="membersByProvider" data-providerId="${cop.id_proveedores}">Ver</a></td>
							</g:if>

							<td class="table-col-custom">
								<div class="btn-group">
									<a class="btn btn-primary btn-mini dropdown-toggle" data-toggle="dropdown" href="#"><i class="icon-align-justify icon-white"></i>   <span class="caret"></span></a>
									<ul class="dropdown-menu">
										
										<li><a name="editCop"   href="#" data-copId="${cop.id_datos}" data-copType="${copType}"><i class="icon-pencil"></i> Editar</a></li>

										<g:if test="${cop.estado == 0}">

											<% Map singularCop = [ 0:"proveedor", 1:"cliente", 2:"tercero" ] %>

											<li><a name="activateCop" href="/activar-${singularCop[copType]}?copType=${copType}&copId=${cop.id_datos}"><i class="icon-ok-sign"></i> Habilitar</a></li>

											

										</g:if>
										<g:else>
											<li><a name="deleteCop" href="#" data-copId="${cop.id_datos}" ><i class="icon-trash"></i> Eliminar</a></li>
										</g:else>

									</ul>
								</div>
							</td>
						</tr>
					</g:each>
				</g:else>
			</tbody>
		</table>
	</div>
</center>
	<%-- Modals --%>

	<div id="membersByProviderModal" class="modal hide fade modal-medium" tabindex="-1" role="dialog" aria-labelledby="modalPopUp" aria-hidden="true">
		<div class="modal-header">
			<h3>Integrantes</h3>
		</div>
		<div id="membersByProviderModalContent">
			<%-- Content --%>
		</div>
		<div class="modal-footer">
			<div class="control-group">
				<button data-dismiss="modal" aria-hidden="true" name="cancel" class="btn btn-danger">
				Cerrar
				</button>
			</div>
		</div>
	</div>

	<div id="deleteModal" class="modal hide fade modal-medium" tabindex="-1" role="dialog" aria-labelledby="modalPopUp" aria-hidden="true">
		<div class="modal-header">
			<h3>Esta acción requiere confirmación</h3>
		</div>
		<div class="modal-body">


			<g:if test="${copType == 0}">
				¿Está seguro que desea eliminar este proveedor?
				<br>
				Esto implica que no podrá agregar artículos provistos por él en el futuro.
				<% /*Esto implica que no podrá consultarlo ni agregar artículos provistos por él en el futuro.*/ %>
			</g:if>
			<g:elseif test="${copType == 1}">
				¿Está seguro que desea eliminar este cliente?
				<br>
				Esto implica que no se podrán cargar nuevos trabajos para él en el futuro.
				<% /*Esto implica que se eliminarán de manera permanente todos los trabajos que se hayan cargado para el mismo.*/ %>
			</g:elseif>
			<g:elseif test="${copType == 2}">
				¿Está seguro que desea eliminar este tercero?
				<br>
				Esto implica que no podrá agregar servicios prestados por él en el futuro.
				<% /*Esto implica que no podrá consultarlo ni agregar servicios prestados por él en el futuro.*/ %>
			</g:elseif>

		</div>
		<div class="modal-footer">
			<div class="control-group">
				<button data-dismiss="modal" aria-hidden="true" name="cancel" class="btn btn-danger">No</button>
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
			  <li class="disabled" name="step" id="step2end">
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
					<button id="createNext" data-copType="${copType}" data-type="datos" data-form-target="formCreateCop" data-key="numero_cuil" name="next" class="btn btn-success">Siguiente</button>
				</g:if>
				<g:else>
					<button id="createSave" data-type="datos" data-form-target="formCreateCop" data-key="numero_cuil" name="save" class="btn btn-success">Guardar</button>
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
		  <li class="disabled" name="stepEdit" id="step2endEdit">
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
					<button id="editNext" name="edit" data-copType="${copType}" data-type="datos" data-form-target="formEditCop" data-key="numero_cuil" name="save" class="btn btn-success">Siguiente</button>
				</g:if>
				<g:else>
					<button id="editSave" name="save" class="btn btn-success" data-type="datos" data-form-target="formEditCop" data-key="numero_cuil" >Guardar</button>
				</g:else>
			</div>
		</div>
	</div>

	</body>

</html>