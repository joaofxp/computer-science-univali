programa
{
/*
Faça um algoritmo que sorteie 15 valores reais (entre 0 e 500), armazene-os em uma
matriz 3x5 e exiba a matriz. Depois disso, troque todos os elementos da matriz que
sejam maiores do que 100 pelo valor zero e exiba matriz novamente.
*/
	inclua biblioteca Util
	funcao inicio()
	{
		const inteiro TAML = 3
		const inteiro TAMC = 5

		inteiro array[TAML][TAMC]

		para(inteiro i = 0; i < TAML; i++)
		{
			para(inteiro j = 0; j < TAMC; j++)
			{
				array[i][j] = Util.sorteia(0,500)				
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

		para(inteiro i = 0; i < TAML; i++)
		{
			para(inteiro j = 0; j < TAMC; j++)
			{
				se(array[i][j] > 100)
					array[i][j] = 0
			}
		}
		
		escreva("\nArray 1:")
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
 * @POSICAO-CURSOR = 462; 
 * @PONTOS-DE-PARADA = ;
 * @SIMBOLOS-INSPECIONADOS = ;
 * @FILTRO-ARVORE-TIPOS-DE-DADO = inteiro, real, logico, cadeia, caracter, vazio;
 * @FILTRO-ARVORE-TIPOS-DE-SIMBOLO = variavel, vetor, matriz, funcao;
 */