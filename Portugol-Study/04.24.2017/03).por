programa
{
/*
Fa�a um algoritmo em que o usu�rio preencha dois arrays de 10 
posi��es. O programa deve fazer a multiplica��o dos elementos de 
mesmo �ndice, colocando o resultado em um terceiro array. Exiba o 
array resultante.
*/
	funcao inicio()
	{
		const inteiro TAM = 10
		inteiro array1[TAM],array2[TAM],array3[TAM]

		escreva("Digite 10 n�meros:\n")

		para(inteiro i = 0; i < TAM; i++)
		{
			leia(array1[i])
		}

		escreva("\nDigite mais 10 n�meros:\n")

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
 * Esta se��o do arquivo guarda informa��es do Portugol Studio.
 * Voc� pode apag�-la se estiver utilizando outro editor.
 * 
 * @POSICAO-CURSOR = 639; 
 * @PONTOS-DE-PARADA = ;
 * @SIMBOLOS-INSPECIONADOS = ;
 * @FILTRO-ARVORE-TIPOS-DE-DADO = inteiro, real, logico, cadeia, caracter, vazio;
 * @FILTRO-ARVORE-TIPOS-DE-SIMBOLO = variavel, vetor, matriz, funcao;
 */