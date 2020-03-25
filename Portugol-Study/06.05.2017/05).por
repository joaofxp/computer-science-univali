programa
{
/*
Faça uma função para inverter a ordem dos valores de um array de números inteiros,
esta função deve receber por parâmetro o array, o tamanho do array e a quantidade
de vezes que a inversão deve ser feita. A inversão sempre deve realizar a troca do
primeiro valor com o último, segundo com o penúltimo e assim por diante.

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
		
		//função para inverter a ordem dos valores de um array de números inteiros
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
 * Esta seção do arquivo guarda informações do Portugol Studio.
 * Você pode apagá-la se estiver utilizando outro editor.
 * 
 * @POSICAO-CURSOR = 647; 
 * @PONTOS-DE-PARADA = ;
 * @SIMBOLOS-INSPECIONADOS = {array, 28, 42, 5}-{ultimaCasa, 32, 11, 10}-{valorAnterior, 35, 12, 13};
 * @FILTRO-ARVORE-TIPOS-DE-DADO = inteiro, real, logico, cadeia, caracter, vazio;
 * @FILTRO-ARVORE-TIPOS-DE-SIMBOLO = variavel, vetor, matriz, funcao;
 */