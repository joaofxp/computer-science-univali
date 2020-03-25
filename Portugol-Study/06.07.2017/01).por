programa
{
/*
Fa�a uma fun��o que receba por refer�ncia tr�s vari�veis inteiras e realize a
ordena��o crescente dos par�metros por meio de trocas (ao final da execu��o da
fun��o, o menor valor dever� estar na vari�vel passada como primeiro par�metro, o
segundo menor valor na vari�vel do segundo par�metro e o maior, na vari�vel do
terceiro par�metro). Fa�a um programa que chame essa fun��o e exiba os novos
valores das vari�veis.

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
 * Esta se��o do arquivo guarda informa��es do Portugol Studio.
 * Voc� pode apag�-la se estiver utilizando outro editor.
 * 
 * @POSICAO-CURSOR = 636; 
 * @PONTOS-DE-PARADA = ;
 * @SIMBOLOS-INSPECIONADOS = {val1, 14, 11, 4}-{val2, 14, 21, 4}-{val3, 14, 31, 4};
 * @FILTRO-ARVORE-TIPOS-DE-DADO = inteiro, real, logico, cadeia, caracter, vazio;
 * @FILTRO-ARVORE-TIPOS-DE-SIMBOLO = variavel, vetor, matriz, funcao;
 */