programa
{
/*
Fa�a um algoritmo que preencha uma matriz 4x4 com n�meros aleat�rios, depois disso,
aplique o bubble sort para ordenar os valores das linhas pares em ordem crescente 
e das linhas �mpares em ordem decrescente.
*/
	inclua biblioteca Util
	
	funcao inicio()
	{
		const inteiro TAM = 4

		inteiro array[TAM][TAM]

		para(inteiro i = 0; i < TAM; i++)
		{
			para(inteiro j = 0; j < TAM; j++)
			{
				array[i][j] = Util.sorteia(1, 10)
			}
		}

		para(inteiro i = 0; i < TAM; i++)
		{
			para(inteiro j = 0; j < TAM; j++)
			{
				para(inteiro contagem = 0; contagem < TAM - 1; contagem++)
				{
					inteiro valorAnterior = 0
					se(i % 2 == 0)
					{
						se(array[i][contagem] > array[i][contagem+1])
						{
							valorAnterior = array[i][contagem]
							array[i][contagem] = array[i][contagem+1]
							array[i][contagem+1] = valorAnterior
						}
					}
					senao
					{
						se(array[i][contagem] < array[i][contagem+1])
						{
							valorAnterior = array[i][contagem]
							array[i][contagem] = array[i][contagem+1]
							array[i][contagem+1] = valorAnterior
						}
					}					
				}
			}
		}

		escreva("Array1:\n")
		para(inteiro i = 0; i < TAM; i++)
		{
			escreva("\n")
			para(inteiro j = 0; j < TAM; j++)
			{
				escreva("| ", array[i][j], " |")
			}
		}
	}
}
/* $$$ Portugol Studio $$$ 
 * 
 * Esta se��o do arquivo guarda informa��es do Portugol Studio.
 * Voc� pode apag�-la se estiver utilizando outro editor.
 * 
 * @POSICAO-CURSOR = 540; 
 * @PONTOS-DE-PARADA = ;
 * @SIMBOLOS-INSPECIONADOS = {array, 14, 10, 5};
 * @FILTRO-ARVORE-TIPOS-DE-DADO = inteiro, real, logico, cadeia, caracter, vazio;
 * @FILTRO-ARVORE-TIPOS-DE-SIMBOLO = variavel, vetor, matriz, funcao;
 */