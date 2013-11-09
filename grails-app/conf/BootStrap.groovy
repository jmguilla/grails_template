import com.jmguilla.User


class BootStrap {

  def authenticationService
  def mailService
  def dataWarmupService

  def init = { servletContext ->

    new com.jmguilla.ExpandoLoader().load()

    authenticationService.userDomainClass = User 
    authenticationService.events['onSignup'] = { params ->
      mailService.sendMail {
        to params.user.email
        from 'guillauj@gmail.com'
        subject 'new inscription'
        body 'the body'
      }
    }
    authenticationService.events['onConfirmAccount'] = { user -> true}

    dataWarmupService.dev()
  }
  def destroy = {
  }
}
