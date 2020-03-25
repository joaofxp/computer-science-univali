programa
{
/*
Armazene em um array todos os números inteiros do intervalo fechado 
de 1 a 100. Após isso, o algoritmo deve exibir todos os valores armazenados.
*/
	funcao inicio()
	{
		const inteiro TAM = 100
		inteiro array[TAM]

		para(inteiro i = 0; i < TAM; i++)
		{
			array[i] = i + 1
		}

		para(inteiro i = 0; i < TAM; i++)
		{
			escreva(array[i],"\n")
		}
	}
}
/* $$$ Portugol Studio $$$ 
 * 
 * Esta seção do arquivo guarda informações do Portugol Studio.
 * Você pode apagá-la se estiver utilizando outro editor.
 * 
 * @POSICAO-CURSOR = 294; 
 * @PONTOS-DE-PARADA = ;
 * @SIMBOLOS-INSPECIONADOS = ;
 * @FILTRO-ARVORE-TIPOS-DE-DADO = inteiro, real, logico, cadeia, caracter, vazio;
 * @FILTRO-ARVORE-TIPOS-DE-SIMBOLO = variavel, vetor, matriz, funcao;
 */