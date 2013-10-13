package tpe

class AjaxController {

	def sqlService

	def getItemsByJob() {

		def itemsByJob = sqlService.getItemsByJob(params.jobId)

		return [itemsByJob:itemsByJob]
	}

	def getOthersByJob() {

		def othersByJob = sqlService.getOthersByJob(params.jobId)

		return [othersByJob:othersByJob]
	}

	def getCreateForm() {

		if ( params.copType == "" ) {
			def clients = sqlService.getClients()
			render(view:"getCreateJobForm", model:[clients:clients])
		}
		else {

			render(view:"getCreateCopForm", model:[copType:params.copType])
		}
	}

	def getEditForm() {

		if ( params.copType == "" ) { // hack me
		        def jobData = sqlService.getJob(params.jobId)
		        render(view:"getEditJobForm", model: [job : jobData[0]]) // hack me ?
		}
		else {
		        def copData = sqlService.getData(params.copId, params.copType)
		        render(view:"getEditCopForm", model: [cop : copData[0]])
		}
	}
}