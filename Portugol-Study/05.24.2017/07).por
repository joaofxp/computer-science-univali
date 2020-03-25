programa
{
//Carregue uma imagem no canto superior esquerdo e, ao pressionar uma tecla do teclado, faça
//com que a imagem se movimente até atingir o canto superior direito.

	inclua biblioteca Graficos
	inclua biblioteca Util
	inclua biblioteca Teclado
	
	funcao inicio()
	{
		
		Graficos.iniciar_modo_grafico(verdadeiro)
		Graficos.definir_dimensoes_janela(700, 500)
		Graficos.definir_titulo_janela("Exemplo de Modo Gráfico")	
				
		inteiro imagem = Graficos.carregar_imagem("dante.png")
		Graficos.desenhar_imagem(0, 0, imagem)
		Graficos.renderizar()
		Teclado.ler_tecla()
		para(inteiro i = 0; i < 700;i+=5)
		{
			Graficos.definir_cor(Graficos.COR_PRETO)
			Graficos.renderizar()
			Graficos.desenhar_imagem(i, 0, imagem)
			Graficos.renderizar()
			Util.aguarde(100)
			Graficos.limpar()
		}
		Teclado.ler_tecla()
	}

}

/* $$$ Portugol Studio $$$ 
 * 
 * Esta seção do arquivo guarda informações do Portugol Studio.
 * Você pode apagá-la se estiver utilizando outro editor.
 * 
 * @POSICAO-CURSOR = 496; 
 * @PONTOS-DE-PARADA = ;
 * @SIMBOLOS-INSPECIONADOS = ;
 * @FILTRO-ARVORE-TIPOS-DE-DADO = inteiro, real, logico, cadeia, caracter, vazio;
 * @FILTRO-ARVORE-TIPOS-DE-SIMBOLO = variavel, vetor, matriz, funcao;
 */