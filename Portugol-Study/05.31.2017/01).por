programa
{
/*
Escreva um programa para ler as notas de duas provas. Fa�a uma fun��o que receba as duas
notas por par�metro e calcula a m�dia destes valores.
Depois disso o programa deve exibir a mensagem ?Voc� foi Aprovado!? ou ?Voc� foi
Reprovado!?. Esta opera��o de escrita tamb�m deve estar em uma fun��o.
Considere 6.0 a m�dia m�nima para aprova��o.
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
			escreva("Voc� foi aprovado!")
		senao
			escreva("Voc� foi Reprovado!")		
	}
}
/* $$$ Portugol Studio $$$ 
 * 
 * Esta se��o do arquivo guarda informa��es do Portugol Studio.
 * Voc� pode apag�-la se estiver utilizando outro editor.
 * 
 * @POSICAO-CURSOR = 586; 
 * @PONTOS-DE-PARADA = ;
 * @SIMBOLOS-INSPECIONADOS = ;
 * @FILTRO-ARVORE-TIPOS-DE-DADO = inteiro, real, logico, cadeia, caracter, vazio;
 * @FILTRO-ARVORE-TIPOS-DE-SIMBOLO = variavel, vetor, matriz, funcao;
 */