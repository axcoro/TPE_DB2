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

		return getRows("{call LED_obtenerDato(${copId}, ${copType})}")[0] //TODO: cochinada
	}
	
	def getJob(jobId) {

		return getRows("{call LED_obtenerTrabajo(${jobId})}")[0] //TODO: cochinada
	} 

	def deleteCop(copId, copType) {

		def sql = Sql.newInstance(dataSource)

		int result
		if (copType == "${Constants.CLIENTS}") {

			result = sql.call("{call LED_eliminarDatos(${copId})}")
		}
		else {

			result = sql.call("{call LED_cambiarEstadoDato(${copId}, 0)}")
		}

		sql.close()

		return result
	}

	def deleteItem(itemId) {

		def sql = Sql.newInstance(dataSource)

		sql.call("{call LED_eliminarArticulo(${itemId})}")

		sql.close()
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

	def createJob(job) {

		return getRows("{call LED_crearTrabajo('${job.descripcion}', '${job.fecha_aprobacion_presupuesto}', '${job.fecha_inicio_obra}', '${job.fecha_fin_obra}', '${job.precio_mano_obra}', ${job.clientId})}")[0]
	}

	def createItem(params) {
println "---------------------";
println params;
println "---------------------";
		def resultado = getRows("{call LED_crearArticulo('${params.codigo_interno}', '${params.descripcion}', '${params.marca_fabricante}', '${params.modelo}', '${params.observaciones}')}")[0]
//		def itemId = resultado.id;
//		def jobId = params.jobId;
//		def providerId = params.providerId;
//		def providerCode = params.codigo_catalogo_proveedor;
//		def itemAmount = params.cantidad_articulos;
//		def itemPrice = params.costo_unitario;
	}

	def editCop(cop) {

		def sql = Sql.newInstance(dataSource)

		int result = sql.call("{call LED_modificarDatos(${cop.id}, '${cop.numero_cuil}', '${cop.razon_social}', '${cop.direccion}', '${cop.codigo_postal}', '${cop.telefono_principal}', '${cop.correo_electronico_principal}', '${cop.sitio_web}', 1)}")

		sql.close()

		return result
	}
	
	def editJob(job) {

		def sql = Sql.newInstance(dataSource)

		int result = sql.call("{call LED_modificarTrabajo('${job.jobId}', '${job.descripcion}', '${job.fecha_creacion}', '${job.fecha_aprobacion_presupuesto}', '${job.fecha_inicio_obra}', '${job.fecha_fin_obra}', '${job.precio_total}', '${job.precio_mano_obra}', '${job.precio_articulos}'}")

		sql.close()

		return result
	}
}