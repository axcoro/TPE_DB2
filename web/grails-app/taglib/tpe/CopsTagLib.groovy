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

		String deleteLink = "<a id=\"yesBtnDel\" class=\"btn btn-success\" data-uri=\"/eliminar-${singularCop[attrs.copType]}?copType=${attrs.copType}\">"

		out << deleteLink
	}

	def createLink = { attrs, body ->

		Map singularCop = [ 0:"proveedor", 1:"cliente", 2:"tercero" ]

		String createLink = "<a class=\"btn btn-success\" data-uri=\"/crear-${singularCop[attrs.copType]}?copType=${attrs.copType}\">"

		out << createLink
	}

	def requiredMark = { attrs, body ->

		out << "<span style='color: red;'>&nbsp*</span>"
	}

	def requiredMarkExplain = { attrs, body ->
		out << "<div><h5 class='pull-right'>* campos obligatorios</h5></div>"
	}
}