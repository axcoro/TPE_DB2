<center>
<g:if test="${modal == false}">
<div id="listOthersContainer" style="max-width: 890px;">
</g:if>
<g:else>
<div id="listOthersContainer" style="max-width: 1055px;">
</g:else>
<table class="table table-bordered table table-condensed table-header-fix">

	<thead>
		<tr>
			<th class="table-col-cuit"><center>CUIL/CUIT</center></th>
			<th class="table-col-razon"><center>Razón Social</center></th>
			<th class="table-col-precio"><center>C. Prestación</center></th>
			<th class="table-col-descripcion"><center>Desc. Trabajo</center></th>
			<th class="table-col-direccion"><center>Dirección</center></th>
			<th class="table-col-codigo"><center>C. Postal</center></th>
			<th class="table-col-tel"><center>Tel. Principal</center></th>
			<th class="table-col-email"><center>Correo Electrónico</center></th>
			<th class="table-col-url"><center>Sitio Web</center></th>
			<g:if test="${modal == false}">
			  <th class="table-col-custom"><center>Borrar</center></th>
			</g:if>
		</tr>
	</thead>

	<tbody>

		<g:if test="${othersByJob == []}">

			<tr>
				<td colspan="9" style="width: 2000px;">
					Este trabajo no tiene terceros cargados.
				</td>
			</tr>

		</g:if>
		<g:else>

				<g:each var="other" in="${othersByJob}">
					<tr>
					  <td class="table-col-cuit">${other.numero_cuil}</td>
						<td class="table-col-razon">${other.razon_social}</td>
						<td class="table-col-precio">$ ${other.costo_prestacion}</td>
						<td class="table-col-descripcion">${other.descripcion_trabajo_realizado}</td>
						<td class="table-col-direccion">${other.direccion}</td>
						<td class="table-col-codigo">${other.codigo_postal}</td>
						<td class="table-col-tel">${other.telefono_principal}</td>
						<td class="table-col-email"><a href="mailto:${other.correo_electronico_principal}">${other.correo_electronico_principal}</a></td>
						<td class="table-col-url"><a href="${other.sitio_web}">${other.sitio_web}</a></td>
						<g:if test="${modal == false}">
						  <td class="table-col-custom">
						  <center>
						    <a href="#" name="other-remove" data-otherId="${other.id_terceros}" class="btn btn-danger btn-mini"><i class="icon-white icon-minus-sign"></i></a>
						  </center>
						  </td>
						</g:if>
					</tr>
				</g:each>

		</g:else>

	</tbody>

</table>
<script type="text/javascript">
  registerOthersFunctions(${jobId});
</script>
</div>
</center>