programa
{
//Carregue e exiba uma imagem qualquer na tela

	inclua biblioteca Graficos
	inclua biblioteca Util
	inclua biblioteca Teclado
	
	funcao inicio()
	{
		
		Graficos.iniciar_modo_grafico(verdadeiro)
		Graficos.definir_dimensoes_janela(700, 500)
		Graficos.definir_titulo_janela("Exemplo de Modo Gr�fico")
		
		Graficos.desenhar_retangulo(50, 50, 100, 100,verdadeiro,verdadeiro)
		inteiro imagem = Graficos.carregar_imagem("png.png")
		Graficos.desenhar_imagem(10, 300, imagem)
		Graficos.renderizar()
		Teclado.ler_tecla()
	}

}

/* $$$ Portugol Studio $$$ 
 * 
 * Esta se��o do arquivo guarda informa��es do Portugol Studio.
 * Voc� pode apag�-la se estiver utilizando outro editor.
 * 
 * @POSICAO-CURSOR = 287; 
 * @PONTOS-DE-PARADA = ;
 * @SIMBOLOS-INSPECIONADOS = ;
 * @FILTRO-ARVORE-TIPOS-DE-DADO = inteiro, real, logico, cadeia, caracter, vazio;
 * @FILTRO-ARVORE-TIPOS-DE-SIMBOLO = variavel, vetor, matriz, funcao;
 */