programa
{
/*
Fa�a um algoritmo em que o usu�rio preencha dois arrays de 5 posi��es. O programa deve
realizar a subtra��o dos elementos do primeiro array, com os elementos do segundo array.
No entando esta subtra��o deve ser realizada de forma cruzada (utilizando la�o de
repeti��o), conforme exemplo:
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
			escreva("\n",array1[contador], " Menos ", array2[i], " � igual a: ",array1[contador] - array2[i])
			contador++
		}
	}
}
/* $$$ Portugol Studio $$$ 
 * 
 * Esta se��o do arquivo guarda informa��es do Portugol Studio.
 * Voc� pode apag�-la se estiver utilizando outro editor.
 * 
 * @POSICAO-CURSOR = 795; 
 * @PONTOS-DE-PARADA = ;
 * @SIMBOLOS-INSPECIONADOS = ;
 * @FILTRO-ARVORE-TIPOS-DE-DADO = inteiro, real, logico, cadeia, caracter, vazio;
 * @FILTRO-ARVORE-TIPOS-DE-SIMBOLO = variavel, vetor, matriz, funcao;
 */