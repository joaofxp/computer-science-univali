programa
{
/*
Faça um programa que inicialize o array { ?i?, ?a?, ?e?, ?u?, ?o? }, após isso 
solicite ao usuário para que ele digite um caracter qualquer. É necessário responder se
o caracter é uma consoante ou uma vogal, e além disso, em casos onde o caracter é uma
vogal é necessário indicar em qual posição do array ela está.
*/
	funcao inicio()
	{
		caracter array[] = {'i','a','e','u','o'}
		caracter caracterDigitado
		caracter caracterTipo = 'c'

		escreva("Digite um caracter qualquer: \n")
		leia(caracterDigitado)

		para(inteiro i = 0; i < 5; i++)
		{
			se(caracterDigitado == array[i])
			{
				escreva("Caracter é uma vogal e está na posição: ", i+1)
				caracterTipo = 'v'
			}
		}

		se (caracterTipo == 'c')
			escreva("Caracter é uma consoante")
	}
}
/* $$$ Portugol Studio $$$ 
 * 
 * Esta seção do arquivo guarda informações do Portugol Studio.
 * Você pode apagá-la se estiver utilizando outro editor.
 * 
 * @POSICAO-CURSOR = 668; 
 * @PONTOS-DE-PARADA = ;
 * @SIMBOLOS-INSPECIONADOS = ;
 * @FILTRO-ARVORE-TIPOS-DE-DADO = inteiro, real, logico, cadeia, caracter, vazio;
 * @FILTRO-ARVORE-TIPOS-DE-SIMBOLO = variavel, vetor, matriz, funcao;
 */