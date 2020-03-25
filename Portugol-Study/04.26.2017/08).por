programa
{
/*
Faça um programa para ler 10 números DIFERENTES a serem armazenados em um vetor.
Os dados deverão ser armazenados no vetor na ordem que forem sendo lidos, sendo que
caso o usuário digite um número que já foi digitado anteriormente, o programa deverá pedir
para ele digitar outro número. Note que cada valor digitado pelo usuário deve ser
pesquisado no vetor, verificando se ele já existe no vetor. Exibir ao final o vetor 
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
 * Esta seção do arquivo guarda informações do Portugol Studio.
 * Você pode apagá-la se estiver utilizando outro editor.
 * 
 * @POSICAO-CURSOR = 503; 
 * @PONTOS-DE-PARADA = ;
 * @SIMBOLOS-INSPECIONADOS = ;
 * @FILTRO-ARVORE-TIPOS-DE-DADO = inteiro, real, logico, cadeia, caracter, vazio;
 * @FILTRO-ARVORE-TIPOS-DE-SIMBOLO = variavel, vetor, matriz, funcao;
 */