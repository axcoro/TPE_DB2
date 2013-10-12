package tpe

import tpe.Constants

class EfectoLedController {

	def sqlService

	def listJobs() {

		def jobs = sqlService.getJobs()

		/*Map othersByJob = [:]

		jobs.each { job ->

			othersByJob."${job.id_trabajos}" = sqlService.getOthersByJob(job.id_trabajos)
		}*/

		return [jobs:jobs] //, othersByJob:othersByJob]*/
	}

	def listClients() {

		def clients = sqlService.getClients()

		render(view:"listCops", model:[cops:clients, copType:Constants.CLIENTS])
	}

	def listProviders() {

		def providers = sqlService.getProviders()

		render(view:"listCops", model:[cops:providers, copType:Constants.PROVIDERS])
	}

	def listOthers() {

		def others = sqlService.getOthers()

		render(view:"listCops", model:[cops:others, copType:Constants.OTHERS])
	}

	def deleteCop() {

		sqlService.deleteCop(params.copId)

		String action

		switch (params.copType) {

			case "$Constants.CLIENTS" :
				action = "listClients"
			break

			case "$Constants.PROVIDERS" :
				action = "listProviders"
			break

			case "$Constants.OTHERS" :
				action = "listOthers"
			break

		}

		redirect(action:action)
	}

	def deleteJob() {

		sqlService.deleteJob(params.jobId)

		redirect(action:"listJobs")
	}
}
