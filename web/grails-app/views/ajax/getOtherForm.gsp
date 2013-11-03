<div class="modal-body" style="min-height: 400px;">
  <form id="formOther" method="post" class="form-horizontal" action="/asociateOther">
    <fieldset>
      <input type="hidden" name="jobId" value="${jobId}"/>
      <div class="control-group">
        <label class="control-label" for="otherId">Terceros</label>
        <div class="controls">
          <input id="otherId_hidden" name="otherId" type="hidden" />
          <input id="otherId" type="text" autocomplete="off" class="" required="" />
          <cops:requiredMark />
        </div>
        <div class="control-group">
          <label class="control-label" for="costo_prestacion">Costo Prestacion</label>
          <div class="controls">                     
            <input type="number" step="any" min="0.1" id="costo_prestacion" required="" name="costo_prestacion" value='0.0'><cops:requiredMark />
          </div>
        </div>
        <div class="control-group">
          <label class="control-label" for="descripcion_trabajo_realizado">Descripción Trabajo</label>
          <div class="controls">                     
            <textarea id="descripcion_trabajo_realizado" name="descripcion_trabajo_realizado"></textarea>
          </div>
        </div>
        <cops:requiredMarkExplain />
      </div>
      <div class="control-group">
        <div>
          <center>
            <button id="otherReset" type="reset" name="_reset" class="btn">Limpiar</button>
            <button id="otherSubmit" type="submit" name="submit" class="btn btn-success">Guardar</button>
          </center>
        </div>
      </div>
    </fieldset>
  </form>
</div>
<script type="text/javascript">
  createSearch('otherId', 'razon_social', '/listOthers', 'jobId=${jobId}');
</script>