package com.gymadvisor.plugin.authentication

import org.springframework.context.ApplicationEvent;

class AuthenticationPluginEventsListener implements org.springframework.context.ApplicationListener {

	@Override
	public void onApplicationEvent(ApplicationEvent event) {
		println "event '$event' received"
	}
	
	def onSignup = { params -> 
		println "signedup"
	}

}
