programa
{
//Desenhe um quadrado no centro da tela. Ao apertar a tecla ?Espaço? o quadrado deve ser
//transformado em um círculo.

	inclua biblioteca Graficos
	inclua biblioteca Util
	inclua biblioteca Teclado
	
	funcao inicio()
	{
		
		Graficos.iniciar_modo_grafico(verdadeiro)
		Graficos.definir_dimensoes_janela(700, 500)
		Graficos.definir_titulo_janela("Exemplo de Modo Gráfico")
		
		enquanto(verdadeiro)
		{
			Graficos.definir_cor(Graficos.COR_PRETO)
			Graficos.renderizar()
			
			se(Teclado.tecla_pressionada(Teclado.TECLA_ESPACO) == falso)
			{
				Graficos.definir_cor(Graficos.criar_cor(Util.sorteia(0,255), Util.sorteia(0,255), Util.sorteia(0,255)))
				Graficos.desenhar_elipse(Util.sorteia(0,600),Util.sorteia(0,400), 50, 50, verdadeiro)
			}
			senao
			{
				Graficos.definir_cor(Graficos.criar_cor(Util.sorteia(0,255), Util.sorteia(0,255), Util.sorteia(0,255)))
				Graficos.desenhar_retangulo(Util.sorteia(0,600),Util.sorteia(0,400), 50, 50, verdadeiro,verdadeiro)			
			}

			Graficos.renderizar()
			Util.aguarde(100)

			Graficos.limpar()
		}


//		Graficos.limpar()
		Teclado.ler_tecla()
	}

}

/* $$$ Portugol Studio $$$ 
 * 
 * Esta seção do arquivo guarda informações do Portugol Studio.
 * Você pode apagá-la se estiver utilizando outro editor.
 * 
 * @POSICAO-CURSOR = 633; 
 * @PONTOS-DE-PARADA = ;
 * @SIMBOLOS-INSPECIONADOS = ;
 * @FILTRO-ARVORE-TIPOS-DE-DADO = inteiro, real, logico, cadeia, caracter, vazio;
 * @FILTRO-ARVORE-TIPOS-DE-SIMBOLO = variavel, vetor, matriz, funcao;
 */