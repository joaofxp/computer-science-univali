programa
{
//Escreva um algoritmo que leia dez n�meros inteiros e informe o maior e o menor n�mero.
	funcao inicio()
	{
		inteiro numeroDigitado
		inteiro contagem = 0
		inteiro maiorNumero
		inteiro menorNumero
		
		enquanto(contagem < 10)
		{
			leia(numeroDigitado)
			se(contagem == 0)
			{
				maiorNumero = numeroDigitado
				menorNumero = numeroDigitado
			}

			se(numeroDigitado > maiorNumero)
				maiorNumero = numeroDigitado

			se(numeroDigitado < menorNumero)
				menorNumero = numeroDigitado

			contagem++
		}

		escreva("Menor n�mero �: ", menorNumero, "\n")
		escreva("Maior n�mero �: ", maiorNumero)
	}
}
/* $$$ Portugol Studio $$$ 
 * 
 * Esta se��o do arquivo guarda informa��es do Portugol Studio.
 * Voc� pode apag�-la se estiver utilizando outro editor.
 * 
 * @POSICAO-CURSOR = 621; 
 * @PONTOS-DE-PARADA = ;
 * @SIMBOLOS-INSPECIONADOS = ;
 * @FILTRO-ARVORE-TIPOS-DE-DADO = inteiro, real, logico, cadeia, caracter, vazio;
 * @FILTRO-ARVORE-TIPOS-DE-SIMBOLO = variavel, vetor, matriz, funcao;
 */