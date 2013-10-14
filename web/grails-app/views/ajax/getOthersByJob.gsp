<table class="table table-hover table-bordered table table-condensed">

	<thead>
		<tr>
			<th>CUIL/CUIT</th>
			<th>Razón Social</th>
			<th>C. Prestación</th>
			<th>Desc. Trabajo</th>
			<th>Dirección</th>
			<th>Código Postal</th>
			<th>Tel. Principal</th>
			<th>Correo Electrónico</th>
			<th>Sitio Web</th>
		</tr>
	</thead>

	<tbody>

		<g:if test="${othersByJob == []}">

			<tr>
				<td colspan="9">
					Este trabajo no tiene terceros cargados.
				</td>
			</tr>

		</g:if>
		<g:else>

				<g:each var="other" in="${othersByJob}">
					<tr>
						<td>${other.numero_cuil}</td>
						<td>${other.razon_social}</td>
						<td>$ ${other.costo_prestacion}</td>
						<td>${other.descripcion_trabajo_realizado}</td>
						<td>${other.direccion}</td>
						<td>${other.codigo_postal}</td>
						<td>${other.telefono_principal}</td>
						<td>${other.correo_electronico_principal}</td>
						<td>${other.sitio_web}</td>
					</tr>
				</g:each>

		</g:else>

	</tbody>

</table>