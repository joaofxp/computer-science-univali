programa
{
/*
Faça um programa que cadastre ate 10 clientes, no cadastro de cada cliente e necessario
informar o nome, idade e CPF. No inicio do programa deve ser exibido um menu para o
usuario com as opcoes:
1 - Cadastrar novo cliente
2 - Buscar por um cliente
3 - Zerar cadastro
0 - Sair do sistema

1- O programa deve solicitar os dados do cliente e armazena-lo em um array (cada
informacao deve ser salva em um array diferente).
Caso ja tenham sido cadastrados 10 clientes, o programa deve avisar o usuario que nao
e possivel cadastrar um novo cliente e reapresentar o menu de opcoes.

2- O programa deve solicitar um CPF e apos isso verificar no array onde os clientes estao
armazenados se ha algum cliente cadastrado com o CPF informado, caso houver e
necessario exibir todas as informacoes deste cliente: nome, idade e CPF. Caso
contrario, o programa deve exibir uma mensagem notificando que nao ha nenhum
cliente com o CPF informado e reapresentar o menu de opcoes.

3- O programa deve excluir todos os clientes do array e reapresentar o menu de opcoes.

0- O programa deve ser encerrado.
*/
	funcao inicio()
	{
		
const inteiro TAM = 10
		cadeia arrayNome[TAM]
		inteiro arrayIdade[TAM]
		real arrayCPF[TAM]
		inteiro clientesQtd = 0
		caracter caracterDigitado
		cadeia nomeBusca

		enquanto(clientesQtd <= TAM)
		{
			escreva("1 - Cadastrar novo cliente \n2 - Buscar por um cliente \n3 - Zerar cadastro \n0 - Sair do sistema\n")
			leia(caracterDigitado)
			escolha(caracterDigitado)
			{
				caso '0':					
				pare
				caso '1':
					se(clientesQtd == TAM)
					{
						escreva("Não é possível cadastrar um novo cliente")
						pare
					}
					escreva("Digite o nome do novo cliente:\n")
					leia(arrayNome[clientesQtd])
					escreva("Digite a idade do novo cliente:\n")
					leia(arrayIdade[clientesQtd])
					escreva("Digite o CPF do novo cliente:\n")
					leia(arrayCPF[clientesQtd])
					clientesQtd++
				pare
				caso '2':
					escreva("Digite o nome cadastrado:\n")
					leia(nomeBusca)
					faca(inteiro i = 0; i < clientesQtd; i++)
					{
						se(nomeBusca == arrayNome[clientesQtd])
						{
							escreva("Cadastrado encontrado\nNome: ", arrayNome[clientesQtd], "\nIdade: ", arrayIdade[clientesQtd], "\nCPF: ", arrayCPF[clientesQtd])
						}
						senao se(i == clientesQtd)
							escreva("Cadastro não encontrado, tente novamente")
					}
				pare
				caso '3':
				pare
				caso contrario:
					escreva("Operação inválida, tente novamente.")
				pare
			}
		}
		
	}
}
/* $$$ Portugol Studio $$$ 
 * 
 * Esta se��o do arquivo guarda informa��es do Portugol Studio.
 * Voc� pode apag�-la se estiver utilizando outro editor.
 * 
 * @POSICAO-CURSOR = 1941; 
 * @PONTOS-DE-PARADA = ;
 * @SIMBOLOS-INSPECIONADOS = ;
 * @FILTRO-ARVORE-TIPOS-DE-DADO = inteiro, real, logico, cadeia, caracter, vazio;
 * @FILTRO-ARVORE-TIPOS-DE-SIMBOLO = variavel, vetor, matriz, funcao;
 */