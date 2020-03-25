programa
{
/*
Faça um algoritmo que leia o valor de uma venda e a opção de pagamento escolhida 
e exiba o total final da venda conforme as condições a seguir:
 */
	funcao inicio()
	{
		real vendaValor
		inteiro formaPagamento
	
		escreva("Qual o valor da venda?\n")
		leia(vendaValor)
		escreva("\n 1 - Venda a Vista \n 2 - Venda a Prazo 30 dias \n 3 - Venda a Prazo 60 dias \n 4 - Venda a Prazo 90 dias \n 5 - Venda com cartão de débito \n 6 - Venda com cartão de crédito\n\n")
		escreva("Qual a forma de pagamento? (1 a 6):\n")
		leia(formaPagamento)
		
		escolha(formaPagamento)
		{
			caso 1:
				escreva("Valor final da venda: R$" , vendaValor * 0.9)
				pare
			caso 2:
				escreva("Valor final da venda: R$" , vendaValor * 1.05)
				pare
			caso 3:
				escreva("Valor final da venda: R$" , vendaValor)
				pare
			caso 4:
				escreva("Valor final da venda: R$" , vendaValor * 1.1)
				pare
			caso 5:
				escreva("Valor final da venda: R$" , vendaValor * 0.92)
				pare
			caso 6:
				escreva("Valor final da venda: R$" , vendaValor * 0.93)
				pare
			caso contrario:
				escreva("Valores inválidos. Tente novamente.")
				pare
		}
	}
}
/* $$$ Portugol Studio $$$ 
 * 
 * Esta seção do arquivo guarda informações do Portugol Studio.
 * Você pode apagá-la se estiver utilizando outro editor.
 * 
 * @POSICAO-CURSOR = 1048; 
 * @PONTOS-DE-PARADA = ;
 * @SIMBOLOS-INSPECIONADOS = ;
 * @FILTRO-ARVORE-TIPOS-DE-DADO = inteiro, real, logico, cadeia, caracter, vazio;
 * @FILTRO-ARVORE-TIPOS-DE-SIMBOLO = variavel, vetor, matriz, funcao;
 */