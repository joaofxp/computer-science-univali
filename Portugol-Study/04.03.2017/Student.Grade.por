programa
{
	funcao inicio()
	{
		/*	
			Digite o nome
			percentual de frequ�ncia
			e 3 notas com o mesmo peso

			Retorna se o aluno foi ou n�o aprovado

			Se n�o foi aprovado, colocar o motivo, 

			� necess�rio ter uma m�dia maior que 6.0
			Ou 75% de frequ�ncia

			Se reprovar nos dois, nota tem prioridade			
		*/

		real mediaNecessaria = 6.0
		real alunoMedia
		inteiro frequenciaNecessaria = 75
		real alunoFrequencia
		real nota1
		real nota2
		real nota3

		escreva("Informe o percentual de frequ�ncia do aluno (0 a 100): ")
		leia(alunoFrequencia)
		escreva("Digite as tr�s notas do aluno (0 a 10)\n")
		leia(nota1,nota2,nota3)
		alunoMedia = (nota1 + nota2 + nota3) / 3


		se(alunoMedia >= mediaNecessaria e alunoFrequencia >= frequenciaNecessaria)
			escreva("O aluno foi aprovado")
		senao se(alunoMedia < mediaNecessaria)
			escreva("O aluno reprovou por falta de nota, a media final do aluno �: " + alunoMedia)
		senao
			escreva("O aluno reprovou por falta de frequ�ncia, a frequ�ncia necess�ria � de: " + frequenciaNecessaria)
	}
}
/* $$$ Portugol Studio $$$ 
 * 
 * Esta se��o do arquivo guarda informa��es do Portugol Studio.
 * Voc� pode apag�-la se estiver utilizando outro editor.
 * 
 * @POSICAO-CURSOR = 619; 
 * @PONTOS-DE-PARADA = ;
 * @SIMBOLOS-INSPECIONADOS = ;
 * @FILTRO-ARVORE-TIPOS-DE-DADO = inteiro, real, logico, cadeia, caracter, vazio;
 * @FILTRO-ARVORE-TIPOS-DE-SIMBOLO = variavel, vetor, matriz, funcao;
 */