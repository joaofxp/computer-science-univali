programa
{
/*
	A. Todas as salas que n�o s�o finais possuem duas sa�das: Direita ou esquerda.
	B. O jogador pode escolher qual das sa�das ele ir� entrar	
	C. O jogador come�a na sala 1	
	D. Para vencer, o jogador precisa chegar na sala 14	
	E. O jogador perde se terminar em qualquer sala que n�o possua sa�da	
	F. Sempre que o jogador chegar em uma sala que tenha sa�das deve ser exibida a mensagem:	
		a. Voc� est� na sala X		
		Voc� pode ir para:		
		'D' - Direita		
		'E' - Esquerda	
	G. Sempre que o jogador chegar em uma sala que n�o tenha sa�das deve ser exibida a mensagem:	
		a. Voc� est� na sala X		
			Voc� perdeu		
		Ou em caso de vit�ria:		
		b. Voc� est� na sala 14		
			Voc� venceu
	F - S� pode existir 1 comando escreva p/ vit�ria e 1 p/ derrota
*/
	funcao inicio()
	{
		//Comeca na 1, precisa chegar na 14
		//Perde se terminar em qualquer sala que n�o possua sa�da e n�o for a sala 14
		//Se chegar em uma sala com sa�das, mostra qual � a sala e digitar D para ir para direita ou E para ir para esquerda
		
		//Maximo 6 vari�veis
		//S� uma do tipo int
		//Uma deve ser do tipo caracter
		//todos escrevas precisam vir de variaveis

		cadeia direcaoDireita  = "Aperte E para ir para esquerda"
		cadeia direcaoEsquerda = "Aperte D para ir para direita"
		caracter quebraLinha     = '\n'
		cadeia textoCasa 	   = "Voc� est� na casa: "
		inteiro casaAtual = 1
		caracter casaDirecao
		
		escreva(textoCasa , casaAtual , quebraLinha)


		escreva(direcaoDireita,quebraLinha,direcaoEsquerda,quebraLinha)
		leia(casaDirecao)

		se(casaDirecao == 'D')
			casaAtual += 2
		senao
			casaAtual += 1
			
		//2 | 3
		
		escreva(quebraLinha, textoCasa , casaAtual , quebraLinha)
	
		escreva(direcaoDireita,quebraLinha,direcaoEsquerda,quebraLinha)
		leia(casaDirecao)

		escolha(casaAtual)
		{
			caso 2:
				se(casaDirecao == 'D')
					casaAtual += 2	
				senao
					casaAtual += 3
				pare
			caso 3:
				se(casaDirecao == 'D')
					casaAtual += 3
				senao se(casaAtual == 3)
					casaAtual ++
			caso contrario:
				pare
		}

		//5 | 4 | 6

		escreva(quebraLinha, textoCasa , casaAtual , quebraLinha)

		se(casaAtual == 5 ou casaAtual == 6)
		{
			escreva(direcaoDireita,quebraLinha,direcaoEsquerda,quebraLinha)
			leia(casaDirecao)

			escolha(casaAtual)
			{
				caso 5:
					se(casaDirecao == 'D')
						casaAtual += 3
					senao
						casaAtual += 2
					pare
				caso 6:
					se(casaDirecao == 'D')
						casaAtual += 4
					senao
						casaAtual += 3
					pare
				caso contrario:
					pare
			}

			// 7 | 8 | 9 | 10

			escreva(quebraLinha, textoCasa , casaAtual , quebraLinha)
			escreva(direcaoDireita,quebraLinha,direcaoEsquerda,quebraLinha)
			leia(casaDirecao)

			se(casaDirecao == 'D')
				casaAtual += 5
			senao
				casaAtual += 4
				

			//11 | 12 | 13 | 14 | 15
			escreva(quebraLinha, textoCasa , casaAtual , quebraLinha)

			se(casaAtual == 13)
			{
				escreva(direcaoDireita,quebraLinha,direcaoEsquerda,quebraLinha)
				leia(casaDirecao)
				se(casaDirecao == 'D')
					casaAtual += 1
				senao
					casaAtual += 3				
			}
		}
		
		se(casaAtual == 14)
			escreva("Voc� venceu! Parab�ns!!")
		senao
			escreva("Voc� perdeu.. Tente novamente!")
	}
}
/* $$$ Portugol Studio $$$ 
 * 
 * Esta se��o do arquivo guarda informa��es do Portugol Studio.
 * Voc� pode apag�-la se estiver utilizando outro editor.
 * 
 * @POSICAO-CURSOR = 2793; 
 * @PONTOS-DE-PARADA = ;
 * @SIMBOLOS-INSPECIONADOS = ;
 * @FILTRO-ARVORE-TIPOS-DE-DADO = inteiro, real, logico, cadeia, caracter, vazio;
 * @FILTRO-ARVORE-TIPOS-DE-SIMBOLO = variavel, vetor, matriz, funcao;
 */