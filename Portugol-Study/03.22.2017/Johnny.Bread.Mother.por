programa
{
/*
Jo�ozinho recebeu R reais de sua m�e para comprar p�o, h� N pessoas na fam�lia de Jo�ozinho, considere:

Cada pessoa da fam�lia come 2 p�es;
O p�o custa 30 centavos.

Jo�ozinho precisa responder para sua m�e se o dinheiro � suficiente para comprar os p�es, fa�a o algoritmo que d� esta resposta e ajude o Jo�ozinho.
 */
	funcao inicio()
	{
		real reaisRecebido = 6.25
		inteiro pessoas = 10
		inteiro paesQtd = pessoas * 2
		real precoPao = 0.30
		real reaisNecessarios = paesQtd * precoPao		

		//10 pessoas comem 20 p�es e precisa de 6 reais
		escreva("O dinheiro � suficiente para comprar os p�es: " , reaisRecebido >= reaisNecessarios)
	}
}
/* $$$ Portugol Studio $$$ 
 * 
 * Esta se��o do arquivo guarda informa��es do Portugol Studio.
 * Voc� pode apag�-la se estiver utilizando outro editor.
 * 
 * @POSICAO-CURSOR = 385; 
 * @PONTOS-DE-PARADA = ;
 * @SIMBOLOS-INSPECIONADOS = ;
 * @FILTRO-ARVORE-TIPOS-DE-DADO = inteiro, real, logico, cadeia, caracter, vazio;
 * @FILTRO-ARVORE-TIPOS-DE-SIMBOLO = variavel, vetor, matriz, funcao;
 */