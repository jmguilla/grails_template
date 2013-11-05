import org.codehaus.groovy.grails.commons.ApplicationAttributes

import com.grailsrocks.authentication.AuthenticatedUser
import com.grailsrocks.authentication.AuthenticationService;
import com.gymadvisor.plugin.authentication.AuthenticationPluginEventsListener

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
