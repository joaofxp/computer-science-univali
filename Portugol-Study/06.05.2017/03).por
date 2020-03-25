programa
{
/*
Crie uma função que receba três números inteiros como parâmetro (N, X e Y) e exiba
uma matriz de tamanho NxN, preenchendo-a com o valor X na diagonal principal e o
valor Y na diagonal secundária. Os demais valores da matriz devem permanecer em
zero.

*/
	funcao inicio()
	{
		desenharMatriz(5,8,2)
	}

	funcao desenharMatriz(inteiro matrizTamanho, inteiro matrizValorDP, inteiro matrizValorDS)
	{
		inteiro matriz[matrizTamanho][matrizTamanho]
		inteiro contagemDS = matrizTamanho - 1
		
		para(inteiro i = 0; i < matrizTamanho; i++)
		{
			para(inteiro j = 0; j < matrizTamanho; j++)
			{
				se(j == contagemDS)
				{
					matriz[i][j] = matrizValorDS
					contagemDS --
				}
				senao
					matriz[i][j] = 0
					
				se(i == j)
					matriz[i][j] = matrizValorDP
			}
		}

		para(inteiro i = 0; i < matrizTamanho; i++)
		{
			para(inteiro j = 0; j < matrizTamanho; j++)
			{
				escreva(matriz[i][j])
			}
			escreva("\n")
		}		
	}
}
/* $$$ Portugol Studio $$$ 
 * 
 * Esta seção do arquivo guarda informações do Portugol Studio.
 * Você pode apagá-la se estiver utilizando outro editor.
 * 
 * @POSICAO-CURSOR = 315; 
 * @PONTOS-DE-PARADA = ;
 * @SIMBOLOS-INSPECIONADOS = ;
 * @FILTRO-ARVORE-TIPOS-DE-DADO = inteiro, real, logico, cadeia, caracter, vazio;
 * @FILTRO-ARVORE-TIPOS-DE-SIMBOLO = variavel, vetor, matriz, funcao;
 */