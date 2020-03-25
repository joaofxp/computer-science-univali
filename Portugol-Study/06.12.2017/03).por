programa
{
/*
Crie uma função recursiva que receba os parâmetros X, Y, T e N, onde: X e Y são as
coordenadas para desenhar um quadrado, T é o tamanho do quadrado e N é a
quantidade de quadrados.
A cada quadrado desenhado a posição X e Y deve incrementar igual à T * 2 e T deve
diminuir em 10.
*/
	inclua biblioteca Graficos
	inclua biblioteca Util
	
	funcao inicio()
	{
		Graficos.iniciar_modo_grafico(verdadeiro)
		Graficos.definir_dimensoes_janela(900, 500)
		Graficos.definir_titulo_janela("Exemplo de Modo Gráfico")
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
 * Esta seção do arquivo guarda informações do Portugol Studio.
 * Você pode apagá-la se estiver utilizando outro editor.
 * 
 * @POSICAO-CURSOR = 751; 
 * @PONTOS-DE-PARADA = ;
 * @SIMBOLOS-INSPECIONADOS = ;
 * @FILTRO-ARVORE-TIPOS-DE-DADO = inteiro, real, logico, cadeia, caracter, vazio;
 * @FILTRO-ARVORE-TIPOS-DE-SIMBOLO = variavel, vetor, matriz, funcao;
 */