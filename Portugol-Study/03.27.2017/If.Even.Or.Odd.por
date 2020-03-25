programa
{
	/*
		Faça um algoritmo que solicita ao usuário um valor inteiro e exibe uma mensagem informando se o número é par ou ímpar.
	*/
	
	funcao inicio()
	{
		inteiro numeroIdentificador
		escreva("Digite um número inteiro: ")
		leia(numeroIdentificador)

		se(numeroIdentificador % 2 == 0)
			escreva("O número é par!")
		senao
			escreva("O número é impar!")			
	}
}
/* $$$ Portugol Studio $$$ 
 * 
 * Esta seção do arquivo guarda informações do Portugol Studio.
 * Você pode apagá-la se estiver utilizando outro editor.
 * 
 * @POSICAO-CURSOR = 165; 
 * @PONTOS-DE-PARADA = ;
 * @SIMBOLOS-INSPECIONADOS = ;
 * @FILTRO-ARVORE-TIPOS-DE-DADO = inteiro, real, logico, cadeia, caracter, vazio;
 * @FILTRO-ARVORE-TIPOS-DE-SIMBOLO = variavel, vetor, matriz, funcao;
 */