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
		<g:message code="tutor.email.label" default="E-mail" />
		
	</label>
	<g:field type="email" name="email" value="${tutorInstance?.email}"/>
</div>

<div class="fieldcontain ${hasErrors(bean: tutorInstance, field: 'dataNasc', 'error')} ">
	<label for="dataNasc">
		<g:message code="tutor.dataNasc.label" default="Data de Nascimento" />
		
	</label>
	<g:datePicker name="dataNasc" precision="day"  value="${tutorInstance?.dataNasc}" default="none" noSelection="['': '']" />
</div>

<div class="fieldcontain ${hasErrors(bean: tutorInstance, field: 'endereco', 'error')} ">
	<label for="endereco">
		<g:message code="tutor.endereco.label" default="Endereço" />
		
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
		<g:message code="tutor.telfixo.label" default="Telefone" />
		
	</label>
	<g:textField name="telfixo" value="${tutorInstance?.telfixo}"/>
</div>

<div class="fieldcontain ${hasErrors(bean: tutorInstance, field: 'celular', 'error')} ">
	<label for="celular">
		<g:message code="tutor.celular.label" default="Celular" />
		
	</label>
	<g:textField name="celular" value="${tutorInstance?.celular}"/>
</div>

<div class="fieldcontain ${hasErrors(bean: tutorInstance, field: 'admissao', 'error')} required">
	<label for="admissao">
		<g:message code="tutor.admissao.label" default="Admissão" />
		<span class="required-indicator">*</span>
	</label>
	<g:datePicker name="admissao" precision="day"  value="${tutorInstance?.admissao}"  />
</div>

<div class="fieldcontain ${hasErrors(bean: tutorInstance, field: 'cpf', 'error')} ">
	<label for="cpf">
		<g:message code="tutor.cpf.label" default="CPF" />
		
	</label>
	<g:textField name="cpf" value="${tutorInstance?.cpf}"/>
</div>

<div class="fieldcontain ${hasErrors(bean: tutorInstance, field: 'rg', 'error')} ">
	<label for="rg">
		<g:message code="tutor.rg.label" default="RG" />
		
	</label>
	<g:textField name="rg" value="${tutorInstance?.rg}"/>
</div>

<div class="fieldcontain ${hasErrors(bean: tutorInstance, field: 'turmas', 'error')} ">
	<label for="turmas">
		<g:message code="tutor.turmas.label" default="Turmas" />
		
	</label>
	
<ul class="one-to-many">
<g:each in="${tutorInstance?.turmas?}" var="t">
    <li><g:link controller="turma" action="show" id="${t.id}">${t?.encodeAsHTML()}</g:link></li>
</g:each>
<li class="add">
<g:link controller="turma" action="create" params="['tutor.id': tutorInstance?.id]">${message(code: 'default.add.label', args: [message(code: 'turma.label', default: 'Turma')])}</g:link>
</li>
</ul>
</div>

<div class="fieldcontain ${hasErrors(bean: tutorInstance, field: 'obs', 'error')} ">
	<label for="obs">
		<g:message code="tutor.obs.label" default="Observação" />
		
	</label>
	<g:textArea name="obs" cols="40" rows="5" maxlength="1000" value="${tutorInstance?.obs}"/>
</div>

<div class="fieldcontain ${hasErrors(bean: tutorInstance, field: 'dataCriacao', 'error')} required">
	<label for="dataCriacao">
		<g:message code="tutor.dataCriacao.label" default="Data da Criação" />
		<span class="required-indicator">*</span>
	</label>
	<g:datePicker name="dataCriacao" precision="day"  value="${tutorInstance?.dataCriacao}"  />
</div>
