programa
{
/*
Faça um programa que leia a altura e o gênero (codificado da seguinte forma: 
?F? - feminino; ?M? - masculino) de uma pessoa. Depois faça uma função chamada 
peso_ideal que receba a altura e o gênero como parâmetros e retorna o peso ideal, 
utilizando as seguintes fórmulas: 
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
 * Esta seção do arquivo guarda informações do Portugol Studio.
 * Você pode apagá-la se estiver utilizando outro editor.
 * 
 * @POSICAO-CURSOR = 440; 
 * @PONTOS-DE-PARADA = ;
 * @SIMBOLOS-INSPECIONADOS = ;
 * @FILTRO-ARVORE-TIPOS-DE-DADO = inteiro, real, logico, cadeia, caracter, vazio;
 * @FILTRO-ARVORE-TIPOS-DE-SIMBOLO = variavel, vetor, matriz, funcao;
 */