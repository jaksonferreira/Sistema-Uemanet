
<%@ page import="br.uemanet.comp.Compromisso" %>
<!DOCTYPE html>
<html>
	<head>
		<meta name="layout" content="main">
		<g:set var="entityName" value="${message(code: 'compromisso.label', default: 'Compromisso')}" />
		<title><g:message code="default.list.label" args="[entityName]" /></title>
	</head>
	<body>
		<a href="#list-compromisso" class="skip" tabindex="-1"><g:message code="default.link.skip.label" default="Skip to content&hellip;"/></a>
		<div class="nav" role="navigation">
			<ul>
				<li><a class="home" href="${createLink(uri: '/')}"><g:message code="default.home.label"/></a></li>
				<li><g:link class="create" action="create"><g:message code="default.new.label" args="[entityName]" /></g:link></li>
			</ul>
		</div>
		<div id="list-compromisso" class="content scaffold-list" role="main">
			<h1><g:message code="default.list.label" args="[entityName]" /></h1>
			<g:if test="${flash.message}">
			<div class="message" role="status">${flash.message}</div>
			</g:if>
			<table>
				<thead>
					<tr>
					
						<g:sortableColumn property="descricao" title="${message(code: 'compromisso.descricao.label', default: 'Descrição')}" />
					
						<g:sortableColumn property="dataComp" title="${message(code: 'compromisso.dataComp.label', default: 'Data do Compromisso')}" />
					
						<g:sortableColumn property="dataCriacao" title="${message(code: 'compromisso.dataCriacao.label', default: 'Data da Criacao')}" />
					
						<th><g:message code="compromisso.turma.label" default="Turma" /></th>
					
						<th><g:message code="compromisso.tutor.label" default="Tutor" /></th>
					
					</tr>
				</thead>
				<tbody>
				<g:each in="${compromissoInstanceList}" status="i" var="compromissoInstance">
					<tr class="${(i % 2) == 0 ? 'even' : 'odd'}">
					
						<td><g:link action="show" id="${compromissoInstance.id}">${fieldValue(bean: compromissoInstance, field: "descricao")}</g:link></td>
					
						<td><g:formatDate date="${compromissoInstance.dataComp}" /></td>
					
						<td><g:formatDate date="${compromissoInstance.dataCriacao}" /></td>
					
						<td>${fieldValue(bean: compromissoInstance, field: "turma")}</td>
					
						<td>${fieldValue(bean: compromissoInstance, field: "tutor")}</td>
					
					</tr>
				</g:each>
				</tbody>
			</table>
			<div class="pagination">
				<g:paginate total="${compromissoInstanceTotal}" />
			</div>
		</div>
	</body>
</html>
