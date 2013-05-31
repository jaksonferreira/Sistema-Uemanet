<%@ page import="br.uemanet.info.Pessoa" %>



<div class="fieldcontain ${hasErrors(bean: pessoaInstance, field: 'nome', 'error')} required">
	<label for="nome">
		<g:message code="pessoa.nome.label" default="Nome" />
		<span class="required-indicator">*</span>
	</label>
	<g:textField name="nome" required="" value="${pessoaInstance?.nome}"/>
</div>

<div class="fieldcontain ${hasErrors(bean: pessoaInstance, field: 'email', 'error')} ">
	<label for="email">
		<g:message code="pessoa.email.label" default="Email" />
		
	</label>
	<g:field type="email" name="email" value="${pessoaInstance?.email}"/>
</div>

<div class="fieldcontain ${hasErrors(bean: pessoaInstance, field: 'dataNasc', 'error')} ">
	<label for="dataNasc">
		<g:message code="pessoa.dataNasc.label" default="Data Nasc" />
		
	</label>
	<g:datePicker name="dataNasc" precision="day"  value="${pessoaInstance?.dataNasc}" default="none" noSelection="['': '']" />
</div>

<div class="fieldcontain ${hasErrors(bean: pessoaInstance, field: 'endereco', 'error')} ">
	<label for="endereco">
		<g:message code="pessoa.endereco.label" default="Endereco" />
		
	</label>
	<g:textField name="endereco" value="${pessoaInstance?.endereco}"/>
</div>

<div class="fieldcontain ${hasErrors(bean: pessoaInstance, field: 'cidade', 'error')} ">
	<label for="cidade">
		<g:message code="pessoa.cidade.label" default="Cidade" />
		
	</label>
	<g:textField name="cidade" value="${pessoaInstance?.cidade}"/>
</div>

<div class="fieldcontain ${hasErrors(bean: pessoaInstance, field: 'estado', 'error')} ">
	<label for="estado">
		<g:message code="pessoa.estado.label" default="Estado" />
		
	</label>
	<g:select name="estado" from="${pessoaInstance.constraints.estado.inList}" value="${pessoaInstance?.estado}" valueMessagePrefix="pessoa.estado" noSelection="['': '']"/>
</div>

<div class="fieldcontain ${hasErrors(bean: pessoaInstance, field: 'telfixo', 'error')} ">
	<label for="telfixo">
		<g:message code="pessoa.telfixo.label" default="Telfixo" />
		
	</label>
	<g:textField name="telfixo" value="${pessoaInstance?.telfixo}"/>
</div>

<div class="fieldcontain ${hasErrors(bean: pessoaInstance, field: 'celular', 'error')} ">
	<label for="celular">
		<g:message code="pessoa.celular.label" default="Celular" />
		
	</label>
	<g:textField name="celular" value="${pessoaInstance?.celular}"/>
</div>

<div class="fieldcontain ${hasErrors(bean: pessoaInstance, field: 'cpf', 'error')} ">
	<label for="cpf">
		<g:message code="pessoa.cpf.label" default="Cpf" />
		
	</label>
	<g:textField name="cpf" value="${pessoaInstance?.cpf}"/>
</div>

<div class="fieldcontain ${hasErrors(bean: pessoaInstance, field: 'dataCriacao', 'error')} required">
	<label for="dataCriacao">
		<g:message code="pessoa.dataCriacao.label" default="Data Criacao" />
		<span class="required-indicator">*</span>
	</label>
	<g:datePicker name="dataCriacao" precision="day"  value="${pessoaInstance?.dataCriacao}"  />
</div>

<div class="fieldcontain ${hasErrors(bean: pessoaInstance, field: 'rg', 'error')} ">
	<label for="rg">
		<g:message code="pessoa.rg.label" default="Rg" />
		
	</label>
	<g:textField name="rg" value="${pessoaInstance?.rg}"/>
</div>

