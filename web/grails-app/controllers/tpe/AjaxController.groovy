package tpe

class AjaxController {

	def sqlService

	def getItemsByJob() {
		def itemsByJob = sqlService.getItemsByJob(params.jobId)

		return [itemsByJob:itemsByJob, jobId: params.jobId]
	}

	def deleteItem() {

		sqlService.deleteItem(params.itemId)
		redirect(action:"getItemsByJob", params : params)

	}

	def getOthersByJob() {

		def othersByJob = sqlService.getOthersByJob(params.jobId)

		return [othersByJob:othersByJob]
	}

	def getCreateForm() {

		if ( params.copType != "" ) {

			render(view:"getCreateCopForm", model:[copType:params.copType])
		}
		else {

			def clients = sqlService.getClients()
			render(view:"getCreateJobForm", model:[clients:clients])
		}
	}

	def getEditForm() {

		if ( params.containsKey("copType") ) {

		    def copData = sqlService.getData(params.copId, params.copType)
		    render(view:"getEditCopForm", model: [cop : copData])
		}
		else {

		    def jobData = sqlService.getJob(params.jobId)
		    render(view:"getEditJobForm", model: [job : jobData])
		}
	}

	def createJob() {

		def jobId = sqlService.createJob(params).id

		render "${jobId}"
	}

	def getItemsForm() {
		def providers = sqlService.getProviders()
		render(view:"getItemsForm", model:[jobId:params.jobId, providers: providers])
	}
}