programa
{
	/*
		Faça um algoritmo que solicita ao usuário três valores correspondentes aos lados de um triângulo. 
		Informe se o triângulo é equilátero (possui 3 lados iguais), isósceles (possui dois lados iguais) ou escaleno 
		(não possui lados iguais).
	 */
	funcao inicio()
	{
		real valor1,valor2,valor3
		escreva("Digite três valores correspondentes aos lados de um triângulo:" +"\n")
		leia(valor1,valor2,valor3)
		
		se(valor1 == valor2 e valor2 == valor3)
			escreva("O triângulo é equilátero")
		senao se (valor1 == valor2 ou valor1 == valor3 ou valor2 == valor3)
			escreva("O triângulo é isósceles")
		senao
			escreva("O triângulo é escaleno")
		
	}
}
/* $$$ Portugol Studio $$$ 
 * 
 * Esta seção do arquivo guarda informações do Portugol Studio.
 * Você pode apagá-la se estiver utilizando outro editor.
 * 
 * @POSICAO-CURSOR = 428; 
 * @PONTOS-DE-PARADA = ;
 * @SIMBOLOS-INSPECIONADOS = ;
 * @FILTRO-ARVORE-TIPOS-DE-DADO = inteiro, real, logico, cadeia, caracter, vazio;
 * @FILTRO-ARVORE-TIPOS-DE-SIMBOLO = variavel, vetor, matriz, funcao;
 */