<div id="listJobsContainer">
  <table class="table table-hover table-bordered table table-condensed table-header-fix">

	<thead>
		<tr>
			<th class="table-col-codigo">Código Interno</th>
			<th class="table-col-codigo">Código Proveedor</th>
			<th class="table-col-descripcion">Descripción</th>
			<th class="table-col-descripcion">Marca / Fabricante</th>
			<th class="table-col-descripcion">Modelo</th>
			<th class="table-col-precio">Cantidad Artiíulos</th>
			<th class="table-col-precio">Costo Unitario</th>
			<th class="table-col-custom">Borrar</th>
		</tr>
	</thead>

	<tbody style="max-height: 360px">

		<g:if test="${itemsByJob == []}">

			<tr>
			  <td colspan="9" style="width: 1000px;">
					Este trabajo no tiene artículos cargados.
				</td>
			</tr>

		</g:if>
		<g:else>

			<g:each var="item" in="${itemsByJob}">
				<tr>
					<td class="table-col-codigo">${item.codigo_interno}</td>
					<td class="table-col-codigo">${item.codigo_catalogo_proveedor}</td>
					<td class="table-col-descripcion">${item.descripcion}</td>
					<td class="table-col-descripcion">${item.marca_fabricante}</td>
					<td class="table-col-descripcion">${item.modelo}</td>
					<td class="table-col-precio">${item.cantidad_articulos}</td>
					<td class="table-col-precio">${item.costo_unitario}</td>
					<td class="table-col-custom"><a href="#" name="item-remove" data-jobItemId="${item.id_articulos}" class="btn btn-danger btn-mini"><i class="icon-white icon-minus-sign"></i></a></td>
				</tr>
			</g:each>

		</g:else>

	</tbody>

</table>

<script type="text/javascript">
  registerItemsFunctions(${jobId});
</script>
</div>