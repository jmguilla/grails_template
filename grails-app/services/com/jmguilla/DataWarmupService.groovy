package com.jmguilla

import grails.transaction.Transactional

import com.grailsrocks.authentication.AuthenticationService

@Transactional
class DataWarmupService {

  def dev() {
    def user = null
    if(!(user = new User(username:'jmguilla', login:'jmguilla', password:'jmguilla'.encodeAsSHA1(), email:'guillauj@gmail.com', status:AuthenticationService.STATUS_VALID, firstName: 'Jean-Michel', lastName: 'Guillaume', phoneNumber: '+33000000000', sha1: Utils.shortId())).save()){
      for(error in user.errors.getAllErrors()){
        println error
      }
    }
    if(!(user = new User(username:'jmguilla', login:'jmguilla', password:'jmguilla'.encodeAsSHA1(), email:'jmichel.guillaume@gmail.com', status:AuthenticationService.STATUS_VALID, firstName: 'Jean-Michel', lastName: 'Guillaume', phoneNumber: '+33000000000', sha1: Utils.shortId())).save()){
      for(error in user.errors.getAllErrors()){
        println error
      }
    }
    //    here is an example about how to check properties validation
    //    if(!(authUser = new AuthenticationUser(login:'jmguilla', password:'jmguilla'.encodeAsMD5(), email:'guillauj@gmail.com', status:AuthenticationService.STATUS_VALID)).save()) {
    //      authUser.errors.getFieldError("email")
    //      println "email already used"
    //    }
  }
}
