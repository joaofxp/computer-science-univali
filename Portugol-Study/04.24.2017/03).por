programa
{
/*
Faça um algoritmo em que o usuário preencha dois arrays de 10 
posições. O programa deve fazer a multiplicação dos elementos de 
mesmo índice, colocando o resultado em um terceiro array. Exiba o 
array resultante.
*/
	funcao inicio()
	{
		const inteiro TAM = 10
		inteiro array1[TAM],array2[TAM],array3[TAM]

		escreva("Digite 10 números:\n")

		para(inteiro i = 0; i < TAM; i++)
		{
			leia(array1[i])
		}

		escreva("\nDigite mais 10 números:\n")

		para(inteiro i = 0; i < TAM; i++)
		{
			leia(array2[i])
		}

		para(inteiro i = 0; i < TAM; i++)
		{
			array3[i] = array1[i] * array2[i]
			escreva(array3[i],"\n")
		}
	}
}
/* $$$ Portugol Studio $$$ 
 * 
 * Esta seção do arquivo guarda informações do Portugol Studio.
 * Você pode apagá-la se estiver utilizando outro editor.
 * 
 * @POSICAO-CURSOR = 639; 
 * @PONTOS-DE-PARADA = ;
 * @SIMBOLOS-INSPECIONADOS = ;
 * @FILTRO-ARVORE-TIPOS-DE-DADO = inteiro, real, logico, cadeia, caracter, vazio;
 * @FILTRO-ARVORE-TIPOS-DE-SIMBOLO = variavel, vetor, matriz, funcao;
 */