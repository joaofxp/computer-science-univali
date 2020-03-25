programa
{
	inclua biblioteca Util
	funcao inicio()
	{
		//Armazene 25 nomes de clientes
		//Em uma matrix 5x5

		const inteiro TAM = 5
		const inteiro LIMITECLIENTES = 25

		cadeia array[TAM][TAM]
		cadeia nomeDigitado = ""
		inteiro clientesQtd = 0
		inteiro opcao = 1

		para(inteiro i = 0; i < TAM; i++)
		{
			para(inteiro j = 0; j < TAM; j++)
			{
				 array[i][j] = " VAZIO "
//				 clientesQtd++
			}
		}

		enquanto(opcao != 4)
		{
			escreva("\nDigite uma opcao:\n1- Incluir cliente \n2- Buscar cliente por nome \n3- Buscar cliente por identificador \n4- Sair\n")
			leia(opcao)
			escolha(opcao)
			{
				caso 1:
//					clientesQtd--
					se(clientesQtd < LIMITECLIENTES)
					{
						escreva("Digite o nome do novo cliente:\n")
						leia(nomeDigitado)
						
						inteiro qtdContagem = clientesQtd
	
						para(inteiro i = 0; i < TAM; i++)
						{
							para(inteiro j = 0; j < TAM; j++)
							{
								se(qtdContagem == 0)
								{
									array[i][j] = nomeDigitado
									escreva("Cadastro realizado com sucesso.\n")
									clientesQtd++
								}
								qtdContagem--
							}
						}
					}
					senao
						escreva("Limite de clientes atingido. Tente novamente.")				
				pare
				caso 2:
					inteiro identificador = 0
					escreva("Digite o nome para buscar:\n")
					leia(nomeDigitado)
					
					para(inteiro i = 0; i < TAM; i++)
					{
						para(inteiro j = 0; j < TAM; j++)
						{
							identificador++
							se(array[i][j] == nomeDigitado)
							{
								escreva("Nome encontrado:", array[i][j], "\nPosicao na matriz:linha:", i, " coluna:",j, "\nidentificador: ", identificador, "\n")
							}
							senao se(identificador == clientesQtd)
							{
								escreva("Usuario nao encontrado, tente novamente. \n")
							}
						}
					}
				pare
				caso 3:
					escreva("Digite o identificador do nome:\n")
					leia(nomeDigitado)

					inteiro identificador = 0
					
					para(inteiro i = 0; i < TAM; i ++)
					{
						para(inteiro j = 0; j < TAM; j++)
						{
							identificador++
							se(nomeDigitado == ""+identificador)
							{
								escreva("Linha:", i, " | Coluna:", j, " \nNome:", array[i][j], " \nIdentificador:", identificador)
							}
						}
					}
				pare
				caso 4:
					escreva("Encerrando o programa... \n")
				pare
				caso contrario:
					escreva("Opcao invalida, tente novamente.")
				pare
			}
		}

		para(inteiro i = 0; i < TAM; i++)
		{
			para(inteiro j = 0; j < TAM; j++)
			{
				 escreva(array[i][j], " | ")
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
 * @POSICAO-CURSOR = 562; 
 * @PONTOS-DE-PARADA = ;
 * @SIMBOLOS-INSPECIONADOS = {clientesQtd, 14, 10, 11};
 * @FILTRO-ARVORE-TIPOS-DE-DADO = inteiro, real, logico, cadeia, caracter, vazio;
 * @FILTRO-ARVORE-TIPOS-DE-SIMBOLO = variavel, vetor, matriz, funcao;
 */