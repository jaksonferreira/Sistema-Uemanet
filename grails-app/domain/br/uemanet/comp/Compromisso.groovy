package br.uemanet.comp

import br.uemanet.entidades.Turma
import br.uemanet.entidades.Tutor

class Compromisso {
	Date dataComp
	String descricao
	Turma turma
	Tutor tutor
	Date dataCriacao

    static constraints = {
		descricao(maxSize:100, nullable:false)
    }
}
