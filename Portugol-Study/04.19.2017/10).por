programa
{
//Escreva um algoritmo que solicite um número inteiro e exiba todos os divisores desse número.
	funcao inicio()
	{
		inteiro numeroDigitado

		escreva("Digite um número: \n")
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
 * Esta seção do arquivo guarda informações do Portugol Studio.
 * Você pode apagá-la se estiver utilizando outro editor.
 * 
 * @POSICAO-CURSOR = 156; 
 * @PONTOS-DE-PARADA = ;
 * @SIMBOLOS-INSPECIONADOS = ;
 * @FILTRO-ARVORE-TIPOS-DE-DADO = inteiro, real, logico, cadeia, caracter, vazio;
 * @FILTRO-ARVORE-TIPOS-DE-SIMBOLO = variavel, vetor, matriz, funcao;
 */