programa
{
/*
Escreva um programa que leia o raio de um círculo e faça duas funções: uma função chamada
area que calcula e retorna a área do círculo e outra função chamada perimetro que calcula e
retorna o perímetro do círculo.
*/
	funcao inicio()
	{
		inteiro area = 20
		inteiro perimetro = 2

		escreva(areaCirculo(area),"\n", perimetroCirculo(perimetro))
		
	}

	funcao real areaCirculo(inteiro raio)
	{
		retorne 3.14 * (raio * raio)
	}

	funcao real perimetroCirculo(inteiro raio)
	{
		retorne 3.14 * 2 * raio
	}
}
/* $$$ Portugol Studio $$$ 
 * 
 * Esta seção do arquivo guarda informações do Portugol Studio.
 * Você pode apagá-la se estiver utilizando outro editor.
 * 
 * @POSICAO-CURSOR = 362; 
 * @PONTOS-DE-PARADA = ;
 * @SIMBOLOS-INSPECIONADOS = ;
 * @FILTRO-ARVORE-TIPOS-DE-DADO = inteiro, real, logico, cadeia, caracter, vazio;
 * @FILTRO-ARVORE-TIPOS-DE-SIMBOLO = variavel, vetor, matriz, funcao;
 */