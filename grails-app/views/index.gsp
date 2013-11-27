<!DOCTYPE html>
<html>
<head>
<title><g:message code="gsp.landing.title" defaul="Grails Template landing page" /></title>
<meta name="layout" content="main" />
</head>
<body>
	<div class="jumbotron">
		<h1><g:message code="gsp.landing.hero.title" default="Find the good size"/></h1>
		<p><g:message code="gsp.landing.hero.caption" /></p>
		<p>
		<form class="form-inline" role="form">
		  <div class="form-group">
		    <input type="text" class="form-control" id="userInput" placeholder="${message(code:'gsp.landing.hero.userinput.placeholder')}">
		  </div>
		  <button type="submit" class="btn btn-primary btn-large btn-contrast" id="submit_location">Rechercher</button>
		</form>	
		</p>
	</div>
</body>
</html>
