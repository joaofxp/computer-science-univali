programa
{
/*
Faça um programa que cadastre até 10 clientes, no cadastro de cada cliente é necessário
informar o nome, idade e CPF. No início do programa deve ser exibido um menu para o
usuário com as opções:
1 - Cadastrar novo cliente
2 - Buscar por um cliente
3 - Zerar cadastro
0 - Sair do sistema

1- O programa deve solicitar os dados do cliente e armazená-lo em um array (cada
informação deve ser salva em um array diferente).
Caso já tenham sido cadastrados 10 clientes, o programa deve avisar o usuário que não
é possível cadastrar um novo cliente e reapresentar o menu de opções.

2- O programa deve solicitar um CPF e após isso verificar no array onde os clientes estão
armazenados se há algum cliente cadastrado com o CPF informado, caso houver é
necessário exibir todas as informações deste cliente: nome, idade e CPF. Caso
contrário, o programa deve exibir uma mensagem notificando que não há nenhum
cliente com o CPF informado e reapresentar o menu de opções.

3- O programa deve excluir todos os clientes do array e reapresentar o menu de opções.

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

		enquanto(clientesQtd <= TAM)
		{
			se(clientesQtd < TAM)
				escreva("1 - Cadastrar novo cliente \n2 - Buscar por um cliente \n3 - Zerar cadastro \n0 - Sair do sistema\n")
			senao
				escreva("Limite de clientes cadastrados \n2 - Buscar por um cliente \n3 - Zerar cadastro \n0 - Sair do sistema\n")
			leia(caracterDigitado)
			escolha(caracterDigitado)
			{
				caso '1':
					escreva("Digite o nome do novo cliente:\n")
					leia(arrayNome[clientesQtd])
					escreva("Digite a idade do novo cliente:\n")
					leia(arrayIdade[clientesQtd])				
					escreva("Digite o CPF do novo cliente:\n")
					leia(arrayCPF[clientesQtd])
					clientesQtd++
				pare
				caso '0':
					
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
 * Esta seção do arquivo guarda informações do Portugol Studio.
 * Você pode apagá-la se estiver utilizando outro editor.
 * 
 * @POSICAO-CURSOR = 1941; 
 * @PONTOS-DE-PARADA = ;
 * @SIMBOLOS-INSPECIONADOS = ;
 * @FILTRO-ARVORE-TIPOS-DE-DADO = inteiro, real, logico, cadeia, caracter, vazio;
 * @FILTRO-ARVORE-TIPOS-DE-SIMBOLO = variavel, vetor, matriz, funcao;
 */