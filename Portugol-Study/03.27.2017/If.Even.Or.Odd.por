programa
{
	/*
		Fa�a um algoritmo que solicita ao usu�rio um valor inteiro e exibe uma mensagem informando se o n�mero � par ou �mpar.
	*/
	
	funcao inicio()
	{
		inteiro numeroIdentificador
		escreva("Digite um n�mero inteiro: ")
		leia(numeroIdentificador)

		se(numeroIdentificador % 2 == 0)
			escreva("O n�mero � par!")
		senao
			escreva("O n�mero � impar!")			
	}
}
/* $$$ Portugol Studio $$$ 
 * 
 * Esta se��o do arquivo guarda informa��es do Portugol Studio.
 * Voc� pode apag�-la se estiver utilizando outro editor.
 * 
 * @POSICAO-CURSOR = 165; 
 * @PONTOS-DE-PARADA = ;
 * @SIMBOLOS-INSPECIONADOS = ;
 * @FILTRO-ARVORE-TIPOS-DE-DADO = inteiro, real, logico, cadeia, caracter, vazio;
 * @FILTRO-ARVORE-TIPOS-DE-SIMBOLO = variavel, vetor, matriz, funcao;
 */