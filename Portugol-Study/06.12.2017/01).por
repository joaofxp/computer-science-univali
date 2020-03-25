programa
{
	funcao inicio()
	{
		inteiro numeroSomatoria = CalcularSomatorias(5)
		escreva(numeroSomatoria)
	}

	funcao inteiro CalcularSomatorias(inteiro n)
	{
		se(n == 0)
			retorne 0
		senao
			retorne n + CalcularSomatorias(n-1)
	}
}
/* $$$ Portugol Studio $$$ 
 * 
 * Esta seção do arquivo guarda informações do Portugol Studio.
 * Você pode apagá-la se estiver utilizando outro editor.
 * 
 * @POSICAO-CURSOR = 79; 
 * @PONTOS-DE-PARADA = ;
 * @SIMBOLOS-INSPECIONADOS = ;
 * @FILTRO-ARVORE-TIPOS-DE-DADO = inteiro, real, logico, cadeia, caracter, vazio;
 * @FILTRO-ARVORE-TIPOS-DE-SIMBOLO = variavel, vetor, matriz, funcao;
 */