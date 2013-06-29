<%@ page import="br.uemanet.comp.Compromisso" %>



<div class="fieldcontain ${hasErrors(bean: compromissoInstance, field: 'descricao', 'error')} ">
	<label for="descricao">
		<g:message code="compromisso.descricao.label" default="Descricao" />
		
	</label>
	<g:textField name="descricao" maxlength="100" value="${compromissoInstance?.descricao}"/>
</div>

<div class="fieldcontain ${hasErrors(bean: compromissoInstance, field: 'dataComp', 'error')} required">
	<label for="dataComp">
		<g:message code="compromisso.dataComp.label" default="Data do Compromisso" />
		<span class="required-indicator">*</span>
	</label>
	<g:datePicker name="dataComp" precision="day"  value="${compromissoInstance?.dataComp}"  />
</div>

<div class="fieldcontain ${hasErrors(bean: compromissoInstance, field: 'dataCriacao', 'error')} required">
	<label for="dataCriacao">
		<g:message code="compromisso.dataCriacao.label" default="Data da Criacao" />
		<span class="required-indicator">*</span>
	</label>
	<g:datePicker name="dataCriacao" precision="day"  value="${compromissoInstance?.dataCriacao}"  />
</div>

<div class="fieldcontain ${hasErrors(bean: compromissoInstance, field: 'turma', 'error')} required">
	<label for="turma">
		<g:message code="compromisso.turma.label" default="Turma" />
		<span class="required-indicator">*</span>
	</label>
	<g:select id="turma" name="turma.id" from="${br.uemanet.entidades.Turma.list()}" optionKey="id" required="" value="${compromissoInstance?.turma?.id}" class="many-to-one"/>
</div>

<div class="fieldcontain ${hasErrors(bean: compromissoInstance, field: 'tutor', 'error')} required">
	<label for="tutor">
		<g:message code="compromisso.tutor.label" default="Tutor" />
		<span class="required-indicator">*</span>
	</label>
	<g:select id="tutor" name="tutor.id" from="${br.uemanet.entidades.Tutor.list()}" optionKey="id" required="" value="${compromissoInstance?.tutor?.id}" class="many-to-one"/>
</div>

