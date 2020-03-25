programa
{
//Desenhe um c�rculo em uma posi��o aleat�ria da janela
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
			Graficos.definir_cor(Graficos.COR_BRANCO)
			Graficos.desenhar_elipse(Util.sorteia(0,600),Util.sorteia(0,400), 50, 50, verdadeiro)
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
 * @POSICAO-CURSOR = 171; 
 * @PONTOS-DE-PARADA = ;
 * @SIMBOLOS-INSPECIONADOS = ;
 * @FILTRO-ARVORE-TIPOS-DE-DADO = inteiro, real, logico, cadeia, caracter, vazio;
 * @FILTRO-ARVORE-TIPOS-DE-SIMBOLO = variavel, vetor, matriz, funcao;
 */