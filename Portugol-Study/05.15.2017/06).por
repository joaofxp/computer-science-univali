programa
{
/*
Faça um algoritmo que utilize uma matriz 5x5, preencha os valores de todas as linhas
até a terceira coluna com valores informados pelo usuário, a quarta e a quinta 
coluna devem ser calculadas. Onde a quarta coluna terá o resultado da soma dos 
valores dos números digitados pelo usuário nesta linha e a última coluna terá a 
média destes mesmos valores.
*/
	inclua biblioteca Util
	
	funcao inicio()
	{		
		const inteiro TAM = 5
		inteiro array[TAM][TAM]
		inteiro colunasLimite = 3

		para(inteiro i = 0; i < TAM; i++)
		{
			para(inteiro j = 0; j < TAM; j++)
			{
				array[i][j] = 0
				se(j < colunasLimite)
				{
					array[i][j] = Util.sorteia(1, 100)					
				}
				senao se(j == colunasLimite)
				{
					para(inteiro contadorLinha = i -1; contadorLinha < i; contadorLinha++)
					{
						para(inteiro contadorColuna = 0; contadorColuna < colunasLimite; contadorColuna++)
						{
							array[i][j] += array[i][contadorColuna]
						}
					}
				}
				senao
				{
					para(inteiro contadorLinha = i -1; contadorLinha < i; contadorLinha++)
					{
						para(inteiro contadorColuna = 0; contadorColuna < colunasLimite; contadorColuna++)
						{
							array[i][j] += array[i][contadorColuna]
						}
					}
					array[i][j] /= colunasLimite
				}
			}
		}

		escreva("Array 1:")
		para(inteiro i = 0; i < TAM; i++)
		{
			escreva("\n")
			para(inteiro j = 0; j < TAM; j++)
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
 * @POSICAO-CURSOR = 601; 
 * @PONTOS-DE-PARADA = ;
 * @SIMBOLOS-INSPECIONADOS = {array, 15, 10, 5};
 * @FILTRO-ARVORE-TIPOS-DE-DADO = inteiro, real, logico, cadeia, caracter, vazio;
 * @FILTRO-ARVORE-TIPOS-DE-SIMBOLO = variavel, vetor, matriz, funcao;
 */