
class BootStrap {
	
	def authenticationService
	
    def init = { servletContext ->
		authenticationService.events['onSignup'] = { params -> 
			println "overrided behavior for onSignup"
		}
    }
    def destroy = {
    }
}
