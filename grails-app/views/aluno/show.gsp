
<%@ page import="br.uemanet.entidades.Aluno" %>
<!DOCTYPE html>
<html>
	<head>
		<meta name="layout" content="main">
		<g:set var="entityName" value="${message(code: 'aluno.label', default: 'Aluno')}" />
		<title><g:message code="default.show.label" args="[entityName]" /></title>
	</head>
	<body>
		<a href="#show-aluno" class="skip" tabindex="-1"><g:message code="default.link.skip.label" default="Skip to content&hellip;"/></a>
		<div class="nav" role="navigation">
			<ul>
				<li><a class="home" href="${createLink(uri: '/')}"><g:message code="default.home.label"/></a></li>
				<li><g:link class="list" action="list"><g:message code="default.list.label" args="[entityName]" /></g:link></li>
				<li><g:link class="create" action="create"><g:message code="default.new.label" args="[entityName]" /></g:link></li>
			</ul>
		</div>
		<div id="show-aluno" class="content scaffold-show" role="main">
			<h1><g:message code="default.show.label" args="[entityName]" /></h1>
			<g:if test="${flash.message}">
			<div class="message" role="status">${flash.message}</div>
			</g:if>
			<ol class="property-list aluno">
			
				<g:if test="${alunoInstance?.nome}">
				<li class="fieldcontain">
					<span id="nome-label" class="property-label"><g:message code="aluno.nome.label" default="Nome" /></span>
					
						<span class="property-value" aria-labelledby="nome-label"><g:fieldValue bean="${alunoInstance}" field="nome"/></span>
					
				</li>
				</g:if>
			
				<g:if test="${alunoInstance?.email}">
				<li class="fieldcontain">
					<span id="email-label" class="property-label"><g:message code="aluno.email.label" default="Email" /></span>
					
						<span class="property-value" aria-labelledby="email-label"><g:fieldValue bean="${alunoInstance}" field="email"/></span>
					
				</li>
				</g:if>
			
				<g:if test="${alunoInstance?.dataNasc}">
				<li class="fieldcontain">
					<span id="dataNasc-label" class="property-label"><g:message code="aluno.dataNasc.label" default="Data Nasc" /></span>
					
						<span class="property-value" aria-labelledby="dataNasc-label"><g:formatDate date="${alunoInstance?.dataNasc}" /></span>
					
				</li>
				</g:if>
			
				<g:if test="${alunoInstance?.endereco}">
				<li class="fieldcontain">
					<span id="endereco-label" class="property-label"><g:message code="aluno.endereco.label" default="Endereco" /></span>
					
						<span class="property-value" aria-labelledby="endereco-label"><g:fieldValue bean="${alunoInstance}" field="endereco"/></span>
					
				</li>
				</g:if>
			
				<g:if test="${alunoInstance?.cidade}">
				<li class="fieldcontain">
					<span id="cidade-label" class="property-label"><g:message code="aluno.cidade.label" default="Cidade" /></span>
					
						<span class="property-value" aria-labelledby="cidade-label"><g:fieldValue bean="${alunoInstance}" field="cidade"/></span>
					
				</li>
				</g:if>
			
				<g:if test="${alunoInstance?.estado}">
				<li class="fieldcontain">
					<span id="estado-label" class="property-label"><g:message code="aluno.estado.label" default="Estado" /></span>
					
						<span class="property-value" aria-labelledby="estado-label"><g:fieldValue bean="${alunoInstance}" field="estado"/></span>
					
				</li>
				</g:if>
			
				<g:if test="${alunoInstance?.telfixo}">
				<li class="fieldcontain">
					<span id="telfixo-label" class="property-label"><g:message code="aluno.telfixo.label" default="Telfixo" /></span>
					
						<span class="property-value" aria-labelledby="telfixo-label"><g:fieldValue bean="${alunoInstance}" field="telfixo"/></span>
					
				</li>
				</g:if>
			
				<g:if test="${alunoInstance?.celular}">
				<li class="fieldcontain">
					<span id="celular-label" class="property-label"><g:message code="aluno.celular.label" default="Celular" /></span>
					
						<span class="property-value" aria-labelledby="celular-label"><g:fieldValue bean="${alunoInstance}" field="celular"/></span>
					
				</li>
				</g:if>
			
				<g:if test="${alunoInstance?.matricula}">
				<li class="fieldcontain">
					<span id="matricula-label" class="property-label"><g:message code="aluno.matricula.label" default="Matricula" /></span>
					
						<span class="property-value" aria-labelledby="matricula-label"><g:fieldValue bean="${alunoInstance}" field="matricula"/></span>
					
				</li>
				</g:if>
			
				<g:if test="${alunoInstance?.cpf}">
				<li class="fieldcontain">
					<span id="cpf-label" class="property-label"><g:message code="aluno.cpf.label" default="Cpf" /></span>
					
						<span class="property-value" aria-labelledby="cpf-label"><g:fieldValue bean="${alunoInstance}" field="cpf"/></span>
					
				</li>
				</g:if>
			
				<g:if test="${alunoInstance?.dataCriacao}">
				<li class="fieldcontain">
					<span id="dataCriacao-label" class="property-label"><g:message code="aluno.dataCriacao.label" default="Data Criacao" /></span>
					
						<span class="property-value" aria-labelledby="dataCriacao-label"><g:formatDate date="${alunoInstance?.dataCriacao}" /></span>
					
				</li>
				</g:if>
			
				<g:if test="${alunoInstance?.rg}">
				<li class="fieldcontain">
					<span id="rg-label" class="property-label"><g:message code="aluno.rg.label" default="Rg" /></span>
					
						<span class="property-value" aria-labelledby="rg-label"><g:fieldValue bean="${alunoInstance}" field="rg"/></span>
					
				</li>
				</g:if>
			
			</ol>
			<g:form>
				<fieldset class="buttons">
					<g:hiddenField name="id" value="${alunoInstance?.id}" />
					<g:link class="edit" action="edit" id="${alunoInstance?.id}"><g:message code="default.button.edit.label" default="Edit" /></g:link>
					<g:actionSubmit class="delete" action="delete" value="${message(code: 'default.button.delete.label', default: 'Delete')}" onclick="return confirm('${message(code: 'default.button.delete.confirm.message', default: 'Are you sure?')}');" />
				</fieldset>
			</g:form>
		</div>
	</body>
</html>
