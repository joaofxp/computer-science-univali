programa
{
	funcao inicio()
	{
		inteiro numeroDigitado
		inteiro numerosQtd   = 0
		inteiro paresQtd 	 = 0
		inteiro imparesQtd   = 0
		inteiro mediaPares   = 0
		inteiro mediaImpares = 0
		
		enquanto(numerosQtd < 10)
		{
			leia(numeroDigitado)
			se(numeroDigitado % 2 == 0)
			{
				paresQtd++
				mediaPares += numeroDigitado			
			}
			senao
			{
				imparesQtd++
				mediaImpares += numeroDigitado
			}
			numerosQtd++
		}

		escreva("Media Pares: ", mediaPares / paresQtd +"\n")
		escreva("Media Impares: ", mediaImpares / imparesQtd)
	}
}
/* $$$ Portugol Studio $$$ 
 * 
 * Esta seção do arquivo guarda informações do Portugol Studio.
 * Você pode apagá-la se estiver utilizando outro editor.
 * 
 * @POSICAO-CURSOR = 491; 
 * @PONTOS-DE-PARADA = ;
 * @SIMBOLOS-INSPECIONADOS = ;
 * @FILTRO-ARVORE-TIPOS-DE-DADO = inteiro, real, logico, cadeia, caracter, vazio;
 * @FILTRO-ARVORE-TIPOS-DE-SIMBOLO = variavel, vetor, matriz, funcao;
 */