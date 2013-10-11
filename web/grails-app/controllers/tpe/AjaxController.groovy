package tpe

class AjaxController {

	def sqlService

	def getItemsByJob() {

		def itemsByJob = sqlService.getItemsByJob(params.jobId)

		return [itemsByJob:itemsByJob]
	}
}