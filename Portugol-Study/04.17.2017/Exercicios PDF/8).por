programa
{
	inclua biblioteca Util --> u
//Escreva um algoritmo que exiba 20 n�meros aleat�rios sorteados entre 1 e 50 (Dica: utilize a biblioteca Util).
	funcao inicio()
	{
		inteiro contagem = 0
		inteiro valorInicial = 1
		inteiro valorFinal = 50
		
		faca
		{
			escreva(u.sorteia(valorInicial,valorFinal), "\n")
			contagem++
		} enquanto (contagem < 50)
	}
}
/* $$$ Portugol Studio $$$ 
 * 
 * Esta se��o do arquivo guarda informa��es do Portugol Studio.
 * Voc� pode apag�-la se estiver utilizando outro editor.
 * 
 * @POSICAO-CURSOR = 335; 
 * @PONTOS-DE-PARADA = ;
 * @SIMBOLOS-INSPECIONADOS = ;
 * @FILTRO-ARVORE-TIPOS-DE-DADO = inteiro, real, logico, cadeia, caracter, vazio;
 * @FILTRO-ARVORE-TIPOS-DE-SIMBOLO = variavel, vetor, matriz, funcao;
 */