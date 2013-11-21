
<!-- my account banner -->
<g:if test="${flash.message}">
	<div class="message" role="status">
		${flash.message}
	</div>
</g:if>
<g:if test="${flash.error}">
	<div class="error" role="status">
		${flash.error}
	</div>
</g:if>
<ul class="nav nav-tabs nav-justified">
	<li class="${activeNav == 'dashboard' ? 'active' : '' }"><a href="#"><g:message code="app.page.account.nav.dashboard.label" default="Dashboard"/></a></li>
	<li class="${activeNav == 'profile' ? 'active' : '' }"><a href="#"><g:message code="app.page.account.nav.profile.label" default="Profile"/></a></li>
	<li class="${activeNav == 'account' ? 'active' : '' }"><a href="#"><g:message code="app.page.account.nav.account.label" default="Account"/></a></li>
</ul>