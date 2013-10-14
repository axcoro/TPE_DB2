<div class="modal-body">
	<form id="membersForm" method="post" action="/createMember" class="form-horizontal">
		<fieldset>
			<input type="hidden" id="providerId" name="providerId" value="${providerId}"/>

			<div class="control-group">
				<label class="control-label" for="nombre">Nombre</label>
				<div class="controls">
					<input id="nombre" name="nombre" type="text" placeholder="Juan Pérez" class="input-medium" required="">
				</div>
			</div>
			<div class="control-group">
				<label class="control-label" for="area">Área</label>
				<div class="controls">
					<input id="area" name="area" type="text" placeholder="Contabilidad" class="input-medium" required="">
				</div>
			</div>
			<div class="control-group">
				<label class="control-label" for="telefono">Teléfono Principal</label>
				<div class="controls">
					<input id="telefono" name="telefono" type="tel" pattern="[0-9]*" placeholder="2664XXXXXX" class="input-medium" required="">
				</div>
			</div>
			<div class="control-group">
				<label class="control-label" for="correo_electronico">Correo Electrónico</label>
				<div class="controls">
					<input id="correo_electronico" name="correo_electronico" type="email" placeholder="contacto@led.com" class="input-medium">
				</div>
			</div>

			<div class="control-group">
				<div>
					<center>
						<button id="memberReset" type="reset" name="reset" class="btn" onclick="document.forms['membersForm'].reset();">Limpiar</button>
						<button id="memberSubmit" type="submit" name="submit" class="btn btn-success">Guardar</button>
					</center>
				</div>
			</div>
		</fieldset>
	</form>
</div>
