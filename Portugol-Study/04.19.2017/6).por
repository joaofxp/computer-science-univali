programa
{
//Escreva um algoritmo que leia dez n�meros inteiros e informe o maior e o menor n�mero.
	funcao inicio()
	{
		inteiro maior = 0, menor = 0, contador, numeroDigitado

		para(contador = 0; contador <= 10; contador++)
		{
			leia(numeroDigitado)
			se(contador == 0)
			{
				maior = numeroDigitado
				menor = numeroDigitado
			}

			se(numeroDigitado > maior)
				maior = numeroDigitado

			se(numeroDigitado < menor)
				menor = numeroDigitado
		}

		escreva("Maior n�mero �: ", maior, "\n")
		escreva("Menor n�mero �: ", menor, "\n")
	}
}
/* $$$ Portugol Studio $$$ 
 * 
 * Esta se��o do arquivo guarda informa��es do Portugol Studio.
 * Voc� pode apag�-la se estiver utilizando outro editor.
 * 
 * @POSICAO-CURSOR = 460; 
 * @PONTOS-DE-PARADA = ;
 * @SIMBOLOS-INSPECIONADOS = ;
 * @FILTRO-ARVORE-TIPOS-DE-DADO = inteiro, real, logico, cadeia, caracter, vazio;
 * @FILTRO-ARVORE-TIPOS-DE-SIMBOLO = variavel, vetor, matriz, funcao;
 */