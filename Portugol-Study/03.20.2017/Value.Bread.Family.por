programa
{
	/*
	 * Joaozinho tem N pessoas na familia dele
	 * Mae dele pediu pra comprar pao
	 * Ele precisará comprar: 
	 * P pães para Cada pessoa
	 * Sabendo que cada pão custa R reais
	 * Faça um algoritmo que define o valor que a mãe deve entregar para ele
	 */
	funcao inicio()
	{
		inteiro pessoasFamilia
		real paesPorPessoa
		real paoValor
		real valorEntregue

		escreva("Quantas pessoas na família? ")
		leia(pessoasFamilia)
		escreva("Quantos pães para cada pessoa? ")
		leia(paesPorPessoa)
		escreva("Qual o valor do pão? ")
		leia(paoValor)

		valorEntregue = (pessoasFamilia * paesPorPessoa) * paoValor
		escreva("O valor entregue a Joaozinho é de: R$" + valorEntregue)
	}
}
/* $$$ Portugol Studio $$$ 
 * 
 * Esta seção do arquivo guarda informações do Portugol Studio.
 * Você pode apagá-la se estiver utilizando outro editor.
 * 
 * @POSICAO-CURSOR = 541; 
 * @PONTOS-DE-PARADA = ;
 * @SIMBOLOS-INSPECIONADOS = ;
 * @FILTRO-ARVORE-TIPOS-DE-DADO = inteiro, real, logico, cadeia, caracter, vazio;
 * @FILTRO-ARVORE-TIPOS-DE-SIMBOLO = variavel, vetor, matriz, funcao;
 */