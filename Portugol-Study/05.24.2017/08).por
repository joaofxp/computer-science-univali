programa
{
//Carregue a imagem de uma ?nave espacial? para a tela e movimente-a para a direita e esquerda,
//de acordo com a tecla pressionada (seta para direita e seta para esquerda).


	inclua biblioteca Graficos
	inclua biblioteca Util
	inclua biblioteca Teclado
	
	funcao inicio()
	{
		
		Graficos.iniciar_modo_grafico(verdadeiro)
		Graficos.definir_dimensoes_janela(700, 500)
		Graficos.definir_titulo_janela("Exemplo de Modo Gráfico")

		inteiro imagem = Graficos.carregar_imagem("dante.png")
		inteiro imagemPosicaoX = 0
		inteiro velocidade = 5
		
		enquanto(verdadeiro)
		{
			Graficos.definir_cor(Graficos.COR_PRETO)
			Graficos.renderizar()
			
			se(Teclado.tecla_pressionada(Teclado.TECLA_SETA_DIREITA) == verdadeiro)
			{
				imagemPosicaoX += velocidade
			}
			senao se(Teclado.tecla_pressionada(Teclado.TECLA_SETA_ESQUERDA) == verdadeiro)
			{
				imagemPosicaoX -= velocidade
			}
			
			Graficos.desenhar_imagem(imagemPosicaoX, 0, imagem)
			Graficos.renderizar()
			Util.aguarde(100)

			Graficos.limpar()
		}
	}

}

/* $$$ Portugol Studio $$$ 
 * 
 * Esta seção do arquivo guarda informações do Portugol Studio.
 * Você pode apagá-la se estiver utilizando outro editor.
 * 
 * @POSICAO-CURSOR = 893; 
 * @PONTOS-DE-PARADA = ;
 * @SIMBOLOS-INSPECIONADOS = ;
 * @FILTRO-ARVORE-TIPOS-DE-DADO = inteiro, real, logico, cadeia, caracter, vazio;
 * @FILTRO-ARVORE-TIPOS-DE-SIMBOLO = variavel, vetor, matriz, funcao;
 */