package com.jmguilla

import org.springframework.security.core.GrantedAuthority
import org.springframework.security.core.authority.GrantedAuthorityImpl

import com.jmguilla.oauth.FacebookUser
import com.the6hours.grails.springsecurity.facebook.FacebookAuthToken

import facebook4j.Facebook
import facebook4j.FacebookFactory
import facebook4j.auth.AccessToken
import grails.transaction.Transactional

@Transactional
class FacebookAuthService {

  def authenticationService

  def  Collection<GrantedAuthority> getRoles(User user){
    user.getAuthorities().collect { new GrantedAuthorityImpl(it.authority) } as Set
  }

  //TODO instead of systematically create a new user, try to find him if he already exists
  //TODO create a default password and email it
  def User createAppUser(FacebookUser fbUser, FacebookAuthToken token) {
    Facebook facebook = new FacebookFactory().getInstance();
    facebook.setOAuthAccessToken(new AccessToken(token.accessToken.accessToken, null));
    def fbOAuth = facebook.getMe()
    User user = new User()
    user.username = fbOAuth.username
    user.firstName = fbOAuth.firstName
    user.lastName = fbOAuth.lastName
    user.password = fbOAuth.username.encodeAsSHA1()
    user.email = fbOAuth.email
    user.save(flush: true, failOnError: true)
  }
}
