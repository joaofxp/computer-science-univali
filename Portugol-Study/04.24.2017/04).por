programa
{
/*
Armazene em um array todos os n�meros inteiros do intervalo fechado 
de 1 a 100. Ap�s isso, o algoritmo deve exibir todos os valores armazenados.
*/
	funcao inicio()
	{
		const inteiro TAM = 100
		inteiro array[TAM]

		para(inteiro i = 0; i < TAM; i++)
		{
			array[i] = i + 1
		}

		para(inteiro i = 0; i < TAM; i++)
		{
			escreva(array[i],"\n")
		}
	}
}
/* $$$ Portugol Studio $$$ 
 * 
 * Esta se��o do arquivo guarda informa��es do Portugol Studio.
 * Voc� pode apag�-la se estiver utilizando outro editor.
 * 
 * @POSICAO-CURSOR = 294; 
 * @PONTOS-DE-PARADA = ;
 * @SIMBOLOS-INSPECIONADOS = ;
 * @FILTRO-ARVORE-TIPOS-DE-DADO = inteiro, real, logico, cadeia, caracter, vazio;
 * @FILTRO-ARVORE-TIPOS-DE-SIMBOLO = variavel, vetor, matriz, funcao;
 */