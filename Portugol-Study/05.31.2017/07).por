programa
{
/*
Escreva um programa que solicita um valor inteiro ao usuário e exibe a tabuada do número
lido. Você deverá escrever as seguintes funções:

funcao inteiro LerNumero()
	Lê um número inteiro e retorna esse número para o programa principal.
funcao Tabuada(inteiro n)
	Recebe como parâmetro um número inteiro e exibe na tela a tabuada (até 10) deste 
	número
*/
	funcao inicio()
	{		
		inteiro numTabuada = LerNumero()

		Tabuada(numTabuada)
	}

	funcao inteiro LerNumero()
	{
		inteiro numero
		leia(numero)
		retorne numero
	}

	funcao Tabuada(inteiro num)
	{
		para(inteiro i = 1; i <= 10; i++)
		{
			escreva(num*i, " | ")
		}
	}
}
/* $$$ Portugol Studio $$$ 
 * 
 * Esta seção do arquivo guarda informações do Portugol Studio.
 * Você pode apagá-la se estiver utilizando outro editor.
 * 
 * @POSICAO-CURSOR = 602; 
 * @PONTOS-DE-PARADA = ;
 * @SIMBOLOS-INSPECIONADOS = ;
 * @FILTRO-ARVORE-TIPOS-DE-DADO = inteiro, real, logico, cadeia, caracter, vazio;
 * @FILTRO-ARVORE-TIPOS-DE-SIMBOLO = variavel, vetor, matriz, funcao;
 */