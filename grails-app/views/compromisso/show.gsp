
<%@ page import="br.uemanet.comp.Compromisso" %>
<!DOCTYPE html>
<html>
	<head>
		<meta name="layout" content="main">
		<g:set var="entityName" value="${message(code: 'compromisso.label', default: 'Compromisso')}" />
		<title><g:message code="default.show.label" args="[entityName]" /></title>
	</head>
	<body>
		<a href="#show-compromisso" class="skip" tabindex="-1"><g:message code="default.link.skip.label" default="Skip to content&hellip;"/></a>
		<div class="nav" role="navigation">
			<ul>
				<li><a class="home" href="${createLink(uri: '/')}"><g:message code="default.home.label"/></a></li>
				<li><g:link class="list" action="list"><g:message code="default.list.label" args="[entityName]" /></g:link></li>
				<li><g:link class="create" action="create"><g:message code="default.new.label" args="[entityName]" /></g:link></li>
			</ul>
		</div>
		<div id="show-compromisso" class="content scaffold-show" role="main">
			<h1><g:message code="default.show.label" args="[entityName]" /></h1>
			<g:if test="${flash.message}">
			<div class="message" role="status">${flash.message}</div>
			</g:if>
			<ol class="property-list compromisso">
			
				<g:if test="${compromissoInstance?.descricao}">
				<li class="fieldcontain">
					<span id="descricao-label" class="property-label"><g:message code="compromisso.descricao.label" default="Descricao" /></span>
					
						<span class="property-value" aria-labelledby="descricao-label"><g:fieldValue bean="${compromissoInstance}" field="descricao"/></span>
					
				</li>
				</g:if>
			
				<g:if test="${compromissoInstance?.dataComp}">
				<li class="fieldcontain">
					<span id="dataComp-label" class="property-label"><g:message code="compromisso.dataComp.label" default="Data Comp" /></span>
					
						<span class="property-value" aria-labelledby="dataComp-label"><g:formatDate date="${compromissoInstance?.dataComp}" /></span>
					
				</li>
				</g:if>
			
				<g:if test="${compromissoInstance?.dataCriacao}">
				<li class="fieldcontain">
					<span id="dataCriacao-label" class="property-label"><g:message code="compromisso.dataCriacao.label" default="Data Criacao" /></span>
					
						<span class="property-value" aria-labelledby="dataCriacao-label"><g:formatDate date="${compromissoInstance?.dataCriacao}" /></span>
					
				</li>
				</g:if>
			
				<g:if test="${compromissoInstance?.turma}">
				<li class="fieldcontain">
					<span id="turma-label" class="property-label"><g:message code="compromisso.turma.label" default="Turma" /></span>
					
						<span class="property-value" aria-labelledby="turma-label"><g:link controller="turma" action="show" id="${compromissoInstance?.turma?.id}">${compromissoInstance?.turma?.encodeAsHTML()}</g:link></span>
					
				</li>
				</g:if>
			
				<g:if test="${compromissoInstance?.tutor}">
				<li class="fieldcontain">
					<span id="tutor-label" class="property-label"><g:message code="compromisso.tutor.label" default="Tutor" /></span>
					
						<span class="property-value" aria-labelledby="tutor-label"><g:link controller="tutor" action="show" id="${compromissoInstance?.tutor?.id}">${compromissoInstance?.tutor?.encodeAsHTML()}</g:link></span>
					
				</li>
				</g:if>
			
			</ol>
			<g:form>
				<fieldset class="buttons">
					<g:hiddenField name="id" value="${compromissoInstance?.id}" />
					<g:link class="edit" action="edit" id="${compromissoInstance?.id}"><g:message code="default.button.edit.label" default="Edit" /></g:link>
					<g:actionSubmit class="delete" action="delete" value="${message(code: 'default.button.delete.label', default: 'Delete')}" onclick="return confirm('${message(code: 'default.button.delete.confirm.message', default: 'Are you sure?')}');" />
				</fieldset>
			</g:form>
		</div>
	</body>
</html>
