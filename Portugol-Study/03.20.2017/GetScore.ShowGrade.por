programa
{
	/*
	 * prova 1 = peso 2
	 * prova 2 = peso 2
	 * prova 3 = peso 6
	 * Solicitar as notas de cada prova
	 * Calcular
	 * Exbir a M final
	 */
	funcao inicio()
	{
		real prova1Nota = 0.0
		real prova2Nota = 0.0
		real prova3Nota = 0.0
		real mediaFinal = 0.0
		
		escreva("Digite a nota da prova 1:")
		leia(prova1Nota)
		prova1Nota = prova1Nota * 2 / 10
		escreva("Digite a nota da prova 2:")
		leia(prova2Nota)
		prova2Nota = prova2Nota * 2 / 10
		escreva("Digite a nota da prova 3:")
		leia(prova3Nota)
		prova3Nota = prova3Nota * 6 / 10
		mediaFinal = prova1Nota + prova2Nota + prova3Nota
		escreva("Sua média final é: "+ mediaFinal)
	}
}
/* $$$ Portugol Studio $$$ 
 * 
 * Esta seção do arquivo guarda informações do Portugol Studio.
 * Você pode apagá-la se estiver utilizando outro editor.
 * 
 * @POSICAO-CURSOR = 154; 
 * @PONTOS-DE-PARADA = ;
 * @SIMBOLOS-INSPECIONADOS = ;
 * @FILTRO-ARVORE-TIPOS-DE-DADO = inteiro, real, logico, cadeia, caracter, vazio;
 * @FILTRO-ARVORE-TIPOS-DE-SIMBOLO = variavel, vetor, matriz, funcao;
 */