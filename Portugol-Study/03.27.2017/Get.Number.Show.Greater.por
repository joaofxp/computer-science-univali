programa
{
	/*
		Fa�a um algoritmo que solicite dois n�meros ao usu�rio e exiba apenas o maior deles. Caso eles sejam iguais exiba a mensagem ?N�meros Iguais?.
	*/
	funcao inicio()
	{
		real numero1,numero2
		escreva("Digite dois n�meros:" +"\n")
		leia(numero1,numero2)
		
		se(numero1 > numero2)
			escreva(numero1 + " � maior")
		senao se(numero2 > numero1)
			escreva(numero2 + " � maior")
		senao
			escreva("Os n�meros s�o iguais")
	}
}
/* $$$ Portugol Studio $$$ 
 * 
 * Esta se��o do arquivo guarda informa��es do Portugol Studio.
 * Voc� pode apag�-la se estiver utilizando outro editor.
 * 
 * @POSICAO-CURSOR = 405; 
 * @PONTOS-DE-PARADA = ;
 * @SIMBOLOS-INSPECIONADOS = ;
 * @FILTRO-ARVORE-TIPOS-DE-DADO = inteiro, real, logico, cadeia, caracter, vazio;
 * @FILTRO-ARVORE-TIPOS-DE-SIMBOLO = variavel, vetor, matriz, funcao;
 */