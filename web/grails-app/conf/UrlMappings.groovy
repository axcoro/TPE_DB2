class UrlMappings {

	static mappings = {

		"/" {

			controller = "efectoLed"
			action = "listJobs"
		}
		"/listar-trabajos" {

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
		"/eliminar-trabajo" {

			controller = "efectoLed"
			action = "deleteJob"
		}
		"/crear" {

			controller = "efectoLed"
			action = "createCop"
		}
		"/editar" {

			controller = "efectoLed"
			action = "editCop"
		}
		"/editar-trabajo" {

			controller = "efectoLed"
			action = "editJob"
		}
		"/itemsByJob" {

			controller = "ajax"
			action = "getItemsByJob"
		}
		"/deleteItem" {
			controller = "ajax"
			action = "deleteItem"
		}
		"/othersByJob" {

			controller = "ajax"
			action = "getOthersByJob"
		}
		"/createForm" {

			controller = "ajax"
			action = "getCreateForm"
		}
		"/editForm" {

			controller = "ajax"
			action = "getEditForm"
		}
		"/createJob" {

			controller = "ajax"
			action = "createJob"
		}
		"/getItemsForm" {

			controller = "ajax"
			action = "getItemsForm"
		}
		"/createItem" {

			controller = "ajax"
			action = "createItem"
		}
	}
}