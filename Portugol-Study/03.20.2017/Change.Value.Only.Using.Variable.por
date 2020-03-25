programa
{
	/*Solicitar dois numeros inteiros
	 * Armazenar nas variaveis A e B
	 * Utilizando apenas operações de atribuções entre variáveis
	 * troque os seus conteúdos fazendo com que
	 * o valor que está em A
	 * passe para B
	 * e vice e versa
	 * Ao final exiba o valor de A e B
	*/
	funcao inicio()
	{
		inteiro A
		inteiro B
		inteiro C

		escreva("Digite um número inteiro para A: ")
		leia(A)
		escreva("Digite um número inteiro para B: ")
		leia(B)
		C = A
		A = B
		B = C
		escreva("O valor de A é: " + A + " e o valor de B é: " + B + ".")
	}
}
/* $$$ Portugol Studio $$$ 
 * 
 * Esta seção do arquivo guarda informações do Portugol Studio.
 * Você pode apagá-la se estiver utilizando outro editor.
 * 
 * @POSICAO-CURSOR = 312; 
 * @PONTOS-DE-PARADA = ;
 * @SIMBOLOS-INSPECIONADOS = ;
 * @FILTRO-ARVORE-TIPOS-DE-DADO = inteiro, real, logico, cadeia, caracter, vazio;
 * @FILTRO-ARVORE-TIPOS-DE-SIMBOLO = variavel, vetor, matriz, funcao;
 */