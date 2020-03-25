programa
{
	/*
	 * A partir de um valor total lido mostre:
	 * Total a pagar com desconto de 10%
	 * Valor de cada parcela no parcelamento de 3x sem juros
	 * Comissão do vendedor se a venda for a vista (5% sobre o valor com desconto)
	 * Comissão do vendedor caso seja parcelada (5% sobre o valor total)
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
		
		escreva("Total a pagar com desconto é de: R$" + descontoValor + "\n")
		escreva("O valor de cada parcela em 3x sem juros é de: R$" + parcelamentoValor + "\n")
		escreva("A comissão do vendedor à vista é de: R$" + comissaoDesconto + "\n")
		escreva("A comissão do vendedor parcelado é de: R$" + comissaoParcelado)
	}
}
/* $$$ Portugol Studio $$$ 
 * 
 * Esta seção do arquivo guarda informações do Portugol Studio.
 * Você pode apagá-la se estiver utilizando outro editor.
 * 
 * @POSICAO-CURSOR = 759; 
 * @PONTOS-DE-PARADA = ;
 * @SIMBOLOS-INSPECIONADOS = ;
 * @FILTRO-ARVORE-TIPOS-DE-DADO = inteiro, real, logico, cadeia, caracter, vazio;
 * @FILTRO-ARVORE-TIPOS-DE-SIMBOLO = variavel, vetor, matriz, funcao;
 */