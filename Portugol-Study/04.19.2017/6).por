programa
{
//Escreva um algoritmo que leia dez números inteiros e informe o maior e o menor número.
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

		escreva("Maior número é: ", maior, "\n")
		escreva("Menor número é: ", menor, "\n")
	}
}
/* $$$ Portugol Studio $$$ 
 * 
 * Esta seção do arquivo guarda informações do Portugol Studio.
 * Você pode apagá-la se estiver utilizando outro editor.
 * 
 * @POSICAO-CURSOR = 460; 
 * @PONTOS-DE-PARADA = ;
 * @SIMBOLOS-INSPECIONADOS = ;
 * @FILTRO-ARVORE-TIPOS-DE-DADO = inteiro, real, logico, cadeia, caracter, vazio;
 * @FILTRO-ARVORE-TIPOS-DE-SIMBOLO = variavel, vetor, matriz, funcao;
 */