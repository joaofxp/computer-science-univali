programa
{
/*
Preencha um array de 50 posições com números aleatórios entre 1 e 50 e exiba:

- O menor valor contido no array;

- O índice do menor valor contido no array;

- A quantidade de números ímpares contidos no array;

- Todos os números pares contidos no array.
*/

	inclua biblioteca Util

	funcao inicio()
	{
		const inteiro TAM = 50
		inteiro array[TAM]
		inteiro menorIndice = 0
		inteiro menorValor = 51

		para(inteiro i = 0; i < TAM; i++)
		{
			array[i] = Util.sorteia(1, 50)
		}

		para(inteiro i = 0; i < TAM; i++)
		{
			se(menorValor > array[i])
			{
				menorIndice = i
				menorValor = array[i]				
			}
		}

		escreva("Menor índice é: ", menorIndice, " E seu valor é: ", menorValor)
	}
}
/* $$$ Portugol Studio $$$ 
 * 
 * Esta seção do arquivo guarda informações do Portugol Studio.
 * Você pode apagá-la se estiver utilizando outro editor.
 * 
 * @POSICAO-CURSOR = 710; 
 * @PONTOS-DE-PARADA = ;
 * @SIMBOLOS-INSPECIONADOS = ;
 * @FILTRO-ARVORE-TIPOS-DE-DADO = inteiro, real, logico, cadeia, caracter, vazio;
 * @FILTRO-ARVORE-TIPOS-DE-SIMBOLO = variavel, vetor, matriz, funcao;
 */