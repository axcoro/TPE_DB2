<div id="modalForm" class="modal hide fade" tabindex="-1" role="dialog" aria-labelledby="modalForm" aria-hidden="true">
    <div class="modal-header">
        <button type="button" class="close" data-dismiss="modal" aria-hidden="true">×</button>
        <h3>Nuevo <cop:label copType="${copType}" /></h3>
    </div>
    <div class="modal-body">
        <form id="form" method="post" class="form-horizontal">
            <fieldset>
                <input type="hidden" name="id" value=""/>
                <input type="hidden" name="tipo" value=""/>
                
                <div class="control-group">
                    <label class="control-label" for="razon_social">Razón Social</label>
                    <div class="controls">
                        <input id="razon_social" name="razon_social" type="text" placeholder="Ej: UNSL" class="input-xlarge" required="">
                    </div>
                </div>
                <div class="control-group">
                    <label class="control-label" for="numero_cuil">CUIL/CUIT</label>
                    <div class="controls">
                        <input id="numero_cuil" name="numero_cuil" type="text" pattern="[0-9]*" placeholder="Ej: XXXXXXXXXXX" class="input-xlarge" required="">
                    </div>
                </div>
                <div class="control-group">
                    <label class="control-label" for="direccion">Dirección</label>
                    <div class="controls">
                        <input id="direccion" name="direccion" type="text" placeholder="Ej: Av. Siempre Viva 123" class="input-xlarge" required="">
                    </div>
                </div>
                <div class="control-group">
                    <label class="control-label" for="codigo_postal">Código Postal</label>
                    <div class="controls">
                        <input id="codigo_postal" name="codigo_postal" type="text" pattern="[0-9]*" placeholder="Ej: 5700" class="input-xlarge" required="">
                    </div>
                </div>
                <div class="control-group">
                    <label class="control-label" for="telefono_principal">Teléfono Principal</label>
                    <div class="controls">
                        <input id="telefono_principal" name="telefono_principal" type="tel" placeholder="Ej: 2664XXXXXX" class="input-xlarge" required="">
                    </div>
                </div>
                <div class="control-group">
                    <label class="control-label" for="email">Correo Electroníco</label>
                    <div class="controls">
                        <input id="email" name="email" type="email" placeholder="Ej: contacto@efecto-led.com" class="input-xlarge">
                    </div>
                </div>
                <div class="control-group">
                    <label class="control-label" for="url">Pagina Web</label>
                    <div class="controls">
                        <input id="url" name="url" type="url" placeholder="http://www.unsl.edu.ar" class="input-xlarge">
                    </div>
                </div>
                <button name="submitBtn" type="submit" class="hide"></button>
            </fieldset>
        </form>
    </div>
    <div class="modal-footer">
        <div class="control-group">
            <button id="cancel" name="cancel" data-dismiss="modal" aria-hidden="true" class="btn btn-danger">Cancelar</button>
            <button name="reset" class="btn" onclick="document.forms['form'].reset();" >Limpiar</button>
            <button name="save" class="btn btn-success" onclick="document.forms['form'].submitBtn.click();">Guardar</button>
        </div>
    </div>
</div>