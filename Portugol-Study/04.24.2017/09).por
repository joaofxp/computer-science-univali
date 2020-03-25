programa
{
/*
Solicite ao usuário o nome e a salário de 10 pessoas. Calcule a média dos salários e 
exiba os nomes de todas as pessoas que recebem salário acima da média.
*/
	funcao inicio()
	{
		const inteiro TAM = 10
		cadeia arrayUsuario[TAM]
		real arraySalario[TAM]
		real mediaSalario = 0.0

		escreva("Digite o nome e o salário de 10 usuários:\nEXEMPLO: Pedro ENTER 1000\n")
		para(inteiro i = 0; i < TAM; i++)
		{
			leia(arrayUsuario[i],arraySalario[i])
			mediaSalario += arraySalario[i]
		}

		mediaSalario /= TAM
		
		escreva("\n Pessoas com o salário acima da média:\n")
		
		para(inteiro i = 0; i < TAM; i++)
		{
			se(arraySalario[i] > mediaSalario)
				escreva(arrayUsuario[i], "\n")
		}
	}
}
/* $$$ Portugol Studio $$$ 
 * 
 * Esta seção do arquivo guarda informações do Portugol Studio.
 * Você pode apagá-la se estiver utilizando outro editor.
 * 
 * @POSICAO-CURSOR = 568; 
 * @PONTOS-DE-PARADA = ;
 * @SIMBOLOS-INSPECIONADOS = ;
 * @FILTRO-ARVORE-TIPOS-DE-DADO = inteiro, real, logico, cadeia, caracter, vazio;
 * @FILTRO-ARVORE-TIPOS-DE-SIMBOLO = variavel, vetor, matriz, funcao;
 */