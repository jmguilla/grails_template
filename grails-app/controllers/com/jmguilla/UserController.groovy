package com.jmguilla

import grails.converters.JSON
import grails.converters.XML
import grails.plugins.springsecurity.Secured
import grails.transaction.Transactional

@Transactional
class UserController {

  def springSecurityService

  static scaffold = true
  
  @Secured(['ROLE_USER'])
  def me(){
    def me = springSecurityService.getCurrentUser()
    withFormat{
      json{
        render(me as JSON)
      }
      xml{
        render(me as XML)
      }
      html{
        render ''
      }
    }
  }

  def update(User userInstance){
    if(!request.post){
      response.sendError(405)
      return
    }
    render (request.JSON)
  }

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
      json{ render(result as JSON) }
      xml{ render(result as XML) }
    }
  }
}
