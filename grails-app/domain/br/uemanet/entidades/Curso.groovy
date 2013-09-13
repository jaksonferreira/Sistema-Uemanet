package br.uemanet.entidades

class Curso {
	String descricao
	
	static hasMany = [turmas : Turma, alunos : Aluno]
	
    static constraints = {
		descricao(maxSize:80, nullable:true)
    }
	String toString(){
		descricao
	}
}
