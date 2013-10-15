<div class="modal-body">
  <form id="formOther" method="post" class="form-horizontal" action="/asociateOther">
    <fieldset>
      <input type="hidden" name="jobId" value="${jobId}"/>
      <div class="control-group">
        <label class="control-label" for="otherId">Terceros</label>
        <div class="controls">
          <select id="otherId" name="otherId" class="input-large">
            <g:each var="other" in="${others}">
              <option value="${other.id_terceros}">${other.razon_social}</option>
            </g:each>
          </select>
        </div>
        <div class="control-group">
          <label class="control-label" for="costo_prestacion">Costo Prestacion</label>
          <div class="controls">                     
            <input type="number" step="any" min="0" id="costo_prestacion" required="" name="costo_prestacion" value='0.0'>
          </div>
        </div>
        <div class="control-group">
          <label class="control-label" for="descripcion_trabajo_realizado">Descripción Trabajo</label>
          <div class="controls">                     
            <textarea id="descripcion_trabajo_realizado" name="descripcion_trabajo_realizado"></textarea>
          </div>
        </div>
      </div>
      <div class="control-group">
        <div>
          <center>
            <button id="otherReset" type="reset" name="reset" class="btn">Limpiar</button>
            <button id="otherSubmit" type="submit" name="submit" class="btn btn-success">Guardar</button>
          </center>
        </div>
      </div>
    </fieldset>
  </form>
</div>