programa
{
/*
Solicite ao usuário 10 valores inteiros e armazene estes em um array. 
Após o programa deve exibir qual o maior elemento contido no array.
*/
	funcao inicio()
	{
		const inteiro TAM = 10
		inteiro array[TAM]
		inteiro maior = 0

		escreva("Escreva 10 números:\n")
		para(inteiro i = 0; i < TAM; i++)
		{
			leia(array[i])
		}

		para(inteiro i = 0; i < TAM; i++)
		{
			se(maior < array[i])
				maior = array[i]
		}

		escreva("Maior é: ", maior)
	}
}
/* $$$ Portugol Studio $$$ 
 * 
 * Esta seção do arquivo guarda informações do Portugol Studio.
 * Você pode apagá-la se estiver utilizando outro editor.
 * 
 * @POSICAO-CURSOR = 459; 
 * @PONTOS-DE-PARADA = ;
 * @SIMBOLOS-INSPECIONADOS = ;
 * @FILTRO-ARVORE-TIPOS-DE-DADO = inteiro, real, logico, cadeia, caracter, vazio;
 * @FILTRO-ARVORE-TIPOS-DE-SIMBOLO = variavel, vetor, matriz, funcao;
 */