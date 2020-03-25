programa
{
/*
Faça um programa que preencha um array de 50 posições com números inteiros aleatórios, 
após isso, copie o valor deste array para dois outros arrays auxiliares.
Aplique o algoritmo bubble sort para ordenar os dois arrays auxiliares, um em ordem crescente 
e outro em ordem decrescente. Por fim exiba os 3 arrays no console.

? Utilize a biblioteca Util para sortear os valores.
Exemplo com o array [ 7, 3, 19]
Array original: 7 ? 3 ? 19
Array crescente: 3 ? 7 ? 19
Array decrescente: 19 ? 7 ? 3
*/
	inclua biblioteca Util
	funcao inicio()
	{
		const inteiro TAM = 50
		inteiro array1[TAM]
		inteiro array2[TAM]
		inteiro array3[TAM]
		logico  arrayDecrescente = falso

		para(inteiro i = 0; i < TAM; i++)
		{
			array1[i] = Util.sorteia(0, TAM)
			array2[i] = array1[i]
			array3[i] = array1[i]
		}

		para(inteiro contagem = 0; contagem < TAM - 1; contagem++)
		{
			para(inteiro i = 0; i < TAM; i++)
			{
				inteiro proximaCasa = i

				se(i < TAM - 1)
					proximaCasa += 1

				se(array2[i] > array2[proximaCasa])
				{
					inteiro valorAnterior = array2[i]
					array2[i] = array2[proximaCasa]
					array2[proximaCasa] = valorAnterior
				}

				se(array3[i] < array3[proximaCasa])
				{
					inteiro valorAnterior = array3[i]
					array3[i] = array3[proximaCasa]
					array3[proximaCasa] = valorAnterior
				}
			}
		}

		escreva("Array 1: ")
		para(inteiro i = 0; i < TAM; i++)
		{
			escreva(array1[i], " | ")
		}

		escreva("\nArray 2: ")
		para(inteiro i = 0; i < TAM; i++)
		{
			escreva(array2[i], " | ")
		}

		escreva("\nArray 3: ")
		para(inteiro i = 0; i < TAM; i++)
		{
			escreva(array3[i], " | ")
		}

//		enquanto(arrayCrescente == falso)
//		{
//			arrayCrescente = verdadeiro
//			para(inteiro i = 0; i < TAM; i++)
//			{
//				inteiro proximaCasa = i
//
//				se(i < TAM - 1)
//					proximaCasa += 1
//
//				se(array2[i] > array2[proximaCasa])
//				{
//					inteiro valorAnterior = array2[i]
//					array2[i] = array2[proximaCasa]
//					array2[proximaCasa] = valorAnterior
//					arrayCrescente = falso
//				}
//			}
//		}
//
//		enquanto(arrayDecrescente == falso)
//		{
//			arrayDecrescente = verdadeiro
//			para(inteiro i = 0; i < TAM; i++)
//			{
//				inteiro proximaCasa = i
//
//				se(i < TAM - 1)
//					proximaCasa += 1
//
//				se(array3[i] < array3[proximaCasa])
//				{
//					inteiro valorAnterior = array3[i]
//					array3[i] = array3[proximaCasa]
//					array3[proximaCasa] = valorAnterior
//					arrayDecrescente = falso
//				}
//			}
//		}
//
	}
}
/* $$$ Portugol Studio $$$ 
 * 
 * Esta seção do arquivo guarda informações do Portugol Studio.
 * Você pode apagá-la se estiver utilizando outro editor.
 * 
 * @POSICAO-CURSOR = 1331; 
 * @PONTOS-DE-PARADA = ;
 * @SIMBOLOS-INSPECIONADOS = ;
 * @FILTRO-ARVORE-TIPOS-DE-DADO = inteiro, real, logico, cadeia, caracter, vazio;
 * @FILTRO-ARVORE-TIPOS-DE-SIMBOLO = variavel, vetor, matriz, funcao;
 */