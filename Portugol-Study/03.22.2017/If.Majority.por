programa
{
	/*
Fa�a um programa que solicita que o usu�rio digite o seu nome e sua idade, a resposta do algoritmo

deve indicar se o usu�rio � maior de idade ou n�o.

Exemplo:

Digite seu nome: Gabriel

Digite sua idade: 10

Seu nome �: Gabriel.

Voc� tem mais de 18 anos: falso
	 */
	funcao inicio()
	{
		cadeia nome
		inteiro idade
	
		escreva("Digite seu nome: ")
		leia(nome)
		escreva("Digite sua idade: ")
		leia(idade)
		escreva(nome + " voc� tem mais de 18 anos: ", idade > 18)
	}
}
/* $$$ Portugol Studio $$$ 
 * 
 * Esta se��o do arquivo guarda informa��es do Portugol Studio.
 * Voc� pode apag�-la se estiver utilizando outro editor.
 * 
 * @POSICAO-CURSOR = 285; 
 * @PONTOS-DE-PARADA = ;
 * @SIMBOLOS-INSPECIONADOS = ;
 * @FILTRO-ARVORE-TIPOS-DE-DADO = inteiro, real, logico, cadeia, caracter, vazio;
 * @FILTRO-ARVORE-TIPOS-DE-SIMBOLO = variavel, vetor, matriz, funcao;
 */