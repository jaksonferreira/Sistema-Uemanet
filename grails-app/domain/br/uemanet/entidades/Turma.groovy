package br.uemanet.entidades

class Turma {
	String periodo

	static hasMany = [alunos: Aluno]
	static belongsTo = [tutor : Tutor, curso : Curso]
	
    static constraints = {periodo(inList:['1','2','3','4','5','6','7','8'], nullable:true)
		
    }
}
