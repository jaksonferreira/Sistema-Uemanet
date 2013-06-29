
<%@ page import="br.uemanet.entidades.Tutor" %>
<!DOCTYPE html>
<html>
	<head>
		<meta name="layout" content="main">
		<g:set var="entityName" value="${message(code: 'tutor.label', default: 'Tutor')}" />
		<title><g:message code="default.list.label" args="[entityName]" /></title>
	</head>
	<body>
		<a href="#list-tutor" class="skip" tabindex="-1"><g:message code="default.link.skip.label" default="Skip to content&hellip;"/></a>
		<div class="nav" role="navigation">
			<ul>
				<li><a class="home" href="${createLink(uri: '/')}"><g:message code="default.home.label"/></a></li>
				<li><g:link class="create" action="create"><g:message code="default.new.label" args="[entityName]" /></g:link></li>
			</ul>
		</div>
		<div id="list-tutor" class="content scaffold-list" role="main">
			<h1><g:message code="default.list.label" args="[entityName]" /></h1>
			<g:if test="${flash.message}">
			<div class="message" role="status">${flash.message}</div>
			</g:if>
			<table>
				<thead>
					<tr>
					
						<g:sortableColumn property="nome" title="${message(code: 'tutor.nome.label', default: 'Nome')}" />
					
						<g:sortableColumn property="email" title="${message(code: 'tutor.email.label', default: 'E-mail')}" />
					
						<g:sortableColumn property="dataNasc" title="${message(code: 'tutor.dataNasc.label', default: 'Data de Nascimento')}" />
					
						<g:sortableColumn property="telfixo" title="${message(code: 'tutor.telfixo.label', default: 'Telefone')}" />
					
						<g:sortableColumn property="celular" title="${message(code: 'tutor.celular.label', default: 'Celular')}" />
					
					</tr>
				</thead>
				<tbody>
				<g:each in="${tutorInstanceList}" status="i" var="tutorInstance">
					<tr class="${(i % 2) == 0 ? 'even' : 'odd'}">
					
						<td><g:link action="show" id="${tutorInstance.id}">${fieldValue(bean: tutorInstance, field: "nome")}</g:link></td>
					
						<td>${fieldValue(bean: tutorInstance, field: "email")}</td>
					
						<td><g:formatDate date="${tutorInstance.dataNasc}" format="dd/MM/yyyy" /></td>
					
						<td>${fieldValue(bean: tutorInstance, field: "endereco")}</td>
					
						<td>${fieldValue(bean: tutorInstance, field: "cidade")}</td>
					
						<td>${fieldValue(bean: tutorInstance, field: "estado")}</td>
					
					</tr>
				</g:each>
				</tbody>
			</table>
			<div class="pagination">
				<g:paginate total="${tutorInstanceTotal}" />
			</div>
		</div>
	</body>
</html>
