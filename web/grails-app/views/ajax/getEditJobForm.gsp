<%
  def checked = (job.fecha_aprobacion_presupuesto != null) ? "checked" : "" // hack me
%>
<div class="modal-body">
  <form id="form" method="post" action="/editar-trabajo" class="form-horizontal">
    <fieldset>
      <input type="hidden" name="jobId" value="${job.id_trabajos}"/>
      <input type="hidden" name="clientId" value="${job.id_cliente}"/>
      <div class="control-group">
        <label class="control-label" for="fecha_inicio_obra">Fecha de Inicio de Obra</label>
        <div class="controls">
          <input type="datetime" id="fecha_inicio_obra" value="${job.fecha_inicio_obra}" />
        </div>
      </div>
      <div class="control-group">
        <label class="control-label" for="fecha_fin_obra">Fecha de Fin de Obra</label>
        <div class="controls">
          <input type="datetime" id="fecha_fin_obra" value="${job.fecha_fin_obra}"/>
        </div>
      </div>

      <div class="control-group">
        <label class="control-label" for="estado_aprobacion">Presupuesto Aprobado</label>
        <div class="controls">
          <input type="checkbox" name="aprobacion_presupuesto" id="aprobacion_presupuesto" ${checked} />
          &nbsp;(${job.fecha_fin_obra})
        </div>
      </div>
      <div class="control-group">
        <label class="control-label" for="precio_mano_obra">Mano de Obra</label>
        <div class="controls">                     
          <input type="number" step="any" min="0" id="precio_mano_obra" required="" name="precio_mano_obra" value="${job.precio_mano_obra}">
        </div>
        <label class="control-label" for="precio_total">Articulos</label>
        <div class="controls">                     
          <input type="number" step="any" min="0" id="precio_articulos" required="" name="precio_articulos" disabled="" value="${job.precio_articulos}">
        </div>
        <label class="control-label" for="precio_total">Total</label>
        <div class="controls">                     
          <input type="number" step="any" min="0" id="precio_total" required="" name="precio_total" disabled="" value="${job.precio_total}">
        </div>
      </div>
      <div class="control-group">
        <label class="control-label" for="descripcion">Descripcion</label>
        <div class="controls">                     
          <textarea id="descripcion" name="descripcion">${job.descripcion}</textarea>
        </div>
      </div>
      <button name="submitBtn" type="submit" class="hide"></button>
    </fieldset>
  </form>
</div>