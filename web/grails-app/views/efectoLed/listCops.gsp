<!doctype html>
<html>

	<head>

		<r:require modules="core" />

	</head>

	<body>
		<table class="table table-hover">
			<caption><h3><cops:title copType="${copType}" /></h3></caption>
			<thead>
				<tr>
					<th>CUIT / CUIL</th>
					<th>Razón social</th>
					<th>Dirección</th>
					<th>Código postal</th>
					<th>Teléfono principal</th>
					<th>Correo electrónico principal</th>
					<th>Sitio web</th>
					<th>Acciones</th>
				</tr>
			</thead>
			<tbody>

				<g:each var="cop" in="${cops}">
					<tr>
						<td>${cop.numero_cuil}</td>
						<td>${cop.razon_social}</td>
						<td>${cop.direccion}</td>
						<td>${cop.codigo_postal}</td>
						<td>${cop.telefono_principal}</td>
						<td>${cop.correo_electronico_principal}</td>
						<td>${cop.sitio_web}</td>
						<td>
							<div class="btn-group">
								<a class="btn btn-primary btn-mini dropdown-toggle" data-toggle="dropdown" href="#"><i class="icon-align-justify icon-white"></i>   <span class="caret"></span></a>
								<ul class="dropdown-menu">
									
									<li><a href="#"><i class="icon-pencil"></i> Editar</a></li>
									<li><cops:deleteLink copType="${copType}" copId="${cop.id_datos}" /><i class="icon-trash"></i> Eliminar</a></li>
								</ul>
							</div>
						</td>
					</tr>
				</g:each>

			</tbody>
		</table>

	</body>

</html>