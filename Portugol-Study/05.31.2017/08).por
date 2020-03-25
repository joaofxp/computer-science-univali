programa
{
/*
8) Faça um programa para uma calculadora com as seguintes operações: adição, subtração,
multiplicação e divisão.
O programa começa apresentando ao usuário um menu de opções semelhante ao mostrado abaixo:
Calculadora:
1 - Adição
2 - Subtração
3 - Multiplicação
4 - Divisão
5 - Sair do programa
Selecione sua opção:
Crie uma função chamada Menu, que exiba o menu acima e retorna a opção do usuário para o
programa principal. De acordo com a opção do usuário, chame uma das seguintes funções: adicao,
subtracao, multiplicacao, divisao, passando como parâmetros dois números reais também
informados pelo usuário.
Se a opção for inválida, informe ao usuário e peça a ele para entrar com uma opção válida.
Após a execução da operação o programa volta a apresentar o menu inicial até que o usuário
encerre o programa com a opção 5.
*/
	funcao inicio()
	{
		const inteiro opcaoSaida = 5
		inteiro opcao = 0
		real num1 = 20.0
		real num2 = 10.0
		
		enquanto(opcao != opcaoSaida)
		{
			Menu()
			leia(opcao)
			se(opcao != opcaoSaida)
			{
				escreva("Digite dois números:\n")
				leia(num1,num2)				
			}
			escolha(opcao)
			{
				caso 1:
					Adicao(num1,num2)
				pare
				caso 2:
					Subtracao(num1,num2)
				pare
				caso 3:
					Multiplicacao(num1,num2)
				pare
				caso 4:
					Divisao(num1,num2)
				pare
				caso 5:
					opcao = 5
				pare
				caso contrario:
					escreva("Opção inválida, tente novamente.")
				pare
			}
			
		}
	}

	funcao Menu()
	{		
		escreva("\nCalculadora: \n1 - Adição \n2 - Subtração \n3 - Multiplicação \n4 - Divisão \n5 - Sair do programa\n")
	}

	funcao Adicao(real num1, real num2)
	{
		escreva(num1+num2)
	}

	funcao Subtracao(real num1, real num2)
	{
		escreva(num1-num2)
	}

	funcao Multiplicacao(real num1, real num2)
	{
		escreva(num1*num2)
	}

	funcao Divisao(real num1, real num2)
	{
		escreva(num1/num2)
	}
}
/* $$$ Portugol Studio $$$ 
 * 
 * Esta seção do arquivo guarda informações do Portugol Studio.
 * Você pode apagá-la se estiver utilizando outro editor.
 * 
 * @POSICAO-CURSOR = 1108; 
 * @PONTOS-DE-PARADA = ;
 * @SIMBOLOS-INSPECIONADOS = ;
 * @FILTRO-ARVORE-TIPOS-DE-DADO = inteiro, real, logico, cadeia, caracter, vazio;
 * @FILTRO-ARVORE-TIPOS-DE-SIMBOLO = variavel, vetor, funcao;
 */