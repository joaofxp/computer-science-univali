programa
{
//Escreva um algoritmo que determine se um n�mero N (digitado pelo usu�rio) � primo ou n�o.
	funcao inicio()
	{
		inteiro numeroDigitado
		escreva("Digite um n�mero: \n")
		leia(numeroDigitado)

		para(inteiro contador = 2; contador <= numeroDigitado; contador++)
		{
			se(numeroDigitado % contador == 0 e contador != numeroDigitado)
			{
				escreva("O n�mero n�o � primo")
				pare
			}
			senao se(contador == numeroDigitado)
				escreva("O n�mero � primo!")
		}
	}

}
/* $$$ Portugol Studio $$$ 
 * 
 * Esta se��o do arquivo guarda informa��es do Portugol Studio.
 * Voc� pode apag�-la se estiver utilizando outro editor.
 * 
 * @POSICAO-CURSOR = 390; 
 * @PONTOS-DE-PARADA = ;
 * @SIMBOLOS-INSPECIONADOS = ;
 * @FILTRO-ARVORE-TIPOS-DE-DADO = inteiro, real, logico, cadeia, caracter, vazio;
 * @FILTRO-ARVORE-TIPOS-DE-SIMBOLO = variavel, vetor, matriz, funcao;
 */