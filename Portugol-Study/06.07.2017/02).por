programa
{
/*
 Faça um programa contendo três funções:
a) Uma função para solicitar dez valores ao usuário e armazená-los em um array
b) Uma função para ordenar um array em ordem crescente;
c) Uma função para ordenar um array em ordem decrescente;
d) Uma função que imprima um array no console;
As funções b e c devem receber o array por referência, para que seu resultado
reflita no array recebido por parâmetro.

*/
	inclua biblioteca Util
	
	const inteiro TAM = 10
	
	funcao inicio()
	{
		inteiro array[TAM]
		solicitarValores(array,TAM)
		exibirMatriz(array)
		ordenarDecrescente(array)
		exibirMatriz(array)
	}

	funcao solicitarValores(inteiro &array[], inteiro valoresQtd)
	{
		para(inteiro i = 0; i < valoresQtd; i++)
		{
			array[i] = Util.sorteia(1, 100)
		}
	}

	funcao ordenarCrescente(inteiro &array[])
	{
		para(inteiro i = 0; i < TAM; i++)
		{
			para(inteiro j = 0; j < TAM - 1; j++)
			{
				se(array[j] > array[j +1])
				{
					inteiro valorAnterior
					valorAnterior = array[j]
					array[j] = array[j+1]
					array[j+1] = valorAnterior
				}
			}
		}
	}

	funcao ordenarDecrescente(inteiro &array[])
	{
		para(inteiro i = 0; i < TAM; i++)
		{
			para(inteiro j = 0; j < TAM - 1; j++)
			{
				se(array[j] < array[j +1])
				{
					inteiro valorAnterior
					valorAnterior = array[j]
					array[j] = array[j+1]
					array[j+1] = valorAnterior
				}
			}
		}		
	}

	funcao exibirMatriz(inteiro array[])
	{
		escreva("\n")
		para(inteiro i = 0; i < Util.numero_elementos(array);i++)
		{
			escreva(array[i], " | ")
		}
	}
}
/* $$$ Portugol Studio $$$ 
 * 
 * Esta seção do arquivo guarda informações do Portugol Studio.
 * Você pode apagá-la se estiver utilizando outro editor.
 * 
 * @POSICAO-CURSOR = 472; 
 * @PONTOS-DE-PARADA = ;
 * @SIMBOLOS-INSPECIONADOS = {array, 19, 10, 5};
 * @FILTRO-ARVORE-TIPOS-DE-DADO = inteiro, real, logico, cadeia, caracter, vazio;
 * @FILTRO-ARVORE-TIPOS-DE-SIMBOLO = variavel, vetor, matriz, funcao;
 */