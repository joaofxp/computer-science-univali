programa
{
/*
Faça um algoritmo que preencha uma matriz 5x5 com números inteiros aleatórios 
(entre 0 e 200), onde os elementos da diagonal principal devem ser positivos e o
da diagonal secundária devem ser negativos, o valor do centro da matriz sempre 
deve receber zero.
*/
	inclua biblioteca Util
	funcao inicio()
	{
		
		const inteiro TAM = 5

		inteiro array1[TAM][TAM]
		inteiro array2[TAM]
		inteiro contadorColuna = TAM - 1

		para(inteiro i = 0; i < TAM; i++)
		{
			para(inteiro j = 0; j < TAM; j++)
			{
				array1[i][j] = Util.sorteia(0,200)

				enquanto(array1[i][j] == 0)
					array1[i][j] = Util.sorteia(0,200)
					
				se(i == 2 e j == 2)
					array1[i][j] = 0
					
				se(j == contadorColuna)
				{
					array1[i][j] *= -1
					contadorColuna--
				}
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
	}
}
/* $$$ Portugol Studio $$$ 
 * 
 * Esta seção do arquivo guarda informações do Portugol Studio.
 * Você pode apagá-la se estiver utilizando outro editor.
 * 
 * @POSICAO-CURSOR = 785; 
 * @PONTOS-DE-PARADA = ;
 * @SIMBOLOS-INSPECIONADOS = {array1, 15, 10, 6};
 * @FILTRO-ARVORE-TIPOS-DE-DADO = inteiro, real, logico, cadeia, caracter, vazio;
 * @FILTRO-ARVORE-TIPOS-DE-SIMBOLO = variavel, vetor, matriz, funcao;
 */