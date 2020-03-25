programa
{
/*
Fa�a um algoritmo que receba o comprimento de tr�s lados de um tri�ngulo (S1, S2 e S3) e com isso

determinar que tipo de tri�ngulo temos, com base nas regras descritas abaixo.

	a. O maior dos 3 lados � considerado A e os outros dois B e C
	
	b. Se A for maior ou igual a soma de B e C nenhum tri�ngulo � formado;
	
	c. Se A� for igual a soma de B� e C� um tri�ngulo ret�ngulo � formado;
	
	d. Se A� for maior que a soma de B� e C� um tri�ngulo obtus�ngulo � formado;
	
	e. Se A� for menor que a soma de B� e C� um tri�ngulo acutangulo � formado. 
 */
	funcao inicio()
	{
		real S1 = 35.0
		real S2 = 25.0
		real S3 = 50.0

		real A
		real B
		real C

		se (S1 > S2 e S1 > S3)
		{
			A = S1
			B = S2
			C = S3
		}
		senao se(S2>S1 e S2 > S3)
		{
			A = S2
			B = S1
			C = S3
		}
		senao
		{
			A = S3
			B = S1
			C = S2
		}

		se(A >= (B+C))
			escreva("Nenhum tri�ngulo � formado")
		senao se((A*A) == ((B*B) + (C*C)))
			escreva("Um tri�ngulo ret�ngulo � formado")
		senao se((A*A) > ((B*B) + (C*C)))
			escreva("Um tri�ngulo obtus�ngulo � formado")
		senao se((A*A) > ((B*B) + (C*C)))
			escreva("Um tri�ngulo acutangulo � formado")
		senao
			escreva("Nenhum tri�ngulo � formado")
	}
}
/* $$$ Portugol Studio $$$ 
 * 
 * Esta se��o do arquivo guarda informa��es do Portugol Studio.
 * Voc� pode apag�-la se estiver utilizando outro editor.
 * 
 * @POSICAO-CURSOR = 602; 
 * @DOBRAMENTO-CODIGO = [27, 33, 39];
 * @PONTOS-DE-PARADA = ;
 * @SIMBOLOS-INSPECIONADOS = ;
 * @FILTRO-ARVORE-TIPOS-DE-DADO = inteiro, real, logico, cadeia, caracter, vazio;
 * @FILTRO-ARVORE-TIPOS-DE-SIMBOLO = variavel, vetor, matriz, funcao;
 */