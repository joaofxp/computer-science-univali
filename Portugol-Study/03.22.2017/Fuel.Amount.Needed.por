programa
{
/*
O algoritmo deve receber como entrada: a quantidade de gasolina, a dist�ncia at� o local de destino e a m�dia de 
quantos quil�metros o carro consegue fazer por litro de gasolina. Baseando-se nestas informa��es o sistema deve indicar 
quanto de gasolina seria necess�rio para chegar no local e se � ou n�o poss�vel chegar com a gasolina do tanque.
 */
	funcao inicio()
	{
		real quantidadeGasolina
		real distanciaDestino
		real mediaKmL
		real gasolinaNecessaria
		

		escreva("Qual a quantidade de gasolina atual? ")
		leia(quantidadeGasolina)
		escreva("Qual a dist�ncia at� o destino? ")
		leia(distanciaDestino)
		escreva("Quantos Km/L o carro faz por litro? ")
		leia(mediaKmL)

		gasolinaNecessaria = distanciaDestino / mediaKmL

//		litros de gasolina
//		km que faz por litro
//		quanto vai andar
		
		escreva("Para chegar o local s�o necess�rios: " + gasolinaNecessaria + " litros de gasolinas" + "\n")
		escreva("� possivel chegar no local com a gasolina atual: " , quantidadeGasolina >= gasolinaNecessaria)		
	}
}
/* $$$ Portugol Studio $$$ 
 * 
 * Esta se��o do arquivo guarda informa��es do Portugol Studio.
 * Voc� pode apag�-la se estiver utilizando outro editor.
 * 
 * @POSICAO-CURSOR = 930; 
 * @PONTOS-DE-PARADA = ;
 * @SIMBOLOS-INSPECIONADOS = ;
 * @FILTRO-ARVORE-TIPOS-DE-DADO = inteiro, real, logico, cadeia, caracter, vazio;
 * @FILTRO-ARVORE-TIPOS-DE-SIMBOLO = variavel, vetor, matriz, funcao;
 */