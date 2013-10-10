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
