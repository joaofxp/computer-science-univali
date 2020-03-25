programa
{
//Solicite ao usuário 5 números inteiros e armazene esses números 
//em um array. Exiba o array preenchido.
	funcao inicio()
	{
		const inteiro TAM = 5
		inteiro array[TAM]

		escreva("Digite 5 números:\n")
		leia(array[0],array[1],array[2],array[3],array[4])

		escreva("\nArray:\n")
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
 * @POSICAO-CURSOR = 299; 
 * @PONTOS-DE-PARADA = ;
 * @SIMBOLOS-INSPECIONADOS = ;
 * @FILTRO-ARVORE-TIPOS-DE-DADO = inteiro, real, logico, cadeia, caracter, vazio;
 * @FILTRO-ARVORE-TIPOS-DE-SIMBOLO = variavel, vetor, matriz, funcao;
 */