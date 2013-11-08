



class BootStrap {

  def authenticationService
  def mailService

  def init = { servletContext ->
    authenticationService.events['onSignup'] = { params ->
      mailService.sendMail {
        to params.user.email
        from 'guillauj@gmail.com'
        subject 'new inscription'
        body 'the body'
      }
    }
    authenticationService.events['onConfirmAccount'] = { user -> true}
  }
  def destroy = {
  }
}
