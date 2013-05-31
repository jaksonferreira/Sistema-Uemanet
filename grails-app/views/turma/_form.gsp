<%@ page import="br.uemanet.entidades.Turma" %>



<div class="fieldcontain ${hasErrors(bean: turmaInstance, field: 'alunos', 'error')} ">
	<label for="alunos">
		<g:message code="turma.alunos.label" default="Alunos" />
		
	</label>
	<g:select name="alunos" from="${br.uemanet.entidades.Aluno.list()}" multiple="multiple" optionKey="id" size="5" value="${turmaInstance?.alunos*.id}" class="many-to-many"/>
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

