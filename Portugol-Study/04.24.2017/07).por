programa
{
/*
Preencha um array com 10 valores informados pelo usuário, calcule e mostre o somatório
dos elementos armazenados em posições de índices pares do array.
*/
	funcao inicio()
	{
		const inteiro TAM = 10
		inteiro array[TAM]
		inteiro acumulador = 0

		escreva("Digite 10 números: \n")
		para(inteiro i = 0; i < TAM; i++)
		{
			leia(array[i])
		}

		para(inteiro i = 0; i < TAM; i++)
		{
			se(array[i] % 2 == 0)
			{
				escreva("\n",i,"\n")
				acumulador += array[i]
			}
		}
		escreva("\nResultado é:\n",acumulador)
	}
}
/* $$$ Portugol Studio $$$ 
 * 
 * Esta seção do arquivo guarda informações do Portugol Studio.
 * Você pode apagá-la se estiver utilizando outro editor.
 * 
 * @POSICAO-CURSOR = 418; 
 * @PONTOS-DE-PARADA = ;
 * @SIMBOLOS-INSPECIONADOS = ;
 * @FILTRO-ARVORE-TIPOS-DE-DADO = inteiro, real, logico, cadeia, caracter, vazio;
 * @FILTRO-ARVORE-TIPOS-DE-SIMBOLO = variavel, vetor, matriz, funcao;
 */