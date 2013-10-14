<center>
<g:if test="${modal == false}">
<div id="listJobsContainer" style="max-width: 890px;">
</g:if>
<g:else>
<div id="listJobsContainer" style="max-width: 790px;">
</g:else>
  <table class="table table-hover table-bordered table table-condensed table-header-fix">

	<thead>
		<tr>
			<th class="table-col-codigo"><center>Código Interno</center></th>
			<th class="table-col-codigo"><center>Código Proveedor</center></th>
			<th class="table-col-descripcion"><center>Descripción</center></th>
			<th class="table-col-descripcion"><center>Marca/Fabricante</center></th>
			<th class="table-col-descripcion"><center><center>Modelo</center></th>
			<th class="table-col-precio"><center>Cantidad Articulos</center></th>
			<th class="table-col-precio"><center>Costo Unitario</center></th>
			<g:if test="${modal == false}">
			    <th class="table-col-custom"><center>Borrar</center></th>
			</g:if>
		</tr>
	</thead>

	<tbody style="max-height: 360px">

		<g:if test="${itemsByJob == []}">

			<tr>
			  <td colspan="8" style="width: 1000px;">
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
					<td class="table-col-precio">$ ${item.costo_unitario}</td>
					<g:if test="${modal == false}">
					      <td class="table-col-custom">
					          <center>
					            <a href="#" name="item-remove" data-jobItemId="${item.id_articulos}" class="btn btn-danger btn-mini"><i class="icon-white icon-minus-sign"></i></a>
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
  registerItemsFunctions(${jobId});
</script>
</div>