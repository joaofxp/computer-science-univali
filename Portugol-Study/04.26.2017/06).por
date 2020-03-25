programa
{
/*
Faça um algoritmo em que o usuário preencha dois arrays de 5 posições. O programa deve
realizar a subtração dos elementos do primeiro array, com os elementos do segundo array.
No entando esta subtração deve ser realizada de forma cruzada (utilizando laço de
repetição), conforme exemplo:
*/
	inclua biblioteca Util
	funcao inicio()
	{
		const inteiro TAM = 5
		inteiro array1[TAM]
		inteiro array2[TAM]
		inteiro contador = 0
		
		para(inteiro i = 0; i < TAM; i++)
		{
			array1[i] = Util.sorteia(1, 100)
			array2[i] = Util.sorteia(1, 100)
		}


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

		para(inteiro i = TAM - 1; i >= 0; i --)
		{
			escreva("\n",array1[contador], " Menos ", array2[i], " é igual a: ",array1[contador] - array2[i])
			contador++
		}
	}
}
/* $$$ Portugol Studio $$$ 
 * 
 * Esta seção do arquivo guarda informações do Portugol Studio.
 * Você pode apagá-la se estiver utilizando outro editor.
 * 
 * @POSICAO-CURSOR = 795; 
 * @PONTOS-DE-PARADA = ;
 * @SIMBOLOS-INSPECIONADOS = ;
 * @FILTRO-ARVORE-TIPOS-DE-DADO = inteiro, real, logico, cadeia, caracter, vazio;
 * @FILTRO-ARVORE-TIPOS-DE-SIMBOLO = variavel, vetor, matriz, funcao;
 */