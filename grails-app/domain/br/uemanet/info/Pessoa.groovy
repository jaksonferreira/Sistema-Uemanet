package br.uemanet.info

class Pessoa {
	String nome
	String email
	String cpf
	String rg
	String endereco
	String cidade = "Balsas"
	String estado = "MA"
	Date dataNasc
	String telfixo
	String celular
	Date dataCriacao

	static constraints = {
		nome(maxLength:80, blank:false)
		email(email:true, nullable:true)
		dataNasc(nullable:true)
		endereco(maxLength:80, nullable:true)
		cidade(maxLength:80, nullable:true)
		estado(inList:['AC','AL','AP','AM','BA','CE','DF','ES','GO','MA','MT','MS',
			'MG','PA','PB','PR','PE','PI','RJ','RN','RS','RO','RR','SC','SP','SE','TO'], nullable:true)
		telfixo(/*matches:"\\(?\\d{2}\\)?\\d{4}-\\d{4}",*/nullable:true)
		celular(nullable:true)
	}
	static searchable = true
	
	String toString(){
		nome
	}
}
