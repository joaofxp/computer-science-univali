programa
{
/*
Crie uma fun��o que receba por par�metro um n�mero inteiro e preencha de forma
aleat�ria uma matriz de tamanho NxN, onde N � o n�mero recebido por par�metro.
Depois disso, crie cinco fun��es diferentes:
a) Fun��o para calcular a soma da diagonal principal
b) Fun��o para calcular a soma da diagonal secund�ria
c) Fun��o para calcular a soma dos elementos que n�o pertencem a nenhuma das
diagonais acima
d) Fun��o para somar todos os elementos de uma matriz
e) Fun��o para rotacionar os elementos da matriz
f) Fun��o para exibir todos os elementos de uma matriz
Por fim, crie uma fun��o que exiba um menu ao usu�rio para que seja poss�vel
escolher as seguintes op��es:
A - Gerar matriz aleat�ria
B - Imprimir matriz
C - Calcular a soma de todos os elementos da matriz
D - Calcular a soma de todos os elementos da diagonal principal da matriz
E - Calcular a soma de todos os elementos da diagonal secund�ria da matriz
F - Calcular a soma de todos os elementos da matriz que n�o pertencem �s diagonais
G - Rotacionar matriz
H - Sair do programa
O programa deve permanecer ativo at� que o usu�rio escolha a op��o -H-
Fun��o de rota��o da matriz:
A fun��o de rota��o deve trocar o primeiro elemento da matriz com o �ltimo, o
segundo com o pen�ltimo, terceiro com o antepen�ltimo e assim por diante.
Esta fun��o deve receber por par�metro (referencia) a matriz, seu tamanho (linhas e
colunas ser�o iguais) e quantidade de rota��es.
*/
	inclua biblioteca Util
	inclua biblioteca Texto

	const inteiro TAM = 4
	
	funcao inicio()
	{
		inteiro array[TAM][TAM]
		preencherMatriz(array,TAM)
		exibirMenu(array)
	}

	funcao preencherMatriz(inteiro &array[][], inteiro valoresQtd)
	{
		para(inteiro i = 0; i < TAM; i++)
		{
			para(inteiro j = 0; j < TAM;j++) 
			{
				array[i][j] = Util.sorteia(1, 100)				
			}
		}
	}

	funcao inteiro somarElementosDP(inteiro array[][])
	{
		inteiro contagem = 0
		para(inteiro i = 0; i < TAM; i++)
		{
			para(inteiro j = 0; j < TAM; j++)
			{
				se(i==j)
					contagem += array[i][j]
			}
		}
		retorne contagem
	}

	funcao inteiro somarElementosDS(inteiro array[][])
	{
		inteiro contagem = 0
		inteiro casaContador = TAM - 1
		
		para(inteiro i = 0; i < TAM; i++)
		{
			para(inteiro j = 0; j < TAM; j++)
			{
				se(j == casaContador)
				{
					contagem += array[i][j]
					casaContador--
				}
			}
		}
		retorne contagem
	}

	funcao inteiro somarElementosMatriz(inteiro array[][])
	{
		inteiro contagem = 0
		para(inteiro i = 0; i < TAM; i++)
		{
			para(inteiro j = 0; j < TAM; j++)
			{
				contagem += array[i][j]
			}
		}
		retorne contagem
	}

	funcao inteiro somarElementosForaDiagonais(inteiro array[][])
	{
		inteiro contagem = 0
		inteiro casaContador = TAM - 1
		
		para(inteiro i = 0; i < TAM; i++)
		{
			para(inteiro j = 0; j < TAM; j++)
			{
				se(i != j e j != casaContador)
					contagem += array[i][j]

				se(j == casaContador)
					casaContador--
			}
		}
		retorne contagem
	}
	
	funcao rotacionarMatriz(inteiro &array[][],inteiro matrizTamanho, inteiro rotacoesQtd)
	{		
		inteiro ultimaColuna = matrizTamanho - 1

		para(inteiro i = 0; i < matrizTamanho; i++)
		{
			inteiro ultimaCasa = matrizTamanho - 1
			para(inteiro j = 0; j < matrizTamanho e rotacoesQtd != 0; j ++)
			{
				inteiro valorAnterior = array[i][j]
				array[i][j] = array[ultimaColuna][ultimaCasa]
				array[ultimaColuna][ultimaCasa] = valorAnterior
				ultimaCasa--
				rotacoesQtd--				
			}
			ultimaColuna--
		}
	}

	funcao exibirMatriz(inteiro array[][])
	{
		para(inteiro i = 0; i < Util.numero_linhas(array);i++)
		{
			para(inteiro j = 0; j < Util.numero_colunas(array); j++)
			{
				escreva(array[i][j], " | ")
			}
			escreva("\n")
		}
	}

	funcao exibirMenu(inteiro array[][])
	{
		caracter opcao = '0'

		enquanto(opcao != 'H')
		{			
			escreva("\n\nEscolha uma op��o: \nA - Gerar matriz aleat�ria \nB - Imprimir matriz \nC - Calcular a soma de todos os elementos da matriz \nD - Calcular a soma de todos os elementos da diagonal principal da matriz \nE - Calcular a soma de todos os elementos da diagonal secund�ria da matriz \nF - Calcular a soma de todos os elementos da matriz que n�o pertencem �s diagonais \nG - Rotacionar matriz passando matriz,tamanho,rotacoesQtd \nH - Sair do programa\n\n")
			leia(opcao)
			escreva("\n")

			escolha(opcao)
			{
				caso 'A':
					preencherMatriz(array,TAM)
					pare
				caso 'B':
					exibirMatriz(array)
					pare
				caso 'C':
					escreva("Resultado da soma de todos os elementos: ", somarElementosMatriz(array))
					pare
				caso 'D':
					escreva("Resultado da soma dos elementos da diagonal principal: ", somarElementosDP(array))
					pare
				caso 'E':
					escreva("Resultado da soma dos elementos da diagonal secund�ria: ", somarElementosDS(array))
					pare
				caso 'F':
					escreva("Resultado da soma dos elementos fora das diagonais: ", somarElementosForaDiagonais(array))
					pare
				caso 'G':
				//		G - Rotacionar matriz passando matriz,tamanho,rotacoesQtd
					rotacionarMatriz(array,TAM,8)
					escreva("Matriz rotacionada com sucesso!")
					pare
				caso 'H':
					pare
				caso contrario:
					escreva("Opcao invalida, tente novamente. Voce digitou em caixa alta?")
					
			}
		}
	}

}
/* $$$ Portugol Studio $$$ 
 * 
 * Esta se��o do arquivo guarda informa��es do Portugol Studio.
 * Voc� pode apag�-la se estiver utilizando outro editor.
 * 
 * @POSICAO-CURSOR = 3136; 
 * @DOBRAMENTO-CODIGO = [35, 42, 53, 67, 99, 137];
 * @PONTOS-DE-PARADA = ;
 * @SIMBOLOS-INSPECIONADOS = ;
 * @FILTRO-ARVORE-TIPOS-DE-DADO = inteiro, real, logico, cadeia, caracter, vazio;
 * @FILTRO-ARVORE-TIPOS-DE-SIMBOLO = variavel, vetor, matriz, funcao;
 */