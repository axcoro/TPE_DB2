class UrlMappings {

	static mappings = {

		"/(trabajos)?" {

			controller = "efectoLed"
			action = "jobs"
		}
		"/clientes" {

			controller = "efectoLed"
			action = "clients"
		}
		"/proveedores" {

			controller = "efectoLed"
			action = "providers"
		}
		"/terceros" {

			controller = "efectoLed"
			action = "others"
		}
	}
}