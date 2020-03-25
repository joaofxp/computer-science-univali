programa
{
/*
Faça um algoritmo que solicite 8 números ao usuário, o programa precisa garantir que dos
8 números digitados, 4 sejam pares e 4 ímpares, mas o usuário pode digitá-los em qualquer
ordem. Após isso o programa deve criar dois arrays de tamanho 4, um deles deve
armazenar somente números pares e o outro armazenar somente números ímpares.
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

//		escreva("Digite 8 números:\n")

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
				escreva("\nLimite de números pares alcançado, digite um número ímpar\n")
				i--
			}
			senao
			{				
				escreva("\nLimite de números impares alcançado, digite um número par\n")
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
 * Esta seção do arquivo guarda informações do Portugol Studio.
 * Você pode apagá-la se estiver utilizando outro editor.
 * 
 * @POSICAO-CURSOR = 645; 
 * @PONTOS-DE-PARADA = ;
 * @SIMBOLOS-INSPECIONADOS = ;
 * @FILTRO-ARVORE-TIPOS-DE-DADO = inteiro, real, logico, cadeia, caracter, vazio;
 * @FILTRO-ARVORE-TIPOS-DE-SIMBOLO = variavel, vetor, matriz, funcao;
 */