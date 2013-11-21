<%@ page import="com.jmguilla.User" %>
<!DOCTYPE html>
<html>
	<head>
		<meta name="layout" content="main">
		<g:set var="entityName" value="${message(code: 'user.label', default: 'User')}" />
		<title><g:message code="default.edit.label" args="[entityName]" /></title>
		<r:require modules="angular_app"/>
	</head>
	<body>
		<div class="container" ng-controller="UserCtrl">
			<div class="row">
				<g:render template="account_nav" model="['activeNav': 'profile', 'userInstance': userInstance]"/>
			</div>
			<div class="col-md-3">
				<!-- left colum -->
				<div class="row">
				<div class="col-md-3"><h4>Profile</h4></div>
				</div>
			</div>
			<div class="col-md-9">
				<g:form url="[resource:userInstance, action:'update']" method="PUT" >
					<fieldset class="form">
						<g:render template="form"/>
					</fieldset>
					<fieldset class="buttons">
						<g:actionSubmit class="save" action="update" value="${message(code: 'default.button.update.label', default: 'Update')}" />
					</fieldset>
				</g:form>
			</div>
		</div>
	</body>
</html>
