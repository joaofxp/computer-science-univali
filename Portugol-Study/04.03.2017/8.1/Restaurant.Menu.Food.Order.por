programa
{
/*
	Faça um algoritmo que exiba um Menu com as opções de um cardápio de 
	restaurante. O cliente deve escolher o código do prato desejado e na 
	sequencia, informar se aceita pagar a gorjeta do garçom. Se o usuário 
	aceitar, mostrar o valor final (valor do prato + 10%), caso contrário, 
	mostrar somente o valor do prato.
*/
	funcao inicio()
	{
		inteiro pratoCodigo
		inteiro gorjetaGarcom
	
		escreva("| Código: 1 | Prato: Picanha           | Valor: 25,00 |\n")
		escreva("| Código: 2 | Prato: Lasanha           | Valor: 20,00 |\n")
		escreva("| Código: 3 | Prato: Strogonoff        | Valor: 20,00 |\n")
		escreva("| Código: 4 | Prato: Bife Acebolado    | Valor: 15,00 |\n")
		escreva("| Código: 5 | Prato: Pão com Ovo       | Valor: 5,00  |\n")

		escreva("\nEscolha o código do prato desejado:\n")
		leia(pratoCodigo)
		escreva("Você aceitaria pagar a gorjeta do garçom? (1 para sim | 0 para não):\n")
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
				escreva("Pedido inválido. Tente novamente.")
				pare
		}

	}
}
/* $$$ Portugol Studio $$$ 
 * 
 * Esta seção do arquivo guarda informações do Portugol Studio.
 * Você pode apagá-la se estiver utilizando outro editor.
 * 
 * @POSICAO-CURSOR = 339; 
 * @PONTOS-DE-PARADA = ;
 * @SIMBOLOS-INSPECIONADOS = ;
 * @FILTRO-ARVORE-TIPOS-DE-DADO = inteiro, real, logico, cadeia, caracter, vazio;
 * @FILTRO-ARVORE-TIPOS-DE-SIMBOLO = variavel, vetor, matriz, funcao;
 */