programa
{
	/*
	 * Joaozinho tem N pessoas na familia dele
	 * Mae dele pediu pra comprar pao
	 * Ele precisar� comprar: 
	 * P p�es para Cada pessoa
	 * Sabendo que cada p�o custa R reais
	 * Fa�a um algoritmo que define o valor que a m�e deve entregar para ele
	 */
	funcao inicio()
	{
		inteiro pessoasFamilia
		real paesPorPessoa
		real paoValor
		real valorEntregue

		escreva("Quantas pessoas na fam�lia? ")
		leia(pessoasFamilia)
		escreva("Quantos p�es para cada pessoa? ")
		leia(paesPorPessoa)
		escreva("Qual o valor do p�o? ")
		leia(paoValor)

		valorEntregue = (pessoasFamilia * paesPorPessoa) * paoValor
		escreva("O valor entregue a Joaozinho � de: R$" + valorEntregue)
	}
}
/* $$$ Portugol Studio $$$ 
 * 
 * Esta se��o do arquivo guarda informa��es do Portugol Studio.
 * Voc� pode apag�-la se estiver utilizando outro editor.
 * 
 * @POSICAO-CURSOR = 541; 
 * @PONTOS-DE-PARADA = ;
 * @SIMBOLOS-INSPECIONADOS = ;
 * @FILTRO-ARVORE-TIPOS-DE-DADO = inteiro, real, logico, cadeia, caracter, vazio;
 * @FILTRO-ARVORE-TIPOS-DE-SIMBOLO = variavel, vetor, matriz, funcao;
 */