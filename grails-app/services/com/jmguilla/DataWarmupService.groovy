package com.jmguilla

import grails.transaction.Transactional

import com.grailsrocks.authentication.AuthenticationService
import com.grailsrocks.authentication.AuthenticationUser

@Transactional
class DataWarmupService {

  def dev() {
    AuthenticationUser authUser = new AuthenticationUser(login:'jmguilla', password:'jmguilla'.encodeAsSHA1(), email:'guillauj@gmail.com', status:AuthenticationService.STATUS_VALID).save()
    new User(firstName: 'Jean-Michel', lastName: 'Guillaume', phoneNumber: '+33000000000', authenticationUser: authUser, sha1: Utils.shortId()).save()

    if(!(authUser = new AuthenticationUser(login:'jmguilla', password:'jmguilla'.encodeAsMD5(), email:'guillauj@gmail.com', status:AuthenticationService.STATUS_VALID)).save()) {
      authUser.errors.getFieldError("email")
      println "email already used"
    }
    authUser = new AuthenticationUser(login:'jmguilla', password:'jmguilla'.encodeAsSHA1(), email:'jmichel.guillaume@gmail.com', status:AuthenticationService.STATUS_VALID).save()
    new User(firstName: 'Jean-Michel', lastName: 'Guillaume', phoneNumber: '+33000000000', authenticationUser: authUser, sha1: Utils.shortId()).save()
  }
}
