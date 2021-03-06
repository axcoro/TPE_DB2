package tpe

class AjaxController {

	def sqlService

	def getItemsByJob() {
		def itemsByJob = sqlService.getItemsByJob(params.jobId)
		def modal = params.containsKey("modal");
		return [itemsByJob:itemsByJob, jobId: params.jobId, modal: modal]
	}

	def deleteItem() {

		sqlService.deleteItem(params.itemId)
		redirect(action:"getItemsByJob", params : params)

	}

	def deleteOther() {

		sqlService.deleteOther(params.otherId)
		redirect(action:"getOthersByJob", params : params)

	}

	def deleteMember() {

		sqlService.deleteMember(params.memberId)
		redirect(action:"getMembersByProvider", params : params)

	}

	def getOthersByJob() {

		def othersByJob = sqlService.getOthersByJob(params.jobId)
		
		def modal = params.containsKey("modal");

		return [othersByJob:othersByJob, jobId:params.jobId, modal:modal]
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
		    def client = sqlService.getClientByJob(jobData.id_trabajos)
		    render(view:"getEditJobForm", model: [job : jobData, client: client])
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

	def getOthersForm() {
	        def others = sqlService.getOthers()
	        def othersByJob = sqlService.getOthersByJob(params.jobId)
//	        other.id_terceros

	        List list = []
	        othersByJob.each {
	            list += it.id_terceros
	        }
        
	        def diff = others.findAll { 
		!(it.id_terceros in list)
	        }
	        
	        render(view:"getOtherForm", model:[jobId:params.jobId, others: diff])
	}

	def createCop() {

		def copId = sqlService.createCop(params).id

		render "${copId}"
	}

	def asociateOther() {

		def otherId = sqlService.asociateOther(params).id

		redirect(action:"getOthersByJob", params : params)
	}

	def getMembersForm() {

		render(view:"getMembersForm", model:[providerId:params.providerId])
	}

	def getMembersByProvider() {

		def membersByProvider = sqlService.getMembersByProvider(params.providerId)
		def modal = params.containsKey("modal");
		render(view:"getMembersByProvider", model:[providerId:params.providerId, membersByProvider: membersByProvider, modal:modal])
	}

	def createMember() {

		sqlService.createMember(params)

		redirect(action:"getMembersByProvider", params : params)
	}

	def editCop() {

		sqlService.editCop(params)

		render "${params.id}"
	}
	
	def editJob() {
		sqlService.editJob(params)

		render "${params.jobId}"
	}
	
    def listClients() {
	    String query = (params.containsKey("q") ? params.q : "") 
	    def clients = sqlService.getClientsByQuery(query)
	    render(contentType: 'text/json') {clients}
	}
    	
	def listOthers() {
	    String query = (params.containsKey("q") ? params.q : "") 
	    def others = sqlService.getOthersByQuery(query)
	    
	    def othersByJob = sqlService.getOthersByJob(params.jobId)
        
	    List list = []
	    othersByJob.each {
	        list += it.id_terceros
	    }

	    def diff = others.findAll { 
	        !(it.id_terceros in list)
	    }
        
	    render(contentType: 'text/json') {diff}
	}
	
	def listProviders() {
	    String query = (params.containsKey("q") ? params.q : "") 
	    def providers = sqlService.getProvidersByQuery(query)
	    render(contentType: 'text/json') {providers}
	}

	def existKey() {

		def result = sqlService.existKey(params.keyName, params.keyValue, params.type)

		if (result != null) {

			render "${result.id}"
		}
		else {

			render "-1"
		}
	}
}