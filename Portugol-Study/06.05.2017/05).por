programa
{
/*
Fa�a uma fun��o para inverter a ordem dos valores de um array de n�meros inteiros,
esta fun��o deve receber por par�metro o array, o tamanho do array e a quantidade
de vezes que a invers�o deve ser feita. A invers�o sempre deve realizar a troca do
primeiro valor com o �ltimo, segundo com o pen�ltimo e assim por diante.

*/
	const inteiro TAM = 4
	
	funcao inicio()
	{
		inteiro array[TAM][TAM]
		
		para(inteiro i = 0; i < TAM;i++)
		{
			para(inteiro j = 0; j < TAM; j++)
			{
				array[i][j] = j
			}
		}
		
		//fun��o para inverter a ordem dos valores de um array de n�meros inteiros
		reverterOrdemValoresArray(array,TAM,2)
	}

	funcao reverterOrdemValoresArray(inteiro array[][], inteiro arrayTamanho, inteiro inversaoQTD)
	{		
		para(inteiro i = 0; i < TAM;i++)
		{
			inteiro ultimaCasa = TAM - 1
			para(inteiro j = 0; j < inversaoQTD; j++)
			{
				inteiro valorAnterior = array[i][j]				
				array[i][j] = array[i][ultimaCasa]
				array[i][ultimaCasa] = valorAnterior
				ultimaCasa--
			}
		}
	}
}
/* $$$ Portugol Studio $$$ 
 * 
 * Esta se��o do arquivo guarda informa��es do Portugol Studio.
 * Voc� pode apag�-la se estiver utilizando outro editor.
 * 
 * @POSICAO-CURSOR = 647; 
 * @PONTOS-DE-PARADA = ;
 * @SIMBOLOS-INSPECIONADOS = {array, 28, 42, 5}-{ultimaCasa, 32, 11, 10}-{valorAnterior, 35, 12, 13};
 * @FILTRO-ARVORE-TIPOS-DE-DADO = inteiro, real, logico, cadeia, caracter, vazio;
 * @FILTRO-ARVORE-TIPOS-DE-SIMBOLO = variavel, vetor, matriz, funcao;
 */