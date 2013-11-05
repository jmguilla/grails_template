import org.codehaus.groovy.grails.commons.ApplicationAttributes

import com.grailsrocks.authentication.AuthenticatedUser
import com.gymadvisor.plugin.authentication.AuthenticationPluginEventsListener

class BootStrap {

    def init = { servletContext ->
		def ctx = servletContext.getAttribute(ApplicationAttributes.APPLICATION_CONTEXT)
		ctx.addApplicationListener(new AuthenticationPluginEventsListener())
    }
    def destroy = {
    }
}
