programa
{
/*
Faça um programa que solicite ao usuário 10 nomes diferentes e armazene-os em um array. 
Depois disso ordene os nomes no array em ordem alfabética e exiba-os no console.
Por fim, ordene os caracteres dentro de cada cadeia em ordem alfabética e exiba o array novamente no console.

? Utilize a biblioteca Texto para contar os caracteres de uma cadeia e para obter o valor dos caracteres separadamente.
Exemplo com o array [ ?Altamir?, ?Jose?, ?Carlos? ]
Array ordenado alfabeticamente: ?Altamir? ? ?Carlos? ? ?Jose?
Array com os caracteres de cada nome ordenados alfabeticamente: ?Aailmrt? ? ?aClors? ? ?eJos?
*/
	inclua biblioteca Texto
	
	funcao inicio()
	{
		const inteiro TAM = 10
		
		cadeia array[TAM] = {"zxz","kewq","yklds","lvcx","mqew","rhgf","tlkj","uytr","bqwxe","qcxz"}

		para(inteiro i = 0; i < TAM; i++)
		{
			para(inteiro j = 0; j < TAM - 1; j++)
			{
				cadeia valorAnterior = ""
				se(array[j] > array[j + 1])
				{
					valorAnterior = array[j]
					array[j] = array[j+1]
					array[j+1] = valorAnterior
				}
			}
		}

		escreva("Array 1: \n")

		para(inteiro i = 0; i < TAM; i++)
		{
			escreva( "| ", array[i], " | ")
		}

		escreva("\n\n")

		para(inteiro i = 0; i < TAM; i++)
		{
			para(inteiro j = 0; j < Texto.numero_caracteres(array[i]); j++)
			{
				cadeia novaPalavra = ""
				para(inteiro contagem = 0; contagem < Texto.numero_caracteres(array[i]); contagem++)
				{					
					se(contagem < Texto.numero_caracteres(array[i]) -1)
					{
						se(Texto.obter_caracter(array[i], contagem)  > Texto.obter_caracter(array[i], contagem+1))
						{
							novaPalavra += Texto.obter_caracter(array[i], contagem+1)
							novaPalavra += Texto.obter_caracter(array[i], contagem)
							contagem += 1
						}
						senao
							novaPalavra += Texto.obter_caracter(array[i], contagem)
					}
					senao
						novaPalavra += Texto.obter_caracter(array[i], contagem)
				}
				array[i] = novaPalavra
			}
		}

		escreva("\nArray 1: \n")

		para(inteiro i = 0; i < TAM; i++)
		{
			escreva( "| ", array[i], " | ")
		}		
	}
}
/* $$$ Portugol Studio $$$ 
 * 
 * Esta seção do arquivo guarda informações do Portugol Studio.
 * Você pode apagá-la se estiver utilizando outro editor.
 * 
 * @POSICAO-CURSOR = 1239; 
 * @PONTOS-DE-PARADA = ;
 * @SIMBOLOS-INSPECIONADOS = {array, 19, 9, 5};
 * @FILTRO-ARVORE-TIPOS-DE-DADO = inteiro, real, logico, cadeia, caracter, vazio;
 * @FILTRO-ARVORE-TIPOS-DE-SIMBOLO = variavel, vetor, matriz, funcao;
 */