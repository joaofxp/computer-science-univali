programa
{
//Escreva um algoritmo que leia dez números inteiros e informe o maior e o menor número.
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

		escreva("Menor número é: ", menorNumero, "\n")
		escreva("Maior número é: ", maiorNumero)
	}
}
/* $$$ Portugol Studio $$$ 
 * 
 * Esta seção do arquivo guarda informações do Portugol Studio.
 * Você pode apagá-la se estiver utilizando outro editor.
 * 
 * @POSICAO-CURSOR = 621; 
 * @PONTOS-DE-PARADA = ;
 * @SIMBOLOS-INSPECIONADOS = ;
 * @FILTRO-ARVORE-TIPOS-DE-DADO = inteiro, real, logico, cadeia, caracter, vazio;
 * @FILTRO-ARVORE-TIPOS-DE-SIMBOLO = variavel, vetor, matriz, funcao;
 */