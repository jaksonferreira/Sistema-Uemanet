<%@ page import="br.uemanet.entidades.Turma" %>



<div class="fieldcontain ${hasErrors(bean: turmaInstance, field: 'alunos', 'error')} ">
	<label for="alunos">
		<g:message code="turma.alunos.label" default="Alunos" />
		
	</label>
	
<ul class="one-to-many">
<g:each in="${turmaInstance?.alunos?}" var="a">
    <li><g:link controller="aluno" action="show" id="${a.id}">${a?.encodeAsHTML()}</g:link></li>
</g:each>
<li class="add">
<g:link controller="aluno" action="create" params="['turma.id': turmaInstance?.id]">${message(code: 'default.add.label', args: [message(code: 'aluno.label', default: 'Aluno')])}</g:link>
</li>
</ul>

</div>

<div class="fieldcontain ${hasErrors(bean: turmaInstance, field: 'curso', 'error')} required">
	<label for="curso">
		<g:message code="turma.curso.label" default="Curso" />
		<span class="required-indicator">*</span>
	</label>
	<g:select id="curso" name="curso.id" from="${br.uemanet.entidades.Curso.list()}" optionKey="id" required="" value="${turmaInstance?.curso?.id}" class="many-to-one"/>
</div>

<div class="fieldcontain ${hasErrors(bean: turmaInstance, field: 'tutor', 'error')} required">
	<label for="tutor">
		<g:message code="turma.tutor.label" default="Tutor" />
		<span class="required-indicator">*</span>
	</label>
	<g:select id="tutor" name="tutor.id" from="${br.uemanet.entidades.Tutor.list()}" optionKey="id" required="" value="${turmaInstance?.tutor?.id}" class="many-to-one"/>
</div>

