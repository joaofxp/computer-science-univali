programa
{
//Fa�a um programa que receba um n�mero real, digitado pelo usu�rio e mostre o menu para
//selecionar o tipo de c�lculo que deve ser realizado. Exiba o resultado do c�lculo efetuado.
//101 - O dobro
//102 - A metade
//103 - 10% do n�mero 
	funcao inicio()
	{
		real numeroConta = 0.0
		inteiro opcoes

		escreva("Digite um n�mero: \n")
		leia(numeroConta)
		escreva("Escolha o c�lculo desejado: \n 101 - O dobro \n 102 - A metade \n 103 - 10% do n�mero \n")
		leia(opcoes)
		
		escolha(opcoes)
		{
			caso 101:
				escreva("O resultado do dobro do numero �: ", numeroConta * 2)
				pare
			caso 102:
				escreva("O resultado da metade do n�mero �: ", numeroConta / 2)		
				pare
			caso 103:
				escreva("O resultado de 10% do n�mero �: ", numeroConta * 0.10)
				pare
			caso contrario:
				escreva("Voc� n�o escolheu uma op��o v�lida, tente novamente.")
				pare
		}
	}
}
/* $$$ Portugol Studio $$$ 
 * 
 * Esta se��o do arquivo guarda informa��es do Portugol Studio.
 * Voc� pode apag�-la se estiver utilizando outro editor.
 * 
 * @POSICAO-CURSOR = 512; 
 * @PONTOS-DE-PARADA = ;
 * @SIMBOLOS-INSPECIONADOS = ;
 * @FILTRO-ARVORE-TIPOS-DE-DADO = inteiro, real, logico, cadeia, caracter, vazio;
 * @FILTRO-ARVORE-TIPOS-DE-SIMBOLO = variavel, vetor, matriz, funcao;
 */