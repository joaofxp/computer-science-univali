programa
{
	/*
		Fa�a um algoritmo que solicita ao usu�rio uma letra (caracter) e exiba uma mensagem informando	se � uma vogal ou uma consoante.
	*/
	funcao inicio()
	{
		caracter letra
		escreva("Digite uma letra min�scula: ")
		leia(letra)
		se(letra == 'a' ou letra == 'e' ou letra == 'i' ou letra == 'o' ou letra == 'u')
			escreva("A letra � uma vogal")
		senao
			escreva("A letra � uma consoante")
	}
}
/* $$$ Portugol Studio $$$ 
 * 
 * Esta se��o do arquivo guarda informa��es do Portugol Studio.
 * Voc� pode apag�-la se estiver utilizando outro editor.
 * 
 * @POSICAO-CURSOR = 284; 
 * @PONTOS-DE-PARADA = ;
 * @SIMBOLOS-INSPECIONADOS = ;
 * @FILTRO-ARVORE-TIPOS-DE-DADO = inteiro, real, logico, cadeia, caracter, vazio;
 * @FILTRO-ARVORE-TIPOS-DE-SIMBOLO = variavel, vetor, matriz, funcao;
 */