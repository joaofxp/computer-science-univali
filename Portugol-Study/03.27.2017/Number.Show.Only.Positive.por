programa
{
	/*
		Faça um algoritmo que solicita ao usuário um número inteiro e exiba este número na tela. 
		Se o número for negativo, antes de ser exibido, ele deve ser transformado no equivalente positivo.
	 */
	funcao inicio()
	{
		inteiro numeroPositivo

		escreva("Digite um número inteiro: ")
		leia(numeroPositivo)
		se(numeroPositivo < 0)
			numeroPositivo *= -1

		escreva("Seu número é o: " + numeroPositivo)
	}
}
/* $$$ Portugol Studio $$$ 
 * 
 * Esta seção do arquivo guarda informações do Portugol Studio.
 * Você pode apagá-la se estiver utilizando outro editor.
 * 
 * @POSICAO-CURSOR = 200; 
 * @PONTOS-DE-PARADA = ;
 * @SIMBOLOS-INSPECIONADOS = ;
 * @FILTRO-ARVORE-TIPOS-DE-DADO = inteiro, real, logico, cadeia, caracter, vazio;
 * @FILTRO-ARVORE-TIPOS-DE-SIMBOLO = variavel, vetor, matriz, funcao;
 */