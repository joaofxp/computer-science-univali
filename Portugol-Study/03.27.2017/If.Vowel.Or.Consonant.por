programa
{
	/*
		Faça um algoritmo que solicita ao usuário uma letra (caracter) e exiba uma mensagem informando	se é uma vogal ou uma consoante.
	*/
	funcao inicio()
	{
		caracter letra
		escreva("Digite uma letra minúscula: ")
		leia(letra)
		se(letra == 'a' ou letra == 'e' ou letra == 'i' ou letra == 'o' ou letra == 'u')
			escreva("A letra é uma vogal")
		senao
			escreva("A letra é uma consoante")
	}
}
/* $$$ Portugol Studio $$$ 
 * 
 * Esta seção do arquivo guarda informações do Portugol Studio.
 * Você pode apagá-la se estiver utilizando outro editor.
 * 
 * @POSICAO-CURSOR = 284; 
 * @PONTOS-DE-PARADA = ;
 * @SIMBOLOS-INSPECIONADOS = ;
 * @FILTRO-ARVORE-TIPOS-DE-DADO = inteiro, real, logico, cadeia, caracter, vazio;
 * @FILTRO-ARVORE-TIPOS-DE-SIMBOLO = variavel, vetor, matriz, funcao;
 */