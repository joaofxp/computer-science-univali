programa
{
/*
8) Fa�a um programa para uma calculadora com as seguintes opera��es: adi��o, subtra��o,
multiplica��o e divis�o.
O programa come�a apresentando ao usu�rio um menu de op��es semelhante ao mostrado abaixo:
Calculadora:
1 - Adi��o
2 - Subtra��o
3 - Multiplica��o
4 - Divis�o
5 - Sair do programa
Selecione sua op��o:
Crie uma fun��o chamada Menu, que exiba o menu acima e retorna a op��o do usu�rio para o
programa principal. De acordo com a op��o do usu�rio, chame uma das seguintes fun��es: adicao,
subtracao, multiplicacao, divisao, passando como par�metros dois n�meros reais tamb�m
informados pelo usu�rio.
Se a op��o for inv�lida, informe ao usu�rio e pe�a a ele para entrar com uma op��o v�lida.
Ap�s a execu��o da opera��o o programa volta a apresentar o menu inicial at� que o usu�rio
encerre o programa com a op��o 5.
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
				escreva("Digite dois n�meros:\n")
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
					escreva("Op��o inv�lida, tente novamente.")
				pare
			}
			
		}
	}

	funcao Menu()
	{		
		escreva("\nCalculadora: \n1 - Adi��o \n2 - Subtra��o \n3 - Multiplica��o \n4 - Divis�o \n5 - Sair do programa\n")
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
 * Esta se��o do arquivo guarda informa��es do Portugol Studio.
 * Voc� pode apag�-la se estiver utilizando outro editor.
 * 
 * @POSICAO-CURSOR = 1108; 
 * @PONTOS-DE-PARADA = ;
 * @SIMBOLOS-INSPECIONADOS = ;
 * @FILTRO-ARVORE-TIPOS-DE-DADO = inteiro, real, logico, cadeia, caracter, vazio;
 * @FILTRO-ARVORE-TIPOS-DE-SIMBOLO = variavel, vetor, funcao;
 */