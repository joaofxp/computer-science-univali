programa
{
/*
Fa�a uma fun��o que receba como par�metro um n�mero inteiro e exiba um desenho
baseado neste n�mero, conforme exemplo abaixo:
*/
	funcao inicio()
	{
		desenhoNumero(5)
	}

	funcao desenhoNumero(inteiro numero)
	{
		para(inteiro i = 0; i < numero; i++)
		{
			para(inteiro j = 0; j <= i; j++)
			{
				escreva("*")
			}
			escreva("\n")
		}
	}
}
/* $$$ Portugol Studio $$$ 
 * 
 * Esta se��o do arquivo guarda informa��es do Portugol Studio.
 * Voc� pode apag�-la se estiver utilizando outro editor.
 * 
 * @POSICAO-CURSOR = 185; 
 * @PONTOS-DE-PARADA = ;
 * @SIMBOLOS-INSPECIONADOS = ;
 * @FILTRO-ARVORE-TIPOS-DE-DADO = inteiro, real, logico, cadeia, caracter, vazio;
 * @FILTRO-ARVORE-TIPOS-DE-SIMBOLO = variavel, vetor, matriz, funcao;
 */