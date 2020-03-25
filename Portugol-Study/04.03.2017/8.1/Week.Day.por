programa
{
//Leia um número inteiro de 1 a 7 e informe o dia da semana correspondente, sendo domingo o dia de
//número 1. Se o número não corresponder a um dia da semana, mostre uma mensagem de erro. 
	funcao inicio()
	{
		inteiro dia

		escreva("Digite um dia de 1 a 7, sendo domingo o dia 1:\n")
		leia(dia)
		
		escolha(dia)
		{
			caso 1:
				escreva("Hoje é domingo!")
				pare
			caso 2:
				escreva("Hoje é segunda!")
				pare
			caso 3:
				escreva("Hoje é terça!")
				pare
			caso 4:
				escreva("Hoje é quarta!")
				pare
			caso 5:
				escreva("Hoje é quinta!")
				pare
			caso 6:
				escreva("Hoje é sexta!")
				pare
			caso 7:
				escreva("Hoje é sábado!")
				pare
			caso contrario:
				escreva("Erro! Dia não encontrado no sistema.")
				pare
		}
	}
}
/* $$$ Portugol Studio $$$ 
 * 
 * Esta seção do arquivo guarda informações do Portugol Studio.
 * Você pode apagá-la se estiver utilizando outro editor.
 * 
 * @POSICAO-CURSOR = 754; 
 * @PONTOS-DE-PARADA = ;
 * @SIMBOLOS-INSPECIONADOS = ;
 * @FILTRO-ARVORE-TIPOS-DE-DADO = inteiro, real, logico, cadeia, caracter, vazio;
 * @FILTRO-ARVORE-TIPOS-DE-SIMBOLO = variavel, vetor, matriz, funcao;
 */