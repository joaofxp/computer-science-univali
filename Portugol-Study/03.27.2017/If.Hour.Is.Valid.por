programa
{
	/*
		Fa�a um algoritmo que solicita ao usu�rio dois n�meros inteiros. 
		O primeiro � o valor das horas e o segundo dos minutos. 
		Verifique se a hora � v�lida ou inv�lida e exiba uma mensagem correspondente 
		(S�o v�lidas as horas entre 00:00 e 23:59).
	*/
	funcao inicio()
	{
		inteiro horasValor
		inteiro minutosValor
		escreva("Digite um n�mero inteiro para hora: ")
		leia(horasValor)
		escreva("Digite um n�mero inteiro para minuto: ")
		leia(minutosValor)
		
		se(horasValor >= 0 e horasValor <= 23 e minutosValor >= 0 e minutosValor <= 59)
			escreva("Sua hora � v�lida")
		senao
			escreva("As informa��es s�o inv�lidas")
	}
}
/* $$$ Portugol Studio $$$ 
 * 
 * Esta se��o do arquivo guarda informa��es do Portugol Studio.
 * Voc� pode apag�-la se estiver utilizando outro editor.
 * 
 * @POSICAO-CURSOR = 599; 
 * @PONTOS-DE-PARADA = ;
 * @SIMBOLOS-INSPECIONADOS = ;
 * @FILTRO-ARVORE-TIPOS-DE-DADO = inteiro, real, logico, cadeia, caracter, vazio;
 * @FILTRO-ARVORE-TIPOS-DE-SIMBOLO = variavel, vetor, matriz, funcao;
 */