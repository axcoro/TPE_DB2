package tpe

import groovy.sql.Sql
import tpe.Constants

class SqlService {

	static transactional = false

	def dataSource

	def getRows(storedProcedureCall) {

		String query = storedProcedureCall;
		
		println "-----------------------------"
		println query
		println "-----------------------------"
		
        		def sql = Sql.newInstance(dataSource)

		List rows = sql.rows(query)

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

	def getClientsByQuery(query) {

		return getRows("{call LED_listarDatosFiltrando(${Constants.CLIENTS}, '${query}')}")
	}

	def getClientByJob(jobId) {

		return getRows("{call LED_obtenerClientePorTrabajo(${jobId})}")[0]
	}

	def getProviders() {

		return getRows("{call LED_listarDatos(${Constants.PROVIDERS})}")
	}

	def getProvidersByQuery(query) {

		return getRows("{call LED_listarDatosFiltrando(${Constants.PROVIDERS}, '${query}')}")
	}

	def getOthers() {

		return getRows("{call LED_listarDatos(${Constants.OTHERS})}")
	}
	
    
	def getOthersByQuery(query) {

		return getRows("{call LED_listarDatosFiltrando(${Constants.OTHERS}, '${query}')}")
	}

	def getData(copId, copType) {

		return getRows("{call LED_obtenerDato(${copId}, ${copType})}")[0]
	}
	
	def getJob(jobId) {

		return getRows("{call LED_obtenerTrabajo(${jobId})}")[0]
	} 

	def deleteCop(copId, copType) {

		def sql = Sql.newInstance(dataSource)

		int result = sql.call("{call LED_cambiarEstadoDato(${copId}, 0)}")

		sql.close()

		return result
	}

	def activateCop(copId, copType) {

		def sql = Sql.newInstance(dataSource)

		int result = sql.call("{call LED_cambiarEstadoDato(${copId}, 1)}")

		sql.close()

		return result
	}

	def deleteItem(itemId) {

		def sql = Sql.newInstance(dataSource)

		sql.call("{call LED_eliminarArticulo(${itemId})}")

		sql.close()
	}

	def deleteOther(otherId) {

		def sql = Sql.newInstance(dataSource)

		sql.call("{call LED_eliminarTercero(${otherId})}")

		sql.close()
	}

	def deleteMember(memberId) {

		def sql = Sql.newInstance(dataSource)

		sql.call("{call LED_eliminarIntegrante(${memberId})}")

		sql.close()
	}

	def deleteJob(jobId) {

		def sql = Sql.newInstance(dataSource)

		int result = sql.call("{call LED_eliminarTrabajo(${jobId})}")

		sql.close()

		return result
	}

	def asociateOther(other) {
		return getRows("{call LED_asociarTerceroTrabajo(${other.otherId}, ${other.jobId}, '${other.costo_prestacion}', '${other.descripcion_trabajo_realizado}')}")[0]
	}

	def createCop(cop) {

		return getRows("{call LED_crearDatos('${cop.numero_cuil}', '${cop.razon_social}', '${cop.direccion}', '${cop.codigo_postal}', '${cop.telefono_principal}', '${cop.correo_electronico_principal}', '${cop.sitio_web}', ${cop.copType}, 1)}")[0]
	}

	def createJob(job) {

		job.each { key, value -> 
			if ( (key ==~ "fecha_.*") && (value == "") ){
				job[key] = null
			}
			else if ( !(key in ["clientId", "precio_mano_obra"]) ){
				job[key] = "'${value}'"
			}
		}

		return getRows("{call LED_crearTrabajo(${job.descripcion}, ${job.fecha_aprobacion_presupuesto}, ${job.fecha_inicio_obra}, ${job.fecha_fin_obra}, ${job.precio_mano_obra}, ${job.clientId})}")[0]
	}

	def createItem(params) {
		def resultado = getRows("{call LED_crearArticulo('${params.codigo_interno}', '${params.descripcion}', '${params.marca_fabricante}', '${params.modelo}', '${params.observaciones}')}")[0]
		return getRows("{call LED_asociarArticuloTrabajo(${resultado.id},${params.jobId},'${params.providerId}','${params.codigo_proveedor}',${params.cantidad_articulos},'${params.costo_unitario}')}")[0]
	}

	def editCop(cop) {

		def sql = Sql.newInstance(dataSource)

		int result = sql.call("{call LED_modificarDatos(${cop.id}, ${cop.copType}, '${cop.numero_cuil}', '${cop.razon_social}', '${cop.direccion}', '${cop.codigo_postal}', '${cop.telefono_principal}', '${cop.correo_electronico_principal}', '${cop.sitio_web}', 1)}")

		sql.close()

		return result
	}
	
	def editJob(job) {

		job.each { key, value -> 
			if ( (key ==~ "fecha_.*") && (value == "") ){
				job[key] = null
			}
			else if ( !(key in ["jobId", "clientId", "precio_mano_obra"]) ){
				job[key] = "'${value}'"
			}
		}

		def sql = Sql.newInstance(dataSource)
		
		String query = "{call LED_modificarTrabajo(${job.jobId}, ${job.descripcion}, ${job.fecha_aprobacion_presupuesto}, ${job.fecha_inicio_obra}, ${job.fecha_fin_obra}, ${job.precio_mano_obra})}"
        
		int result = sql.call(query)

		sql.close()

		return result
	}

	def getMembersByProvider(providerId) {

		return getRows("{call LED_listarIntegrantesPorProveedor(${providerId})}")
	}

	def createMember(params) {

		return getRows("{call LED_crearIntegrante('${params.nombre}', '${params.area}', '${params.telefono}', '${params.correo_electronico}', ${params.providerId})}")[0] 
	}

	Boolean existKey(keyName, keyValue, type) {

		def sql = Sql.newInstance(dataSource)

		def exist = getRows("{call LED_buscar('${keyName}','${keyValue}','${type}')}")[0] != null

		sql.close()

		return exist
	}
}