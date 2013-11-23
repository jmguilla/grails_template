<%@ page import="com.jmguilla.User" %>
<%@ page import="grails.plugins.springsecurity.SpringSecurityService" %>

<g:set var="springSecurityService" bean="springSecurityService"/>

<!DOCTYPE html>
<!--[if lt IE 7 ]> <html lang="en" class="no-js ie6" ng-app="grailsTemplate"> <![endif]-->
<!--[if IE 7 ]>    <html lang="en" class="no-js ie7" ng-app="grailsTemplate"> <![endif]-->
<!--[if IE 8 ]>    <html lang="en" class="no-js ie8" ng-app="grailsTemplate"> <![endif]-->
<!--[if IE 9 ]>    <html lang="en" class="no-js ie9" ng-app="grailsTemplate"> <![endif]-->
<!--[if (gt IE 9)|!(IE)]><!--> <html lang="en" class="no-js" ng-app="grailsTemplate"><!--<![endif]-->
	<head>
		<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
		<meta http-equiv="X-UA-Compatible" content="IE=edge,chrome=1">
		<title><g:layoutTitle default="Grails"/></title>
		<meta name="viewport" content="width=device-width, initial-scale=1.0">
		<r:require modules="main_css" />
		<r:require modules="bootstrap" />
		<g:layoutHead/>
		<r:layoutResources />
	</head>
	<body>
		<div class="container">
			<div class="row">
				<div class="col-md-3" role="banner" id="grailsLogo"><a href="http://grails.org"><img src="${resource(dir: 'images', file: 'grails_logo.png')}" alt="Grails"/></a></div>
				<div class="col-md-9" role="banner">
					<ul class="list-inline banner">
						<sec:ifNotGranted roles="ROLE_FACEBOOK">
							<li><facebookAuth:connect permissions="email,user_photos" /></li>
						</sec:ifNotGranted>
						<sec:ifNotLoggedIn roles="ROLE_USER">
							<li><a href="${createLink( controller: "login", action: "auth")}"><g:message code="gsp.landing.signin" default="Sign In" /></a></li>
							<li><a href="${createLink( controller: "login", action: "create")}"><g:message code="gsp.landing.signup" default="Sign Up Now!" /></a></li>
						</sec:ifNotLoggedIn>
						<sec:ifLoggedIn roles="ROLE_USER">
						<li>
						<div class="dropdown">
  							<a id="dLabel" role="button" data-toggle="dropdown" data-target="#" href="#">
    							<sec:username/><span class="caret"></span>
  							</a>
							  <ul class="dropdown-menu" role="menu" aria-labelledby="dropdownMenu">
								  <li role="presentation"><a role="menuitem" tabindex="-1" href="${createLink( controller: "user", action: "dashboard", id: springSecurityService.getCurrentUser().id)}"><g:message code="gsp.landing.myaccount.label" default="My Account" /></a></li>
								  <li role="presentation" class="divider"></li>
								  <li role="presentation"><a role="menuitem" tabindex="-1" href="${createLink( uri: '/j_spring_security_logout')}"><g:message code="gsp.landing.logout.label" default="Logout" /></a></li>
							  </ul>
							</div>
						</li>
						</sec:ifLoggedIn>
						<li>
							<form class="navbar-form" role="search">
							<div class="form-group">
								<input type="text" class="form-control" placeholder="Search">
							</div>
							<button type="submit" class="btn btn-default"><g:message code="gsp.landing.search.button.label" default="Submit"/></button>
							</form>
						</li>
					</ul>
				</div>
			</div>
		</div>
		<div class="container">
			<div class="row">
				<nav class="navbar navbar-default" role="navigation">
					<!-- Brand and toggle get grouped for better mobile display -->
					<div class="navbar-header">
						<button type="button" class="navbar-toggle" data-toggle="collapse" data-target="#bs-example-navbar-collapse-1">
							<span class="sr-only">Toggle navigation</span>
							<span class="icon-bar"></span>
							<span class="icon-bar"></span>
							<span class="icon-bar"></span>
						</button>
					</div>
			
					<!-- Collect the nav links, forms, and other content for toggling -->
					<div class="collapse navbar-collapse" id="bs-example-navbar-collapse-1">
						<ul class="nav navbar-nav">
							<li><a href="#">Link</a></li>
							<li><a href="#">Link</a></li>
							<li class="dropdown"><a href="#" class="dropdown-toggle"
								data-toggle="dropdown">Dropdown <b class="caret"></b></a>
								<ul class="dropdown-menu">
									<li><a href="#">Action</a></li>
									<li><a href="#">Another action</a></li>
									<li><a href="#">Something else here</a></li>
									<li class="divider"></li>
									<li><a href="#">Separated link</a></li>
									<li class="divider"></li>
									<li><a href="#">One more separated link</a></li>
								</ul></li>
						</ul>
					</div>
					<!-- /.navbar-collapse -->
				</nav>
			</div>
		</div>
		<g:layoutBody/>
		<div class="footer" role="contentinfo"></div>
		<div id="spinner" class="spinner" style="display:none;"><g:message code="spinner.alt" default="Loading&hellip;"/></div>
		<g:javascript library="application"/>
		<r:layoutResources />
	</body>
</html>
