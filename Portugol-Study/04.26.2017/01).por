programa
{
/*
Faça um programa que solicite ao usuário 3 números e exiba: o maior número, 
o menor número e a soma dos três.
- Não utilize array
*/
	funcao inicio()
	{
		inteiro maiorNumero = 0
		inteiro menorNumero = 0
		inteiro somaNumeros = 0
		inteiro numeroDigitado


		escreva("Digite três números: \n")

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

		escreva("\nMaior número é: ", maiorNumero)
		escreva("\nMenor número é: ", menorNumero)
		escreva("\nSoma dos números: ",somaNumeros)
	}
}
/* $$$ Portugol Studio $$$ 
 * 
 * Esta seção do arquivo guarda informações do Portugol Studio.
 * Você pode apagá-la se estiver utilizando outro editor.
 * 
 * @POSICAO-CURSOR = 750; 
 * @PONTOS-DE-PARADA = ;
 * @SIMBOLOS-INSPECIONADOS = ;
 * @FILTRO-ARVORE-TIPOS-DE-DADO = inteiro, real, logico, cadeia, caracter, vazio;
 * @FILTRO-ARVORE-TIPOS-DE-SIMBOLO = variavel, vetor, matriz, funcao;
 */