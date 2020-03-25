programa
{
/*
Faça um programa que solicite ao usuário 5 números inteiros e armazene esses números
em um array. Após o preenchimento do array, o algoritmo deve multiplicar por 2 todos os
elementos do array, mantendo as posições. Por fim, deve exibir o array modificado.
Para resolver este problema utilize os 3 laços de repetição do portugol:
- Utilize o para na gravação dos números digitados
- Utilize o enquanto para realizar a multiplicação nos elementos
- Utilize o faca-enquanto para exibir o arrray
*/
	inclua biblioteca Util
	funcao inicio()
	{
		const inteiro TAM = 5
		inteiro array[TAM]
		inteiro contador = 0
	
		escreva("Array 1: ")
		para(inteiro i = 0; i < TAM; i++)
		{
			array[i] = Util.sorteia(1, 100)
			escreva(array[i] , " | ")
		}

		enquanto(contador < TAM)
		{
			array[contador] *= 2
			contador++
		}
		
		contador = 0
		
		escreva("\nArray 2: ")
		
		faca
		{
			escreva(array[contador], " | ")
			contador++
		} enquanto(contador < TAM)
	}
}
/* $$$ Portugol Studio $$$ 
 * 
 * Esta seção do arquivo guarda informações do Portugol Studio.
 * Você pode apagá-la se estiver utilizando outro editor.
 * 
 * @POSICAO-CURSOR = 853; 
 * @PONTOS-DE-PARADA = ;
 * @SIMBOLOS-INSPECIONADOS = ;
 * @FILTRO-ARVORE-TIPOS-DE-DADO = inteiro, real, logico, cadeia, caracter, vazio;
 * @FILTRO-ARVORE-TIPOS-DE-SIMBOLO = variavel, vetor, matriz, funcao;
 */