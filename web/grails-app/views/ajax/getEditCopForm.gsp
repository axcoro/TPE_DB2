<%
  def inhabilitado = (cop.estado == 0 ? "selected" : "")
  def habilitado = (cop.estado == 1 ? "selected" : "")
%>
  <form id="formEditCop" method="post" class="form-horizontal" action="/editar">
    <fieldset>
      <input type="hidden" name="copType" value="${cop.tipo}"/>
      <input type="hidden" name="id" value="${cop.id}"/>

      <div class="control-group">
        <label class="control-label" for="numero_cuil">CUIL/CUIT</label>
        <div class="controls">
          <input id="numero_cuil" name="numero_cuil" type="text" value="${cop.numero_cuil}" pattern="[0-9]*" placeholder="Ej: XXXXXXXXXXX" class="input-xlarge" required="">
        </div>
      </div>
      <div class="control-group">
        <label class="control-label" for="razon_social">Razón Social</label>
        <div class="controls">
          <input id="razon_social" name="razon_social" value="${cop.razon_social}" type="text" placeholder="Ej: UNSL" class="input-xlarge" required="">
        </div>
      </div>
      <div class="control-group">
        <label class="control-label" for="direccion">Dirección</label>
        <div class="controls">
          <input id="direccion" name="direccion" type="text" value="${cop.direccion}" placeholder="Ej: Av. Siempre Viva 123" class="input-xlarge" required="">
        </div>
      </div>
      <div class="control-group">
        <label class="control-label" for="codigo_postal">Código Postal</label>
        <div class="controls">
          <input id="codigo_postal" name="codigo_postal" value="${cop.codigo_postal}" type="text" pattern="[0-9]*" placeholder="Ej: 5700" class="input-xlarge" required="">
        </div>
      </div>
      <div class="control-group">
        <label class="control-label" for="telefono_principal">Teléfono Principal</label>
        <div class="controls">
          <input id="telefono_principal" name="telefono_principal" value="${cop.telefono_principal}" type="tel" placeholder="Ej: 2664XXXXXX" class="input-xlarge" required="">
        </div>
      </div>
      <div class="control-group">
        <label class="control-label" for="correo_electronico_principal">Correo Electroníco</label>
        <div class="controls">
          <input id="correo_electronico_principal" name="correo_electronico_principal" value="${cop.correo_electronico_principal}" type="email" placeholder="Ej: contacto@efecto-led.com" class="input-xlarge">
        </div>
      </div>
      <div class="control-group">
        <label class="control-label" for="sitio_web">Pagina Web</label>
        <div class="controls">
          <input id="sitio_web" name="sitio_web" type="url" value="${cop.sitio_web}" placeholder="http://www.unsl.edu.ar" class="input-xlarge">
        </div>
      </div>
      <div class="control-group">
        <label class="control-label" for="estado">Estado</label>
        <div class="controls">
          <select id="estado" name="estado" class="input-xlarge">
            <option value="0" ${inhabilitado}>Inhabilitado</option>
            <option value="1" ${habilitado} >Habilitado</option>
          </select>
        </div>
      </div>
      <button name="submitBtn" type="submit" class="hide"></button>
    </fieldset>
  </form>