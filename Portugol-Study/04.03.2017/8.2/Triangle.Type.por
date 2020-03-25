programa
{
/*
Faça um algoritmo que receba o comprimento de três lados de um triângulo (S1, S2 e S3) e com isso

determinar que tipo de triângulo temos, com base nas regras descritas abaixo.

	a. O maior dos 3 lados é considerado A e os outros dois B e C
	
	b. Se A for maior ou igual a soma de B e C nenhum triângulo é formado;
	
	c. Se A² for igual a soma de B² e C² um triângulo retângulo é formado;
	
	d. Se A² for maior que a soma de B² e C² um triângulo obtusângulo é formado;
	
	e. Se A² for menor que a soma de B² e C² um triângulo acutangulo é formado. 
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
			escreva("Nenhum triângulo é formado")
		senao se((A*A) == ((B*B) + (C*C)))
			escreva("Um triângulo retângulo é formado")
		senao se((A*A) > ((B*B) + (C*C)))
			escreva("Um triângulo obtusângulo é formado")
		senao se((A*A) > ((B*B) + (C*C)))
			escreva("Um triângulo acutangulo é formado")
		senao
			escreva("Nenhum triângulo é formado")
	}
}
/* $$$ Portugol Studio $$$ 
 * 
 * Esta seção do arquivo guarda informações do Portugol Studio.
 * Você pode apagá-la se estiver utilizando outro editor.
 * 
 * @POSICAO-CURSOR = 602; 
 * @DOBRAMENTO-CODIGO = [27, 33, 39];
 * @PONTOS-DE-PARADA = ;
 * @SIMBOLOS-INSPECIONADOS = ;
 * @FILTRO-ARVORE-TIPOS-DE-DADO = inteiro, real, logico, cadeia, caracter, vazio;
 * @FILTRO-ARVORE-TIPOS-DE-SIMBOLO = variavel, vetor, matriz, funcao;
 */