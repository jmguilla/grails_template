package com.jmguilla

import com.grailsrocks.authentication.AuthenticationUser;
import com.grailsrocks.authentication.AuthenticationService

class User {

  transient springSecurityService
  transient authenticationService

  String sha1
  String firstName
  String lastName
  String phoneNumber
  String login
  String email
  String username
  String password
  Address address
  boolean enabled
  boolean accountExpired
  boolean accountLocked
  boolean passwordExpired
  int status = AuthenticationService.STATUS_NEW

  static constraints = {
    firstName(nullable: true, size: 1..64)
    lastName(nullable: true, size: 1..64)
    phoneNumber(nullable: true, blank: false)
    sha1(nullable: true, blank: false, unique: true)
    address(nullable: true)
    username(nullable: true)
  }

  static mapping = { password column: 'password' }

  Set<Role> getAuthorities() {
    UserRole.findAllByUser(this).collect { it.role } as Set
  }

  def beforeInsert() {
    encodePassword()
  }

  def beforeUpdate() {
    if (isDirty('password')) {
      encodePassword()
    }
  }

  protected void encodePassword() {
//    password = springSecurityService.encodePassword(password)
  }
}
