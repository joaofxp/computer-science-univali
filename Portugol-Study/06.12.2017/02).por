programa
{
/*	
Crie uma função recursiva que calcule e retorne a multiplicação de dois números
inteiros positivos, através de somas sucessivas (Ex.: 6 ? 4 = 4 + 4 + 4 + 4 + 4 + 4).
Depois disso, crie uma função não recursiva que realize a mesma operação
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
 * Esta seção do arquivo guarda informações do Portugol Studio.
 * Você pode apagá-la se estiver utilizando outro editor.
 * 
 * @POSICAO-CURSOR = 407; 
 * @PONTOS-DE-PARADA = ;
 * @SIMBOLOS-INSPECIONADOS = ;
 * @FILTRO-ARVORE-TIPOS-DE-DADO = inteiro, real, logico, cadeia, caracter, vazio;
 * @FILTRO-ARVORE-TIPOS-DE-SIMBOLO = variavel, vetor, matriz, funcao;
 */