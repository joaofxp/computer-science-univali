programa
{
//Faça um algoritmo que gere e exiba os 20 primeiros termos da série de Fibonacci. Os dois primeiros
//termos da série são 1 e 1, os termos seguintes são a soma dos dois anteriores. Observe o exemplo:
//1, 1, 2, 3, 5, 8, 13, 21, ...
	funcao inicio()
	{
		inteiro soma1 = 1,soma2 = 1,resultado,contador

		para(contador = 0; contador < 20; contador++)
		{
			resultado = soma1 + soma2
			escreva(resultado,"\n")
			soma1 = soma2
			soma2 = resultado
		}
	}
}
/* $$$ Portugol Studio $$$ 
 * 
 * Esta seção do arquivo guarda informações do Portugol Studio.
 * Você pode apagá-la se estiver utilizando outro editor.
 * 
 * @POSICAO-CURSOR = 288; 
 * @PONTOS-DE-PARADA = ;
 * @SIMBOLOS-INSPECIONADOS = ;
 * @FILTRO-ARVORE-TIPOS-DE-DADO = inteiro, real, logico, cadeia, caracter, vazio;
 * @FILTRO-ARVORE-TIPOS-DE-SIMBOLO = variavel, vetor, matriz, funcao;
 */