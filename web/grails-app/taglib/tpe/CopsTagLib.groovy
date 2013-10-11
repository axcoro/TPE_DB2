package tpe

class CopsTagLib {

	static namespace = "cops"

	def copsPlural = [ 0: "Proovedores", 1: "Clientes", 2: "Terceros" ]
	def copsSingular = [ 0: "proveedor", 1: "cliente", 2: "tercero" ]

	def title = { attrs, body ->

		out << copsPlural[attrs.copType]
	}

	def deleteLink = { attrs, body ->

		out << '<a href="/eliminar-${copsSingular[attrs.copType]}?copId=${attrs.copId}">'
	}
}