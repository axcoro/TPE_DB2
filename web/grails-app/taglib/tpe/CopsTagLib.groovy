package tpe

import tpe.Constants

class CopsTagLib {

	static namespace = "cops"

	def label = { attrs, body ->

		Map singularCop = [ 0:"proveedor", 1:"cliente", 2:"tercero" ]

		out << singularCop[attrs.copType]
	}

	def deleteLink = { attrs, body ->

		Map singularCop = [ 0:"proveedor", 1:"cliente", 2:"tercero" ]

		String deleteLink = "<a id=\"yesBtn\" class=\"btn btn-success\" data-uri=\"/eliminar-${singularCop[attrs.copType]}?copType=${attrs.copType}\">"

		out << deleteLink
	}
}