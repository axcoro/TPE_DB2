class UrlMappings {

	static mappings = {

		"/(listar-trabajos)?" {

			controller = "efectoLed"
			action = "listJobs"
		}
		"/listar-clientes" {

			controller = "efectoLed"
			action = "listClients"
		}
		"/listar-proveedores" {

			controller = "efectoLed"
			action = "listProviders"
		}
		"/listar-terceros" {

			controller = "efectoLed"
			action = "listOthers"
		}
		"/eliminar-(cliente|proveedor|tercero)" {

			controller = "efectoLed"
			action = "deleteCop"
		}

		"/itemsByJob" {

			controller = "ajax"
			action = "getItemsByJob"
		}
	}
}