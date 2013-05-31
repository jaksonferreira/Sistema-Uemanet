package br.uemanet.entidades

import br.uemanet.info.Pessoa

class Funcionario extends Pessoa{
	String funcao
	Date admissao
	String obs
	Date dataCriacao

	static constraints = {
		funcao(inList:['coordenador','secretária','tutor','técnico','motorista'],blank:false)
		admissao(nullable:false)
		obs(maxSize:1000, nullable:true)
	}
}
