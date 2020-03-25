programa
{
/*
Preencha uma matriz 5x5 com números aleatórios (entre 0 e 100) e exiba a matriz.
A seguir, crie um vetor de 5 posições preenchido com os elementos da diagonal 
principal da matriz e exiba o vetor.
*/
	inclua biblioteca Util
	
	funcao inicio()
	{
		const inteiro TAM = 5

		inteiro array1[TAM][TAM]
		inteiro array2[TAM]

		para(inteiro i = 0; i < TAM; i++)
		{
			para(inteiro j = 0; j < TAM; j++)
			{
				array1[i][j] = Util.sorteia(0,100)				
			}
		}

		escreva("Array 1:")
		para(inteiro i = 0; i < TAM; i++)
		{
			escreva("\n")
			para(inteiro j = 0; j < TAM; j++)
			{
				escreva("| ",array1[i][j], " | ")
			}
		}

		para(inteiro i = 0; i < TAM; i++)
		{
			para(inteiro j = 0; j < TAM; j++)
			{
				se(i == j)
					array2[i] = array1[i][j]
			}
		}

		escreva("\nArray 2: \n")
		para(inteiro i = 0; i < TAM; i++)
		{
			escreva(" | ", array2[i], " | ")	
		}
	}
}
/* $$$ Portugol Studio $$$ 
 * 
 * Esta seção do arquivo guarda informações do Portugol Studio.
 * Você pode apagá-la se estiver utilizando outro editor.
 * 
 * @POSICAO-CURSOR = 260; 
 * @PONTOS-DE-PARADA = ;
 * @SIMBOLOS-INSPECIONADOS = ;
 * @FILTRO-ARVORE-TIPOS-DE-DADO = inteiro, real, logico, cadeia, caracter, vazio;
 * @FILTRO-ARVORE-TIPOS-DE-SIMBOLO = variavel, vetor, matriz, funcao;
 */