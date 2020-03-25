/*
Faça um algoritmo que receba 10 números inteiros e positivos, armazene estes números
em um array. Após isso, crie um outro array de mesmo tamanho, que contenha os valores
do array original, no entanto, este array não poderá conter elementos repetidos. Sempre
que o array for receber um número repetido ele deverá receber o valor -1 ao invés disso.
Exemplo com array de 3 posições:
[1, 3, 5] ? [1, 3, 5]
[3, 3, 5] ? [3, -1, 5]
[5, 5, 5] ? [5, -1. -1]
*/
programa
{
	inclua biblioteca Util

	funcao inicio()
	{
		const inteiro TAMANHO = 10

		inteiro arraySemFiltro[TAMANHO]
		inteiro arrayComFiltro[TAMANHO]
		inteiro numeroSubstituto = -1
		cadeia quebraLinha = "\n"

		para(inteiro contagem1 = 0; contagem1 < TAMANHO; contagem1++)
		{
			arraySemFiltro[contagem1] = Util.sorteia(1, 20)
			arrayComFiltro[contagem1] = arraySemFiltro[contagem1]

			para(inteiro contagem2 = 0; contagem2 < contagem1; contagem2++)
			{
				se(arrayComFiltro[contagem2] == arrayComFiltro[contagem1])
					arrayComFiltro[contagem1] = numeroSubstituto
			}
		}

		escreva("Array 1: ")
		para(inteiro i = 0; i < TAMANHO; i++)
		{
			escreva(arraySemFiltro[i], " | ")
		}

		escreva(quebraLinha,"Array 2: ")
		para(inteiro i = 0; i < TAMANHO; i++)
		{
			escreva(arrayComFiltro[i], " | ")
		}
	}
}
/* $$$ Portugol Studio $$$ 
 * 
 * Esta seção do arquivo guarda informações do Portugol Studio.
 * Você pode apagá-la se estiver utilizando outro editor.
 * 
 * @POSICAO-CURSOR = 1032; 
 * @PONTOS-DE-PARADA = ;
 * @SIMBOLOS-INSPECIONADOS = ;
 * @FILTRO-ARVORE-TIPOS-DE-DADO = inteiro, real, logico, cadeia, caracter, vazio;
 * @FILTRO-ARVORE-TIPOS-DE-SIMBOLO = variavel, vetor, matriz, funcao;
 */