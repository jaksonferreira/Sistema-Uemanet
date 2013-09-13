package br.uemanet.comp

import br.uemanet.entidades.Funcionario
import br.uemanet.entidades.Turma

class Compromisso {
	Date dataComp
	String descricao
	Turma turma
	Funcionario tutor
	Date dataCriacao

    static constraints = {
		descricao(maxSize:100, nullable:false)
    }
}
