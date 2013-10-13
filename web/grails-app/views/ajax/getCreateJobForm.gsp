<form id="form" method="post" action="/crear-trabajo" class="form-horizontal">
  <fieldset>
    <ul class="nav nav-tabs">
      <li class="active">
        <a href="#">Datos del Trabajo</a>
      </li>
      <li class="disabled">
        <a href="#">Articulos del Trabajo</a>
      </li>
    </ul>
    <div class="modal-body">
      <div id="step1">
        <div class="control-group">
          <label class="control-label" for="cliente">Cliente</label>
          <div class="controls">
            <select id="clientId" name="clientId" class="input-xlarge">
              <g:each var="client" in="${clients}">
	<option value="${client.id_cliente}">${client.razon_social}</option>
              </g:each>
            </select>
          </div>
        </div>
        <div class="control-group">
          <label class="control-label" for="fecha_inicio_obra">Fecha de Inicio de Obra</label>
          <div class="controls">
            <input type="date" id="fecha_inicio_obra" />
          </div>
        </div>
        <div class="control-group">
          <label class="control-label" for="fecha_fin_obra">Fecha de Fin de Obra</label>
          <div class="controls">
            <input type="date" id="fecha_fin_obra" />
          </div>
        </div>

        <div class="control-group">
          <label class="control-label" for="estado_aprobacion">Presupuesto Aprobado</label>
          <div class="controls">
            <input type="checkbox" name="estado_aprobacion" id="estado_aprobacion">
          </div>
        </div>
        <div class="control-group">
          <label class="control-label" for="precio_mano_obra">Mano de Obra</label>
          <div class="controls">                     
            <input type="number" step="any" min="0" id="precio_mano_obra" required="" name="precio_mano_obra" value='0.0'>
          </div>
          <label class="control-label" for="precio_total">Articulos</label>
          <div class="controls">                     
            <input type="number" step="any" min="0" id="precio_articulos" required="" name="precio_articulos" disabled="" value='0.0'>
          </div>
          <label class="control-label" for="precio_total">Total</label>
          <div class="controls">                     
            <input type="number" step="any" min="0" id="precio_total" required="" name="precio_total" disabled="" value='0.0'>
          </div>
        </div>
        <div class="control-group">
          <label class="control-label" for="descripcion">Descripcion</label>
          <div class="controls">                     
            <textarea id="descripcion" name="descripcion"></textarea>
          </div>
        </div>
      </div>
      <div id="step2" class="hide">
        test
      </div>
    </div>
    </div>

    <button name="submitBtn" type="submit" class="hide"></button>
  </fieldset>
</form>