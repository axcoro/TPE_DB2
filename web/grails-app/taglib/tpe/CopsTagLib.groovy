package tpe

import tpe.Constants

class CopsTagLib {

	static namespace = "cops"

	def title = { attrs, body ->

		Map pluralCop = [ 0:"Proovedores", 1:"Clientes", 2:"Terceros" ]

		out << pluralCop[attrs.copType]
	}

	def deleteLink = { attrs, body ->

		Map singularCop = [ 0:"proveedor", 1:"cliente", 2:"tercero" ]

		String deleteLink = "<a href=\"/eliminar-${singularCop[attrs.copType]}?copId=${attrs.copId}\">"

		out << deleteLink
	}
}