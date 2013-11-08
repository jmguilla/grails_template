package com.jmguilla

import com.grailsrocks.authentication.AuthenticationUser

class User {

  static mapping = {
  }

  static constraints = {
    firstName(size: 1..64)
    lastName(size: 1..64)
    phoneNumber(nullable: true, blank: false)
    sha1(nullable: false, blank: false, unique: true)
    address(nullable: true)
    authenticationUser(nullable:false)
  }

  String sha1, firstName, lastName, phoneNumber
  Address address
  AuthenticationUser authenticationUser
}
