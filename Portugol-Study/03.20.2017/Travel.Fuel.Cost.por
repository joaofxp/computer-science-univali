programa
{
	/*
	 * Solicitar nome do local de origem
	 * Nome do local de destino
	 * Distancia a ser percorrida em KM
	 * Consumo do carro em KM/L
	 * Pre�o do litro do combust�vel
	 * Programa dever� informar uma mensagem contendo:
	 * nome dos locais de destino e origem
	 * Valor em R$ a ser gasto com combust�vel na viagem
	 */
	funcao inicio()
	{
		cadeia origemNome = ""
		cadeia destinoNome = ""
		real distanciaKm = 0.0
		real carroConsumoKmL = 0.0
		real combustivelPreco = 0.0
		real gastoCombustivel = 0.0


		escreva("Qual o nome do seu local de origem?")
		leia(origemNome)
		escreva("Qual o nome do seu local de destino?")
		leia(destinoNome)
		escreva("Qual a distancia a ser percorrida em KM?")
		leia(distanciaKm)
		escreva("Qual o consumo do carro em Km/L?")
		leia(carroConsumoKmL)
		escreva("E qual o pre�o do litro do combust�vel?")
		leia(combustivelPreco)		

		gastoCombustivel = (distanciaKm / carroConsumoKmL) * combustivelPreco

		escreva("Ser�o gastos R$" + gastoCombustivel + " na viagem de " + origemNome + " para " + destinoNome +".")
	}
}
/* $$$ Portugol Studio $$$ 
 * 
 * Esta se��o do arquivo guarda informa��es do Portugol Studio.
 * Voc� pode apag�-la se estiver utilizando outro editor.
 * 
 * @POSICAO-CURSOR = 524; 
 * @PONTOS-DE-PARADA = ;
 * @SIMBOLOS-INSPECIONADOS = ;
 * @FILTRO-ARVORE-TIPOS-DE-DADO = inteiro, real, logico, cadeia, caracter, vazio;
 * @FILTRO-ARVORE-TIPOS-DE-SIMBOLO = variavel, vetor, matriz, funcao;
 */