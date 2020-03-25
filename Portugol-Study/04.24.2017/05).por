programa
{
/*
Armazene em um array os 100 primeiros números ímpares. 
Após isso, o algoritmo deve exibir todos os valores armazenados.
*/
	funcao inicio()
	{
		const inteiro TAM = 100
		inteiro array[TAM]

		para(inteiro i = 0; i < TAM; i++)
		{
			se(i % 2 != 0)
				array[i] = i
		}

		para(inteiro i = 0; i < TAM; i++)
		{
			se(i % 2 != 0)
				escreva(array[i],"\n")
		}
	}
}
/* $$$ Portugol Studio $$$ 
 * 
 * Esta seção do arquivo guarda informações do Portugol Studio.
 * Você pode apagá-la se estiver utilizando outro editor.
 * 
 * @POSICAO-CURSOR = 374; 
 * @PONTOS-DE-PARADA = ;
 * @SIMBOLOS-INSPECIONADOS = ;
 * @FILTRO-ARVORE-TIPOS-DE-DADO = inteiro, real, logico, cadeia, caracter, vazio;
 * @FILTRO-ARVORE-TIPOS-DE-SIMBOLO = variavel, vetor, matriz, funcao;
 */