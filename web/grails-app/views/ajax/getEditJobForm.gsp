<form id="formEditJob" method="post" action="/editJob" class="form-horizontal">
  <fieldset>
    <input type="hidden" name="jobId" value="${job.id_trabajos}"/>
    <div class="modal-body">
        <div class="control-group">
          <label class="control-label" for="cliente">Cliente</label>
          <div class="controls">
            <select id="clientId" name="clientId" class="input-large">
              <g:each var="client" in="${clients}">
	  <option value="${client.id_cliente}" <%=(client.id_cliente == job.id_cliente ? "selected" : "") %> >${client.razon_social}</option>
              </g:each>
            </select>
          </div>
        </div>
        <div class="control-group">
          <label class="control-label" for="fecha_inicio_obra">Fecha de Inicio de Obra</label>
          <div class="controls">
            <input type="date" name="fecha_inicio_obra" id="fecha_inicio_obra" value="${job.fecha_inicio_obra}" />
          </div>
        </div>
        <div class="control-group">
          <label class="control-label" for="fecha_fin_obra">Fecha de Fin de Obra</label>
          <div class="controls">
            <input type="date" name="fecha_fin_obra" id="fecha_fin_obra" value="${job.fecha_fin_obra}" />
          </div>
        </div>
        <div class="control-group">
          <label class="control-label" for="fecha_aprobacion_presupuesto">Fecha Aprobación Presupuesto</label>
          <div class="controls">
            <input type="date" name="fecha_aprobacion_presupuesto" id="fecha_aprobacion_presupuesto" value="${job.fecha_aprobacion_presupuesto}">
          </div>
        </div>
        <div class="control-group">
          <label class="control-label" for="precio_mano_obra">Mano de Obra</label>
          <div class="controls">                     
            <input type="number" step="any" min="0" id="precio_mano_obra" required="" name="precio_mano_obra" value="${job.precio_mano_obra}">
          </div>
        </div>
        <div class="control-group">
          <label class="control-label" for="descripcion">Descripción</label>
          <div class="controls">                     
            <textarea id="descripcion" name="descripcion">${job.descripcion}</textarea>
          </div>
        </div>
    </div>
    <button name="submitBtn" type="submit" class="hide"></button>
  </fieldset>
</form>