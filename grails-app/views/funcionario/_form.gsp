<%@ page import="br.uemanet.entidades.Funcionario" %>

<div class="fieldcontain ${hasErrors(bean: funcionarioInstance, field: 'nome', 'error')} required">
	<label for="nome">
		<g:message code="funcionario.nome.label" default="Nome" />
		<span class="required-indicator">*</span>
	</label>
	<g:textField name="nome" required="" value="${funcionarioInstance?.nome}"/>
</div>

<div class="fieldcontain ${hasErrors(bean: funcionarioInstance, field: 'email', 'error')} ">
	<label for="email">
		<g:message code="funcionario.email.label" default="E-mail" />
		
	</label>
	<g:field type="email" name="email" value="${funcionarioInstance?.email}"/>
</div>

<div class="fieldcontain ${hasErrors(bean: funcionarioInstance, field: 'dataNasc', 'error')} ">
	<label for="dataNasc">
		<g:message code="funcionario.dataNasc.label" default="Data de Nascimento" />
		
	</label>
	<g:datePicker name="dataNasc" precision="day"  value="${funcionarioInstance?.dataNasc}" default="none" noSelection="['': '']" />
</div>

<div class="fieldcontain ${hasErrors(bean: funcionarioInstance, field: 'endereco', 'error')} ">
	<label for="endereco">
		<g:message code="funcionario.endereco.label" default="Endereço" />
		
	</label>
	<g:textField name="endereco" value="${funcionarioInstance?.endereco}"/>
</div>

<div class="fieldcontain ${hasErrors(bean: funcionarioInstance, field: 'cidade', 'error')} ">
	<label for="cidade">
		<g:message code="funcionario.cidade.label" default="Cidade" />
		
	</label>
	<g:textField name="cidade" value="${funcionarioInstance?.cidade}"/>
</div>

<div class="fieldcontain ${hasErrors(bean: funcionarioInstance, field: 'estado', 'error')} ">
	<label for="estado">
		<g:message code="funcionario.estado.label" default="Estado" />
		
	</label>
	<g:select name="estado" from="${funcionarioInstance.constraints.estado.inList}" value="${funcionarioInstance?.estado}" valueMessagePrefix="funcionario.estado" noSelection="['': '']"/>
</div>

<div class="fieldcontain ${hasErrors(bean: funcionarioInstance, field: 'telfixo', 'error')} ">
	<label for="telfixo">
		<g:message code="funcionario.telfixo.label" default="Telefone" />
		
	</label>
	<g:textField name="telfixo" value="${funcionarioInstance?.telfixo}"/>
</div>

<div class="fieldcontain ${hasErrors(bean: funcionarioInstance, field: 'celular', 'error')} ">
	<label for="celular">
		<g:message code="funcionario.celular.label" default="Celular" />
		
	</label>
	<g:textField name="celular" value="${funcionarioInstance?.celular}"/>
</div>

<div class="fieldcontain ${hasErrors(bean: funcionarioInstance, field: 'funcao', 'error')} required">
	<label for="funcao">
		<g:message code="funcionario.funcao.label" default="Função" />
		<span class="required-indicator">*</span>
	</label>
	<g:select name="funcao" from="${funcionarioInstance.constraints.funcao.inList}" required="" value="${funcionarioInstance?.funcao}" valueMessagePrefix="funcionario.funcao"/>
</div>

<div class="fieldcontain ${hasErrors(bean: funcionarioInstance, field: 'admissao', 'error')} required">
	<label for="admissao">
		<g:message code="funcionario.admissao.label" default="Admissão" />
		<span class="required-indicator">*</span>
	</label>
	<g:datePicker name="admissao" precision="day"  value="${funcionarioInstance?.admissao}"  />
</div>

<div class="fieldcontain ${hasErrors(bean: funcionarioInstance, field: 'cpf', 'error')} ">
	<label for="cpf">
		<g:message code="funcionario.cpf.label" default="CPF" />
		
	</label>
	<g:textField name="cpf" value="${funcionarioInstance?.cpf}"/>
</div>

<div class="fieldcontain ${hasErrors(bean: funcionarioInstance, field: 'rg', 'error')} ">
	<label for="rg">
		<g:message code="funcionario.rg.label" default="RG" />
		
	</label>
	<g:textField name="rg" value="${funcionarioInstance?.rg}"/>
</div>

<div class="fieldcontain ${hasErrors(bean: funcionarioInstance, field: 'obs', 'error')} ">
	<label for="obs">
		<g:message code="funcionario.obs.label" default="Observação" />
		
	</label>
	<g:textArea name="obs" cols="40" rows="5" maxlength="1000" value="${funcionarioInstance?.obs}"/>
</div>

<div class="fieldcontain ${hasErrors(bean: funcionarioInstance, field: 'dataCriacao', 'error')} required">
	<label for="dataCriacao">
		<g:message code="funcionario.dataCriacao.label" default="Data Criacao" />
		<span class="required-indicator">*</span>
	</label>
	<g:datePicker name="dataCriacao" precision="day"  value="${funcionarioInstance?.dataCriacao}"  />
</div>