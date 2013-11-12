package com.jmguilla

import grails.transaction.Transactional

import org.springframework.security.core.context.SecurityContextHolder

import com.grailsrocks.authentication.AuthenticationService

@Transactional
class SSAuthenticationService extends AuthenticationService{

  // Called to check it the current request has a successfully logged in user
  boolean isLoggedIn(request) {
    println 'test'
    return super.isLoggedIn(request) && SecurityContextHolder.getContext().getAuthentication();
  }
}
