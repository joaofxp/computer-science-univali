programa
{
	/*
	 * A partir de um valor total lido mostre:
	 * Total a pagar com desconto de 10%
	 * Valor de cada parcela no parcelamento de 3x sem juros
	 * Comiss�o do vendedor se a venda for a vista (5% sobre o valor com desconto)
	 * Comiss�o do vendedor caso seja parcelada (5% sobre o valor total)
	*/
	funcao inicio()
	{
		real valorTotal = 0.0
		real descontoValor = 0.0
		real parcelamentoValor = 0.0
		real comissaoValorDesconto = 0.05
		real comissaoValorParcelado = 0.05
		real comissaoDesconto = 0.0
		real comissaoParcelado = 0.0
		
		escreva("Digite o valor total: ")
		leia(valorTotal)
		
		descontoValor = valorTotal * 0.9
		parcelamentoValor = valorTotal / 3
		comissaoDesconto = descontoValor * comissaoValorDesconto
		comissaoParcelado = valorTotal * comissaoValorParcelado
		
		escreva("Total a pagar com desconto � de: R$" + descontoValor + "\n")
		escreva("O valor de cada parcela em 3x sem juros � de: R$" + parcelamentoValor + "\n")
		escreva("A comiss�o do vendedor � vista � de: R$" + comissaoDesconto + "\n")
		escreva("A comiss�o do vendedor parcelado � de: R$" + comissaoParcelado)
	}
}
/* $$$ Portugol Studio $$$ 
 * 
 * Esta se��o do arquivo guarda informa��es do Portugol Studio.
 * Voc� pode apag�-la se estiver utilizando outro editor.
 * 
 * @POSICAO-CURSOR = 759; 
 * @PONTOS-DE-PARADA = ;
 * @SIMBOLOS-INSPECIONADOS = ;
 * @FILTRO-ARVORE-TIPOS-DE-DADO = inteiro, real, logico, cadeia, caracter, vazio;
 * @FILTRO-ARVORE-TIPOS-DE-SIMBOLO = variavel, vetor, matriz, funcao;
 */