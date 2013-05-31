
<%@ page import="br.uemanet.entidades.Funcionario" %>
<!DOCTYPE html>
<html>
	<head>
		<meta name="layout" content="main">
		<g:set var="entityName" value="${message(code: 'funcionario.label', default: 'Funcionario')}" />
		<title><g:message code="default.show.label" args="[entityName]" /></title>
	</head>
	<body>
		<a href="#show-funcionario" class="skip" tabindex="-1"><g:message code="default.link.skip.label" default="Skip to content&hellip;"/></a>
		<div class="nav" role="navigation">
			<ul>
				<li><a class="home" href="${createLink(uri: '/')}"><g:message code="default.home.label"/></a></li>
				<li><g:link class="list" action="list"><g:message code="default.list.label" args="[entityName]" /></g:link></li>
				<li><g:link class="create" action="create"><g:message code="default.new.label" args="[entityName]" /></g:link></li>
			</ul>
		</div>
		<div id="show-funcionario" class="content scaffold-show" role="main">
			<h1><g:message code="default.show.label" args="[entityName]" /></h1>
			<g:if test="${flash.message}">
			<div class="message" role="status">${flash.message}</div>
			</g:if>
			<ol class="property-list funcionario">
			
				<g:if test="${funcionarioInstance?.nome}">
				<li class="fieldcontain">
					<span id="nome-label" class="property-label"><g:message code="funcionario.nome.label" default="Nome" /></span>
					
						<span class="property-value" aria-labelledby="nome-label"><g:fieldValue bean="${funcionarioInstance}" field="nome"/></span>
					
				</li>
				</g:if>
			
				<g:if test="${funcionarioInstance?.email}">
				<li class="fieldcontain">
					<span id="email-label" class="property-label"><g:message code="funcionario.email.label" default="Email" /></span>
					
						<span class="property-value" aria-labelledby="email-label"><g:fieldValue bean="${funcionarioInstance}" field="email"/></span>
					
				</li>
				</g:if>
			
				<g:if test="${funcionarioInstance?.dataNasc}">
				<li class="fieldcontain">
					<span id="dataNasc-label" class="property-label"><g:message code="funcionario.dataNasc.label" default="Data Nasc" /></span>
					
						<span class="property-value" aria-labelledby="dataNasc-label"><g:formatDate date="${funcionarioInstance?.dataNasc}" /></span>
					
				</li>
				</g:if>
			
				<g:if test="${funcionarioInstance?.endereco}">
				<li class="fieldcontain">
					<span id="endereco-label" class="property-label"><g:message code="funcionario.endereco.label" default="Endereco" /></span>
					
						<span class="property-value" aria-labelledby="endereco-label"><g:fieldValue bean="${funcionarioInstance}" field="endereco"/></span>
					
				</li>
				</g:if>
			
				<g:if test="${funcionarioInstance?.cidade}">
				<li class="fieldcontain">
					<span id="cidade-label" class="property-label"><g:message code="funcionario.cidade.label" default="Cidade" /></span>
					
						<span class="property-value" aria-labelledby="cidade-label"><g:fieldValue bean="${funcionarioInstance}" field="cidade"/></span>
					
				</li>
				</g:if>
			
				<g:if test="${funcionarioInstance?.estado}">
				<li class="fieldcontain">
					<span id="estado-label" class="property-label"><g:message code="funcionario.estado.label" default="Estado" /></span>
					
						<span class="property-value" aria-labelledby="estado-label"><g:fieldValue bean="${funcionarioInstance}" field="estado"/></span>
					
				</li>
				</g:if>
			
				<g:if test="${funcionarioInstance?.telfixo}">
				<li class="fieldcontain">
					<span id="telfixo-label" class="property-label"><g:message code="funcionario.telfixo.label" default="Telfixo" /></span>
					
						<span class="property-value" aria-labelledby="telfixo-label"><g:fieldValue bean="${funcionarioInstance}" field="telfixo"/></span>
					
				</li>
				</g:if>
			
				<g:if test="${funcionarioInstance?.celular}">
				<li class="fieldcontain">
					<span id="celular-label" class="property-label"><g:message code="funcionario.celular.label" default="Celular" /></span>
					
						<span class="property-value" aria-labelledby="celular-label"><g:fieldValue bean="${funcionarioInstance}" field="celular"/></span>
					
				</li>
				</g:if>
			
				<g:if test="${funcionarioInstance?.funcao}">
				<li class="fieldcontain">
					<span id="funcao-label" class="property-label"><g:message code="funcionario.funcao.label" default="Funcao" /></span>
					
						<span class="property-value" aria-labelledby="funcao-label"><g:fieldValue bean="${funcionarioInstance}" field="funcao"/></span>
					
				</li>
				</g:if>
			
				<g:if test="${funcionarioInstance?.admissao}">
				<li class="fieldcontain">
					<span id="admissao-label" class="property-label"><g:message code="funcionario.admissao.label" default="Admissao" /></span>
					
						<span class="property-value" aria-labelledby="admissao-label"><g:formatDate date="${funcionarioInstance?.admissao}" /></span>
					
				</li>
				</g:if>
			
				<g:if test="${funcionarioInstance?.obs}">
				<li class="fieldcontain">
					<span id="obs-label" class="property-label"><g:message code="funcionario.obs.label" default="Obs" /></span>
					
						<span class="property-value" aria-labelledby="obs-label"><g:fieldValue bean="${funcionarioInstance}" field="obs"/></span>
					
				</li>
				</g:if>
			
				<g:if test="${funcionarioInstance?.cpf}">
				<li class="fieldcontain">
					<span id="cpf-label" class="property-label"><g:message code="funcionario.cpf.label" default="Cpf" /></span>
					
						<span class="property-value" aria-labelledby="cpf-label"><g:fieldValue bean="${funcionarioInstance}" field="cpf"/></span>
					
				</li>
				</g:if>
			
				<g:if test="${funcionarioInstance?.dataCriacao}">
				<li class="fieldcontain">
					<span id="dataCriacao-label" class="property-label"><g:message code="funcionario.dataCriacao.label" default="Data Criacao" /></span>
					
						<span class="property-value" aria-labelledby="dataCriacao-label"><g:formatDate date="${funcionarioInstance?.dataCriacao}" /></span>
					
				</li>
				</g:if>
			
				<g:if test="${funcionarioInstance?.rg}">
				<li class="fieldcontain">
					<span id="rg-label" class="property-label"><g:message code="funcionario.rg.label" default="Rg" /></span>
					
						<span class="property-value" aria-labelledby="rg-label"><g:fieldValue bean="${funcionarioInstance}" field="rg"/></span>
					
				</li>
				</g:if>
			
			</ol>
			<g:form>
				<fieldset class="buttons">
					<g:hiddenField name="id" value="${funcionarioInstance?.id}" />
					<g:link class="edit" action="edit" id="${funcionarioInstance?.id}"><g:message code="default.button.edit.label" default="Edit" /></g:link>
					<g:actionSubmit class="delete" action="delete" value="${message(code: 'default.button.delete.label', default: 'Delete')}" onclick="return confirm('${message(code: 'default.button.delete.confirm.message', default: 'Are you sure?')}');" />
				</fieldset>
			</g:form>
		</div>
	</body>
</html>
