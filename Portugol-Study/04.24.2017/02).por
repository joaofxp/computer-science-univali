programa
{
/*
Solicita ao usuário 10 valores reais e armazene em um array. Calcule
e exiba a média aritmética dos valores. Em seguida, exiba todos os 
valores digitados que estão acima da média calculada.
*/
	funcao inicio()
	{
		const inteiro TAM = 10
		real array[TAM]
		real media = 0.0

		escreva("Digite 10 números:\n")

		para(inteiro i = 0; i < TAM; i++)
		{
			leia(array[i])
		}

		para(inteiro i = 0; i < TAM; i++)
		{
			media += array[i]
		}

		media /= TAM

		escreva("A média é: ",TAM,"\n")
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
 * Esta seção do arquivo guarda informações do Portugol Studio.
 * Você pode apagá-la se estiver utilizando outro editor.
 * 
 * @POSICAO-CURSOR = 392; 
 * @PONTOS-DE-PARADA = ;
 * @SIMBOLOS-INSPECIONADOS = ;
 * @FILTRO-ARVORE-TIPOS-DE-DADO = inteiro, real, logico, cadeia, caracter, vazio;
 * @FILTRO-ARVORE-TIPOS-DE-SIMBOLO = variavel, vetor, matriz, funcao;
 */