
<table class="table table-condensed">

	<caption><p>Artículos</p></caption>

	<thead>
		<tr>
			<th>Código interno</th>
			<th>Descripción</th>
			<th>marca / Fabricante</th>
			<th>Modelo</th>
			<th>Observaciones</th>
		</tr>
	</thead>

	<tbody>

		<g:if test="${itemsByJob == []}">
			<tr>
				<td colspan="6">Aún no se han cargado artículos para este trabajo</td>
			</tr>
		</g:if>
		<g:else>
			<g:each var="item" in="${itemsByJob}">
				<tr>
					<td>${item.codigo_interno}</td>
					<td>${item.descripcion}</td>
					<td>${item.marca_fabricante}</td>
					<td>${item.modelo}</td>
					<td>${item.observaciones}</td>
				</tr>
			</g:each>
		</g:else>

	</tbody>
</table>