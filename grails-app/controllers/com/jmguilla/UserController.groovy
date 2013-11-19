package com.jmguilla

class UserController {

  def springSecurityService

  static scaffold = true

  def account(){
    [userInstance: User.get(params.id)]
  }
}
