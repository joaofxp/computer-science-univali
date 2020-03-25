programa
{
//Escreva um algoritmo que solicite o valor de N e calcule o fatorial de N.
	funcao inicio()
	{
		inteiro numeroDigitado
		inteiro fatorial = 1
		
		escreva("Digite um número: \n")
		leia(numeroDigitado)
		
		para(inteiro contador = 1; contador <= numeroDigitado; contador++)
		{
			fatorial *= contador
		}
			escreva(fatorial)
	}
}
/* $$$ Portugol Studio $$$ 
 * 
 * Esta seção do arquivo guarda informações do Portugol Studio.
 * Você pode apagá-la se estiver utilizando outro editor.
 * 
 * @POSICAO-CURSOR = 326; 
 * @PONTOS-DE-PARADA = ;
 * @SIMBOLOS-INSPECIONADOS = ;
 * @FILTRO-ARVORE-TIPOS-DE-DADO = inteiro, real, logico, cadeia, caracter, vazio;
 * @FILTRO-ARVORE-TIPOS-DE-SIMBOLO = variavel, vetor, matriz, funcao;
 */