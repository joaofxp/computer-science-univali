programa
{
/*
Faça um programa que preencha dois vetores de 5 números cada. Intercale os elementos
dos dois vetores, armazenando o resultado em um terceiro vetor de 10 posições.
*/
	inclua biblioteca Util
	funcao inicio()
	{
		const inteiro TAM = 5
		const inteiro TAMARRAY3 = 10
		inteiro array1[TAM] //1, 3, 5, 7, 9
		inteiro array2[TAM] //2, 4, 6, 8, 10
		inteiro array3[TAMARRAY3]

		inteiro array1Contador = 0
		inteiro array2Contador = 0

		para(inteiro i = 0; i < TAM; i++)
		{
			array1[i] = Util.sorteia(0,30)
			array2[i] = Util.sorteia(40,60)
		}

		para(inteiro i = 0; i < TAM; i++)
		{
			escreva("\nArray1 Casa ", i, " = ", array1[i])
		}
		
		escreva("\n")
		
		para(inteiro i = 0; i < TAM; i++)
		{
			escreva("\nArray2 Casa ", i, " = ", array2[i])
		}

		escreva("\n")

		para(inteiro i = 0; i < TAMARRAY3; i++)
		{
			se(i % 2 == 0)
			{
				array3[i] = array1[array1Contador]
				array1Contador++				
			}
			senao
			{
				array3[i] = array2[array2Contador]
				array2Contador++
			}
			escreva("\nArray3 Casa ", i, " = ", array3[i])
		}
	}
}
/* $$$ Portugol Studio $$$ 
 * 
 * Esta seção do arquivo guarda informações do Portugol Studio.
 * Você pode apagá-la se estiver utilizando outro editor.
 * 
 * @POSICAO-CURSOR = 851; 
 * @PONTOS-DE-PARADA = ;
 * @SIMBOLOS-INSPECIONADOS = ;
 * @FILTRO-ARVORE-TIPOS-DE-DADO = inteiro, real, logico, cadeia, caracter, vazio;
 * @FILTRO-ARVORE-TIPOS-DE-SIMBOLO = variavel, vetor, matriz, funcao;
 */