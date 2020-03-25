programa
{
	/*
Faça um programa que solicita que o usuário digite o seu nome e sua idade, a resposta do algoritmo

deve indicar se o usuário é maior de idade ou não.

Exemplo:

Digite seu nome: Gabriel

Digite sua idade: 10

Seu nome é: Gabriel.

Você tem mais de 18 anos: falso
	 */
	funcao inicio()
	{
		cadeia nome
		inteiro idade
	
		escreva("Digite seu nome: ")
		leia(nome)
		escreva("Digite sua idade: ")
		leia(idade)
		escreva(nome + " você tem mais de 18 anos: ", idade > 18)
	}
}
/* $$$ Portugol Studio $$$ 
 * 
 * Esta seção do arquivo guarda informações do Portugol Studio.
 * Você pode apagá-la se estiver utilizando outro editor.
 * 
 * @POSICAO-CURSOR = 285; 
 * @PONTOS-DE-PARADA = ;
 * @SIMBOLOS-INSPECIONADOS = ;
 * @FILTRO-ARVORE-TIPOS-DE-DADO = inteiro, real, logico, cadeia, caracter, vazio;
 * @FILTRO-ARVORE-TIPOS-DE-SIMBOLO = variavel, vetor, matriz, funcao;
 */