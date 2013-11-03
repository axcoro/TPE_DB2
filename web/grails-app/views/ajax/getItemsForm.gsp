<div>
              <form id="itemsForm" method="post" action="/createItem" class="form-horizontal">
	              <fieldset>
		              <input type="hidden" id="jobId" name="jobId" value="${jobId}"/>

		              <div class="control-group">
			              <label class="control-label" for="providerId">Proveedor</label>
			              <div class="controls">
				<input id="providerId_hidden" name="providerId" type="hidden" />
				<input id="providerId" type="text" autocomplete="off" class="input-large2" required="" />
				<cops:requiredMark />
			              </div>
		              </div>

		              <div class="control-group">
			              <label class="control-label" for="codigo_interno">Código Interno</label>
			              <div class="controls">
				              <input id="codigo_interno" name="codigo_interno" type="text" placeholder="ABCD12345" class="input-large" required=""><cops:requiredMark />
			              </div>
			              <label class="control-label" for="codigo_proveedor">Código Catalogo Proveedor</label>
			              <div class="controls">
				              <input id="codigo_proveedor" name="codigo_proveedor" type="text" placeholder="ABCD12345" class="input-large" required=""><cops:requiredMark />
			              </div>
		              </div>

		              <div class="control-group">
			              <label class="control-label" for="marca_fabricante">Fabricante</label>
			              <div class="controls">
				              <input id="marca_fabricante" name="marca_fabricante" type="text" placeholder="Phillips" class="input-large" required=""><cops:requiredMark />
			              </div>
			              <label class="control-label" for="modelo">Modelo</label>
			              <div class="controls">
				              <input id="modelo" name="modelo" type="text" placeholder="Bañador FX3388" class="input-large" required=""><cops:requiredMark />
			              </div>
		              </div>

		              <div class="control-group">
			              <label class="control-label" for="descripcion">Descripción</label>
			              <div class="controls">
				              <textarea id="descripcion" name="descripcion"></textarea>
			              </div>
		              </div>

		              <div class="control-group">
			              <label class="control-label" for="costo_unitario">Costo Unitario</label>
			              <div class="controls">
				              <input type="number" step="any" min="0" id="costo_unitario" required="" name="costo_unitario" value=''><cops:requiredMark />
			              </div>
			              <label class="control-label" for="cantidad_articulos">Cantidad Art&iacute;culos</label>
			              <div class="controls">
				              <input type="number" step="1" min="0" id="cantidad_articulos" required="" name="cantidad_articulos" value=''><cops:requiredMark />
			              </div>
			              <cops:requiredMarkExplain />
		              </div>

				       <input type="hidden" id="observaciones" name="observaciones" />

			<div class="control-group">
			  <div>
			  	<center>
				  <button id="itemReset" type="reset" name="_reset" class="btn" onclick="document.forms['itemsForm'].reset();">Limpiar</button>
				  <button id="itemSubmit" type="submit" name="submitBtn" class="hide">Guardar</button>
				  <button id="itemFakeSubmit" type="button" data-type="articulos" data-form-target="itemsForm" data-key="codigo_interno" class="btn btn-success">Guardar</button>
				</center>
			  </div>
		    </div>
      </fieldset>
  </form>
</div>
<script type="text/javascript">
  createSearch('providerId', 'razon_social', '/listProviders');
  
  $("#itemFakeSubmit").on('click', function() {
    existKey("itemFakeSubmit", false, false);
  });
</script>