programa
{
/*
Preencha um array com 10 valores informados pelo usu�rio, calcule e mostre o somat�rio
dos elementos armazenados em posi��es de �ndices pares do array.
*/
	funcao inicio()
	{
		const inteiro TAM = 10
		inteiro array[TAM]
		inteiro acumulador = 0

		escreva("Digite 10 n�meros: \n")
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
		escreva("\nResultado �:\n",acumulador)
	}
}
/* $$$ Portugol Studio $$$ 
 * 
 * Esta se��o do arquivo guarda informa��es do Portugol Studio.
 * Voc� pode apag�-la se estiver utilizando outro editor.
 * 
 * @POSICAO-CURSOR = 418; 
 * @PONTOS-DE-PARADA = ;
 * @SIMBOLOS-INSPECIONADOS = ;
 * @FILTRO-ARVORE-TIPOS-DE-DADO = inteiro, real, logico, cadeia, caracter, vazio;
 * @FILTRO-ARVORE-TIPOS-DE-SIMBOLO = variavel, vetor, matriz, funcao;
 */