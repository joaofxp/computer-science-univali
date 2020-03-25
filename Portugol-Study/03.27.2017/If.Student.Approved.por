programa
{
	/*
		Faça um algoritmo que solicita ao usuário as notas de três provas. Calcule a média aritmética e 
		informe se o aluno foi Aprovado ou Reprovado (o aluno é considerado aprovado com a média igual ou superior a 6).
	*/
	funcao inicio()
	{
		real nota1,nota2,nota3,mediaFinal
		
		escreva("Insira as notas das três provas: " +"\n")
		leia(nota1,nota2,nota3)
		mediaFinal = nota1+nota2+nota3
		mediaFinal /= 3
		
		se(mediaFinal >= 6)
			escreva("O aluno está aprovado!")
		senao
			escreva("O aluno está reprovado!")
	}
}
/* $$$ Portugol Studio $$$ 
 * 
 * Esta seção do arquivo guarda informações do Portugol Studio.
 * Você pode apagá-la se estiver utilizando outro editor.
 * 
 * @POSICAO-CURSOR = 338; 
 * @PONTOS-DE-PARADA = ;
 * @SIMBOLOS-INSPECIONADOS = ;
 * @FILTRO-ARVORE-TIPOS-DE-DADO = inteiro, real, logico, cadeia, caracter, vazio;
 * @FILTRO-ARVORE-TIPOS-DE-SIMBOLO = variavel, vetor, matriz, funcao;
 */