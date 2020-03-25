programa
{
/*	
	Você terá de criar um programa para manipular uma matriz de inteiros de tamanho 5x5, ele deve conter as seguintes funcionalidades:
	
	a. Um menu para interação com o usuário
	b. Escrita da matriz
	c. Preenchimento da matriz
	d. Ordenação dos valores da matriz
	e. Busca de um valor na matriz
*/
	
	inclua biblioteca Util

	const inteiro TAM = 5
	
	const inteiro menuPrincipal 			= 1
	const inteiro menuEscreverMatriz 		= 1
	const inteiro menuPreencherMatriz 		= 2
	const inteiro menuOrdenarMatriz 		= 3
	const inteiro menuBuscarValorMatriz 	= 4
	const inteiro menuSairPrograma 		= 5
	const inteiro menuVoltar = 4	
	
	const inteiro menuMinimo = 1
	const inteiro menuMaximo = 3

	const cadeia quebraLinha = "\n"
	const cadeia erro = "Opcao invalida. Tente novamente."
	
	const cadeia enunciadoMenuPrincipal 		= "\n########### MENU Principal ############ \n1 - Escrever matriz \n2 - Preencher a matriz \n3 - Ordenar os valores da matriz \n4 - Buscar por um valor na matriz \n5 - Sair do programa\n"
	const cadeia enunciadoMenuPreencherMatriz 	= "\n########### Preenchimento da Matriz ############ \n1 - Valores aleatórios \n2 - Valores digitados \n3 - Valores aleatórios com a diagonal principal sendo digitada \n4 - Voltar\n"
	const cadeia enunciadoMenuOrdenarMatriz 	= "\n########### Ordenação da Matriz ############ \n1 - Crescente \n2 - Decrescente \n3 - Mista \n4 - Voltar \n"
	const cadeia enunciadoMenuBuscarValorMatriz 	= "\n########### Buscar um Valor na Matriz ############ \nDigite um valor para buscar na matriz:\n"
	
	funcao inicio()
	{
		inteiro array[TAM][TAM]
		inteiro tipoMenu = 1

		preencherMatriz(array, 0,0,0)

		enquanto(tipoMenu != menuSairPrograma)
		{
			se(tipoMenu == menuSairPrograma)
				pare
			
			tipoMenu = exibirMenu(tipoMenu)
			
			inteiro opcao = 0
			
			leia(opcao)
			
			escolha(tipoMenu)
			{
				caso menuPrincipal:
					escolha(opcao)
					{
						caso menuEscreverMatriz:
							escreverMatriz(array)
							pare
						caso menuPreencherMatriz:
							tipoMenu = menuPreencherMatriz
							pare
						caso menuOrdenarMatriz:
							tipoMenu = menuOrdenarMatriz
							pare
						caso menuBuscarValorMatriz:
							tipoMenu = menuBuscarValorMatriz
							pare
						caso menuSairPrograma:
							tipoMenu = menuSairPrograma
							pare
						caso contrario:						
							escreva(erro)
							pare
					}
					pare
				caso menuPreencherMatriz:
					se(opcao == menuVoltar)
						tipoMenu = menuPrincipal
					senao se(opcao >= menuMinimo e opcao <= menuMaximo)
						preencherMatriz(array,opcao,0,0)
					senao
						escreva(erro)
					pare
				caso menuOrdenarMatriz:
					se(opcao == menuVoltar)
						tipoMenu = menuPrincipal
					senao se(opcao >= menuMinimo e opcao <= menuMaximo)
						ordenarMatriz(array,opcao,0,0,0)
					senao
						escreva(erro)
					pare
				caso menuBuscarValorMatriz:
					buscarValorMatriz(array,opcao)
					tipoMenu = menuPrincipal
					pare
			}
		}
	}

	funcao inteiro exibirMenu(inteiro tipo_menu)
	{
		inteiro opcao = 0
		
		escolha(tipo_menu)
		{
			caso menuPrincipal:
				escreva(enunciadoMenuPrincipal)
				retorne menuPrincipal
				pare
			caso menuPreencherMatriz:
				escreva(enunciadoMenuPreencherMatriz)
				retorne menuPreencherMatriz
				pare
			caso menuOrdenarMatriz:
				escreva(enunciadoMenuOrdenarMatriz)
				retorne menuOrdenarMatriz
				pare
			caso menuBuscarValorMatriz:
				escreva(enunciadoMenuBuscarValorMatriz)
				retorne menuBuscarValorMatriz
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
			escreva("\nO valor foi encontrado nas posições: ", posicoesEncontradas,quebraLinha)
	}

	//Ordenar matriz de modo que: 1 = Crescente, 2 = Decrescente, 3 = Mista (impar decrescente, par crescente)
	funcao ordenarMatriz(inteiro &matriz[][],inteiro opcao,inteiro contagemLinha, inteiro contagemColuna, inteiro contagemRepeticao)
	{
		se(contagemLinha < TAM e contagemColuna < TAM -1)
		{
			inteiro valorAnterior
			escolha(opcao)
			{
				caso 1:
					se(matriz[contagemLinha][contagemColuna] > matriz[contagemLinha][contagemColuna + 1])
					{
						valorAnterior = matriz[contagemLinha][contagemColuna]
						matriz[contagemLinha][contagemColuna] = matriz[contagemLinha][contagemColuna + 1]
						matriz[contagemLinha][contagemColuna + 1] = valorAnterior
					}		
				
					pare
				caso 2:
					se(matriz[contagemLinha][contagemColuna] < matriz[contagemLinha][contagemColuna + 1])
					{
						valorAnterior = matriz[contagemLinha][contagemColuna]
						matriz[contagemLinha][contagemColuna] = matriz[contagemLinha][contagemColuna + 1]
						matriz[contagemLinha][contagemColuna + 1] = valorAnterior
					}		
				
					pare
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
		}
		senao
			escreva("\nProcesso concluido!\n")
		
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
		senao se(opcao != 0)
			escreva("\nProcesso concluido\n")
	}

	funcao escreverMatriz(inteiro matriz[][])
	{
		escreva(quebraLinha)
		para(inteiro i = 0; i < TAM; i++)
		{
			para(inteiro j = 0; j < TAM; j++)
			{
				escreva(matriz[i][j]," | ")			
			}
			escreva(quebraLinha)
		}
	}
}
/* $$$ Portugol Studio $$$ 
 * 
 * Esta seção do arquivo guarda informações do Portugol Studio.
 * Você pode apagá-la se estiver utilizando outro editor.
 * 
 * @POSICAO-CURSOR = 150; 
 * @PONTOS-DE-PARADA = ;
 * @SIMBOLOS-INSPECIONADOS = ;
 * @FILTRO-ARVORE-TIPOS-DE-DADO = inteiro, real, logico, cadeia, caracter, vazio;
 * @FILTRO-ARVORE-TIPOS-DE-SIMBOLO = variavel, vetor, matriz, funcao;
 */