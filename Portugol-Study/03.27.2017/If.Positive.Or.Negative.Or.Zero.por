programa
{
	/*
		Faça um algoritmo que solicita um número inteiro e exibe uma mensagem indicando se ele é positivo, negativo ou zero.
	*/
	funcao inicio()
	{
		inteiro numero
		escreva("Digite um número inteiro: ")
		leia(numero)
		
		se(numero > 0)
			escreva("O número é positivo!")
		senao se(numero < 0)
			escreva("O número é negativo!")
		senao
			escreva("O número é 0!")
	}
}
/* $$$ Portugol Studio $$$ 
 * 
 * Esta seção do arquivo guarda informações do Portugol Studio.
 * Você pode apagá-la se estiver utilizando outro editor.
 * 
 * @POSICAO-CURSOR = 297; 
 * @PONTOS-DE-PARADA = ;
 * @SIMBOLOS-INSPECIONADOS = ;
 * @FILTRO-ARVORE-TIPOS-DE-DADO = inteiro, real, logico, cadeia, caracter, vazio;
 * @FILTRO-ARVORE-TIPOS-DE-SIMBOLO = variavel, vetor, matriz, funcao;
 */