programa
{
	inclua biblioteca Matematica --> mat
//Escreva um algoritmo que leia quinze n�meros informados pelo usu�rio e escreva a raiz quadrada de cada n�mero 
//(Dica: utilize a biblioteca Matematica)
	funcao inicio()
	{
		real numeroDigitado
		para(inteiro contador = 0; contador <= 15; contador++)
		{
			leia(numeroDigitado)
			escreva(mat.raiz(numeroDigitado, 2.0),"\n")
		}
	}
}
/* $$$ Portugol Studio $$$ 
 * 
 * Esta se��o do arquivo guarda informa��es do Portugol Studio.
 * Voc� pode apag�-la se estiver utilizando outro editor.
 * 
 * @POSICAO-CURSOR = 227; 
 * @PONTOS-DE-PARADA = ;
 * @SIMBOLOS-INSPECIONADOS = ;
 * @FILTRO-ARVORE-TIPOS-DE-DADO = inteiro, real, logico, cadeia, caracter, vazio;
 * @FILTRO-ARVORE-TIPOS-DE-SIMBOLO = variavel, vetor, matriz, funcao;
 */