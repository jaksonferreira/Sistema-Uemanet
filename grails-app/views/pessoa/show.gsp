
<%@ page import="br.uemanet.info.Pessoa" %>
<!DOCTYPE html>
<html>
	<head>
		<meta name="layout" content="main">
		<g:set var="entityName" value="${message(code: 'pessoa.label', default: 'Pessoa')}" />
		<title><g:message code="default.show.label" args="[entityName]" /></title>
	</head>
	<body>
		<a href="#show-pessoa" class="skip" tabindex="-1"><g:message code="default.link.skip.label" default="Skip to content&hellip;"/></a>
		<div class="nav" role="navigation">
			<ul>
				<li><a class="home" href="${createLink(uri: '/')}"><g:message code="default.home.label"/></a></li>
				<li><g:link class="list" action="list"><g:message code="default.list.label" args="[entityName]" /></g:link></li>
				<li><g:link class="create" action="create"><g:message code="default.new.label" args="[entityName]" /></g:link></li>
			</ul>
		</div>
		<div id="show-pessoa" class="content scaffold-show" role="main">
			<h1><g:message code="default.show.label" args="[entityName]" /></h1>
			<g:if test="${flash.message}">
			<div class="message" role="status">${flash.message}</div>
			</g:if>
			<ol class="property-list pessoa">
			
				<g:if test="${pessoaInstance?.nome}">
				<li class="fieldcontain">
					<span id="nome-label" class="property-label"><g:message code="pessoa.nome.label" default="Nome" /></span>
					
						<span class="property-value" aria-labelledby="nome-label"><g:fieldValue bean="${pessoaInstance}" field="nome"/></span>
					
				</li>
				</g:if>
			
				<g:if test="${pessoaInstance?.email}">
				<li class="fieldcontain">
					<span id="email-label" class="property-label"><g:message code="pessoa.email.label" default="Email" /></span>
					
						<span class="property-value" aria-labelledby="email-label"><g:fieldValue bean="${pessoaInstance}" field="email"/></span>
					
				</li>
				</g:if>
			
				<g:if test="${pessoaInstance?.dataNasc}">
				<li class="fieldcontain">
					<span id="dataNasc-label" class="property-label"><g:message code="pessoa.dataNasc.label" default="Data Nasc" /></span>
					
						<span class="property-value" aria-labelledby="dataNasc-label"><g:formatDate date="${pessoaInstance?.dataNasc}" /></span>
					
				</li>
				</g:if>
			
				<g:if test="${pessoaInstance?.endereco}">
				<li class="fieldcontain">
					<span id="endereco-label" class="property-label"><g:message code="pessoa.endereco.label" default="Endereco" /></span>
					
						<span class="property-value" aria-labelledby="endereco-label"><g:fieldValue bean="${pessoaInstance}" field="endereco"/></span>
					
				</li>
				</g:if>
			
				<g:if test="${pessoaInstance?.cidade}">
				<li class="fieldcontain">
					<span id="cidade-label" class="property-label"><g:message code="pessoa.cidade.label" default="Cidade" /></span>
					
						<span class="property-value" aria-labelledby="cidade-label"><g:fieldValue bean="${pessoaInstance}" field="cidade"/></span>
					
				</li>
				</g:if>
			
				<g:if test="${pessoaInstance?.estado}">
				<li class="fieldcontain">
					<span id="estado-label" class="property-label"><g:message code="pessoa.estado.label" default="Estado" /></span>
					
						<span class="property-value" aria-labelledby="estado-label"><g:fieldValue bean="${pessoaInstance}" field="estado"/></span>
					
				</li>
				</g:if>
			
				<g:if test="${pessoaInstance?.telfixo}">
				<li class="fieldcontain">
					<span id="telfixo-label" class="property-label"><g:message code="pessoa.telfixo.label" default="Telfixo" /></span>
					
						<span class="property-value" aria-labelledby="telfixo-label"><g:fieldValue bean="${pessoaInstance}" field="telfixo"/></span>
					
				</li>
				</g:if>
			
				<g:if test="${pessoaInstance?.celular}">
				<li class="fieldcontain">
					<span id="celular-label" class="property-label"><g:message code="pessoa.celular.label" default="Celular" /></span>
					
						<span class="property-value" aria-labelledby="celular-label"><g:fieldValue bean="${pessoaInstance}" field="celular"/></span>
					
				</li>
				</g:if>
			
				<g:if test="${pessoaInstance?.cpf}">
				<li class="fieldcontain">
					<span id="cpf-label" class="property-label"><g:message code="pessoa.cpf.label" default="Cpf" /></span>
					
						<span class="property-value" aria-labelledby="cpf-label"><g:fieldValue bean="${pessoaInstance}" field="cpf"/></span>
					
				</li>
				</g:if>
			
				<g:if test="${pessoaInstance?.dataCriacao}">
				<li class="fieldcontain">
					<span id="dataCriacao-label" class="property-label"><g:message code="pessoa.dataCriacao.label" default="Data Criacao" /></span>
					
						<span class="property-value" aria-labelledby="dataCriacao-label"><g:formatDate date="${pessoaInstance?.dataCriacao}" /></span>
					
				</li>
				</g:if>
			
				<g:if test="${pessoaInstance?.rg}">
				<li class="fieldcontain">
					<span id="rg-label" class="property-label"><g:message code="pessoa.rg.label" default="Rg" /></span>
					
						<span class="property-value" aria-labelledby="rg-label"><g:fieldValue bean="${pessoaInstance}" field="rg"/></span>
					
				</li>
				</g:if>
			
			</ol>
			<g:form>
				<fieldset class="buttons">
					<g:hiddenField name="id" value="${pessoaInstance?.id}" />
					<g:link class="edit" action="edit" id="${pessoaInstance?.id}"><g:message code="default.button.edit.label" default="Edit" /></g:link>
					<g:actionSubmit class="delete" action="delete" value="${message(code: 'default.button.delete.label', default: 'Delete')}" onclick="return confirm('${message(code: 'default.button.delete.confirm.message', default: 'Are you sure?')}');" />
				</fieldset>
			</g:form>
		</div>
	</body>
</html>
