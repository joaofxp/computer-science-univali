programa
{
//Escreva um algoritmo que solicite um n�mero inteiro e exiba todos os divisores desse n�mero.
	funcao inicio()
	{
		inteiro numeroDigitado

		escreva("Digite um n�mero: \n")
		leia(numeroDigitado)

		para(inteiro contador = 1; contador <= numeroDigitado; contador++)
		{
			se(numeroDigitado % contador == 0)
				escreva(contador, "\n")
		}
	}
}
/* $$$ Portugol Studio $$$ 
 * 
 * Esta se��o do arquivo guarda informa��es do Portugol Studio.
 * Voc� pode apag�-la se estiver utilizando outro editor.
 * 
 * @POSICAO-CURSOR = 156; 
 * @PONTOS-DE-PARADA = ;
 * @SIMBOLOS-INSPECIONADOS = ;
 * @FILTRO-ARVORE-TIPOS-DE-DADO = inteiro, real, logico, cadeia, caracter, vazio;
 * @FILTRO-ARVORE-TIPOS-DE-SIMBOLO = variavel, vetor, matriz, funcao;
 */