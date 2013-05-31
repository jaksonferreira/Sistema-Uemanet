<%@ page import="br.uemanet.entidades.Curso" %>



<div class="fieldcontain ${hasErrors(bean: cursoInstance, field: 'descricao', 'error')} ">
	<label for="descricao">
		<g:message code="curso.descricao.label" default="Descricao" />
		
	</label>
	<g:textField name="descricao" maxlength="80" value="${cursoInstance?.descricao}"/>
</div>

<div class="fieldcontain ${hasErrors(bean: cursoInstance, field: 'cursos', 'error')} ">
	<label for="cursos">
		<g:message code="curso.cursos.label" default="Cursos" />
		
	</label>
	<g:select name="cursos" from="${br.uemanet.entidades.Curso.list()}" multiple="multiple" optionKey="id" size="5" value="${cursoInstance?.cursos*.id}" class="many-to-many"/>
</div>

