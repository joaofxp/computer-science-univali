programa
{
/*
Fa�a um algoritmo que solicite 8 n�meros ao usu�rio, o programa precisa garantir que dos
8 n�meros digitados, 4 sejam pares e 4 �mpares, mas o usu�rio pode digit�-los em qualquer
ordem. Ap�s isso o programa deve criar dois arrays de tamanho 4, um deles deve
armazenar somente n�meros pares e o outro armazenar somente n�meros �mpares.
*/
	inclua biblioteca Util
	funcao inicio()
	{
		const inteiro TAM = 4
		inteiro arrayPar[TAM]
		inteiro arrayImpar[TAM]
		inteiro parQtd = 0
		inteiro imparQtd = 0
		inteiro numeroDigitado

//		escreva("Digite 8 n�meros:\n")

		para(inteiro i = 0; i < 8; i++)
		{
//			leia(numeroDigitado)
			numeroDigitado = Util.sorteia(1, 500)
			se(numeroDigitado % 2 == 0 e parQtd < 4)
			{
				arrayPar[parQtd] = numeroDigitado
				parQtd++				
			}
			senao se (numeroDigitado % 2 != 0 e imparQtd < 4)
			{
				arrayImpar[imparQtd] = numeroDigitado
				imparQtd++
			}
			senao se(parQtd == 4)
			{
				escreva("\nLimite de n�meros pares alcan�ado, digite um n�mero �mpar\n")
				i--
			}
			senao
			{				
				escreva("\nLimite de n�meros impares alcan�ado, digite um n�mero par\n")
				i--
			}
		}		

		escreva("\nArray Impar: ")
		para(inteiro i = 0; i < TAM; i ++)
		{
			escreva(arrayImpar[i], " | ")
		}

		escreva("\nArray Par: ")
		para(inteiro i = 0; i < TAM; i ++)
		{
			escreva(arrayPar[i], " | ")
		}
	}
}
/* $$$ Portugol Studio $$$ 
 * 
 * Esta se��o do arquivo guarda informa��es do Portugol Studio.
 * Voc� pode apag�-la se estiver utilizando outro editor.
 * 
 * @POSICAO-CURSOR = 645; 
 * @PONTOS-DE-PARADA = ;
 * @SIMBOLOS-INSPECIONADOS = ;
 * @FILTRO-ARVORE-TIPOS-DE-DADO = inteiro, real, logico, cadeia, caracter, vazio;
 * @FILTRO-ARVORE-TIPOS-DE-SIMBOLO = variavel, vetor, matriz, funcao;
 */