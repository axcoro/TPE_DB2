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
		"/editCop" {

			controller = "ajax"
			action = "editCop"
		}
		"/editJob" {

			controller = "ajax"
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
		"/deleteOther" {
			controller = "ajax"
			action = "deleteOther"
		}
		"/deleteMember" {
			controller = "ajax"
			action = "deleteMember"
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
		"/getOthersForm" {

			controller = "ajax"
			action = "getOthersForm"
		}
		"/asociateOther" {

			controller = "ajax"
			action = "asociateOther"
		}
		"/createItem" {

			controller = "ajax"
			action = "createItem"
		}
		"/createCop" {

			controller = "ajax"
			action = "createCop"
		}
		"/getMembersForm" {

			controller = "ajax"
			action = "getMembersForm"
		}
		"/getMembersByProvider" {

			controller = "ajax"
			action = "getMembersByProvider"
		}
		"/createMember" {

			controller = "ajax"
			action = "createMember"
		}

	}
}