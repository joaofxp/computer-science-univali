programa
{
/*
Fa�a um programa que leia a altura e o g�nero (codificado da seguinte forma: 
?F? - feminino; ?M? - masculino) de uma pessoa. Depois fa�a uma fun��o chamada 
peso_ideal que receba a altura e o g�nero como par�metros e retorna o peso ideal, 
utilizando as seguintes f�rmulas: 
- para homens : (72.7 * altura) ? 58
- para mulheres : (62.1 * altura) ? 44.7
 */
	funcao inicio()
	{
		caracter genero = 'M'
		real altura = 1.6
		escreva(peso_ideal(altura,genero))
	}

	funcao real peso_ideal(real altura, caracter genero)
	{
		se(genero == 'M')
		{
			retorne (72.7 * altura) - 58
		}
		senao
		{
			retorne (62.1 * altura) - 44.7
		}
	}
}
/* $$$ Portugol Studio $$$ 
 * 
 * Esta se��o do arquivo guarda informa��es do Portugol Studio.
 * Voc� pode apag�-la se estiver utilizando outro editor.
 * 
 * @POSICAO-CURSOR = 440; 
 * @PONTOS-DE-PARADA = ;
 * @SIMBOLOS-INSPECIONADOS = ;
 * @FILTRO-ARVORE-TIPOS-DE-DADO = inteiro, real, logico, cadeia, caracter, vazio;
 * @FILTRO-ARVORE-TIPOS-DE-SIMBOLO = variavel, vetor, matriz, funcao;
 */