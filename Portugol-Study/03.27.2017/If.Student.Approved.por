programa
{
	/*
		Fa�a um algoritmo que solicita ao usu�rio as notas de tr�s provas. Calcule a m�dia aritm�tica e 
		informe se o aluno foi Aprovado ou Reprovado (o aluno � considerado aprovado com a m�dia igual ou superior a 6).
	*/
	funcao inicio()
	{
		real nota1,nota2,nota3,mediaFinal
		
		escreva("Insira as notas das tr�s provas: " +"\n")
		leia(nota1,nota2,nota3)
		mediaFinal = nota1+nota2+nota3
		mediaFinal /= 3
		
		se(mediaFinal >= 6)
			escreva("O aluno est� aprovado!")
		senao
			escreva("O aluno est� reprovado!")
	}
}
/* $$$ Portugol Studio $$$ 
 * 
 * Esta se��o do arquivo guarda informa��es do Portugol Studio.
 * Voc� pode apag�-la se estiver utilizando outro editor.
 * 
 * @POSICAO-CURSOR = 338; 
 * @PONTOS-DE-PARADA = ;
 * @SIMBOLOS-INSPECIONADOS = ;
 * @FILTRO-ARVORE-TIPOS-DE-DADO = inteiro, real, logico, cadeia, caracter, vazio;
 * @FILTRO-ARVORE-TIPOS-DE-SIMBOLO = variavel, vetor, matriz, funcao;
 */