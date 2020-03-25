programa
{
//Crie uma janela 700x500 (700 pixels de largura e 500 pixels de altura) com fundo branco e com
//uma moldura de 50 pixels de largura na cor preta.

	inclua biblioteca Graficos
	inclua biblioteca Util
	inclua biblioteca Teclado
	
	funcao inicio()
	{
		
		Graficos.iniciar_modo_grafico(verdadeiro)
		Graficos.definir_dimensoes_janela(700, 500)
		Graficos.definir_titulo_janela("Exemplo de Modo Gráfico")

		Graficos.definir_cor(Graficos.COR_BRANCO)
		Graficos.limpar()
		Graficos.definir_cor(Graficos.COR_PRETO)
		Graficos.desenhar_retangulo(350, 250, 50, 50, falso, verdadeiro)
		Graficos.renderizar()
		Teclado.ler_tecla()
	}

}

/* $$$ Portugol Studio $$$ 
 * 
 * Esta seção do arquivo guarda informações do Portugol Studio.
 * Você pode apagá-la se estiver utilizando outro editor.
 * 
 * @POSICAO-CURSOR = 508; 
 * @PONTOS-DE-PARADA = ;
 * @SIMBOLOS-INSPECIONADOS = ;
 * @FILTRO-ARVORE-TIPOS-DE-DADO = inteiro, real, logico, cadeia, caracter, vazio;
 * @FILTRO-ARVORE-TIPOS-DE-SIMBOLO = variavel, vetor, matriz, funcao;
 */