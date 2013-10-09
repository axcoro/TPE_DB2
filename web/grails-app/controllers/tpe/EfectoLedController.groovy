package tpe

import groovy.sql.Sql

class EfectoLedController {

	def dataSource

	def jobs() {
		
		def sql = Sql.newInstance( dataSource )

		sql.eachRow("{call LED_listarDatos(1)}") { resultSet ->

			println resultSet

		}

		return
	}

	def clients() {

		return
	}

	def providers() {

		return
	}

	def others() {

		return
	}
}
