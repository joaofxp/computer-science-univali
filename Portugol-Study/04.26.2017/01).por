programa
{
/*
Fa�a um programa que solicite ao usu�rio 3 n�meros e exiba: o maior n�mero, 
o menor n�mero e a soma dos tr�s.
- N�o utilize array
*/
	funcao inicio()
	{
		inteiro maiorNumero = 0
		inteiro menorNumero = 0
		inteiro somaNumeros = 0
		inteiro numeroDigitado


		escreva("Digite tr�s n�meros: \n")

		para(inteiro i = 0; i < 3; i++)
		{
			leia(numeroDigitado)
			se(i == 0)
			{
				maiorNumero = numeroDigitado
				menorNumero = numeroDigitado
			}

			se(numeroDigitado > maiorNumero)
				maiorNumero = numeroDigitado

			se(numeroDigitado < menorNumero)
				menorNumero = numeroDigitado

			somaNumeros += numeroDigitado
		}

		escreva("\nMaior n�mero �: ", maiorNumero)
		escreva("\nMenor n�mero �: ", menorNumero)
		escreva("\nSoma dos n�meros: ",somaNumeros)
	}
}
/* $$$ Portugol Studio $$$ 
 * 
 * Esta se��o do arquivo guarda informa��es do Portugol Studio.
 * Voc� pode apag�-la se estiver utilizando outro editor.
 * 
 * @POSICAO-CURSOR = 750; 
 * @PONTOS-DE-PARADA = ;
 * @SIMBOLOS-INSPECIONADOS = ;
 * @FILTRO-ARVORE-TIPOS-DE-DADO = inteiro, real, logico, cadeia, caracter, vazio;
 * @FILTRO-ARVORE-TIPOS-DE-SIMBOLO = variavel, vetor, matriz, funcao;
 */