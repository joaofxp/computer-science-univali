programa
{
/*
Considere uma matriz 10x15 (10 linhas e 15 colunas) preenchida aleatoriamente com n�meros
zeros e uns. Represente graficamente essa matriz, de forma que os n�meros uns sejam
representados na cor preta, e os n�meros zeros na cor branca.
Por exemplo, para a matriz abaixo deve ser gerada uma tela semelhante a apresentada (considere
que cada quadrado deve ter 50 pixels) 
*/
	inclua biblioteca Graficos
	inclua biblioteca Util
	inclua biblioteca Teclado
	
	funcao inicio()
	{

		const inteiro matrizL = 10
		const inteiro matrizC = 15

		inteiro array[matrizL][matrizC]

		para(inteiro i = 0; i < matrizL;i++)
		{
			para(inteiro j = 0; j < matrizC; j++)
			{
				array[i][j] = Util.sorteia(0, 1)
			}
		}
		
		Graficos.iniciar_modo_grafico(verdadeiro)
		Graficos.definir_dimensoes_janela(700, 500)
		Graficos.definir_titulo_janela("Exemplo de Modo Gr�fico")

		Graficos.definir_cor(Graficos.COR_BRANCO)
		Graficos.definir_cor(Graficos.COR_PRETO)

		Graficos.renderizar()
		Teclado.ler_tecla()
	}

}

/* $$$ Portugol Studio $$$ 
 * 
 * Esta se��o do arquivo guarda informa��es do Portugol Studio.
 * Voc� pode apag�-la se estiver utilizando outro editor.
 * 
 * @POSICAO-CURSOR = 957; 
 * @PONTOS-DE-PARADA = ;
 * @SIMBOLOS-INSPECIONADOS = {array, 20, 10, 5};
 * @FILTRO-ARVORE-TIPOS-DE-DADO = inteiro, real, logico, cadeia, caracter, vazio;
 * @FILTRO-ARVORE-TIPOS-DE-SIMBOLO = variavel, vetor, matriz, funcao;
 */