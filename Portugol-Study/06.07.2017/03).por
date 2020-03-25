programa
{
/*
Crie uma função para solicitar um número ao usuário. Depois disso, crie uma outra
função que receba este número por parâmetro e exiba em uma janela gráfica, N
quadrados de tamanho 50x50, onde N é o valor recebido por parâmetro.

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
		Graficos.definir_titulo_janela("Exemplo de Modo Gráfico")

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
 * Esta seção do arquivo guarda informações do Portugol Studio.
 * Você pode apagá-la se estiver utilizando outro editor.
 * 
 * @POSICAO-CURSOR = 802; 
 * @PONTOS-DE-PARADA = ;
 * @SIMBOLOS-INSPECIONADOS = ;
 * @FILTRO-ARVORE-TIPOS-DE-DADO = inteiro, real, logico, cadeia, caracter, vazio;
 * @FILTRO-ARVORE-TIPOS-DE-SIMBOLO = variavel, vetor, matriz, funcao;
 */