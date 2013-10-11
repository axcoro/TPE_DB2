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

		return
	}

	def providers() {

		return
	}

	def others() {

		return
	}
}
