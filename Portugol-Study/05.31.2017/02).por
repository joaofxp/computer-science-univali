programa
{
/*
Fa�a uma fun��o que receba como par�metro o n�mero de lados de um pol�gono e:
- Se o n�mero de lados for igual a 3, escrever TRI�NGULO.
- Se o n�mero de lados for igual a 4, escrever QUADRADO.
- Se o n�mero de lados for igual a 5, escrever PENT�GONO.
- Se o n�mero de lados for diferente de 3, 4 ou 5, escrever VALOR INV�LIDO.
*/
	funcao inicio()
	{
		escreva(tipoPoligono(4))
	}

	funcao cadeia tipoPoligono(inteiro numLados)
	{
		escolha(numLados)
		{
			caso 3:
				retorne "TRI�NGULO"
			pare
			caso 4:
				retorne "QUADRADO"
			pare
			caso 5:
				retorne "PENT�GONO"
			pare
			caso contrario:
				retorne "VALOR INV�LIDO"
			pare
			
		}
	}
}
/* $$$ Portugol Studio $$$ 
 * 
 * Esta se��o do arquivo guarda informa��es do Portugol Studio.
 * Voc� pode apag�-la se estiver utilizando outro editor.
 * 
 * @POSICAO-CURSOR = 342; 
 * @PONTOS-DE-PARADA = ;
 * @SIMBOLOS-INSPECIONADOS = ;
 * @FILTRO-ARVORE-TIPOS-DE-DADO = inteiro, real, logico, cadeia, caracter, vazio;
 * @FILTRO-ARVORE-TIPOS-DE-SIMBOLO = variavel, vetor, matriz, funcao;
 */