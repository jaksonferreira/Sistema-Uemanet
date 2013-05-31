package br.uemanet.entidades

class Curso {
	String descricao
	
	static hasMany = [cursos : Curso]
	
    static constraints = {
		descricao(maxSize:80, nullable:true)
    }
	String toString(){
		descricao
	}
}
