package tpe

class AjaxController {

	def sqlService

	def itemsByJob() {

		def itemsByJob = sqlService.getItemsByJob(params.jobId)

		return [itemsByJob:itemsByJob]
	}
}