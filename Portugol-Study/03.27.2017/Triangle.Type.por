programa
{
	/*
		Fa�a um algoritmo que solicita ao usu�rio tr�s valores correspondentes aos lados de um tri�ngulo. 
		Informe se o tri�ngulo � equil�tero (possui 3 lados iguais), is�sceles (possui dois lados iguais) ou escaleno 
		(n�o possui lados iguais).
	 */
	funcao inicio()
	{
		real valor1,valor2,valor3
		escreva("Digite tr�s valores correspondentes aos lados de um tri�ngulo:" +"\n")
		leia(valor1,valor2,valor3)
		
		se(valor1 == valor2 e valor2 == valor3)
			escreva("O tri�ngulo � equil�tero")
		senao se (valor1 == valor2 ou valor1 == valor3 ou valor2 == valor3)
			escreva("O tri�ngulo � is�sceles")
		senao
			escreva("O tri�ngulo � escaleno")
		
	}
}
/* $$$ Portugol Studio $$$ 
 * 
 * Esta se��o do arquivo guarda informa��es do Portugol Studio.
 * Voc� pode apag�-la se estiver utilizando outro editor.
 * 
 * @POSICAO-CURSOR = 428; 
 * @PONTOS-DE-PARADA = ;
 * @SIMBOLOS-INSPECIONADOS = ;
 * @FILTRO-ARVORE-TIPOS-DE-DADO = inteiro, real, logico, cadeia, caracter, vazio;
 * @FILTRO-ARVORE-TIPOS-DE-SIMBOLO = variavel, vetor, matriz, funcao;
 */