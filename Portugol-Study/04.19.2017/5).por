programa
{
//Solicite a quantidade de alunos de uma turma e a quantidade de notas. 
//Para cada aluno, solicite as suas notas e exiba a sua respectiva m�dia.
	funcao inicio()
	{
		inteiro alunosQtd = 0
		inteiro notasQtd = 0
		inteiro notaSomatoria = 0
		inteiro notaDigitada = 0
		
		escreva("Quantidade de alunos de uma turma: \n")
		leia(alunosQtd)
		escreva("Quantidade de notas: \n")
		leia(notasQtd)

		para(inteiro contador = 0; contador <= alunosQtd; contador++)
		{
			notaSomatoria = 0
			escreva("Digite as notas do aluno: \n")
			para(inteiro contador2 = 0; contador2 < notasQtd; contador2++)
			{
				leia(notaDigitada)
				notaSomatoria += notaDigitada
			}
			escreva("A m�dia do aluno �: ", notaSomatoria / notasQtd, "\n")
		}
	}
}
/* $$$ Portugol Studio $$$ 
 * 
 * Esta se��o do arquivo guarda informa��es do Portugol Studio.
 * Voc� pode apag�-la se estiver utilizando outro editor.
 * 
 * @POSICAO-CURSOR = 500; 
 * @PONTOS-DE-PARADA = ;
 * @SIMBOLOS-INSPECIONADOS = ;
 * @FILTRO-ARVORE-TIPOS-DE-DADO = inteiro, real, logico, cadeia, caracter, vazio;
 * @FILTRO-ARVORE-TIPOS-DE-SIMBOLO = variavel, vetor, matriz, funcao;
 */