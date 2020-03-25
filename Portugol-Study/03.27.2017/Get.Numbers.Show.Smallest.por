programa
{
	/*
		Faça um algoritmo que solicita ao usuário três números e exibe na tela apenas o menor deles 
		(considere que o usuário irá digitar três números diferentes).
	*/
	funcao inicio()
	{
		real numero1,numero2,numero3
		escreva("Digite três números diferentes:" +"\n")
		leia(numero1,numero2,numero3)

		se(numero1 < numero2 e numero1 < numero3)
			escreva(numero1 + " É o menor de todos os números")
		senao se(numero2 < numero1 e numero2 < numero3)
			escreva(numero2 + " É o menor de todos os números")
		senao
			escreva(numero3 + " É o menor de todos os números")
	}
}
/* $$$ Portugol Studio $$$ 
 * 
 * Esta seção do arquivo guarda informações do Portugol Studio.
 * Você pode apagá-la se estiver utilizando outro editor.
 * 
 * @POSICAO-CURSOR = 284; 
 * @PONTOS-DE-PARADA = ;
 * @SIMBOLOS-INSPECIONADOS = ;
 * @FILTRO-ARVORE-TIPOS-DE-DADO = inteiro, real, logico, cadeia, caracter, vazio;
 * @FILTRO-ARVORE-TIPOS-DE-SIMBOLO = variavel, vetor, matriz, funcao;
 */