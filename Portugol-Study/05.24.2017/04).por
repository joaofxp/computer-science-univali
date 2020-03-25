programa
{
//Desenhe um quadrado em uma posi��o aleat�ria da janela. A cada 2 segundos, o quadrado deve
//mudar de cor (gere a nova cor aleatoriamente) e aparecer em outra posi��o aleat�ria. Antes de
//desenhar o quadrado, apague o quadrado anterior.

	inclua biblioteca Graficos
	inclua biblioteca Util
	inclua biblioteca Teclado
	
	funcao inicio()
	{
		
		Graficos.iniciar_modo_grafico(verdadeiro)
		Graficos.definir_dimensoes_janela(700, 500)
		Graficos.definir_titulo_janela("Exemplo de Modo Gr�fico")
		
		enquanto(verdadeiro)
		{
			Graficos.definir_cor(Graficos.COR_PRETO)
			Graficos.renderizar()			
			Graficos.definir_cor(Graficos.criar_cor(Util.sorteia(0,255), Util.sorteia(0,255), Util.sorteia(0,255)))
			Graficos.desenhar_retangulo(Util.sorteia(0,600),Util.sorteia(0,400), 50, 50, verdadeiro,verdadeiro)
			Graficos.renderizar()
			Util.aguarde(100)
			Graficos.limpar()
		}
		
		Teclado.ler_tecla()
	}

}

/* $$$ Portugol Studio $$$ 
 * 
 * Esta se��o do arquivo guarda informa��es do Portugol Studio.
 * Voc� pode apag�-la se estiver utilizando outro editor.
 * 
 * @POSICAO-CURSOR = 251; 
 * @PONTOS-DE-PARADA = ;
 * @SIMBOLOS-INSPECIONADOS = ;
 * @FILTRO-ARVORE-TIPOS-DE-DADO = inteiro, real, logico, cadeia, caracter, vazio;
 * @FILTRO-ARVORE-TIPOS-DE-SIMBOLO = variavel, vetor, matriz, funcao;
 */