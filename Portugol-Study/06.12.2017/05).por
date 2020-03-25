programa
{
/*
recursiva que procura um elemento em um vetor com N números inteiros;
retornar o índice onde o elemento se encontra ou -1 se não o encontrar. 
função não recursiva que realize a mesma operação.
 */
	inclua biblioteca Util
	
	const inteiro TAM = 5
	
	funcao inicio()
	{

		inteiro array[TAM]
		preencherArray(array)
		escreva(procurarElementoVetorPadrao(array,10,TAM -1))
	}

	funcao inteiro procurarElementoVetorRecursividade(inteiro vetor[],inteiro elemento, inteiro vetorTamanho)
	{
		se(vetor[vetorTamanho] == elemento)
			retorne vetorTamanho
		senao se(vetorTamanho == 0)
			retorne -1
		senao
			retorne procurarElementoVetorRecursividade(vetor,elemento,vetorTamanho-1)
	}

	funcao inteiro procurarElementoVetorPadrao(inteiro vetor[],inteiro elemento, inteiro vetorTamanho)
	{
		para(inteiro i = 0; i < vetorTamanho; i++)
		{
			se(vetor[i] == elemento)
				retorne i
		}
		retorne -1
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
 * @POSICAO-CURSOR = 388; 
 * @PONTOS-DE-PARADA = ;
 * @SIMBOLOS-INSPECIONADOS = ;
 * @FILTRO-ARVORE-TIPOS-DE-DADO = inteiro, real, logico, cadeia, caracter, vazio;
 * @FILTRO-ARVORE-TIPOS-DE-SIMBOLO = variavel, vetor, matriz, funcao;
 */