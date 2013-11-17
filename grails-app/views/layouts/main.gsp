<!DOCTYPE html>
<!--[if lt IE 7 ]> <html lang="en" class="no-js ie6"> <![endif]-->
<!--[if IE 7 ]>    <html lang="en" class="no-js ie7"> <![endif]-->
<!--[if IE 8 ]>    <html lang="en" class="no-js ie8"> <![endif]-->
<!--[if IE 9 ]>    <html lang="en" class="no-js ie9"> <![endif]-->
<!--[if (gt IE 9)|!(IE)]><!--> <html lang="en" class="no-js"><!--<![endif]-->
	<head>
		<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
		<meta http-equiv="X-UA-Compatible" content="IE=edge,chrome=1">
		<title><g:layoutTitle default="Grails"/></title>
		<meta name="viewport" content="width=device-width, initial-scale=1.0">
		<r:require modules="bootstrap" />
		<g:layoutHead/>
		<r:layoutResources />
	</head>
	<body>
		<div class="container">
			<div class="row">
				<div class="col-md-3" role="banner" id="grailsLogo"><a href="http://grails.org"><img src="${resource(dir: 'images', file: 'grails_logo.png')}" alt="Grails"/></a></div>
				<div class="col-md-9" role="banner">
					<ul class="list-inline">
						<sec:ifNotGranted roles="ROLE_USER">
							<li><facebookAuth:connect permissions="email,user_photos" /></li>
							<li><a href="${createLink( controller: "login", action: "auth")}"><g:message code="app.page.landing.signin" default="Sign In" /></a></li>
							<li><a href="${createLink( controller: "login", action: "create")}"><g:message code="app.page.landing.signup" default="Sign Up Now!" /></a></li>
						</sec:ifNotGranted>
						<sec:ifAllGranted roles="ROLE_USER">
							<sec:username/> (<g:link uri="/j_spring_security_logout">Logout</g:link>)
						</sec:ifAllGranted>
					</ul>
				</div>
			</div>
		</div>
		<g:layoutBody/>
		<div class="footer" role="contentinfo"></div>
		<div id="spinner" class="spinner" style="display:none;"><g:message code="spinner.alt" default="Loading&hellip;"/></div>
		<g:javascript library="application"/>
		<r:layoutResources />
	</body>
</html>
