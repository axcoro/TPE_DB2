package tpe

import tpe.Constants

class EfectoLedController {

	def sqlService, efectoLedService

	def listJobs() {

		def jobs = sqlService.getJobs()

		return [jobs:jobs]
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

	def createCop() {

		sqlService.createCop(params)

		redirect(action:efectoLedService.getCopAction(params.copType))
	}

	def editCop() {

		sqlService.editCop(params)

		redirect(action:efectoLedService.getCopAction(params.copType))
	}

	def deleteCop() {

		sqlService.deleteCop(params.copId, params.copType)

		redirect(action:efectoLedService.getCopAction(params.copType))
	}

	def activateCop() {

		sqlService.activateCop(params.copId, params.copType)

		redirect(action:efectoLedService.getCopAction(params.copType))	
	}

	def deleteJob() {

		sqlService.deleteJob(params.jobId)

		redirect(action:"listJobs")
	}

	def deleteItem() {

		sqlService.deleteItem(params.jobId)

		redirect(action:"listJobs")
	}
}
