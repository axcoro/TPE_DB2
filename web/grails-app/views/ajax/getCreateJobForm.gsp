<form id="formCreateJob" method="post" action="/createJob" class="form-horizontal">
  <fieldset>
    <div class="modal-body">
        <div class="control-group">
          <label class="control-label" for="cliente">Cliente</label>
          <div class="controls">
            <select id="clientId" name="clientId" class="input-large">
              <g:each var="client" in="${clients}">
	               <option value="${client.id_cliente}">${client.razon_social}</option>
              </g:each>
            </select>
          </div>
        </div>
        <div class="control-group">
          <label class="control-label" for="fecha_inicio_obra">Fecha de Inicio de Obra</label>
          <div class="controls">
            <input type="date" name="fecha_inicio_obra" id="fecha_inicio_obra" />
          </div>
        </div>
        <div class="control-group">
          <label class="control-label" for="fecha_fin_obra">Fecha de Fin de Obra</label>
          <div class="controls">
            <input type="date" name="fecha_fin_obra" id="fecha_fin_obra" />
          </div>
        </div>
        <div class="control-group">
          <label class="control-label" for="fecha_aprobacion_presupuesto">Fecha Aprobacion Presupuesto</label>
          <div class="controls">
            <input type="date" name="fecha_aprobacion_presupuesto" id="fecha_aprobacion_presupuesto">
          </div>
        </div>
        <div class="control-group">
          <label class="control-label" for="precio_mano_obra">Mano de Obra</label>
          <div class="controls">                     
            <input type="number" step="any" min="0" id="precio_mano_obra" required="" name="precio_mano_obra" value='0.0'>
          </div>
        </div>
        <div class="control-group">
          <label class="control-label" for="descripcion">Descripcion</label>
          <div class="controls">                     
            <textarea id="descripcion" name="descripcion"></textarea>
          </div>
        </div>
    </div>
    <button name="submitBtn" type="submit" class="hide"></button>
  </fieldset>
</form>