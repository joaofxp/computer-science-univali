programa
{
/*
	Fa�a um algoritmo que exiba um Menu com as op��es de um card�pio de 
	restaurante. O cliente deve escolher o c�digo do prato desejado e na 
	sequencia, informar se aceita pagar a gorjeta do gar�om. Se o usu�rio 
	aceitar, mostrar o valor final (valor do prato + 10%), caso contr�rio, 
	mostrar somente o valor do prato.
*/
	funcao inicio()
	{
		inteiro pratoCodigo
		inteiro gorjetaGarcom
	
		escreva("| C�digo: 1 | Prato: Picanha           | Valor: 25,00 |\n")
		escreva("| C�digo: 2 | Prato: Lasanha           | Valor: 20,00 |\n")
		escreva("| C�digo: 3 | Prato: Strogonoff        | Valor: 20,00 |\n")
		escreva("| C�digo: 4 | Prato: Bife Acebolado    | Valor: 15,00 |\n")
		escreva("| C�digo: 5 | Prato: P�o com Ovo       | Valor: 5,00  |\n")

		escreva("\nEscolha o c�digo do prato desejado:\n")
		leia(pratoCodigo)
		escreva("Voc� aceitaria pagar a gorjeta do gar�om? (1 para sim | 0 para n�o):\n")
		leia(gorjetaGarcom)

		escolha(pratoCodigo)
		{
			caso 1:
				se(gorjetaGarcom == 1)
					escreva("Valor final do pedido: R$", 25 * 1.1)
				senao
					escreva("Valor final do pedido: R$", 25)
				pare
			caso 2:
				se(gorjetaGarcom == 1)
					escreva("Valor final do pedido: R$", 20 * 1.1)
				senao
					escreva("Valor final do pedido: R$", 20)
				pare
			caso 3:
				se(gorjetaGarcom == 1)
					escreva("Valor final do pedido: R$", 20 * 1.1)
				senao
					escreva("Valor final do pedido: R$", 20)
				pare
			caso 4:
				se(gorjetaGarcom == 1)
					escreva("Valor final do pedido: R$", 15 * 1.1)
				senao
					escreva("Valor final do pedido: R$", 15)
				pare
			caso 5:
				se(gorjetaGarcom == 1)
					escreva("Valor final do pedido: R$", 5 * 1.1)
				senao
					escreva("Valor final do pedido: R$", 5)
				pare
			caso contrario:
				escreva("Pedido inv�lido. Tente novamente.")
				pare
		}

	}
}
/* $$$ Portugol Studio $$$ 
 * 
 * Esta se��o do arquivo guarda informa��es do Portugol Studio.
 * Voc� pode apag�-la se estiver utilizando outro editor.
 * 
 * @POSICAO-CURSOR = 339; 
 * @PONTOS-DE-PARADA = ;
 * @SIMBOLOS-INSPECIONADOS = ;
 * @FILTRO-ARVORE-TIPOS-DE-DADO = inteiro, real, logico, cadeia, caracter, vazio;
 * @FILTRO-ARVORE-TIPOS-DE-SIMBOLO = variavel, vetor, matriz, funcao;
 */