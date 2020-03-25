programa
{
/*
Faça um algoritmo que utilize uma matriz 2x10 onde a primeira linha irá receber 10
números aleatórios (entre 0 e 99) e a segunda linha deve receber 1 caso o valor da mesma
coluna na linha anterior e 0 caso o valor seja impar.
*/
	inclua biblioteca Util
	
	funcao inicio()
	{
		const inteiro TAML = 2
		const inteiro TAMC = 10
		
		inteiro array[TAML][TAMC]

		para(inteiro i = 0; i < TAML; i++)
		{
			para(inteiro j = 0; j < TAMC; j++)
			{
				array[i][j] = Util.sorteia(0, 99)
				se(i > 0)
				{
					se(array[i-1][j] % 2 == 0)
						array[i][j] = 1
					senao
						array[i][j] = 0
				}
			}
		}

		escreva("Array 1:")
		para(inteiro i = 0; i < TAML; i++)
		{
			escreva("\n")
			para(inteiro j = 0; j < TAMC; j++)
			{
				escreva("| ",array[i][j], " | ")
			}
		}
	}
}
/* $$$ Portugol Studio $$$ 
 * 
 * Esta seção do arquivo guarda informações do Portugol Studio.
 * Você pode apagá-la se estiver utilizando outro editor.
 * 
 * @POSICAO-CURSOR = 616; 
 * @PONTOS-DE-PARADA = ;
 * @SIMBOLOS-INSPECIONADOS = ;
 * @FILTRO-ARVORE-TIPOS-DE-DADO = inteiro, real, logico, cadeia, caracter, vazio;
 * @FILTRO-ARVORE-TIPOS-DE-SIMBOLO = variavel, vetor, matriz, funcao;
 */