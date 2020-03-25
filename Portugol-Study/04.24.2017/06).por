programa
{
/*
Solicite ao usuário 8 números inteiros e armazene esses números em um array. Copie todo
o conteúdo do array para um segundo array de forma invertida e exiba-o na tela.
*/
	funcao inicio()
	{
		const inteiro TAM = 8
		inteiro array1[TAM]
		inteiro array2[TAM]
		inteiro contagem = 0
		
		escreva("Digite ",TAM," números:\n")
		para(inteiro i = 0; i < TAM; i++)
		{
			leia(array1[i])
		}

		para(inteiro i = TAM-1; i >= 0; i--)
		{
			array2[contagem] = array1[i]
			contagem++
		}

		para(inteiro i = 0; i < TAM; i++)
		{
			escreva("\n",array2[i],"\n")
		}
	}
}
/* $$$ Portugol Studio $$$ 
 * 
 * Esta seção do arquivo guarda informações do Portugol Studio.
 * Você pode apagá-la se estiver utilizando outro editor.
 * 
 * @POSICAO-CURSOR = 436; 
 * @PONTOS-DE-PARADA = ;
 * @SIMBOLOS-INSPECIONADOS = ;
 * @FILTRO-ARVORE-TIPOS-DE-DADO = inteiro, real, logico, cadeia, caracter, vazio;
 * @FILTRO-ARVORE-TIPOS-DE-SIMBOLO = variavel, vetor, matriz, funcao;
 */