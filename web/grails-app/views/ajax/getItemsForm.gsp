<div class="modal-body">
              <form id="itemsForm" method="post" action="/createItem" class="form-horizontal">
	              <fieldset>
		              <input type="hidden" id="jobId" name="jobId" value="${jobId}"/>

		              <div class="control-group">
			              <label class="control-label" for="providerId">Proveedor</label>
			              <div class="controls">
				              <select id="providerId" name="providerId" class="input-large">
					              <g:each var="provider" in="${providers}">
						              <option value="${provider.id_proveedores}">${provider.razon_social}</option>
					              </g:each>
				              </select>
			              </div>
		              </div>

		              <div class="control-group">
			              <label class="control-label" for="codigo_interno">Código Interno</label>
			              <div class="controls">
				              <input id="codigo_interno" name="codigo_interno" type="text" placeholder="Ej: ABCD12345" class="input-large" required="">
			              </div>
			              <label class="control-label" for="codigo_proveedor">Código Catalogo Proveedor</label>
			              <div class="controls">
				              <input id="codigo_proveedor" name="codigo_proveedor" type="text" placeholder="Ej: ABCD12345" class="input-large" required="">
			              </div>
		              </div>

		              <div class="control-group">
			              <label class="control-label" for="marca_fabricante">Fabricante</label>
			              <div class="controls">
				              <input id="marca_fabricante" name="marca_fabricante" type="text" placeholder="Ej: Phillips" class="input-large" required="">
			              </div>
			              <label class="control-label" for="modelo">Modelo</label>
			              <div class="controls">
				              <input id="modelo" name="modelo" type="text" placeholder="Ej: Bañador FX3388" class="input-large" required="">
			              </div>
		              </div>

		              <div class="control-group">
			              <label class="control-label" for="descripcion">Descripcion</label>
			              <div class="controls">
				              <textarea id="descripcion" name="descripcion"></textarea>
			              </div>
		              </div>

		              <div class="control-group">
			              <label class="control-label" for="costo_unitario">Costo Unitario</label>
			              <div class="controls">
				              <input type="number" step="any" min="0" id="costo_unitario" required="" name="costo_unitario" value='0.0'>
			              </div>
			              <label class="control-label" for="cantidad_articulos">Cantidad Articulos</label>
			              <div class="controls">
				              <input type="number" step="1" min="0" id="cantidad_articulos" required="" name="cantidad_articulos" value='0'>
			              </div>
		              </div>

		              <div class="control-group">
			              <label class="control-label" for="observaciones">Observaciones</label>
			              <div class="controls">
				              <textarea id="observaciones" name="observaciones"></textarea>
			              </div>
		              </div>
			<div class="control-group">
			  <div id="pull-right">
			  <button id="itemReset" type="reset" name="reset" class="btn">Deshacer</button>
			  <button id="itemSubmit" type="submit" name="submit" class="btn btn-success">Guardar</button>
			  </div>
		              </div>
	              </fieldset>
              </form>
</div>
