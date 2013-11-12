package com.jmguilla

import java.util.Date;

import com.grailsrocks.authentication.AuthenticationUser;
import com.grailsrocks.authentication.AuthenticationService

class User {

  transient springSecurityService
  transient authenticationService

  String sha1
  String firstName
  String lastName
  String phoneNumber
  Address address
  //below required by authentication pluging
  String login
  String email
  String password
  int status = AuthenticationService.STATUS_NEW
  //below, in addition to password, required by spring security plugin
  String username
  boolean enabled = true
  boolean accountExpired = false
  boolean accountLocked = false
  boolean passwordExpired = false
  //below required by facebook authentication/social plugin
  long uid
  String accessToken
  Date accessTokenExpires

  static constraints = {
    firstName(nullable: true, size: 1..64)
    lastName(nullable: true, size: 1..64)
    phoneNumber(nullable: true, blank: false)
    sha1(nullable: true, blank: false, unique: true)
    address(nullable: true)
    username(nullable: true)
    uid(nullable:true, unique: true)
    password(nullable: false)
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
