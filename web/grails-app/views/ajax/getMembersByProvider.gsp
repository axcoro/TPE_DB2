<div id="listMembersContainer">
  <table class="table table-hover table-bordered table table-condensed table-header-fix">

	<thead>
		<tr>
			<th class="table-col-codigo">Nombre</th>
			<th class="table-col-descripcion">Area</th>
			<th class="table-col-descripcion">Teléfono Principal</th>
			<th class="table-col-descripcion">Correo Electrónico</th>
			<th class="table-col-descripcion">Borrar</th>
		</tr>
	</thead>

	<tbody style="max-height: 360px">

		<g:if test="${membersByProvider == []}">

			<tr>
			  <td colspan="5" style="width: 1000px;">
					Este Proveedor no tiene integrantes cargados.
				</td>
			</tr>

		</g:if>
		<g:else>

			<g:each var="member" in="${membersByProvider}">
				<tr>
					<td class="table-col-codigo">${member.nombre}</td>
					<td class="table-col-descripcion">${member.area}</td>
					<td class="table-col-descripcion">${member.telefono}</td>
					<td class="table-col-descripcion">${member.correo_electronico}</td>
					<td class="table-col-descripcion"><a href="#" name="member-remove" data-memberId="${member.id_integrantes}" class="btn btn-danger btn-mini"><i class="icon-white icon-minus-sign"></i></a></td>
				</tr>
			</g:each>

		</g:else>

	</tbody>

</table>

<script type="text/javascript">
  registerMembersFunctions(${providerId});
</script>
</div>