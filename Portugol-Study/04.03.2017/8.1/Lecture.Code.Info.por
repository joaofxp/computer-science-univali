programa
{
/*
Fa�a um algoritmo que leia o c�digo da palestra de um evento e exiba 
o local e o hor�rio em que ela ser� realizada, conforme a tabela a seguir:


 */
	funcao inicio()
	{
		inteiro palestraCodigo

		escreva("Digite um c�digo da palestra")
		leia(palestraCodigo)
		
		escolha(palestraCodigo)
		{
			caso 1:
				escreva("| C�digo: 1 | Palestra: Linux | Auditorio: 1 | Hor�rio: 8h �s 9h |")
				pare
			caso 2:
				escreva("| C�digo: 2 | Palestra: Banco de Dados | Auditorio: 2 | Hor�rio: 9h �s 10h |")
				pare
			caso 3:
				escreva("| C�digo: 3 | Palestra: Windows Server | Auditorio: 3 | Hor�rio: 13h �s 14h |")
				pare
			caso 4:
				escreva("| C�digo: 4 | Palestra: L�gica e Programa��o | Auditorio: 4 | Hor�rio: 15h �s 17h |")
				pare
			caso contrario:
				escreva("C�digo de palestra inv�lida. Tente novamente.")
				pare
		}
	}
}
/* $$$ Portugol Studio $$$ 
 * 
 * Esta se��o do arquivo guarda informa��es do Portugol Studio.
 * Voc� pode apag�-la se estiver utilizando outro editor.
 * 
 * @POSICAO-CURSOR = 852; 
 * @PONTOS-DE-PARADA = ;
 * @SIMBOLOS-INSPECIONADOS = ;
 * @FILTRO-ARVORE-TIPOS-DE-DADO = inteiro, real, logico, cadeia, caracter, vazio;
 * @FILTRO-ARVORE-TIPOS-DE-SIMBOLO = variavel, vetor, matriz, funcao;
 */