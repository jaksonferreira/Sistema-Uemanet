package br.uemanet.entidades

import br.uemanet.info.Pessoa

class Tutor extends Funcionario{
	String obs
	Date dataCriacao

    static constraints = {
		obs(maxSize:1000, nullable:true)
    }
	
	String toString(){
		nome
	}
}
