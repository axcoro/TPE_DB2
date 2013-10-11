package tpe

import groovy.sql.Sql

class SqlService {

	static transactional = false

	def dataSource

	def getRows(storedProcedureCall) {

		def sql = Sql.newInstance(dataSource)

		List rows = sql.rows(storedProcedureCall)

		sql.close()

		return rows
	}

	def getJobs() {

		return getRows("{call LED_listarTrabajos()}")
	}

	def getOthersByJob(jobId) {

		return getRows("{call LED_listarTercerosPorTrabajo($jobId)}")
	}

	def getItemsByJob(jobId) {

		return getRows("{call LED_listarArticulosPorTrabajo($jobId)}")
	}

	def getClients() {

		return getRows("{call LED_listarDatos(1)}")
	}

	def getProviders() {

		return getRows("{call LED_listarDatos(0)}")
	}

	def getOthers() {

		return getRows("{call LED_listarDatos(2)}")
	}
}