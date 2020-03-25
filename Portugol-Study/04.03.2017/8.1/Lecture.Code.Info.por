programa
{
/*
Faça um algoritmo que leia o código da palestra de um evento e exiba 
o local e o horário em que ela será realizada, conforme a tabela a seguir:


 */
	funcao inicio()
	{
		inteiro palestraCodigo

		escreva("Digite um código da palestra")
		leia(palestraCodigo)
		
		escolha(palestraCodigo)
		{
			caso 1:
				escreva("| Código: 1 | Palestra: Linux | Auditorio: 1 | Horário: 8h às 9h |")
				pare
			caso 2:
				escreva("| Código: 2 | Palestra: Banco de Dados | Auditorio: 2 | Horário: 9h às 10h |")
				pare
			caso 3:
				escreva("| Código: 3 | Palestra: Windows Server | Auditorio: 3 | Horário: 13h às 14h |")
				pare
			caso 4:
				escreva("| Código: 4 | Palestra: Lógica e Programação | Auditorio: 4 | Horário: 15h às 17h |")
				pare
			caso contrario:
				escreva("Código de palestra inválida. Tente novamente.")
				pare
		}
	}
}
/* $$$ Portugol Studio $$$ 
 * 
 * Esta seção do arquivo guarda informações do Portugol Studio.
 * Você pode apagá-la se estiver utilizando outro editor.
 * 
 * @POSICAO-CURSOR = 852; 
 * @PONTOS-DE-PARADA = ;
 * @SIMBOLOS-INSPECIONADOS = ;
 * @FILTRO-ARVORE-TIPOS-DE-DADO = inteiro, real, logico, cadeia, caracter, vazio;
 * @FILTRO-ARVORE-TIPOS-DE-SIMBOLO = variavel, vetor, matriz, funcao;
 */