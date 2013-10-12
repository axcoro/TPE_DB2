package tpe

import tpe.Constants

class JobsTagLib {

	static namespace = "jobs"

	def plural = { attrs, body ->

		/*Map pluralCop = [ 0:"Proovedores", 1:"Clientes", 2:"Terceros" ]

		out << pluralCop[attrs.copType]
	}

	def singular = { attrs, body ->

		Map singularCop = [ 0:"proveedor", 1:"cliente", 2:"tercero" ]

		out << singularCop[attrs.copType]
	}

	def deleteLink = { attrs, body ->

		Map singularCop = [ 0:"proveedor", 1:"cliente", 2:"tercero" ]

		String deleteLink = "<a id=\"yesBtn\" class=\"btn btn-success\" data-uri=\"/eliminar-${singularCop[attrs.copType]}?copType=${attrs.copType}\">"

		out << deleteLink*/
	}
}