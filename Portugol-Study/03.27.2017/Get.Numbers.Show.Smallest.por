programa
{
	/*
		Fa�a um algoritmo que solicita ao usu�rio tr�s n�meros e exibe na tela apenas o menor deles 
		(considere que o usu�rio ir� digitar tr�s n�meros diferentes).
	*/
	funcao inicio()
	{
		real numero1,numero2,numero3
		escreva("Digite tr�s n�meros diferentes:" +"\n")
		leia(numero1,numero2,numero3)

		se(numero1 < numero2 e numero1 < numero3)
			escreva(numero1 + " � o menor de todos os n�meros")
		senao se(numero2 < numero1 e numero2 < numero3)
			escreva(numero2 + " � o menor de todos os n�meros")
		senao
			escreva(numero3 + " � o menor de todos os n�meros")
	}
}
/* $$$ Portugol Studio $$$ 
 * 
 * Esta se��o do arquivo guarda informa��es do Portugol Studio.
 * Voc� pode apag�-la se estiver utilizando outro editor.
 * 
 * @POSICAO-CURSOR = 284; 
 * @PONTOS-DE-PARADA = ;
 * @SIMBOLOS-INSPECIONADOS = ;
 * @FILTRO-ARVORE-TIPOS-DE-DADO = inteiro, real, logico, cadeia, caracter, vazio;
 * @FILTRO-ARVORE-TIPOS-DE-SIMBOLO = variavel, vetor, matriz, funcao;
 */