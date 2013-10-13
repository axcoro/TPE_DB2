package tpe

import groovy.sql.Sql
import tpe.Constants

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

		return getRows("{call LED_listarTercerosPorTrabajo(${jobId})}")
	}

	def getItemsByJob(jobId) {

		return getRows("{call LED_listarArticulosPorTrabajo(${jobId})}")
	}

	def getClients() {

		return getRows("{call LED_listarDatos(${Constants.CLIENTS})}")
	}

	def getProviders() {

		return getRows("{call LED_listarDatos(${Constants.PROVIDERS})}")
	}

	def getOthers() {

		return getRows("{call LED_listarDatos(${Constants.OTHERS})}")
	}

	def getData(copId, copType) {

		return getRows("{call LED_obtenerDato(${copId}, ${copType})}")
	}

	def deleteCop(copId) {

		def sql = Sql.newInstance(dataSource)

		int result = sql.call("{call LED_eliminarDatos(${copId})}")

		sql.close()

		return result
	}

	def deleteJob(jobId) {

		def sql = Sql.newInstance(dataSource)

		int result = sql.call("{call LED_eliminarTrabajo(${jobId})}")

		sql.close()

		return result
	}

	def createCop(cop) {

		def sql = Sql.newInstance(dataSource)

		int result = sql.call("{call LED_crearDatos('${cop.numero_cuil}', '${cop.razon_social}', '${cop.direccion}', '${cop.codigo_postal}', '${cop.telefono_principal}', '${cop.correo_electronico_principal}', '${cop.sitio_web}', ${cop.copType}, 1)}")

		sql.close()

		return result
	}

	def editCop(cop) {

		def sql = Sql.newInstance(dataSource)

		int result = sql.call("{call LED_modificarDatos(${cop.id}, '${cop.numero_cuil}', '${cop.razon_social}', '${cop.direccion}', '${cop.codigo_postal}', '${cop.telefono_principal}', '${cop.correo_electronico_principal}', '${cop.sitio_web}', ${cop.estado})}")

		sql.close()

		return result
	}
}