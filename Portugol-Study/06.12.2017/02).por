programa
{
/*	
Crie uma fun��o recursiva que calcule e retorne a multiplica��o de dois n�meros
inteiros positivos, atrav�s de somas sucessivas (Ex.: 6 ? 4 = 4 + 4 + 4 + 4 + 4 + 4).
Depois disso, crie uma fun��o n�o recursiva que realize a mesma opera��o
*/
	funcao inicio()
	{
		inteiro somaRecursivo = multiplicacaoRecursiva(5,4)
		inteiro somaPadrao = multiplicacaoPadrao(5,4)
		escreva(somaRecursivo)
	}

	funcao inteiro multiplicacaoRecursiva(inteiro num1,inteiro num2)
	{
		se(num1 == 1)
			retorne num2
		senao
			retorne num2 + multiplicacaoRecursiva(num1 - 1 ,num2)
	}

	funcao inteiro multiplicacaoPadrao(inteiro num1, inteiro num2)
	{
		retorne num1*num2
	}
}
/* $$$ Portugol Studio $$$ 
 * 
 * Esta se��o do arquivo guarda informa��es do Portugol Studio.
 * Voc� pode apag�-la se estiver utilizando outro editor.
 * 
 * @POSICAO-CURSOR = 407; 
 * @PONTOS-DE-PARADA = ;
 * @SIMBOLOS-INSPECIONADOS = ;
 * @FILTRO-ARVORE-TIPOS-DE-DADO = inteiro, real, logico, cadeia, caracter, vazio;
 * @FILTRO-ARVORE-TIPOS-DE-SIMBOLO = variavel, vetor, matriz, funcao;
 */