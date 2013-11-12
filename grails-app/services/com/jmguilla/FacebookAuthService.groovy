package com.jmguilla

import org.springframework.security.core.GrantedAuthority
import org.springframework.security.core.authority.GrantedAuthorityImpl

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

  def void onCreate(User user, FacebookAuthToken token) {
    Facebook facebook = new FacebookFactory().getInstance();
    facebook.setOAuthAccessToken(new AccessToken(token.accessToken.accessToken, null));
    def fbUser = facebook.getMe()
    user.username = fbUser.username
    user.login = fbUser.username
    user.firstName = fbUser.firstName
    user.lastName = fbUser.lastName
    user.password = user.uid.encodeAsSHA1()
    user.email = fbUser.email
  }
  
//  void afterCreate(User user, FacebookAuthToken token){
//    authenticationService.login(user.login, user.password)
//  }
}
