programa
{
	//1)Menu criado
	//2)Gerenciamento de filme das três salas
	//3)Venda de Ingresso

	inclua biblioteca Texto
	funcao inicio()
	{		

		//Cada sala possui 25 cadeiras, dispostas em 5 linhas e 5 colunas

		//ABCDE = filas e 12345 = cadeiras

		//O = vago, X = ocupado, x = meia entrada

		//completo 25, meia 12,5

		//cadeiras é a que vale mais ponto

		const inteiro SALASQTD = 3
		const inteiro SALASCOLUNAS = 3
		const inteiro SALASLINHAS = 2
		const inteiro SALASCADEIRAS = 5

		caracter caracterDigitado = 'a'

		cadeia sala1 = "SALA 1"
		cadeia sala1Filme = "Filmenho"
		
		cadeia sala2 = "SALA 2"
		cadeia sala2Filme = ""
		
		cadeia sala3 = "SALA 3"
		cadeia sala3Filme = ""
		
		cadeia arraySalas[SALASLINHAS][SALASCOLUNAS] = {{sala1,sala2,sala3},{sala1Filme,sala2Filme,sala3Filme}}
		
		cadeia sala1Cadeiras[SALASCADEIRAS][SALASCADEIRAS]
		cadeia sala2Cadeiras[SALASCADEIRAS][SALASCADEIRAS]
		cadeia sala3Cadeiras[SALASCADEIRAS][SALASCADEIRAS]		
		cadeia alfabeto = "ABCDE"

		real sala1Renda = 0.0
		inteiro sala1IngressosQtd = 0
		
		real sala2Renda = 0.0
		inteiro sala2IngressosQtd = 0
		
		real sala3Renda = 0.0
		inteiro sala3IngressosQtd = 0
		
		para(inteiro i = 0; i < SALASCADEIRAS; i++)
		{
			para(inteiro j = 0; j < SALASCADEIRAS; j++)
			{
				sala1Cadeiras[i][j] = "O"
				sala2Cadeiras[i][j] = "O"
				sala3Cadeiras[i][j] = "O"
			}
		}

//		para(inteiro i = 0; i < SALASCADEIRAS; i++)
//		{
//			se(i == 0)
//				escreva("   1    2    3    4    5\n")
//			para(inteiro j = 0; j  < SALASCADEIRAS; j++)
//			{
//				se(j == 0)
//					escreva(Texto.obter_caracter(alfabetoCadeiras[i], 0), " ")
//				escreva(sala1Cadeiras[i][j], " | ")
//			}
//			escreva("\n")
//		}
		
		enquanto(caracterDigitado != 'e')
		{
			escreva("\nEscolha uma opção: \na. Definir os filmes das salas \nb. Venda de um ingresso \nc. Ingressos vendidos por sala \nd. Valor arrecadado por sala \ne. Sair\n")
			leia(caracterDigitado)
			
			escolha(caracterDigitado)
			{
				caso 'a':
					inteiro opcao = 0
					cadeia filmeNome = ""
										
					escreva("Qual sala você deseja alterar o filme?")

					para(inteiro i = 0; i < SALASCOLUNAS;i++)
					{						
						escreva("\n",i+1, " - Sala: ", arraySalas[0][i], " - Filme: ", arraySalas[1][i])
					}

					escreva("\n4 - Todas\n")

					enquanto(opcao < 1 ou opcao > 4)
					{
						leia(opcao)

						se(opcao == 1 ou opcao == 2 ou opcao == 3)
						{
							escreva("Digite o nome do filme: \n")
							leia(filmeNome)							
							arraySalas[1][opcao-1] = filmeNome
						}
						senao se(opcao == 4)
						{
							para(inteiro i = 0; i < SALASQTD; i++)
							{
								escreva("\nDigite o nome do filme para: ", arraySalas[0][i], "\n")
								leia(filmeNome)
								arraySalas[1][i] = filmeNome
							}
						}
						senao
							escreva("Sala inválida, tente novamente.\n")
					}
				pare
				caso 'b':
					//O = livre, X = comprado inteiro, x = comprado meia
					caracter opcao = '0'
					cadeia fila = "A"
					inteiro cadeira = 0

					enquanto(opcao < '1' ou opcao > '4')
					{
						escreva("\nO ingresso será vendido para qual sala?\n")
						para(inteiro i = 0; i < SALASCOLUNAS;i++)
						{						
							escreva(i+1, " - Sala: ", arraySalas[0][i], " - Filme: ", arraySalas[1][i],"\n")
						}
	
						escreva("4 - Voltar\n")
						leia(opcao)

						escolha(opcao)
						{
							caso '1':
								logico ingressoComprado = falso
								caracter ingressoTipo = 'C'
								
								enquanto(ingressoComprado == falso)
								{
									para(inteiro i = 0; i < SALASCADEIRAS; i++)
									{
										se(i == 0)
											escreva("  1   2   3   4   5\n")
										para(inteiro j = 0; j  < SALASCADEIRAS; j++)
										{
											se(j == 0)
												escreva(Texto.obter_caracter(alfabeto, i), " ")
											escreva(sala1Cadeiras[i][j], " | ")
										}
										escreva("\n")
									}
									escreva("Selecione a fila (ABCDE): ")
									leia(fila)
									escreva("Selecione a cadeira (12345): ")
									leia(cadeira)
									
									//Se selecionar uma já ocupada, avisar e apresentar de novo as cadeiras
									se(sala1Cadeiras[Texto.posicao_texto(fila, alfabeto,0)][cadeira-1] != "O")
										escreva("Cadeira está ocupada, tente novamente.\n")
									senao
									{
										escreva("O ingresso é completo ou meia entrada?('C' R$25,00 ou 'M' R$12.50:)\n")
										leia(ingressoTipo)
										se(ingressoTipo == 'C')
										{
											escreva("Ingresso completo comprado com sucesso!")
											sala1Cadeiras[Texto.posicao_texto(fila, alfabeto,0)][cadeira-1] = "X"
											sala1Renda += 25
											ingressoComprado = verdadeiro
										}
										senao se(ingressoTipo == 'M')
										{
											escreva("Ingresso meia entrada comprado com sucesso!")
											sala1Cadeiras[Texto.posicao_texto(fila, alfabeto,0)][cadeira-1] = "x"
											sala1Renda += 12.50
											sala1IngressosQtd ++
											ingressoComprado = verdadeiro
										}
										senao
											escreva("Opção inválida, tente novamente.")
									}
								}
							pare
							caso '2':
								logico ingressoComprado = falso
								caracter ingressoTipo = 'C'
								
								enquanto(ingressoComprado == falso)
								{
									para(inteiro i = 0; i < SALASCADEIRAS; i++)
									{
										se(i == 0)
											escreva("  1   2   3   4   5\n")
										para(inteiro j = 0; j  < SALASCADEIRAS; j++)
										{
											se(j == 0)
												escreva(Texto.obter_caracter(alfabeto, i), " ")
											escreva(sala2Cadeiras[i][j], " | ")
										}
										escreva("\n")
									}
									escreva("Selecione a fila (ABCDE): ")
									leia(fila)
									escreva("Selecione a cadeira (12345): ")
									leia(cadeira)
									
									//Se selecionar uma já ocupada, avisar e apresentar de novo as cadeiras
									se(sala2Cadeiras[Texto.posicao_texto(fila, alfabeto,0)][cadeira-1] != "O")
										escreva("Cadeira está ocupada, tente novamente.\n")
									senao
									{
										escreva("O ingresso é completo ou meia entrada?('C' R$25,00 ou 'M' R$12.50:)\n")
										leia(ingressoTipo)
										se(ingressoTipo == 'C')
										{
											escreva("Ingresso completo comprado com sucesso!")
											sala2Cadeiras[Texto.posicao_texto(fila, alfabeto,0)][cadeira-1] = "X"
											sala2Renda += 25
											sala2IngressosQtd ++
											ingressoComprado = verdadeiro
										}
										senao se(ingressoTipo == 'M')
										{
											escreva("Ingresso meia entrada comprado com sucesso!")
											sala2Cadeiras[Texto.posicao_texto(fila, alfabeto,0)][cadeira-1] = "x"
											sala2Renda += 12.50
											sala2IngressosQtd ++
											ingressoComprado = verdadeiro
										}
										senao
											escreva("Opção inválida, tente novamente.")
									}
								}
							pare
							caso '3':
								logico ingressoComprado = falso
								caracter ingressoTipo = 'C'
								
								enquanto(ingressoComprado == falso)
								{
									para(inteiro i = 0; i < SALASCADEIRAS; i++)
									{
										se(i == 0)
											escreva("  1   2   3   4   5\n")
										para(inteiro j = 0; j  < SALASCADEIRAS; j++)
										{
											se(j == 0)
												escreva(Texto.obter_caracter(alfabeto, i), " ")
											escreva(sala3Cadeiras[i][j], " | ")
										}
										escreva("\n")
									}
									escreva("Selecione a fila (ABCDE): ")
									leia(fila)
									escreva("Selecione a cadeira (12345): ")
									leia(cadeira)
									
									//Se selecionar uma já ocupada, avisar e apresentar de novo as cadeiras
									se(sala3Cadeiras[Texto.posicao_texto(fila, alfabeto,0)][cadeira-1] != "O")
										escreva("Cadeira está ocupada, tente novamente.\n")
									senao
									{
										escreva("O ingresso é completo ou meia entrada?('C' R$25,00 ou 'M' R$12.50:)\n")
										leia(ingressoTipo)
										se(ingressoTipo == 'C')
										{
											escreva("Ingresso completo comprado com sucesso!")
											sala3Cadeiras[Texto.posicao_texto(fila, alfabeto,0)][cadeira-1] = "X"
											sala3Renda += 25
											ingressoComprado = verdadeiro
										}
										senao se(ingressoTipo == 'M')
										{
											escreva("Ingresso meia entrada comprado com sucesso!")
											sala3Cadeiras[Texto.posicao_texto(fila, alfabeto,0)][cadeira-1] = "x"
											sala3Renda += 12.50
											sala3IngressosQtd ++
											ingressoComprado = verdadeiro
										}
										senao
											escreva("Opção inválida, tente novamente.")
									}
								}
							pare
							caso '4':
							pare
							caso contrario:
								escreva("Opção inválida")
						}
					}
				pare
				caso 'c':
					escreva("\nFuncionalidade ainda não foi desenvolvida, tente novamente mais tarde.\n")
				pare
				caso 'd':
					escreva("\nFuncionalidade ainda não foi desenvolvida, tente novamente mais tarde.\n")
				pare
				caso 'e':
					escreva("\nEncerrando o programa...\n")
					caracterDigitado = 'e'
				pare
				caso contrario:
					escreva("\nOpção inválida, tente novamente.\n")
				pare
			}
		}
		
	}
}
/* $$$ Portugol Studio $$$ 
 * 
 * Esta seção do arquivo guarda informações do Portugol Studio.
 * Você pode apagá-la se estiver utilizando outro editor.
 * 
 * @POSICAO-CURSOR = 6387; 
 * @PONTOS-DE-PARADA = ;
 * @SIMBOLOS-INSPECIONADOS = {sala1Cadeiras, 39, 9, 13}-{sala2Cadeiras, 40, 9, 13}-{sala3Cadeiras, 41, 9, 13};
 * @FILTRO-ARVORE-TIPOS-DE-DADO = inteiro, real, logico, cadeia, caracter, vazio;
 * @FILTRO-ARVORE-TIPOS-DE-SIMBOLO = variavel, vetor, matriz, funcao;
 */