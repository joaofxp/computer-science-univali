programa
{
	/*
		Fa�a um algoritmo que solicita um n�mero inteiro e exibe uma mensagem indicando se ele � positivo, negativo ou zero.
	*/
	funcao inicio()
	{
		inteiro numero
		escreva("Digite um n�mero inteiro: ")
		leia(numero)
		
		se(numero > 0)
			escreva("O n�mero � positivo!")
		senao se(numero < 0)
			escreva("O n�mero � negativo!")
		senao
			escreva("O n�mero � 0!")
	}
}
/* $$$ Portugol Studio $$$ 
 * 
 * Esta se��o do arquivo guarda informa��es do Portugol Studio.
 * Voc� pode apag�-la se estiver utilizando outro editor.
 * 
 * @POSICAO-CURSOR = 297; 
 * @PONTOS-DE-PARADA = ;
 * @SIMBOLOS-INSPECIONADOS = ;
 * @FILTRO-ARVORE-TIPOS-DE-DADO = inteiro, real, logico, cadeia, caracter, vazio;
 * @FILTRO-ARVORE-TIPOS-DE-SIMBOLO = variavel, vetor, matriz, funcao;
 */