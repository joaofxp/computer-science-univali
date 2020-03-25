programa
{
//Faça um programa que receba um número real, digitado pelo usuário e mostre o menu para
//selecionar o tipo de cálculo que deve ser realizado. Exiba o resultado do cálculo efetuado.
//101 - O dobro
//102 - A metade
//103 - 10% do número 
	funcao inicio()
	{
		real numeroConta = 0.0
		inteiro opcoes

		escreva("Digite um número: \n")
		leia(numeroConta)
		escreva("Escolha o cálculo desejado: \n 101 - O dobro \n 102 - A metade \n 103 - 10% do número \n")
		leia(opcoes)
		
		escolha(opcoes)
		{
			caso 101:
				escreva("O resultado do dobro do numero é: ", numeroConta * 2)
				pare
			caso 102:
				escreva("O resultado da metade do número é: ", numeroConta / 2)		
				pare
			caso 103:
				escreva("O resultado de 10% do número é: ", numeroConta * 0.10)
				pare
			caso contrario:
				escreva("Você não escolheu uma opção válida, tente novamente.")
				pare
		}
	}
}
/* $$$ Portugol Studio $$$ 
 * 
 * Esta seção do arquivo guarda informações do Portugol Studio.
 * Você pode apagá-la se estiver utilizando outro editor.
 * 
 * @POSICAO-CURSOR = 512; 
 * @PONTOS-DE-PARADA = ;
 * @SIMBOLOS-INSPECIONADOS = ;
 * @FILTRO-ARVORE-TIPOS-DE-DADO = inteiro, real, logico, cadeia, caracter, vazio;
 * @FILTRO-ARVORE-TIPOS-DE-SIMBOLO = variavel, vetor, matriz, funcao;
 */