programa
{
/*
Faça um algoritmo em que o usuário preencha dois arrays de 10 posições. O programa
deve fazer a soma de todos os elementos dos dois arrays e identificar o maior elemento 
de cada array
*/
	inclua biblioteca Util
	funcao inicio()
	{
		const inteiro TAM = 10
		inteiro array1[TAM]
		inteiro array2[TAM]
		inteiro somaArray1 = 0
		inteiro somaArray2 = 0
		inteiro somaArray3 = 0
		inteiro maiorArray1 = 0
		inteiro maiorArray2 = 0

		para(inteiro i = 0; i < TAM; i++)
		{
			array1[i] = Util.sorteia(1, 100)
			array2[i] = Util.sorteia(1, 100)

			se(i == 0)
			{
				maiorArray1 = array1[i]
				maiorArray2 = array2[i]
			}

			se(maiorArray1 < array1[i])
				maiorArray1 = array1[i]
			se(maiorArray2 < array2[i])
				maiorArray2 = array2[i]

			somaArray1 += array1[i]
			somaArray2 += array2[i]
		}

		somaArray3 = somaArray1 + somaArray2

		escreva("Array 1: ")
		para(inteiro i = 0; i < TAM; i ++)
		{
			escreva(array1[i], " | ")
		}

		escreva("\nArray 2: ")
		para(inteiro i = 0; i < TAM; i ++)
		{
			escreva(array2[i], " | ")
		}

		escreva("\n\nSoma dos elementos do Array 1: ", somaArray1)
		escreva("\nSoma dos elementos do Array 2: ", somaArray2)
		escreva("\nSoma dos elementos do Array 1 e 2: ", somaArray3)
		escreva("\nMaior elemento do Array 1 é: ", maiorArray1)
		escreva("\nMaior elemento do Array 2 é: ", maiorArray2)
	}
}
/* $$$ Portugol Studio $$$ 
 * 
 * Esta seção do arquivo guarda informações do Portugol Studio.
 * Você pode apagá-la se estiver utilizando outro editor.
 * 
 * @POSICAO-CURSOR = 1356; 
 * @PONTOS-DE-PARADA = ;
 * @SIMBOLOS-INSPECIONADOS = ;
 * @FILTRO-ARVORE-TIPOS-DE-DADO = inteiro, real, logico, cadeia, caracter, vazio;
 * @FILTRO-ARVORE-TIPOS-DE-SIMBOLO = variavel, vetor, matriz, funcao;
 */