<center>
<div id="listMembersContainer" style="max-width: 650px;">
  <table class="table table-hover table-bordered table table-condensed table-header-fix">

	<thead>
		<tr>
			<th class="table-col-codigo"><center>Nombre</center></th>
			<th class="table-col-descripcion"><center>Area</center></th>
			<th class="table-col-descripcion"><center>Teléfono P.</center></th>
			<th class="table-col-descripcion"><center>Correo El.</center></th>
			<th class="table-col-descripcion"><center>Borrar</center></th>
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
					<td class="table-col-descripcion">
					    <center>
					      <a href="#" name="member-remove" data-memberId="${member.id_integrantes}" class="btn btn-danger btn-mini"><i class="icon-white icon-minus-sign"></i></a>
					    </center>
					</td>
				</tr>
			</g:each>

		</g:else>

	</tbody>

</table>

<script type="text/javascript">
  registerMembersFunctions(${providerId});
</script>
</div>
</center>