programa
{
/*
Crie uma função que receba por parâmetro um número inteiro e preencha de forma
aleatória uma matriz de tamanho NxN, onde N é o número recebido por parâmetro.
Depois disso, crie cinco funções diferentes:
a) Função para calcular a soma da diagonal principal
b) Função para calcular a soma da diagonal secundária
c) Função para calcular a soma dos elementos que não pertencem a nenhuma das
diagonais acima
d) Função para somar todos os elementos de uma matriz
e) Função para rotacionar os elementos da matriz
f) Função para exibir todos os elementos de uma matriz
Por fim, crie uma função que exiba um menu ao usuário para que seja possível
escolher as seguintes opções:
A - Gerar matriz aleatória
B - Imprimir matriz
C - Calcular a soma de todos os elementos da matriz
D - Calcular a soma de todos os elementos da diagonal principal da matriz
E - Calcular a soma de todos os elementos da diagonal secundária da matriz
F - Calcular a soma de todos os elementos da matriz que não pertencem às diagonais
G - Rotacionar matriz
H - Sair do programa
O programa deve permanecer ativo até que o usuário escolha a opção -H-
Função de rotação da matriz:
A função de rotação deve trocar o primeiro elemento da matriz com o último, o
segundo com o penúltimo, terceiro com o antepenúltimo e assim por diante.
Esta função deve receber por parâmetro (referencia) a matriz, seu tamanho (linhas e
colunas serão iguais) e quantidade de rotações.
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
			escreva("\n\nEscolha uma opção: \nA - Gerar matriz aleatória \nB - Imprimir matriz \nC - Calcular a soma de todos os elementos da matriz \nD - Calcular a soma de todos os elementos da diagonal principal da matriz \nE - Calcular a soma de todos os elementos da diagonal secundária da matriz \nF - Calcular a soma de todos os elementos da matriz que não pertencem às diagonais \nG - Rotacionar matriz passando matriz,tamanho,rotacoesQtd \nH - Sair do programa\n\n")
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
					escreva("Resultado da soma dos elementos da diagonal secundária: ", somarElementosDS(array))
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
 * Esta seção do arquivo guarda informações do Portugol Studio.
 * Você pode apagá-la se estiver utilizando outro editor.
 * 
 * @POSICAO-CURSOR = 3136; 
 * @DOBRAMENTO-CODIGO = [35, 42, 53, 67, 99, 137];
 * @PONTOS-DE-PARADA = ;
 * @SIMBOLOS-INSPECIONADOS = ;
 * @FILTRO-ARVORE-TIPOS-DE-DADO = inteiro, real, logico, cadeia, caracter, vazio;
 * @FILTRO-ARVORE-TIPOS-DE-SIMBOLO = variavel, vetor, matriz, funcao;
 */