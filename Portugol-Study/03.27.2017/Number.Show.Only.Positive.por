programa
{
	/*
		Fa�a um algoritmo que solicita ao usu�rio um n�mero inteiro e exiba este n�mero na tela. 
		Se o n�mero for negativo, antes de ser exibido, ele deve ser transformado no equivalente positivo.
	 */
	funcao inicio()
	{
		inteiro numeroPositivo

		escreva("Digite um n�mero inteiro: ")
		leia(numeroPositivo)
		se(numeroPositivo < 0)
			numeroPositivo *= -1

		escreva("Seu n�mero � o: " + numeroPositivo)
	}
}
/* $$$ Portugol Studio $$$ 
 * 
 * Esta se��o do arquivo guarda informa��es do Portugol Studio.
 * Voc� pode apag�-la se estiver utilizando outro editor.
 * 
 * @POSICAO-CURSOR = 200; 
 * @PONTOS-DE-PARADA = ;
 * @SIMBOLOS-INSPECIONADOS = ;
 * @FILTRO-ARVORE-TIPOS-DE-DADO = inteiro, real, logico, cadeia, caracter, vazio;
 * @FILTRO-ARVORE-TIPOS-DE-SIMBOLO = variavel, vetor, matriz, funcao;
 */