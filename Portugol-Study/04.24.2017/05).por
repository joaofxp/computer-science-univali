programa
{
/*
Armazene em um array os 100 primeiros n�meros �mpares. 
Ap�s isso, o algoritmo deve exibir todos os valores armazenados.
*/
	funcao inicio()
	{
		const inteiro TAM = 100
		inteiro array[TAM]

		para(inteiro i = 0; i < TAM; i++)
		{
			se(i % 2 != 0)
				array[i] = i
		}

		para(inteiro i = 0; i < TAM; i++)
		{
			se(i % 2 != 0)
				escreva(array[i],"\n")
		}
	}
}
/* $$$ Portugol Studio $$$ 
 * 
 * Esta se��o do arquivo guarda informa��es do Portugol Studio.
 * Voc� pode apag�-la se estiver utilizando outro editor.
 * 
 * @POSICAO-CURSOR = 374; 
 * @PONTOS-DE-PARADA = ;
 * @SIMBOLOS-INSPECIONADOS = ;
 * @FILTRO-ARVORE-TIPOS-DE-DADO = inteiro, real, logico, cadeia, caracter, vazio;
 * @FILTRO-ARVORE-TIPOS-DE-SIMBOLO = variavel, vetor, matriz, funcao;
 */