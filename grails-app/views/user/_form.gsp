<%@ page import="com.jmguilla.User" %>
<div class="row">
	<div class="col-md-2 ${hasErrors(bean: userInstance, field: 'firstName', 'error')}">
		<label for="firstName">
			<g:message code="app.page.profile.edit.firstname.label" default="First Name" />
		</label>
	</div>
	<div class="col-md-7">
		<g:textField name="firstName" value="${userInstance?.firstName}"/>
	</div>
</div>
<div class="row">
	<div class="col-md-2 ${hasErrors(bean: userInstance, field: 'lastName', 'error')} ">
		<label for="lastName">
			<g:message code="app.page.profile.edit.lastname.label" default="Last Name" />
		</label>
	</div>
	<div class="col-md-7">
		<g:textField name="lastName" value="${userInstance?.lastName}"/>
	</div>
</div>
<div class="row">
	<div class="col-md-2 ${hasErrors(bean: userInstance, field: 'username', 'error')} ">
		<label for="userName">
			<g:message code="app.page.profile.edit.username.label" default="User Name" />
		</label>
	</div>
	<div class="col-md-7">
		<g:textField name="userName" value="${userInstance?.username}"/>
	</div>
</div>
<!-- 
<div class="fieldcontain ${hasErrors(bean: userInstance, field: 'sha1', 'error')} ">
	<label for="sha1">
		<g:message code="user.sha1.label" default="Sha1" />
		
	</label>
	<g:textField name="sha1" value="${userInstance?.sha1}"/>
</div>

<div class="fieldcontain ${hasErrors(bean: userInstance, field: 'address', 'error')} ">
	<label for="address">
		<g:message code="user.address.label" default="Address" />
		
	</label>
	<g:select id="address" name="address.id" from="${com.jmguilla.Address.list()}" optionKey="id" value="${userInstance?.address?.id}" class="many-to-one" noSelection="['null': '']"/>
</div>

<div class="fieldcontain ${hasErrors(bean: userInstance, field: 'username', 'error')} ">
	<label for="username">
		<g:message code="user.username.label" default="Username" />
		
	</label>
	<g:textField name="username" value="${userInstance?.username}"/>
</div>

<div class="fieldcontain ${hasErrors(bean: userInstance, field: 'password', 'error')} ">
	<label for="password">
		<g:message code="user.password.label" default="Password" />
		
	</label>
	<g:textField name="password" value="${userInstance?.password}"/>
</div>

<div class="fieldcontain ${hasErrors(bean: userInstance, field: 'fbUser', 'error')} ">
	<label for="fbUser">
		<g:message code="user.fbUser.label" default="Fb User" />
		
	</label>
	<g:select id="fbUser" name="fbUser.id" from="${com.jmguilla.oauth.FacebookUser.list()}" optionKey="id" value="${userInstance?.fbUser?.id}" class="many-to-one" noSelection="['null': '']"/>
</div>

<div class="fieldcontain ${hasErrors(bean: userInstance, field: 'accountExpired', 'error')} ">
	<label for="accountExpired">
		<g:message code="user.accountExpired.label" default="Account Expired" />
		
	</label>
	<g:checkBox name="accountExpired" value="${userInstance?.accountExpired}" />
</div>

<div class="fieldcontain ${hasErrors(bean: userInstance, field: 'accountLocked', 'error')} ">
	<label for="accountLocked">
		<g:message code="user.accountLocked.label" default="Account Locked" />
		
	</label>
	<g:checkBox name="accountLocked" value="${userInstance?.accountLocked}" />
</div>

<div class="fieldcontain ${hasErrors(bean: userInstance, field: 'email', 'error')} ">
	<label for="email">
		<g:message code="user.email.label" default="Email" />
		
	</label>
	<g:textField name="email" value="${userInstance?.email}"/>
</div>

<div class="fieldcontain ${hasErrors(bean: userInstance, field: 'enabled', 'error')} ">
	<label for="enabled">
		<g:message code="user.enabled.label" default="Enabled" />
		
	</label>
	<g:checkBox name="enabled" value="${userInstance?.enabled}" />
</div>

<div class="fieldcontain ${hasErrors(bean: userInstance, field: 'passwordExpired', 'error')} ">
	<label for="passwordExpired">
		<g:message code="user.passwordExpired.label" default="Password Expired" />
		
	</label>
	<g:checkBox name="passwordExpired" value="${userInstance?.passwordExpired}" />
</div>
 -->
