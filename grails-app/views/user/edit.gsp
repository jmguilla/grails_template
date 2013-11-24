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
		<div class="container" ng-app="grailsTemplate" ng-controller="UserCtrl">
			<div ng-repeat="alert in alerts" class="alert alert-{{alert.type}} alert-dismissable">
				<button ng-click="closeAlert($index)" type="button" class="close" data-dismiss="alert" aria-hidden="true">&times;</button>
				{{alert.content}}
			</div>
			<div class="row">
				<g:render template="nav" model="['activeNav': 'profile', 'userInstance': userInstance]"/>
			</div>
			<!-- left colum -->
			<div class="col-md-3">
				<g:render template="profile_menu" model="['activeMenu': 'profile']"/>
			</div>
			<div class="col-md-9">
				<form ng-submit="update()">
					<fieldset class="form">
						<g:render template="form"/>
					</fieldset>
					<fieldset class="buttons">
						<g:actionSubmit class="save" action="update" value="${message(code: 'default.button.update.label', default: 'Update')}" />
					</fieldset>
				</form>
			</div>
		</div>
	</body>
</html>
