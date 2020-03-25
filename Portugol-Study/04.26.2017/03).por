programa
{
/*
Fa�a um programa que solicite ao usu�rio 5 n�meros inteiros e armazene esses n�meros
em um array. Ap�s o preenchimento do array, o algoritmo deve multiplicar por 2 todos os
elementos do array, mantendo as posi��es. Por fim, deve exibir o array modificado.
Para resolver este problema utilize os 3 la�os de repeti��o do portugol:
- Utilize o para na grava��o dos n�meros digitados
- Utilize o enquanto para realizar a multiplica��o nos elementos
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
 * Esta se��o do arquivo guarda informa��es do Portugol Studio.
 * Voc� pode apag�-la se estiver utilizando outro editor.
 * 
 * @POSICAO-CURSOR = 853; 
 * @PONTOS-DE-PARADA = ;
 * @SIMBOLOS-INSPECIONADOS = ;
 * @FILTRO-ARVORE-TIPOS-DE-DADO = inteiro, real, logico, cadeia, caracter, vazio;
 * @FILTRO-ARVORE-TIPOS-DE-SIMBOLO = variavel, vetor, matriz, funcao;
 */