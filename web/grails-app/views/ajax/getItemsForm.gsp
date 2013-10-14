<form id="itemsForm" method="post" action="/" class="form-horizontal">
	<fieldset>
		<input type="hidden" name="jobId" value="${jobId}"/>

		<div class="control-group">
			<label class="control-label" for="proveedor">Proveedor</label>
			<div class="controls">
				<select id="proveedor" name="proveedor" class="input-large">
					<option value="1">Phillips</option>
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
			<label class="control-label" for="observasiones">Observasiones</label>
			<div class="controls">
				<textarea id="observasiones" name="observasiones"></textarea>
			</div>
		</div>

	</fieldset>
</form>
