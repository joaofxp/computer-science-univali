programa
{
//Solicite a quantidade de alunos de uma turma e a quantidade de notas. Para cada aluno, solicite as
//suas notas e exiba a sua respectiva média.

	funcao inicio()
	{
		inteiro alunosQtd
		inteiro contagem = 1
		inteiro notasQtd
		inteiro nota1
		inteiro nota2
		inteiro nota3
		inteiro media

		escreva("Digite a quantidade de alunos: \n")
		leia(alunosQtd)		
		
		enquanto(contagem <= alunosQtd)
		{
			escreva("Digite as 3 notas do aluno: ",contagem ,"\n")
			leia(nota1,nota2,nota3)
			media = (nota1+nota2+nota3)/3
			escreva("Média do aluno: ", contagem, " é: ", media, "\n")
			contagem++
		}		
	}
}
/* $$$ Portugol Studio $$$ 
 * 
 * Esta seção do arquivo guarda informações do Portugol Studio.
 * Você pode apagá-la se estiver utilizando outro editor.
 * 
 * @POSICAO-CURSOR = 259; 
 * @PONTOS-DE-PARADA = ;
 * @SIMBOLOS-INSPECIONADOS = ;
 * @FILTRO-ARVORE-TIPOS-DE-DADO = inteiro, real, logico, cadeia, caracter, vazio;
 * @FILTRO-ARVORE-TIPOS-DE-SIMBOLO = variavel, vetor, matriz, funcao;
 */