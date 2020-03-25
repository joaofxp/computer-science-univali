programa
{
/*
Faça um programa que leia 5 nomes diferentes e armazene-os em um array. Após isso
ordene os nomes no array de acordo com a quantidade de caracteres de cada nome, e
exiba-os no console.
? Utilize a biblioteca Texto para contar os caracteres de uma cadeia
Exemplo com o array [ ?Enzo?, ?Frederico?, ?Jon?]
Saída: ?Jon? ? ?Enzo? ? ?Frederico?
*/
	inclua biblioteca Texto
	
	funcao inicio()
	{
		const inteiro TAM = 5

		cadeia array1[TAM] = {"AAAAAAAAAAAAA", "AAA", "AAAA", "AA", "A"}

		para(inteiro contagem = 0; contagem < TAM - 1; contagem++)
		{
			para(inteiro i = 0 ; i < TAM - 1; i++)
			{
				se(Texto.numero_caracteres(array1[i]) > Texto.numero_caracteres(array1[i+1]))
				{
					cadeia valorAnterior = array1[i]
					array1[i] = array1[i+1]
					array1[i+1] = valorAnterior
				}
			}
		}		
	}
}
/* $$$ Portugol Studio $$$ 
 * 
 * Esta seção do arquivo guarda informações do Portugol Studio.
 * Você pode apagá-la se estiver utilizando outro editor.
 * 
 * @POSICAO-CURSOR = 358; 
 * @PONTOS-DE-PARADA = ;
 * @SIMBOLOS-INSPECIONADOS = {array1, 17, 9, 6};
 * @FILTRO-ARVORE-TIPOS-DE-DADO = inteiro, real, logico, cadeia, caracter, vazio;
 * @FILTRO-ARVORE-TIPOS-DE-SIMBOLO = variavel, vetor, matriz, funcao;
 */