programa
{
//Desenhe duas linhas, formando um X e unindo os cantos da tela.
	inclua biblioteca Graficos
	inclua biblioteca Util
	inclua biblioteca Teclado
	
	funcao inicio()
	{
		
		Graficos.iniciar_modo_grafico(verdadeiro)
		Graficos.definir_dimensoes_janela(700, 500)
		Graficos.definir_titulo_janela("Exemplo de Modo Gr�fico")

		Graficos.definir_cor(Graficos.COR_VERDE)
		Graficos.desenhar_linha(0, 0, 700, 500)
		Graficos.desenhar_linha(700,0,0,500)
		Graficos.renderizar()
		Teclado.ler_tecla()
	}

}
/* $$$ Portugol Studio $$$ 
 * 
 * Esta se��o do arquivo guarda informa��es do Portugol Studio.
 * Voc� pode apag�-la se estiver utilizando outro editor.
 * 
 * @POSICAO-CURSOR = 509; 
 * @PONTOS-DE-PARADA = ;
 * @SIMBOLOS-INSPECIONADOS = ;
 * @FILTRO-ARVORE-TIPOS-DE-DADO = inteiro, real, logico, cadeia, caracter, vazio;
 * @FILTRO-ARVORE-TIPOS-DE-SIMBOLO = variavel, vetor, matriz, funcao;
 */