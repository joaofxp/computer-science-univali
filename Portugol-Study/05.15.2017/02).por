programa
{
/*
Fa�a um algoritmo que preencha uma matriz 6x6 de n�meros inteiros com o valor 1
em todas as posi��es da diagonal principal e com o valor zero nas demais posi��es.
*/
	funcao inicio()
	{
		const inteiro TAM = 6
		inteiro array[TAM][TAM]

		para(inteiro i = 0; i < TAM; i++)
		{
			para(inteiro j = 0; j < TAM; j++)
			{
				array[i][j] = 1
				se(i == j)
					array[i][j] = 0				
			}
		}
	}
}
/* $$$ Portugol Studio $$$ 
 * 
 * Esta se��o do arquivo guarda informa��es do Portugol Studio.
 * Voc� pode apag�-la se estiver utilizando outro editor.
 * 
 * @POSICAO-CURSOR = 228; 
 * @PONTOS-DE-PARADA = ;
 * @SIMBOLOS-INSPECIONADOS = {array, 10, 10, 5};
 * @FILTRO-ARVORE-TIPOS-DE-DADO = inteiro, real, logico, cadeia, caracter, vazio;
 * @FILTRO-ARVORE-TIPOS-DE-SIMBOLO = variavel, vetor, matriz, funcao;
 */