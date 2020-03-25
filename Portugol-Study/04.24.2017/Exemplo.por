programa
{
	funcao inicio()
	{
		/*		 
		Solicitar 10 numero reais
		Mostrar média
		Mostrar todos os numeros digitados acima da média
		*/

		real n1,n2,n3,n4,n5,n6,n7,n8,n9,n10,media

		escreva("Digite 10 números reais:\n")
		leia(n1,n2,n3,n4,n5,n6,n7,n8,n9,n10)

		media = (n1+n2+n3+n4+n5+n6+n7+n8+n9+n10)/10

		escreva("Maiores: \n")
		
		se(media < n1)
			escreva(n1)
		se(media < n2)
			escreva(n2)
		se(media < n3)
			escreva(n3)
		se(media < n4)
			escreva(n4)
		se(media < n5)
			escreva(n5)
		se(media < n6)
			escreva(n6)
		se(media < n7)
			escreva(n7)
		se(media < n8)
			escreva(n8)
		se(media < n9)
			escreva(n9)
		se(media < n10)
			escreva(n10)
	}
}
/* $$$ Portugol Studio $$$ 
 * 
 * Esta seção do arquivo guarda informações do Portugol Studio.
 * Você pode apagá-la se estiver utilizando outro editor.
 * 
 * @POSICAO-CURSOR = 666; 
 * @PONTOS-DE-PARADA = ;
 * @SIMBOLOS-INSPECIONADOS = ;
 * @FILTRO-ARVORE-TIPOS-DE-DADO = inteiro, real, logico, cadeia, caracter, vazio;
 * @FILTRO-ARVORE-TIPOS-DE-SIMBOLO = variavel, vetor, matriz, funcao;
 */