package tpe

import groovy.sql.Sql
import grails.transaction.Transactional

@Transactional
class SqlService {

	def dataSource


    def getJobs() {

		def sql = Sql.newInstance( dataSource )

		List rows = sql.rows("{call LED_listarTrabajos()}")

		rows.each {
			println "---------"+it
			println "---------"+it.getClass()
			println "---------------------------------------------"
		}
    }
}
