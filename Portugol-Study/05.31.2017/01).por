programa
{
/*
Escreva um programa para ler as notas de duas provas. Faça uma função que receba as duas
notas por parâmetro e calcula a média destes valores.
Depois disso o programa deve exibir a mensagem ?Você foi Aprovado!? ou ?Você foi
Reprovado!?. Esta operação de escrita também deve estar em uma função.
Considere 6.0 a média mínima para aprovação.
*/
	const real MEDIA = 6.0
	
	funcao inicio()
	{
		inteiro nota1 = 6
		inteiro nota2 = 6

		alunoResultado(calculaMedia(nota1,nota2))
	}

	funcao logico calculaMedia(inteiro nota1, inteiro nota2)
	{
		retorne((nota1+nota2)/2 >= MEDIA)
	}

	funcao alunoResultado(logico aprovado)
	{
		se(aprovado)
			escreva("Você foi aprovado!")
		senao
			escreva("Você foi Reprovado!")		
	}
}
/* $$$ Portugol Studio $$$ 
 * 
 * Esta seção do arquivo guarda informações do Portugol Studio.
 * Você pode apagá-la se estiver utilizando outro editor.
 * 
 * @POSICAO-CURSOR = 586; 
 * @PONTOS-DE-PARADA = ;
 * @SIMBOLOS-INSPECIONADOS = ;
 * @FILTRO-ARVORE-TIPOS-DE-DADO = inteiro, real, logico, cadeia, caracter, vazio;
 * @FILTRO-ARVORE-TIPOS-DE-SIMBOLO = variavel, vetor, matriz, funcao;
 */