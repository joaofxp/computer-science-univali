programa
{
/*
Solicita ao usu�rio 10 valores reais e armazene em um array. Calcule
e exiba a m�dia aritm�tica dos valores. Em seguida, exiba todos os 
valores digitados que est�o acima da m�dia calculada.
*/
	funcao inicio()
	{
		const inteiro TAM = 10
		real array[TAM]
		real media = 0.0

		escreva("Digite 10 n�meros:\n")

		para(inteiro i = 0; i < TAM; i++)
		{
			leia(array[i])
		}

		para(inteiro i = 0; i < TAM; i++)
		{
			media += array[i]
		}

		media /= TAM

		escreva("A m�dia �: ",TAM,"\n")
		escreva("Maiores: \n")
		
		para(inteiro i = 0; i < TAM; i++)
		{
			se(media < array[i])
				escreva(array[i],"\n")
		}
	}
}
/* $$$ Portugol Studio $$$ 
 * 
 * Esta se��o do arquivo guarda informa��es do Portugol Studio.
 * Voc� pode apag�-la se estiver utilizando outro editor.
 * 
 * @POSICAO-CURSOR = 392; 
 * @PONTOS-DE-PARADA = ;
 * @SIMBOLOS-INSPECIONADOS = ;
 * @FILTRO-ARVORE-TIPOS-DE-DADO = inteiro, real, logico, cadeia, caracter, vazio;
 * @FILTRO-ARVORE-TIPOS-DE-SIMBOLO = variavel, vetor, matriz, funcao;
 */