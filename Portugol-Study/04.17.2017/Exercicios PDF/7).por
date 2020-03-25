programa
{
//Escreva um algoritmo para exibir todas as tabuadas de 1 até 10
	funcao inicio()
	{
		inteiro numeroAtual = 1
		inteiro tabuada = 1
		inteiro multiplicador = 1

		faca
		{
			numeroAtual = tabuada * multiplicador
			escreva(numeroAtual , "\n")
			se(multiplicador == 10 e tabuada != 10)
			{
				multiplicador = 1
				tabuada++				
			} senao
				multiplicador++

		} enquanto(numeroAtual != 100)
	}
}
/* $$$ Portugol Studio $$$ 
 * 
 * Esta seção do arquivo guarda informações do Portugol Studio.
 * Você pode apagá-la se estiver utilizando outro editor.
 * 
 * @POSICAO-CURSOR = 328; 
 * @PONTOS-DE-PARADA = ;
 * @SIMBOLOS-INSPECIONADOS = ;
 * @FILTRO-ARVORE-TIPOS-DE-DADO = inteiro, real, logico, cadeia, caracter, vazio;
 * @FILTRO-ARVORE-TIPOS-DE-SIMBOLO = variavel, vetor, matriz, funcao;
 */