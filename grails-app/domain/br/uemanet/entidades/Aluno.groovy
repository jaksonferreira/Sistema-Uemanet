package br.uemanet.entidades

import br.uemanet.info.Pessoa

class Aluno extends Pessoa{
	String matricula
	Curso curso
	
	static constraints = {
		matricula(nullable:false)
	}
	String toString(){
		nome
	}
}