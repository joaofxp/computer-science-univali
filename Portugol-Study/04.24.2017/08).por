programa
{
/*
Solicite ao usu�rio 10 valores inteiros e armazene estes em um array. 
Ap�s o programa deve exibir qual o maior elemento contido no array.
*/
	funcao inicio()
	{
		const inteiro TAM = 10
		inteiro array[TAM]
		inteiro maior = 0

		escreva("Escreva 10 n�meros:\n")
		para(inteiro i = 0; i < TAM; i++)
		{
			leia(array[i])
		}

		para(inteiro i = 0; i < TAM; i++)
		{
			se(maior < array[i])
				maior = array[i]
		}

		escreva("Maior �: ", maior)
	}
}
/* $$$ Portugol Studio $$$ 
 * 
 * Esta se��o do arquivo guarda informa��es do Portugol Studio.
 * Voc� pode apag�-la se estiver utilizando outro editor.
 * 
 * @POSICAO-CURSOR = 459; 
 * @PONTOS-DE-PARADA = ;
 * @SIMBOLOS-INSPECIONADOS = ;
 * @FILTRO-ARVORE-TIPOS-DE-DADO = inteiro, real, logico, cadeia, caracter, vazio;
 * @FILTRO-ARVORE-TIPOS-DE-SIMBOLO = variavel, vetor, matriz, funcao;
 */