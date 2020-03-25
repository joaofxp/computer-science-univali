programa
{
	/*
		Faça um algoritmo que solicita ao usuário dois números inteiros. 
		O primeiro é o valor das horas e o segundo dos minutos. 
		Verifique se a hora é válida ou inválida e exiba uma mensagem correspondente 
		(São válidas as horas entre 00:00 e 23:59).
	*/
	funcao inicio()
	{
		inteiro horasValor
		inteiro minutosValor
		escreva("Digite um número inteiro para hora: ")
		leia(horasValor)
		escreva("Digite um número inteiro para minuto: ")
		leia(minutosValor)
		
		se(horasValor >= 0 e horasValor <= 23 e minutosValor >= 0 e minutosValor <= 59)
			escreva("Sua hora é válida")
		senao
			escreva("As informações são inválidas")
	}
}
/* $$$ Portugol Studio $$$ 
 * 
 * Esta seção do arquivo guarda informações do Portugol Studio.
 * Você pode apagá-la se estiver utilizando outro editor.
 * 
 * @POSICAO-CURSOR = 599; 
 * @PONTOS-DE-PARADA = ;
 * @SIMBOLOS-INSPECIONADOS = ;
 * @FILTRO-ARVORE-TIPOS-DE-DADO = inteiro, real, logico, cadeia, caracter, vazio;
 * @FILTRO-ARVORE-TIPOS-DE-SIMBOLO = variavel, vetor, matriz, funcao;
 */