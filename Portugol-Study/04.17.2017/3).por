programa
{
	funcao inicio()
	{
		inteiro numeroDigitado
		inteiro numeroQuantidade = 0
		inteiro numerosEntre10E20 = 0

		enquanto(numeroQuantidade < 10)
		{
			leia(numeroDigitado)
			se(numeroDigitado > 10 ou numeroDigitado < 20 e numeroDigitado > 10)
				numerosEntre10E20++

			numeroQuantidade++
		}

		escreva("Pessoas com idade entre 10 e 20: ", numerosEntre10E20)
	}
}
/* $$$ Portugol Studio $$$ 
 * 
 * Esta se��o do arquivo guarda informa��es do Portugol Studio.
 * Voc� pode apag�-la se estiver utilizando outro editor.
 * 
 * @POSICAO-CURSOR = 305; 
 * @PONTOS-DE-PARADA = ;
 * @SIMBOLOS-INSPECIONADOS = ;
 * @FILTRO-ARVORE-TIPOS-DE-DADO = inteiro, real, logico, cadeia, caracter, vazio;
 * @FILTRO-ARVORE-TIPOS-DE-SIMBOLO = variavel, vetor, matriz, funcao;
 */