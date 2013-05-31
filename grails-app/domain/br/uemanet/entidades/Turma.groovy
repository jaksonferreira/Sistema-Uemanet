package br.uemanet.entidades

class Turma {
	Curso curso
	Tutor tutor
	
	static hasMany = [alunos: Aluno]

    static constraints = {
    }
}
