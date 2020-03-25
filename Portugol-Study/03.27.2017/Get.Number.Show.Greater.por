programa
{
	/*
		Faça um algoritmo que solicite dois números ao usuário e exiba apenas o maior deles. Caso eles sejam iguais exiba a mensagem ?Números Iguais?.
	*/
	funcao inicio()
	{
		real numero1,numero2
		escreva("Digite dois números:" +"\n")
		leia(numero1,numero2)
		
		se(numero1 > numero2)
			escreva(numero1 + " É maior")
		senao se(numero2 > numero1)
			escreva(numero2 + " É maior")
		senao
			escreva("Os números são iguais")
	}
}
/* $$$ Portugol Studio $$$ 
 * 
 * Esta seção do arquivo guarda informações do Portugol Studio.
 * Você pode apagá-la se estiver utilizando outro editor.
 * 
 * @POSICAO-CURSOR = 405; 
 * @PONTOS-DE-PARADA = ;
 * @SIMBOLOS-INSPECIONADOS = ;
 * @FILTRO-ARVORE-TIPOS-DE-DADO = inteiro, real, logico, cadeia, caracter, vazio;
 * @FILTRO-ARVORE-TIPOS-DE-SIMBOLO = variavel, vetor, matriz, funcao;
 */