<g:if test="${othersByJob != []}">

	<table class="table table-hover table-bordered table table-condensed">

		<thead>
			<tr>
				<th>CUIT / CUIL</th>
				<th>Razón social</th>
				<th>Dirección</th>
				<th>Código postal</th>
				<th>Teléfono principal</th>
				<th>Correo electrónico principal</th>
				<th>Sitio web</th>
			</tr>
		</thead>

		<tbody>
			<g:each var="item" in="${othersByJob}">
				<tr>
					<td>${cop.numero_cuil}</td>
					<td>${cop.razon_social}</td>
					<td>${cop.direccion}</td>
					<td>${cop.codigo_postal}</td>
					<td>${cop.telefono_principal}</td>
					<td>${cop.correo_electronico_principal}</td>
					<td>${cop.sitio_web}</td>
				</tr>
			</g:each>
		</tbody>

	</table>

</g:if>