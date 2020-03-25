programa
{
/*
Faça uma função que receba por referência três variáveis inteiras e realize a
ordenação crescente dos parâmetros por meio de trocas (ao final da execução da
função, o menor valor deverá estar na variável passada como primeiro parâmetro, o
segundo menor valor na variável do segundo parâmetro e o maior, na variável do
terceiro parâmetro). Faça um programa que chame essa função e exiba os novos
valores das variáveis.

*/
	funcao inicio()
	{
		inteiro val1 = 2, val2 = 5, val3 = 1
		ordenarCrescente(val1,val2,val3)
		exibirValores(val1,val2,val3)
	}

	funcao ordenarCrescente(inteiro &val1, inteiro &val2, inteiro &val3)
	{
		para(inteiro i = 0; i < 3;i++)
		{
			inteiro valorAnterior
			se(val1 > val2)
			{
				valorAnterior = val1
				val1 = val2
				val2 = valorAnterior
			}
			senao se(val2 > val3)
			{
				valorAnterior = val2
				val2 = val3
				val3 = valorAnterior
			}
		}
	}

	funcao exibirValores(inteiro val1, inteiro val2, inteiro val3)
	{
		escreva(val1,"\n",val2,"\n",val3)
	}
}
/* $$$ Portugol Studio $$$ 
 * 
 * Esta seção do arquivo guarda informações do Portugol Studio.
 * Você pode apagá-la se estiver utilizando outro editor.
 * 
 * @POSICAO-CURSOR = 636; 
 * @PONTOS-DE-PARADA = ;
 * @SIMBOLOS-INSPECIONADOS = {val1, 14, 11, 4}-{val2, 14, 21, 4}-{val3, 14, 31, 4};
 * @FILTRO-ARVORE-TIPOS-DE-DADO = inteiro, real, logico, cadeia, caracter, vazio;
 * @FILTRO-ARVORE-TIPOS-DE-SIMBOLO = variavel, vetor, matriz, funcao;
 */