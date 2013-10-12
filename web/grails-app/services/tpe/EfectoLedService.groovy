package tpe

import tpe.Constants

class EfectoLedService {

	static transactional = false

	def getCopAction(copType) {

		switch (copType) {

			case "$Constants.CLIENTS" :
				action = "listClients"
			break

			case "$Constants.PROVIDERS" :
				action = "listProviders"
			break

			case "$Constants.OTHERS" :
				action = "listOthers"
			break
		}
	}
}