programa
{
/*
Crie uma fun��o para solicitar um n�mero ao usu�rio. Depois disso, crie uma outra
fun��o que receba este n�mero por par�metro e exiba em uma janela gr�fica, N
quadrados de tamanho 50x50, onde N � o valor recebido por par�metro.

*/
	inclua biblioteca Graficos
	inclua biblioteca Util
	
	funcao inicio()
	{
		exibirJanela(solicitarNumero())
	}

	funcao inteiro solicitarNumero()
	{
		retorne Util.sorteia(1, 200)
	}

	funcao exibirJanela(inteiro numero)
	{
				
		Graficos.iniciar_modo_grafico(verdadeiro)
		Graficos.definir_dimensoes_janela(700, 500)
		Graficos.definir_titulo_janela("Exemplo de Modo Gr�fico")

		inteiro contagem = numero
		
		enquanto(contagem != 0)
		{
			Graficos.definir_cor(Graficos.COR_PRETO)
			Graficos.renderizar()
			Graficos.definir_cor(Graficos.COR_BRANCO)
			Graficos.desenhar_retangulo(Util.sorteia(0,600), Util.sorteia(0,400), 50, 50, falso, verdadeiro)
			Graficos.renderizar()
			Util.aguarde(100)
			//Graficos.limpar()
			contagem--
		}
	}
}
/* $$$ Portugol Studio $$$ 
 * 
 * Esta se��o do arquivo guarda informa��es do Portugol Studio.
 * Voc� pode apag�-la se estiver utilizando outro editor.
 * 
 * @POSICAO-CURSOR = 802; 
 * @PONTOS-DE-PARADA = ;
 * @SIMBOLOS-INSPECIONADOS = ;
 * @FILTRO-ARVORE-TIPOS-DE-DADO = inteiro, real, logico, cadeia, caracter, vazio;
 * @FILTRO-ARVORE-TIPOS-DE-SIMBOLO = variavel, vetor, matriz, funcao;
 */