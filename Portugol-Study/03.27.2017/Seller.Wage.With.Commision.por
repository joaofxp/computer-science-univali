programa
{
	/*
		Fa�a um algoritmo que solicite o sal�rio fixo e o valor das vendas efetuadas pelo vendedor de uma empresa. 
		Sabendo-se que ele recebe uma comiss�o de 3% sobre o total das vendas at� R$ 1.500,00 
		mais 5% sobre o que ultrapassar este valor, calcular e escrever o seu sal�rio total.
	*/
	funcao inicio()
	{
		real comissaoPorcentagemInicial = 3.0
		real comissaoPorcentagemFinal = 5.0
		real salarioFixo
		real salarioExtra
		real valorVendas
		
		escreva("Qual o sal�rio fixo do vendedor? ")
		leia(salarioFixo)
		escreva("Qual o valor das vendas efetuadas pelo vendedor? ")
		leia(valorVendas)

		se(valorVendas < 1500)
			salarioExtra = valorVendas * 0.03
		senao
			salarioExtra = valorVendas * 0.05

		escreva("O sal�rio do vendedor ser� de: R$", salarioFixo + salarioExtra)
	}
}
/* $$$ Portugol Studio $$$ 
 * 
 * Esta se��o do arquivo guarda informa��es do Portugol Studio.
 * Voc� pode apag�-la se estiver utilizando outro editor.
 * 
 * @POSICAO-CURSOR = 725; 
 * @PONTOS-DE-PARADA = ;
 * @SIMBOLOS-INSPECIONADOS = ;
 * @FILTRO-ARVORE-TIPOS-DE-DADO = inteiro, real, logico, cadeia, caracter, vazio;
 * @FILTRO-ARVORE-TIPOS-DE-SIMBOLO = variavel, vetor, matriz, funcao;
 */