programa
{
/*
Fa�a um programa que preencha um array com 5 n�meros reais digitados pelo usu�rio,
ap�s isso o programa deve solicitar um dos caracteres: ?+?, ?-?, ?*? e ?/?. Por fim, 
o programa deve realizar a opera��o sobre todos os elementos do array, de acordo com o
caracter digitado: somar todos os elementos, subtrair todos os elementos, multiplicar 
todos os elementos ou dividir todos os elementos. - A opera��o deve ser realizada dentro
de um la�o de repeti��o utilizando um acumulador - Utilize o comando escolha-caso
*/
	inclua biblioteca Util
	funcao inicio()
	{
		const inteiro TAM = 5
		real array[TAM]
		caracter caracterDigitado
		real acumulador = 0

		para(inteiro i = 0; i < TAM; i++)
		{
			array[i] = Util.sorteia(1.0, 10.0)
		}

		escreva("Array: ")
		para(inteiro i = 0; i < TAM; i++)
		{
			escreva(array[i], " | ")
		}

		escreva("\nDigite um caracter entre '+', '-', '*' e '/':\n")
		leia(caracterDigitado)
		acumulador = array[0]

		escolha(caracterDigitado)
		{
			caso '+':
				para(inteiro i = 1; i < TAM; i++)
				{
					acumulador += array[i]
				}
			pare
			caso '-':
				para(inteiro i = 1; i < TAM; i++)
				{
					acumulador -= array[i]
				}
			pare
			caso '*':
				para(inteiro i = 1; i < TAM; i++)
				{
					acumulador *= array[i]
				}			
			pare
			caso '/':
				para(inteiro i = 1; i < TAM; i++)
				{
					acumulador /= array[i]
				}			
			pare
		}

		escreva("Resultado: ", acumulador)
	}
}
/* $$$ Portugol Studio $$$ 
 * 
 * Esta se��o do arquivo guarda informa��es do Portugol Studio.
 * Voc� pode apag�-la se estiver utilizando outro editor.
 * 
 * @POSICAO-CURSOR = 673; 
 * @PONTOS-DE-PARADA = ;
 * @SIMBOLOS-INSPECIONADOS = ;
 * @FILTRO-ARVORE-TIPOS-DE-DADO = inteiro, real, logico, cadeia, caracter, vazio;
 * @FILTRO-ARVORE-TIPOS-DE-SIMBOLO = variavel, vetor, matriz, funcao;
 */