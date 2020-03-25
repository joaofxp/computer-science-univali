programa
{
/*
Crie uma fun��o recursiva que receba os par�metros X, Y, T e N, onde: X e Y s�o as
coordenadas para desenhar um quadrado, T � o tamanho do quadrado e N � a
quantidade de quadrados.
A cada quadrado desenhado a posi��o X e Y deve incrementar igual � T * 2 e T deve
diminuir em 10.
*/
	inclua biblioteca Graficos
	inclua biblioteca Util
	
	funcao inicio()
	{
		Graficos.iniciar_modo_grafico(verdadeiro)
		Graficos.definir_dimensoes_janela(900, 500)
		Graficos.definir_titulo_janela("Exemplo de Modo Gr�fico")
		Graficos.definir_cor(Graficos.COR_BRANCO)
		quadradoRecursividade(50,50,100,5)		
	}

	funcao quadradoRecursividade(inteiro quadX, inteiro quadY, inteiro tamanho, inteiro quadNum)
	{		
		se(quadNum == 0)
		{
			Util.aguarde(3000)
		}
		senao
		{
			Graficos.desenhar_retangulo(Util.sorteia(0,600), Util.sorteia(0,400), 50, 50, falso, verdadeiro)
			Graficos.renderizar()
			quadradoRecursividade(tamanho * 2,tamanho * 2,tamanho-10,quadNum -1)
		}
	}
}
/* $$$ Portugol Studio $$$ 
 * 
 * Esta se��o do arquivo guarda informa��es do Portugol Studio.
 * Voc� pode apag�-la se estiver utilizando outro editor.
 * 
 * @POSICAO-CURSOR = 751; 
 * @PONTOS-DE-PARADA = ;
 * @SIMBOLOS-INSPECIONADOS = ;
 * @FILTRO-ARVORE-TIPOS-DE-DADO = inteiro, real, logico, cadeia, caracter, vazio;
 * @FILTRO-ARVORE-TIPOS-DE-SIMBOLO = variavel, vetor, matriz, funcao;
 */