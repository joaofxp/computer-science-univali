programa
{
/*
Fa�a um algoritmo que preencha uma matriz 3x3 com n�meros aleat�rios, depois disso
exiba como resultado o menor valor que esteja na mesma linha do maior valor da matriz.
*/
	inclua biblioteca Util
	funcao inicio()
	{
		const inteiro TAM = 3

		inteiro array[3][3]
		inteiro maiorNumero = 0
		inteiro menorNumero = 0

		para(inteiro i = 0; i < TAM; i++)
		{
			para(inteiro j = 0; j < TAM; j++)
			{
				array[i][j] = Util.sorteia(1, 10)
			}
		}

		//exibir o menor valor da mesma linha onde est� o maior

		para(inteiro i = 0; i < TAM; i ++)
		{
			para(inteiro j = 0; j < TAM; j++)
			{
				se(array[i][j] > maiorNumero)
					maiorNumero = array[i][j]
			}
		}

		para(inteiro i = 0; i < TAM; i ++)
		{
			para(inteiro j = 0; j < TAM; j++)
			{
				se(array[i][j] == maiorNumero)
				{
					menorNumero = maiorNumero
					para(inteiro contagem = 0; contagem < TAM; contagem++)
					{
						se(array[i][contagem] < menorNumero)
							menorNumero = array[i][contagem]
					}
				}
			}
		}

		
	}
}
/* $$$ Portugol Studio $$$ 
 * 
 * Esta se��o do arquivo guarda informa��es do Portugol Studio.
 * Voc� pode apag�-la se estiver utilizando outro editor.
 * 
 * @POSICAO-CURSOR = 672; 
 * @PONTOS-DE-PARADA = ;
 * @SIMBOLOS-INSPECIONADOS = {array, 12, 10, 5}-{maiorNumero, 13, 10, 11}-{menorNumero, 14, 10, 11};
 * @FILTRO-ARVORE-TIPOS-DE-DADO = inteiro, real, logico, cadeia, caracter, vazio;
 * @FILTRO-ARVORE-TIPOS-DE-SIMBOLO = variavel, vetor, matriz, funcao;
 */