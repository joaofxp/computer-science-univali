programa
{
/*
Escreva um programa que solicita um valor inteiro ao usu�rio e exibe a tabuada do n�mero
lido. Voc� dever� escrever as seguintes fun��es:

funcao inteiro LerNumero()
	L� um n�mero inteiro e retorna esse n�mero para o programa principal.
funcao Tabuada(inteiro n)
	Recebe como par�metro um n�mero inteiro e exibe na tela a tabuada (at� 10) deste 
	n�mero
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
 * Esta se��o do arquivo guarda informa��es do Portugol Studio.
 * Voc� pode apag�-la se estiver utilizando outro editor.
 * 
 * @POSICAO-CURSOR = 602; 
 * @PONTOS-DE-PARADA = ;
 * @SIMBOLOS-INSPECIONADOS = ;
 * @FILTRO-ARVORE-TIPOS-DE-DADO = inteiro, real, logico, cadeia, caracter, vazio;
 * @FILTRO-ARVORE-TIPOS-DE-SIMBOLO = variavel, vetor, matriz, funcao;
 */