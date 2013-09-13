package br.uemanet.entidades

import br.uemanet.info.Pessoa

class Funcionario extends Pessoa{
	String funcao
	Date admissao
	String obs
	Date dataCriacao
	
	static hasMany = [turmas : Turma]

	static constraints = {
		funcao(inList:['coordenador','secretaria','tecnico','motorista'],blank:true)
		admissao(nullable:false)
		obs(maxSize:1000, nullable:true)
	}
}
