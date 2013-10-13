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

			render(view:"getCreateJobForm", model:[:])
		}
		else {

			render(view:"getCreateCopForm", model:[copType:params.copType])
		}
	}

	def getEditForm() {

	        def copData = sqlService.getData(params.copId, params.copType)

	        render(view:"getEditCopForm", model: [cop : copData[0]])
	}
}