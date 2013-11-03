<center>
<g:if test="${modal == false}">
<div id="listMembersContainer" style="max-width: 670px;">
</g:if>
<g:else>
<div id="listMembersContainer" style="max-width: 585px;">
</g:else>
  <table class="table table-bordered table table-condensed table-header-fix">

	<thead>
		<tr>
			<th class="table-col-codigo-large"><center>Nombre</center></th>
			<th class="table-col-descripcion-large"><center>Área</center></th>
			<th class="table-col-descripcion-large"><center>Teléfono P.</center></th>
			<th class="table-col-email2"><center>Correo El.</center></th>
			<g:if test="${modal == false}">
			      <th class="table-col-descripcion"><center>Borrar</center></th>
			</g:if>
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
					<td class="table-col-codigo-large">${member.nombre}</td>
					<td class="table-col-descripcion-large">${member.area}</td>
					<td class="table-col-descripcion-large">${member.telefono}</td>
					<td class="table-col-email2"><a href="mailto:${member.correo_electronico}">${member.correo_electronico}</a></td>
					<g:if test="${modal == false}">
					      <td class="table-col-descripcion">
					          <center>
					            <a href="#" name="member-remove" data-memberId="${member.id_integrantes}" class="btn btn-danger btn-mini"><i class="icon-white icon-minus-sign"></i></a>
					          </center>
					      </td>
					</g:if>
				</tr>
			</g:each>

		</g:else>

	</tbody>

</table>
</center>
<script type="text/javascript">
  registerMembersFunctions(${providerId});
</script>
</div>
</center>
