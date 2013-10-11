package tpe

class EfectoLedController {

	def sqlService

	def jobs() {

		def jobs = sqlService.getJobs()

		Map othersByJob = [:]

		jobs.each { job ->

			othersByJob."${job.id_trabajos}" = sqlService.getOthersByJob(job.id_trabajos)
		}

		return [jobs:jobs, othersByJob:othersByJob]
	}

	def itemsByJob() {

		def itemsByJob = sqlService.getItemsByJob(params.jobId)

		return [itemsByJob:itemsByJob]
	}

	def clients() {

		def clients = sqlService.getClients()

		render(view:"cops", model:[cops:clients, copsTitle:"Clientes"])
	}

	def providers() {

		def providers = sqlService.getProviders()

		render(view:"cops", model:[cops:providers, copsTitle:"Proveedores"])
	}

	def others() {

		def others = sqlService.getOthers()

		render(view:"cops", model:[cops:others, copsTitle:"Terceros"])
	}
}
