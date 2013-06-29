package br.uemanet.entidades

class Curso {
	String descricao
	
	static hasMany = [turmas : Turma, alunos : Aluno]
	static belongsTo = [tutor : Tutor]
	
    static constraints = {
		descricao(maxSize:80, nullable:true)
    }
	String toString(){
		descricao
	}
}
