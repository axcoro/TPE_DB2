package tpe

class EfectoLedController {

	def sqlService

	def listJobs() {

		def jobs = sqlService.getJobs()

		Map othersByJob = [:]

		jobs.each { job ->

			othersByJob."${job.id_trabajos}" = sqlService.getOthersByJob(job.id_trabajos)
		}

		return [jobs:jobs, othersByJob:othersByJob]
	}

	def listClients() {

		def clients = sqlService.getClients()

		render(view:"listCops", model:[cops:clients, copsTitle:"Clientes"])
	}

	def listProviders() {

		def providers = sqlService.getProviders()

		render(view:"listCops", model:[cops:providers, copsTitle:"Proveedores"])
	}

	def listOthers() {

		def others = sqlService.getOthers()

		render(view:"listCops", model:[cops:others, copsTitle:"Terceros"])
	}

	def deleteCop() {

		render sqlService.deleteCop(params.copType)
	}
}
