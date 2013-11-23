package com.jmguilla

import grails.converters.JSON
import grails.converters.XML
import grails.plugins.springsecurity.Secured
import grails.transaction.Transactional

@Transactional
class UserController {

  def springSecurityService

  static scaffold = true

  def dashboard(){
    [userInstance: User.get(params.id)]
  }
  
  def account(User userInstance){
    [userInstance: User.get(params.id)]
  }
  
  @Secured(['ROLE_USER'])
  def list(){
    def result = User.list(params)
    withFormat{
      json{
        render(result as JSON)
      }
      xml{
        render(result as XML)
      }
    }
  }
}
