programa
{
	inclua biblioteca Matematica --> mat
	
	funcao inicio()
	{
		real numeroDigitado
		inteiro numeroQtd = 0
		real raiz

		enquanto(numeroQtd < 15)
		{
			leia(numeroDigitado)
			raiz = mat.raiz(numeroDigitado, 2.0)
			escreva("Raiz do n�mero: ", numeroDigitado, " �: ",raiz, "\n")
			numeroQtd++
		}
	}
}
/* $$$ Portugol Studio $$$ 
 * 
 * Esta se��o do arquivo guarda informa��es do Portugol Studio.
 * Voc� pode apag�-la se estiver utilizando outro editor.
 * 
 * @POSICAO-CURSOR = 81; 
 * @PONTOS-DE-PARADA = ;
 * @SIMBOLOS-INSPECIONADOS = ;
 * @FILTRO-ARVORE-TIPOS-DE-DADO = inteiro, real, logico, cadeia, caracter, vazio;
 * @FILTRO-ARVORE-TIPOS-DE-SIMBOLO = variavel, vetor, matriz, funcao;
 */