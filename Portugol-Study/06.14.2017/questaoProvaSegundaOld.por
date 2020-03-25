programa
{
	inclua biblioteca Util

	const inteiro TAM = 5
	
	funcao inicio()
	{
		inteiro array[TAM][TAM]
		inteiro tipoMenu = 1

		preencherMatriz(array, 0,0,0)

		enquanto(tipoMenu != 5)
		{
			se(tipoMenu == 5)
				pare
			
			tipoMenu = exibirMenu(tipoMenu)
			
			inteiro opcao = 0
			
			leia(opcao)
			
			escolha(tipoMenu)
			{
				//Menu Principal
				caso 1:
					escolha(opcao)
					{
		//				1 - Escrever matriz
						caso 1:
							escreverMatriz(array)
							pare
		//				2 - Preencher a matriz
						caso 2:
							tipoMenu = 2
							pare
		//				3 - Ordenar os valores da matriz
						caso 3:
							tipoMenu = 3
							pare
		//				4 - Buscar por um valor na matriz
						caso 4:
							tipoMenu = 4
							pare
		//				5 - Sair do programa
						caso 5:
							tipoMenu = 5
							pare
						caso contrario:						
							escreva("Opcao invalida. Tente novamente.")
							pare
					}
					pare
				//Preencher Matriz
				caso 2:
					se(opcao == 4)
						tipoMenu = 1
					senao se(opcao >= 1 e opcao <= 3)
						preencherMatriz(array,opcao,0,0)
					senao
						escreva("Opcao invalida. Tente novamente.")
					pare
				//Ordenar Matriz
				caso 3:					
					se(opcao == 4)
						tipoMenu = 1
					senao se(opcao >= 1 e opcao <= 3)
						ordenarMatriz(array,opcao,0,0,0)
					senao
						escreva("Opcao invalida. Tente novamente.")
					pare
				//Buscar valor na matriz
				caso 4:
					buscarValorMatriz(array,opcao)
					tipoMenu = 1					
					pare
			}
		}
	}

	funcao inteiro exibirMenu(inteiro tipo_menu)
	{
		inteiro opcao = 0
		
		escolha(tipo_menu)
		{
			//Menu Principal
			caso 1:
				escreva("\n########### MENU Principal ############ \n1 - Escrever matriz \n2 - Preencher a matriz \n3 - Ordenar os valores da matriz \n4 - Buscar por um valor na matriz \n5 - Sair do programa\n")
				retorne 1
				pare
			//Preenchimento da Matriz
			caso 2:
				escreva("\n########### Preenchimento da Matriz ############ \n1 - Valores aleatórios \n2 - Valores digitados \n3 - Valores aleatórios com a diagonal principal sendo digitada \n4 - Voltar\n")
				retorne 2
				pare
			//Ordenação da matriz
			caso 3:
				escreva("\n########### Ordenação da Matriz ############ \n1 - Crescente \n2 - Decrescente \n3 - Mista \n4 - Voltar \n")
				retorne 3
				pare
			//Buscar por um valo0r na matriz
			caso 4:				
				escreva("\n########### Buscar um Valor na Matriz ############ \nDigite um valor para buscar na matriz:\n")
				retorne 4
				pare
			caso contrario:
				retorne 0
				pare
		}
	}

	funcao buscarValorMatriz(inteiro matriz[][], inteiro valorPesquisar)
	{
		cadeia posicoesEncontradas = ""
		para(inteiro i = 0; i < TAM; i++)
		{
			para(inteiro j = 0; j < TAM; j++)
			{
				se(matriz[i][j] == valorPesquisar)
					posicoesEncontradas += " (" + i + " - " + j + ") "
			}
		}
		se(posicoesEncontradas == "")
			escreva("\nO valor não existe na matriz\n")
		senao
			escreva("\nO valor foi encontrado nas posições: ", posicoesEncontradas,"\n")
	}

	funcao ordenarMatriz(inteiro &matriz[][],inteiro opcao,inteiro contagemLinha, inteiro contagemColuna, inteiro contagemRepeticao)
	{
		se(contagemLinha < TAM e contagemColuna < TAM -1)
		{
			inteiro valorAnterior
			escolha(opcao)
			{
				//Crescente
				caso 1:
					se(matriz[contagemLinha][contagemColuna] > matriz[contagemLinha][contagemColuna + 1])
					{
						valorAnterior = matriz[contagemLinha][contagemColuna]
						matriz[contagemLinha][contagemColuna] = matriz[contagemLinha][contagemColuna + 1]
						matriz[contagemLinha][contagemColuna + 1] = valorAnterior
					}		
				
					pare
				//Decrescente
				caso 2:
					se(matriz[contagemLinha][contagemColuna] < matriz[contagemLinha][contagemColuna + 1])
					{
						valorAnterior = matriz[contagemLinha][contagemColuna]
						matriz[contagemLinha][contagemColuna] = matriz[contagemLinha][contagemColuna + 1]
						matriz[contagemLinha][contagemColuna + 1] = valorAnterior
					}		
				
					pare
				//Mista
				caso 3:
					se(matriz[contagemLinha][contagemColuna] > matriz[contagemLinha][contagemColuna + 1] e contagemLinha % 2 == 0 e contagemLinha != 0)
					{
						valorAnterior = matriz[contagemLinha][contagemColuna]
						matriz[contagemLinha][contagemColuna] = matriz[contagemLinha][contagemColuna + 1]
						matriz[contagemLinha][contagemColuna + 1] = valorAnterior
					}	
					senao se(matriz[contagemLinha][contagemColuna] < matriz[contagemLinha][contagemColuna + 1] e contagemLinha % 2 != 0 e contagemLinha != 0)
					{
						valorAnterior = matriz[contagemLinha][contagemColuna]
						matriz[contagemLinha][contagemColuna] = matriz[contagemLinha][contagemColuna + 1]
						matriz[contagemLinha][contagemColuna + 1] = valorAnterior						
					}
					pare
			}

			contagemColuna++				
			se (contagemColuna == TAM - 1 e contagemRepeticao == TAM)
			{
				contagemLinha ++
				contagemColuna = 0
				contagemRepeticao = 0
			}
			senao se(contagemColuna == TAM - 1)
			{
				contagemColuna = 0
				contagemRepeticao++
			}
			
			ordenarMatriz(matriz,opcao,contagemLinha,contagemColuna,contagemRepeticao)			
			//Decrescente
			//Mista, linha par crescente, linha impar decrescente
			//Chamar funcao com bubblesort passando qual tipo quer, ordenar as linhas individualmente, não toda a matriz
			//E deve haver apenas uma função para ordenar tanto crescente quanto decrescente, baseando-se em um parâmetro.
		}
		senao
			escreva("\nProcesso concluido\n")
		
	}	
	
	funcao preencherMatriz(inteiro &matriz[][], inteiro opcao, inteiro contagemLinha, inteiro contagemColuna)
	{
		se(contagemLinha < TAM e contagemColuna < TAM)
		{			
			escolha(opcao)
			{
				caso 0:
					matriz[contagemLinha][contagemColuna] = 0
					pare
				caso 1:
					matriz[contagemLinha][contagemColuna] = Util.sorteia(1, 30)
					pare
				caso 2:
					inteiro novaValor = 0
					escreva("Digite um valor: \n")
					leia(novaValor)
					matriz[contagemLinha][contagemColuna] = novaValor
					pare
				caso 3:
					se(contagemLinha==contagemColuna)
					{
						inteiro novaValor = 0
						leia(novaValor)
						matriz[contagemLinha][contagemColuna] = novaValor							
					}
					senao
						matriz[contagemLinha][contagemColuna] = Util.sorteia(1, 30)
					pare
			}
			
			se(contagemColuna == TAM - 1)
			{
				contagemLinha += 1
				contagemColuna = 0
			}
			senao
				contagemColuna++
				
			preencherMatriz(matriz,opcao,contagemLinha,contagemColuna)
		}
		senao
			escreva("\nProcesso concluido\n")
	}

	funcao escreverMatriz(inteiro matriz[][])
	{
		escreva("\n")
		para(inteiro i = 0; i < TAM; i++)
		{
			para(inteiro j = 0; j < TAM; j++)
			{
				escreva(matriz[i][j]," | ")			
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
 * @POSICAO-CURSOR = 2978; 
 * @DOBRAMENTO-CODIGO = [28, 82, 131, 229, 199, 243];
 * @PONTOS-DE-PARADA = ;
 * @SIMBOLOS-INSPECIONADOS = ;
 * @FILTRO-ARVORE-TIPOS-DE-DADO = inteiro, real, logico, cadeia, caracter, vazio;
 * @FILTRO-ARVORE-TIPOS-DE-SIMBOLO = variavel, vetor, matriz, funcao;
 */