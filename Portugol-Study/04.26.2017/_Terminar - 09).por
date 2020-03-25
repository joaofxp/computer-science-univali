programa
{
/*
Fa�a um programa que cadastre at� 10 clientes, no cadastro de cada cliente � necess�rio
informar o nome, idade e CPF. No in�cio do programa deve ser exibido um menu para o
usu�rio com as op��es:
1 - Cadastrar novo cliente
2 - Buscar por um cliente
3 - Zerar cadastro
0 - Sair do sistema

1- O programa deve solicitar os dados do cliente e armazen�-lo em um array (cada
informa��o deve ser salva em um array diferente).
Caso j� tenham sido cadastrados 10 clientes, o programa deve avisar o usu�rio que n�o
� poss�vel cadastrar um novo cliente e reapresentar o menu de op��es.

2- O programa deve solicitar um CPF e ap�s isso verificar no array onde os clientes est�o
armazenados se h� algum cliente cadastrado com o CPF informado, caso houver �
necess�rio exibir todas as informa��es deste cliente: nome, idade e CPF. Caso
contr�rio, o programa deve exibir uma mensagem notificando que n�o h� nenhum
cliente com o CPF informado e reapresentar o menu de op��es.

3- O programa deve excluir todos os clientes do array e reapresentar o menu de op��es.

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
					escreva("Opera��o inv�lida, tente novamente.")
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