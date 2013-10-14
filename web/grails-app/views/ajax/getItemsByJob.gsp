<g:if test="${itemsByJob != []}">

	<table class="table table-hover table-bordered table table-condensed">

		<thead>
			<tr>
				<th>Código interno</th>
				<th>Descripción</th>
				<th>Marca / Fabricante</th>
				<th>Modelo</th>
				<th>Observaciones</th>
				<th>Borrar</th>
			</tr>
		</thead>

		<tbody>
			<g:each var="item" in="${itemsByJob}">
				<tr>
					<td>${item.codigo_interno}</td>
					<td>${item.descripcion}</td>
					<td>${item.marca_fabricante}</td>
					<td>${item.modelo}</td>
					<td>${item.observaciones}</td>
					<td><a href="#" name="item-remove" data-jobItemId="${item.id_articulos}" class="btn btn-danger btn-mini"><i class="icon-white icon-minus-sign"></i></a></td>
				</tr>
			</g:each>
		</tbody>

	</table>

<script type="text/javascript">
  registerItemsFunctions(${jobId});
</script>
</g:if>