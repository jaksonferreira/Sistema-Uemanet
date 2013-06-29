<%@ page import="br.uemanet.entidades.Curso" %>



<div class="fieldcontain ${hasErrors(bean: cursoInstance, field: 'descricao', 'error')} ">
	<label for="descricao">
		<g:message code="curso.descricao.label" default="Descricao" />
		
	</label>
	<g:textField name="descricao" maxlength="80" value="${cursoInstance?.descricao}"/>
</div>

<div class="fieldcontain ${hasErrors(bean: cursoInstance, field: 'alunos', 'error')} ">
	<label for="alunos">
		<g:message code="curso.alunos.label" default="Alunos" />
		
	</label>
	
<ul class="one-to-many">
<g:each in="${cursoInstance?.alunos?}" var="a">
    <li><g:link controller="aluno" action="show" id="${a.id}">${a?.encodeAsHTML()}</g:link></li>
</g:each>
<li class="add">
<g:link controller="aluno" action="create" params="['curso.id': cursoInstance?.id]">${message(code: 'default.add.label', args: [message(code: 'aluno.label', default: 'Aluno')])}</g:link>
</li>
</ul>

</div>

<div class="fieldcontain ${hasErrors(bean: cursoInstance, field: 'turmas', 'error')} ">
	<label for="turmas">
		<g:message code="curso.turmas.label" default="Turmas" />
		
	</label>
	
<ul class="one-to-many">
<g:each in="${cursoInstance?.turmas?}" var="t">
    <li><g:link controller="turma" action="show" id="${t.id}">${t?.encodeAsHTML()}</g:link></li>
</g:each>
<li class="add">
<g:link controller="turma" action="create" params="['curso.id': cursoInstance?.id]">${message(code: 'default.add.label', args: [message(code: 'turma.label', default: 'Turma')])}</g:link>
</li>
</ul>

</div>

<div class="fieldcontain ${hasErrors(bean: cursoInstance, field: 'tutor', 'error')} required">
	<label for="tutor">
		<g:message code="curso.tutor.label" default="Tutor" />
		<span class="required-indicator">*</span>
	</label>
	<g:select id="tutor" name="tutor.id" from="${br.uemanet.entidades.Tutor.list()}" optionKey="id" required="" value="${cursoInstance?.tutor?.id}" class="many-to-one"/>
</div>

