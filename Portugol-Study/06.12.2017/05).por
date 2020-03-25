programa
{
/*
recursiva que procura um elemento em um vetor com N n�meros inteiros;
retornar o �ndice onde o elemento se encontra ou -1 se n�o o encontrar. 
fun��o n�o recursiva que realize a mesma opera��o.
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
 * Esta se��o do arquivo guarda informa��es do Portugol Studio.
 * Voc� pode apag�-la se estiver utilizando outro editor.
 * 
 * @POSICAO-CURSOR = 388; 
 * @PONTOS-DE-PARADA = ;
 * @SIMBOLOS-INSPECIONADOS = ;
 * @FILTRO-ARVORE-TIPOS-DE-DADO = inteiro, real, logico, cadeia, caracter, vazio;
 * @FILTRO-ARVORE-TIPOS-DE-SIMBOLO = variavel, vetor, matriz, funcao;
 */