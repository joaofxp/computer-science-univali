programa
{
/*
Faça uma função que receba como parâmetro um número inteiro e exiba um desenho
baseado neste número, conforme exemplo abaixo:
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
 * Esta seção do arquivo guarda informações do Portugol Studio.
 * Você pode apagá-la se estiver utilizando outro editor.
 * 
 * @POSICAO-CURSOR = 185; 
 * @PONTOS-DE-PARADA = ;
 * @SIMBOLOS-INSPECIONADOS = ;
 * @FILTRO-ARVORE-TIPOS-DE-DADO = inteiro, real, logico, cadeia, caracter, vazio;
 * @FILTRO-ARVORE-TIPOS-DE-SIMBOLO = variavel, vetor, matriz, funcao;
 */