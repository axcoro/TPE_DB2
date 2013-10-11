package tpe

import groovy.sql.Sql

class SqlService {

	static transactional = false

	def dataSource

	def getJobs() {

		def sql = Sql.newInstance(dataSource)

		List rows = sql.rows("{call LED_listarTrabajos()}")

		sql.close()

		return rows
	}

	def getOthersByJob(jobId) {

		def sql = Sql.newInstance(dataSource)

		List rows = sql.rows("{call LED_listarTercerosPorTrabajo($jobId)}")

		sql.close()

		return rows
	}

	def getItemsByJob(jobId) {

		def sql = Sql.newInstance(dataSource)

		List rows = sql.rows("{call LED_listarArticulosPorTrabajo($jobId)}")

		sql.close()

		return rows
	}
}
