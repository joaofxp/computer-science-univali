programa
{
	funcao inicio()
	{
		cadeia nome
		inteiro valorGastarReal
		inteiro valorGastarDolar
		real taxaCambioDolar
		inteiro localSelecionado

		escreva("Digite seu nome:\n")
		leia(nome)
		escreva("Valor que pretende gastar em R$:\n")
		leia(valorGastarReal)
		escreva("Digite a taxa de convers�o atual do real para d�lar: (3.15)\n")
		leia(taxaCambioDolar)

		valorGastarDolar = valorGastarReal / taxaCambioDolar

		se(valorGastarDolar > 300)
			escreva("| C�DIGO | LOCAL             | VALOR   |")
		senao
			escreva("Infelizmente n�o temos viagens dispon�veis para voc�.")
			
		se(valorGastarDolar > 1000)
			escreva("\n| 1      | DISNEY            | US$ 1000 |")

		se(valorGastarDolar > 700)
			escreva("\n| 2      | LAS VEGAS         | US$ 700 |")

		se(valorGastarDolar > 800)
			escreva("\n| 3      | UNIVERSAL STUDIO  | US$ 800 |")
		
		se(valorGastarDolar > 300)
			escreva("\n| 4      | Acre              | US$ 300 |")

		escreva("\n\nSelecione um dos locais atrav�s do seu c�digo na primeira coluna.\n")
		leia(localSelecionado)

		escolha(localSelecionado)
		{
			caso 1:
				se(valorGastarDolar > 1000)
					escreva(nome , ", sua viagem para DISNEY foi agendada.")
				pare
			caso 2:
				se(valorGastarDolar > 700)
					escreva(nome , ", sua viagem para LAS VEGAS foi agendada.")			
				pare
			caso 3:
				se(valorGastarDolar > 800)
					escreva(nome , ", sua viagem para UNIVERSAL STUDIO foi agendada.")
				pare
			caso 4:
				se(valorGastarDolar > 300)
					escreva(nome , ", sua viagem para ACRE foi agendada.")			
				pare
			caso contrario:
				escreva("C�digo informado inv�lido.")
				pare
		}

//		escolha()
//		{
//			caso contrario:
//				escreva("Infelizmente n�o temos viagens dispon�veis para voc�")
//				pare
//		}
		//?Nome_informado, sua viagem para Local_escolhido foi agendada?.
	}
}	
/* $$$ Portugol Studio $$$ 
 * 
 * Esta se��o do arquivo guarda informa��es do Portugol Studio.
 * Voc� pode apag�-la se estiver utilizando outro editor.
 * 
 * @POSICAO-CURSOR = 1629; 
 * @PONTOS-DE-PARADA = ;
 * @SIMBOLOS-INSPECIONADOS = ;
 * @FILTRO-ARVORE-TIPOS-DE-DADO = inteiro, real, logico, cadeia, caracter, vazio;
 * @FILTRO-ARVORE-TIPOS-DE-SIMBOLO = variavel, vetor, matriz, funcao;
 */