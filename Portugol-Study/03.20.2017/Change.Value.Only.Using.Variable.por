programa
{
	/*Solicitar dois numeros inteiros
	 * Armazenar nas variaveis A e B
	 * Utilizando apenas opera��es de atribu��es entre vari�veis
	 * troque os seus conte�dos fazendo com que
	 * o valor que est� em A
	 * passe para B
	 * e vice e versa
	 * Ao final exiba o valor de A e B
	*/
	funcao inicio()
	{
		inteiro A
		inteiro B
		inteiro C

		escreva("Digite um n�mero inteiro para A: ")
		leia(A)
		escreva("Digite um n�mero inteiro para B: ")
		leia(B)
		C = A
		A = B
		B = C
		escreva("O valor de A �: " + A + " e o valor de B �: " + B + ".")
	}
}
/* $$$ Portugol Studio $$$ 
 * 
 * Esta se��o do arquivo guarda informa��es do Portugol Studio.
 * Voc� pode apag�-la se estiver utilizando outro editor.
 * 
 * @POSICAO-CURSOR = 312; 
 * @PONTOS-DE-PARADA = ;
 * @SIMBOLOS-INSPECIONADOS = ;
 * @FILTRO-ARVORE-TIPOS-DE-DADO = inteiro, real, logico, cadeia, caracter, vazio;
 * @FILTRO-ARVORE-TIPOS-DE-SIMBOLO = variavel, vetor, matriz, funcao;
 */