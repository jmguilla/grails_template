package com.jmguilla

import com.grailsrocks.authentication.AuthenticationTagLib

class SSAuthenticationTagLib extends AuthenticationTagLib{

  static namespace = "ssauth"
  //static encodeAsForTags = [tagName: 'raw']

  def SSAuthenticationService
  
  boolean checkLoggedIn() {
    return SSAuthenticationService.isLoggedIn(request)
  }
}
