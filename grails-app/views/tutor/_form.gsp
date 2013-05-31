<%@ page import="br.uemanet.entidades.Tutor" %>



<div class="fieldcontain ${hasErrors(bean: tutorInstance, field: 'nome', 'error')} required">
	<label for="nome">
		<g:message code="tutor.nome.label" default="Nome" />
		<span class="required-indicator">*</span>
	</label>
	<g:textField name="nome" required="" value="${tutorInstance?.nome}"/>
</div>

<div class="fieldcontain ${hasErrors(bean: tutorInstance, field: 'email', 'error')} ">
	<label for="email">
		<g:message code="tutor.email.label" default="Email" />
		
	</label>
	<g:field type="email" name="email" value="${tutorInstance?.email}"/>
</div>

<div class="fieldcontain ${hasErrors(bean: tutorInstance, field: 'dataNasc', 'error')} ">
	<label for="dataNasc">
		<g:message code="tutor.dataNasc.label" default="Data Nasc" />
		
	</label>
	<g:datePicker name="dataNasc" precision="day"  value="${tutorInstance?.dataNasc}" default="none" noSelection="['': '']" />
</div>

<div class="fieldcontain ${hasErrors(bean: tutorInstance, field: 'endereco', 'error')} ">
	<label for="endereco">
		<g:message code="tutor.endereco.label" default="Endereco" />
		
	</label>
	<g:textField name="endereco" value="${tutorInstance?.endereco}"/>
</div>

<div class="fieldcontain ${hasErrors(bean: tutorInstance, field: 'cidade', 'error')} ">
	<label for="cidade">
		<g:message code="tutor.cidade.label" default="Cidade" />
		
	</label>
	<g:textField name="cidade" value="${tutorInstance?.cidade}"/>
</div>

<div class="fieldcontain ${hasErrors(bean: tutorInstance, field: 'estado', 'error')} ">
	<label for="estado">
		<g:message code="tutor.estado.label" default="Estado" />
		
	</label>
	<g:select name="estado" from="${tutorInstance.constraints.estado.inList}" value="${tutorInstance?.estado}" valueMessagePrefix="tutor.estado" noSelection="['': '']"/>
</div>

<div class="fieldcontain ${hasErrors(bean: tutorInstance, field: 'telfixo', 'error')} ">
	<label for="telfixo">
		<g:message code="tutor.telfixo.label" default="Telfixo" />
		
	</label>
	<g:textField name="telfixo" value="${tutorInstance?.telfixo}"/>
</div>

<div class="fieldcontain ${hasErrors(bean: tutorInstance, field: 'celular', 'error')} ">
	<label for="celular">
		<g:message code="tutor.celular.label" default="Celular" />
		
	</label>
	<g:textField name="celular" value="${tutorInstance?.celular}"/>
</div>

<div class="fieldcontain ${hasErrors(bean: tutorInstance, field: 'funcao', 'error')} required">
	<label for="funcao">
		<g:message code="tutor.funcao.label" default="Funcao" />
		<span class="required-indicator">*</span>
	</label>
	<g:select name="funcao" from="${tutorInstance.constraints.funcao.inList}" required="" value="${tutorInstance?.funcao}" valueMessagePrefix="tutor.funcao"/>
</div>

<div class="fieldcontain ${hasErrors(bean: tutorInstance, field: 'admissao', 'error')} required">
	<label for="admissao">
		<g:message code="tutor.admissao.label" default="Admissao" />
		<span class="required-indicator">*</span>
	</label>
	<g:datePicker name="admissao" precision="day"  value="${tutorInstance?.admissao}"  />
</div>

<div class="fieldcontain ${hasErrors(bean: tutorInstance, field: 'obs', 'error')} ">
	<label for="obs">
		<g:message code="tutor.obs.label" default="Obs" />
		
	</label>
	<g:textArea name="obs" cols="40" rows="5" maxlength="1000" value="${tutorInstance?.obs}"/>
</div>

<div class="fieldcontain ${hasErrors(bean: tutorInstance, field: 'cpf', 'error')} ">
	<label for="cpf">
		<g:message code="tutor.cpf.label" default="Cpf" />
		
	</label>
	<g:textField name="cpf" value="${tutorInstance?.cpf}"/>
</div>

<div class="fieldcontain ${hasErrors(bean: tutorInstance, field: 'dataCriacao', 'error')} required">
	<label for="dataCriacao">
		<g:message code="tutor.dataCriacao.label" default="Data Criacao" />
		<span class="required-indicator">*</span>
	</label>
	<g:datePicker name="dataCriacao" precision="day"  value="${tutorInstance?.dataCriacao}"  />
</div>

<div class="fieldcontain ${hasErrors(bean: tutorInstance, field: 'rg', 'error')} ">
	<label for="rg">
		<g:message code="tutor.rg.label" default="Rg" />
		
	</label>
	<g:textField name="rg" value="${tutorInstance?.rg}"/>
</div>

