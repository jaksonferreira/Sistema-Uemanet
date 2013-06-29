
<%@ page import="br.uemanet.entidades.Tutor" %>
<!DOCTYPE html>
<html>
	<head>
		<meta name="layout" content="main">
		<g:set var="entityName" value="${message(code: 'tutor.label', default: 'Tutor')}" />
		<title><g:message code="default.show.label" args="[entityName]" /></title>
	</head>
	<body>
		<a href="#show-tutor" class="skip" tabindex="-1"><g:message code="default.link.skip.label" default="Skip to content&hellip;"/></a>
		<div class="nav" role="navigation">
			<ul>
				<li><a class="home" href="${createLink(uri: '/')}"><g:message code="default.home.label"/></a></li>
				<li><g:link class="list" action="list"><g:message code="default.list.label" args="[entityName]" /></g:link></li>
				<li><g:link class="create" action="create"><g:message code="default.new.label" args="[entityName]" /></g:link></li>
			</ul>
		</div>
		<div id="show-tutor" class="content scaffold-show" role="main">
			<h1><g:message code="default.show.label" args="[entityName]" /></h1>
			<g:if test="${flash.message}">
			<div class="message" role="status">${flash.message}</div>
			</g:if>
			<ol class="property-list tutor">
			
				<g:if test="${tutorInstance?.nome}">
				<li class="fieldcontain">
					<span id="nome-label" class="property-label"><g:message code="tutor.nome.label" default="Nome" /></span>
					
						<span class="property-value" aria-labelledby="nome-label"><g:fieldValue bean="${tutorInstance}" field="nome"/></span>
					
				</li>
				</g:if>
			
				<g:if test="${tutorInstance?.email}">
				<li class="fieldcontain">
					<span id="email-label" class="property-label"><g:message code="tutor.email.label" default="Email" /></span>
					
						<span class="property-value" aria-labelledby="email-label"><g:fieldValue bean="${tutorInstance}" field="email"/></span>
					
				</li>
				</g:if>
			
				<g:if test="${tutorInstance?.dataNasc}">
				<li class="fieldcontain">
					<span id="dataNasc-label" class="property-label"><g:message code="tutor.dataNasc.label" default="Data Nasc" /></span>
					
						<span class="property-value" aria-labelledby="dataNasc-label"><g:formatDate date="${tutorInstance?.dataNasc}" /></span>
					
				</li>
				</g:if>
			
				<g:if test="${tutorInstance?.endereco}">
				<li class="fieldcontain">
					<span id="endereco-label" class="property-label"><g:message code="tutor.endereco.label" default="Endereco" /></span>
					
						<span class="property-value" aria-labelledby="endereco-label"><g:fieldValue bean="${tutorInstance}" field="endereco"/></span>
					
				</li>
				</g:if>
			
				<g:if test="${tutorInstance?.cidade}">
				<li class="fieldcontain">
					<span id="cidade-label" class="property-label"><g:message code="tutor.cidade.label" default="Cidade" /></span>
					
						<span class="property-value" aria-labelledby="cidade-label"><g:fieldValue bean="${tutorInstance}" field="cidade"/></span>
					
				</li>
				</g:if>
			
				<g:if test="${tutorInstance?.estado}">
				<li class="fieldcontain">
					<span id="estado-label" class="property-label"><g:message code="tutor.estado.label" default="Estado" /></span>
					
						<span class="property-value" aria-labelledby="estado-label"><g:fieldValue bean="${tutorInstance}" field="estado"/></span>
					
				</li>
				</g:if>
			
				<g:if test="${tutorInstance?.telfixo}">
				<li class="fieldcontain">
					<span id="telfixo-label" class="property-label"><g:message code="tutor.telfixo.label" default="Telfixo" /></span>
					
						<span class="property-value" aria-labelledby="telfixo-label"><g:fieldValue bean="${tutorInstance}" field="telfixo"/></span>
					
				</li>
				</g:if>
			
				<g:if test="${tutorInstance?.celular}">
				<li class="fieldcontain">
					<span id="celular-label" class="property-label"><g:message code="tutor.celular.label" default="Celular" /></span>
					
						<span class="property-value" aria-labelledby="celular-label"><g:fieldValue bean="${tutorInstance}" field="celular"/></span>
					
				</li>
				</g:if>
			
				<g:if test="${tutorInstance?.funcao}">
				<li class="fieldcontain">
					<span id="funcao-label" class="property-label"><g:message code="tutor.funcao.label" default="Funcao" /></span>
					
						<span class="property-value" aria-labelledby="funcao-label"><g:fieldValue bean="${tutorInstance}" field="funcao"/></span>
					
				</li>
				</g:if>
			
				<g:if test="${tutorInstance?.admissao}">
				<li class="fieldcontain">
					<span id="admissao-label" class="property-label"><g:message code="tutor.admissao.label" default="Admissao" /></span>
					
						<span class="property-value" aria-labelledby="admissao-label"><g:formatDate date="${tutorInstance?.admissao}" /></span>
					
				</li>
				</g:if>
			
				<g:if test="${tutorInstance?.obs}">
				<li class="fieldcontain">
					<span id="obs-label" class="property-label"><g:message code="tutor.obs.label" default="Obs" /></span>
					
						<span class="property-value" aria-labelledby="obs-label"><g:fieldValue bean="${tutorInstance}" field="obs"/></span>
					
				</li>
				</g:if>
			
				<g:if test="${tutorInstance?.cpf}">
				<li class="fieldcontain">
					<span id="cpf-label" class="property-label"><g:message code="tutor.cpf.label" default="Cpf" /></span>
					
						<span class="property-value" aria-labelledby="cpf-label"><g:fieldValue bean="${tutorInstance}" field="cpf"/></span>
					
				</li>
				</g:if>
			
				<g:if test="${tutorInstance?.curso}">
				<li class="fieldcontain">
					<span id="curso-label" class="property-label"><g:message code="tutor.curso.label" default="Curso" /></span>
					
						<span class="property-value" aria-labelledby="curso-label"><g:link controller="curso" action="show" id="${tutorInstance?.curso?.id}">${tutorInstance?.curso?.encodeAsHTML()}</g:link></span>
					
				</li>
				</g:if>
			
				<g:if test="${tutorInstance?.dataCriacao}">
				<li class="fieldcontain">
					<span id="dataCriacao-label" class="property-label"><g:message code="tutor.dataCriacao.label" default="Data Criacao" /></span>
					
						<span class="property-value" aria-labelledby="dataCriacao-label"><g:formatDate date="${tutorInstance?.dataCriacao}" /></span>
					
				</li>
				</g:if>
			
				<g:if test="${tutorInstance?.rg}">
				<li class="fieldcontain">
					<span id="rg-label" class="property-label"><g:message code="tutor.rg.label" default="Rg" /></span>
					
						<span class="property-value" aria-labelledby="rg-label"><g:fieldValue bean="${tutorInstance}" field="rg"/></span>
					
				</li>
				</g:if>
			
				<g:if test="${tutorInstance?.turmas}">
				<li class="fieldcontain">
					<span id="turmas-label" class="property-label"><g:message code="tutor.turmas.label" default="Turmas" /></span>
					
						<g:each in="${tutorInstance.turmas}" var="t">
						<span class="property-value" aria-labelledby="turmas-label"><g:link controller="turma" action="show" id="${t.id}">${t?.encodeAsHTML()}</g:link></span>
						</g:each>
					
				</li>
				</g:if>
			
			</ol>
			<g:form>
				<fieldset class="buttons">
					<g:hiddenField name="id" value="${tutorInstance?.id}" />
					<g:link class="edit" action="edit" id="${tutorInstance?.id}"><g:message code="default.button.edit.label" default="Edit" /></g:link>
					<g:actionSubmit class="delete" action="delete" value="${message(code: 'default.button.delete.label', default: 'Delete')}" onclick="return confirm('${message(code: 'default.button.delete.confirm.message', default: 'Are you sure?')}');" />
				</fieldset>
			</g:form>
		</div>
	</body>
</html>
