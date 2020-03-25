programa
{
/*
Joãozinho recebeu R reais de sua mãe para comprar pão, há N pessoas na família de Joãozinho, considere:

Cada pessoa da família come 2 pães;
O pão custa 30 centavos.

Joãozinho precisa responder para sua mãe se o dinheiro é suficiente para comprar os pães, faça o algoritmo que dê esta resposta e ajude o Joãozinho.
 */
	funcao inicio()
	{
		real reaisRecebido = 6.25
		inteiro pessoas = 10
		inteiro paesQtd = pessoas * 2
		real precoPao = 0.30
		real reaisNecessarios = paesQtd * precoPao		

		//10 pessoas comem 20 pães e precisa de 6 reais
		escreva("O dinheiro é suficiente para comprar os pães: " , reaisRecebido >= reaisNecessarios)
	}
}
/* $$$ Portugol Studio $$$ 
 * 
 * Esta seção do arquivo guarda informações do Portugol Studio.
 * Você pode apagá-la se estiver utilizando outro editor.
 * 
 * @POSICAO-CURSOR = 385; 
 * @PONTOS-DE-PARADA = ;
 * @SIMBOLOS-INSPECIONADOS = ;
 * @FILTRO-ARVORE-TIPOS-DE-DADO = inteiro, real, logico, cadeia, caracter, vazio;
 * @FILTRO-ARVORE-TIPOS-DE-SIMBOLO = variavel, vetor, matriz, funcao;
 */