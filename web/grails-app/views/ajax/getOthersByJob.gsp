<g:if test="${othersByJob != []}">

	<table class="table table-hover table-bordered table table-condensed">

		<thead>
			<tr>
				<th>CUIT / CUIL</th>
				<th>Razón social</th>
				<th>Costo Prestación</th>
				<th>Descripción trabajo</th>
				<th>Dirección</th>
				<th>Código postal</th>
				<th>Teléfono principal</th>
				<th>Correo electrónico principal</th>
				<th>Sitio web</th>
			</tr>
		</thead>

		<tbody>
			<g:each var="other" in="${othersByJob}">
				<tr>
					<td>${other.numero_cuil}</td>
					<td>${other.razon_social}</td>
					<td>${other.costo_prestacion}</td>
					<td>${other.descripcion_trabajo_realizado}</td>
					<td>${other.direccion}</td>
					<td>${other.codigo_postal}</td>
					<td>${other.telefono_principal}</td>
					<td>${other.correo_electronico_principal}</td>
					<td>${other.sitio_web}</td>
				</tr>
			</g:each>
		</tbody>

	</table>

</g:if>