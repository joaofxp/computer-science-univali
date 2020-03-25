programa
{
/*
O algoritmo deve receber como entrada: a quantidade de gasolina, a distância até o local de destino e a média de 
quantos quilômetros o carro consegue fazer por litro de gasolina. Baseando-se nestas informações o sistema deve indicar 
quanto de gasolina seria necessário para chegar no local e se é ou não possível chegar com a gasolina do tanque.
 */
	funcao inicio()
	{
		real quantidadeGasolina
		real distanciaDestino
		real mediaKmL
		real gasolinaNecessaria
		

		escreva("Qual a quantidade de gasolina atual? ")
		leia(quantidadeGasolina)
		escreva("Qual a distância até o destino? ")
		leia(distanciaDestino)
		escreva("Quantos Km/L o carro faz por litro? ")
		leia(mediaKmL)

		gasolinaNecessaria = distanciaDestino / mediaKmL

//		litros de gasolina
//		km que faz por litro
//		quanto vai andar
		
		escreva("Para chegar o local são necessários: " + gasolinaNecessaria + " litros de gasolinas" + "\n")
		escreva("É possivel chegar no local com a gasolina atual: " , quantidadeGasolina >= gasolinaNecessaria)		
	}
}
/* $$$ Portugol Studio $$$ 
 * 
 * Esta seção do arquivo guarda informações do Portugol Studio.
 * Você pode apagá-la se estiver utilizando outro editor.
 * 
 * @POSICAO-CURSOR = 930; 
 * @PONTOS-DE-PARADA = ;
 * @SIMBOLOS-INSPECIONADOS = ;
 * @FILTRO-ARVORE-TIPOS-DE-DADO = inteiro, real, logico, cadeia, caracter, vazio;
 * @FILTRO-ARVORE-TIPOS-DE-SIMBOLO = variavel, vetor, matriz, funcao;
 */