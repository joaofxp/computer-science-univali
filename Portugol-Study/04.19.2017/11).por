programa
{
//Escreva um algoritmo que determine se um número N (digitado pelo usuário) é primo ou não.
	funcao inicio()
	{
		inteiro numeroDigitado
		escreva("Digite um número: \n")
		leia(numeroDigitado)

		para(inteiro contador = 2; contador <= numeroDigitado; contador++)
		{
			se(numeroDigitado % contador == 0 e contador != numeroDigitado)
			{
				escreva("O número não é primo")
				pare
			}
			senao se(contador == numeroDigitado)
				escreva("O número é primo!")
		}
	}

}
/* $$$ Portugol Studio $$$ 
 * 
 * Esta seção do arquivo guarda informações do Portugol Studio.
 * Você pode apagá-la se estiver utilizando outro editor.
 * 
 * @POSICAO-CURSOR = 390; 
 * @PONTOS-DE-PARADA = ;
 * @SIMBOLOS-INSPECIONADOS = ;
 * @FILTRO-ARVORE-TIPOS-DE-DADO = inteiro, real, logico, cadeia, caracter, vazio;
 * @FILTRO-ARVORE-TIPOS-DE-SIMBOLO = variavel, vetor, matriz, funcao;
 */