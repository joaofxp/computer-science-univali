programa
{
//Leia um n�mero inteiro de 1 a 7 e informe o dia da semana correspondente, sendo domingo o dia de
//n�mero 1. Se o n�mero n�o corresponder a um dia da semana, mostre uma mensagem de erro. 
	funcao inicio()
	{
		inteiro dia

		escreva("Digite um dia de 1 a 7, sendo domingo o dia 1:\n")
		leia(dia)
		
		escolha(dia)
		{
			caso 1:
				escreva("Hoje � domingo!")
				pare
			caso 2:
				escreva("Hoje � segunda!")
				pare
			caso 3:
				escreva("Hoje � ter�a!")
				pare
			caso 4:
				escreva("Hoje � quarta!")
				pare
			caso 5:
				escreva("Hoje � quinta!")
				pare
			caso 6:
				escreva("Hoje � sexta!")
				pare
			caso 7:
				escreva("Hoje � s�bado!")
				pare
			caso contrario:
				escreva("Erro! Dia n�o encontrado no sistema.")
				pare
		}
	}
}
/* $$$ Portugol Studio $$$ 
 * 
 * Esta se��o do arquivo guarda informa��es do Portugol Studio.
 * Voc� pode apag�-la se estiver utilizando outro editor.
 * 
 * @POSICAO-CURSOR = 754; 
 * @PONTOS-DE-PARADA = ;
 * @SIMBOLOS-INSPECIONADOS = ;
 * @FILTRO-ARVORE-TIPOS-DE-DADO = inteiro, real, logico, cadeia, caracter, vazio;
 * @FILTRO-ARVORE-TIPOS-DE-SIMBOLO = variavel, vetor, matriz, funcao;
 */