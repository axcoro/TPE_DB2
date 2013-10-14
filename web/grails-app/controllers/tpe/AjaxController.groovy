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
		    def clients = sqlService.getClients()
		    def jobData = sqlService.getJob(params.jobId)
		    render(view:"getEditJobForm", model: [job : jobData, clients: clients])
		}
	}

	def createJob() {

		def jobId = sqlService.createJob(params).id

		render "${jobId}"
	}

	def createItem() {
		sqlService.createItem(params)

		redirect(action:"getItemsByJob", params : params)
	}

	def getItemsForm() {
		def providers = sqlService.getProviders()
		render(view:"getItemsForm", model:[jobId:params.jobId, providers: providers])
	}

	def createCop() {

		def copId = sqlService.createCop(params).id

		render "${copId}"
	}

	def getMembersForm() {
		println "----- getMembersForm ---- params.copId = ${params.copId}  -------------------------"
		render(view:"getMembersForm", model:[copId:params.copId])
	}

	def getMembersByProvider() {

		def membersByProvider = sqlService.getMembersByProvider(params.copId)

		render(view:"getMembersByProvider", model:[copId:params.copId, membersByProvider: membersByProvider])
	}

	def createMember() {

		sqlService.createMember(params)

		redirect(action:"getMembersByProvider", params : params)
	}

    def editJob() {
		sqlService.editJob(params)
		
		render "${params.jobId}"
	}
}