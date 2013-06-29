package br.uemanet.entidades

import br.uemanet.info.Pessoa

class Aluno extends Pessoa{
	String matricula

	static constraints = {
		matricula(nullable:false)
	}
}