programa
{
/*
Solicite ao usu�rio o nome e a sal�rio de 10 pessoas. Calcule a m�dia dos sal�rios e 
exiba os nomes de todas as pessoas que recebem sal�rio acima da m�dia.
*/
	funcao inicio()
	{
		const inteiro TAM = 10
		cadeia arrayUsuario[TAM]
		real arraySalario[TAM]
		real mediaSalario = 0.0

		escreva("Digite o nome e o sal�rio de 10 usu�rios:\nEXEMPLO: Pedro ENTER 1000\n")
		para(inteiro i = 0; i < TAM; i++)
		{
			leia(arrayUsuario[i],arraySalario[i])
			mediaSalario += arraySalario[i]
		}

		mediaSalario /= TAM
		
		escreva("\n Pessoas com o sal�rio acima da m�dia:\n")
		
		para(inteiro i = 0; i < TAM; i++)
		{
			se(arraySalario[i] > mediaSalario)
				escreva(arrayUsuario[i], "\n")
		}
	}
}
/* $$$ Portugol Studio $$$ 
 * 
 * Esta se��o do arquivo guarda informa��es do Portugol Studio.
 * Voc� pode apag�-la se estiver utilizando outro editor.
 * 
 * @POSICAO-CURSOR = 568; 
 * @PONTOS-DE-PARADA = ;
 * @SIMBOLOS-INSPECIONADOS = ;
 * @FILTRO-ARVORE-TIPOS-DE-DADO = inteiro, real, logico, cadeia, caracter, vazio;
 * @FILTRO-ARVORE-TIPOS-DE-SIMBOLO = variavel, vetor, matriz, funcao;
 */