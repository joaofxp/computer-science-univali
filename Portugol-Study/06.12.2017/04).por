programa
{
/*
retorne o somatório dos valores armazenados em um vetor contendo N números inteiros. 
uma função não recursiva que realize a mesma operação.
*/
	inclua biblioteca Util
	
	const inteiro TAM = 5
	
	funcao inicio()
	{
		inteiro array[TAM]
	 	preencherArray(array)
	 	escreva(somaValoresVetorPadrao(array, Util.numero_elementos(array) - 1))
	}

	funcao inteiro somaValoresVetorRecursivo(inteiro vetor[],inteiro contador)
	{
		se(contador == 0)
			retorne vetor[contador]
		senao
			retorne vetor[contador] + somaValoresVetorRecursivo(vetor,contador - 1)
	}

	funcao inteiro somaValoresVetorPadrao(inteiro vetor[], inteiro contador)
	{
		inteiro resultado = 0
		
		para(inteiro i = 0; i <= contador;  i++)
		{
			resultado += vetor[i]
		}

		retorne resultado
	}
	
	funcao preencherArray(inteiro &vetor[])
	{
		para(inteiro i = 0; i < TAM; i ++)
		{
			vetor[i] = Util.sorteia(1, 50)
			escreva(vetor[i], " | ")
		}
		escreva("\n")
	}
}
/* $$$ Portugol Studio $$$ 
 * 
 * Esta seção do arquivo guarda informações do Portugol Studio.
 * Você pode apagá-la se estiver utilizando outro editor.
 * 
 * @POSICAO-CURSOR = 699; 
 * @PONTOS-DE-PARADA = ;
 * @SIMBOLOS-INSPECIONADOS = ;
 * @FILTRO-ARVORE-TIPOS-DE-DADO = inteiro, real, logico, cadeia, caracter, vazio;
 * @FILTRO-ARVORE-TIPOS-DE-SIMBOLO = variavel, vetor, matriz, funcao;
 */