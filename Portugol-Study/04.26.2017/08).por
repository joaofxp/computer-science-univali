programa
{
/*
Fa�a um programa para ler 10 n�meros DIFERENTES a serem armazenados em um vetor.
Os dados dever�o ser armazenados no vetor na ordem que forem sendo lidos, sendo que
caso o usu�rio digite um n�mero que j� foi digitado anteriormente, o programa dever� pedir
para ele digitar outro n�mero. Note que cada valor digitado pelo usu�rio deve ser
pesquisado no vetor, verificando se ele j� existe no vetor. Exibir ao final o vetor 
preenchido.
*/
	inclua biblioteca Util
	funcao inicio()
	{
		const inteiro TAM = 10
		inteiro array[TAM]
		
		para(inteiro i = 0; i < TAM; i++)
		{
			inteiro novoValor = Util.sorteia(0, 10)
			array[i] = novoValor

			para(inteiro j = 0; j < i; j++)
			{
				se(array[j] == novoValor)
					i--
			}
		}

		para(inteiro i = 0; i < TAM; i++)
		{
			escreva(array[i]," | ")
		}
	}
}
/* $$$ Portugol Studio $$$ 
 * 
 * Esta se��o do arquivo guarda informa��es do Portugol Studio.
 * Voc� pode apag�-la se estiver utilizando outro editor.
 * 
 * @POSICAO-CURSOR = 503; 
 * @PONTOS-DE-PARADA = ;
 * @SIMBOLOS-INSPECIONADOS = ;
 * @FILTRO-ARVORE-TIPOS-DE-DADO = inteiro, real, logico, cadeia, caracter, vazio;
 * @FILTRO-ARVORE-TIPOS-DE-SIMBOLO = variavel, vetor, matriz, funcao;
 */