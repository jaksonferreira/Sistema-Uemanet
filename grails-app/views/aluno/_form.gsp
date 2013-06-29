<%@ page import="br.uemanet.entidades.Aluno" %>



<div class="fieldcontain ${hasErrors(bean: alunoInstance, field: 'nome', 'error')} required">
	<label for="nome">
		<g:message code="aluno.nome.label" default="Nome" />
		<span class="required-indicator">*</span>
	</label>
	<g:textField name="nome" required="" value="${alunoInstance?.nome}"/>
</div>

<div class="fieldcontain ${hasErrors(bean: alunoInstance, field: 'email', 'error')} ">
	<label for="email">
		<g:message code="aluno.email.label" default="E-mail" />
		
	</label>
	<g:field type="email" name="email" value="${alunoInstance?.email}"/>
</div>

<div class="fieldcontain ${hasErrors(bean: alunoInstance, field: 'dataNasc', 'error')} ">
	<label for="dataNasc">
		<g:message code="aluno.dataNasc.label" default="Data de Nascimento" />
		
	</label>
	<g:datePicker name="dataNasc" precision="day"  value="${alunoInstance?.dataNasc}" default="none" noSelection="['': '']" />
</div>

<div class="fieldcontain ${hasErrors(bean: alunoInstance, field: 'endereco', 'error')} ">
	<label for="endereco">
		<g:message code="aluno.endereco.label" default="Endereço" />
		
	</label>
	<g:textField name="endereco" value="${alunoInstance?.endereco}"/>
</div>

<div class="fieldcontain ${hasErrors(bean: alunoInstance, field: 'cidade', 'error')} ">
	<label for="cidade">
		<g:message code="aluno.cidade.label" default="Cidade" />
		
	</label>
	<g:textField name="cidade" value="${alunoInstance?.cidade}"/>
</div>

<div class="fieldcontain ${hasErrors(bean: alunoInstance, field: 'estado', 'error')} ">
	<label for="estado">
		<g:message code="aluno.estado.label" default="Estado" />
		
	</label>
	<g:select name="estado" from="${alunoInstance.constraints.estado.inList}" value="${alunoInstance?.estado}" valueMessagePrefix="aluno.estado" noSelection="['': '']"/>
</div>

<div class="fieldcontain ${hasErrors(bean: alunoInstance, field: 'telfixo', 'error')} ">
	<label for="telfixo">
		<g:message code="aluno.telfixo.label" default="Telefone" />
		
	</label>
	<g:textField name="telfixo" value="${alunoInstance?.telfixo}"/>
</div>

<div class="fieldcontain ${hasErrors(bean: alunoInstance, field: 'celular', 'error')} ">
	<label for="celular">
		<g:message code="aluno.celular.label" default="Celular" />
		
	</label>
	<g:textField name="celular" value="${alunoInstance?.celular}"/>
</div>

<div class="fieldcontain ${hasErrors(bean: alunoInstance, field: 'cpf', 'error')} ">
	<label for="cpf">
		<g:message code="aluno.cpf.label" default="CPF" />
		
	</label>
	<g:textField name="cpf" value="${alunoInstance?.cpf}"/>
</div>

<div class="fieldcontain ${hasErrors(bean: alunoInstance, field: 'rg', 'error')} ">
	<label for="rg">
		<g:message code="aluno.rg.label" default="RG" />
		
	</label>
	<g:textField name="rg" value="${alunoInstance?.rg}"/>
</div>

<div class="fieldcontain ${hasErrors(bean: alunoInstance, field: 'matricula', 'error')} ">
	<label for="matricula">
		<g:message code="aluno.matricula.label" default="Matricula" />
		
	</label>
	<g:textField name="matricula" value="${alunoInstance?.matricula}"/>
</div>

<div class="fieldcontain ${hasErrors(bean: alunoInstance, field: 'dataCriacao', 'error')} required">
	<label for="dataCriacao">
		<g:message code="aluno.dataCriacao.label" default="Data da Criação" />
		<span class="required-indicator">*</span>
	</label>
	<g:datePicker name="dataCriacao" precision="day"  value="${alunoInstance?.dataCriacao}"  />
</div>
