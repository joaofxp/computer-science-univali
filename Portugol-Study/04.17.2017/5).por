programa
{
	funcao inicio()
	{
		inteiro numeroDigitado
		inteiro numeroQtd = 0
		inteiro menorNumero
	
		enquanto(numeroQtd < 10)
		{
			leia(numeroDigitado)
			se(numeroQtd == 0)
				menorNumero = numeroDigitado
			
			se(numeroDigitado < menorNumero)
				menorNumero = numeroDigitado
			numeroQtd++
		}

		escreva("O menor n�mero �: ",menorNumero)
	}
}
/* $$$ Portugol Studio $$$ 
 * 
 * Esta se��o do arquivo guarda informa��es do Portugol Studio.
 * Voc� pode apag�-la se estiver utilizando outro editor.
 * 
 * @POSICAO-CURSOR = 258; 
 * @PONTOS-DE-PARADA = ;
 * @SIMBOLOS-INSPECIONADOS = ;
 * @FILTRO-ARVORE-TIPOS-DE-DADO = inteiro, real, logico, cadeia, caracter, vazio;
 * @FILTRO-ARVORE-TIPOS-DE-SIMBOLO = variavel, vetor, matriz, funcao;
 */