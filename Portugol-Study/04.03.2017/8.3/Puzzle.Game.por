programa
{
/*
	A. Todas as salas que não são finais possuem duas saídas: Direita ou esquerda.
	B. O jogador pode escolher qual das saídas ele irá entrar	
	C. O jogador começa na sala 1	
	D. Para vencer, o jogador precisa chegar na sala 14	
	E. O jogador perde se terminar em qualquer sala que não possua saída	
	F. Sempre que o jogador chegar em uma sala que tenha saídas deve ser exibida a mensagem:	
		a. Você está na sala X		
		Você pode ir para:		
		'D' - Direita		
		'E' - Esquerda	
	G. Sempre que o jogador chegar em uma sala que não tenha saídas deve ser exibida a mensagem:	
		a. Você está na sala X		
			Você perdeu		
		Ou em caso de vitória:		
		b. Você está na sala 14		
			Você venceu
	F - Só pode existir 1 comando escreva p/ vitória e 1 p/ derrota
*/
	funcao inicio()
	{
		//Comeca na 1, precisa chegar na 14
		//Perde se terminar em qualquer sala que não possua saída e não for a sala 14
		//Se chegar em uma sala com saídas, mostra qual é a sala e digitar D para ir para direita ou E para ir para esquerda
		
		//Maximo 6 variáveis
		//Só uma do tipo int
		//Uma deve ser do tipo caracter
		//todos escrevas precisam vir de variaveis

		cadeia direcaoDireita  = "Aperte E para ir para esquerda"
		cadeia direcaoEsquerda = "Aperte D para ir para direita"
		caracter quebraLinha     = '\n'
		cadeia textoCasa 	   = "Você está na casa: "
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
			escreva("Você venceu! Parabéns!!")
		senao
			escreva("Você perdeu.. Tente novamente!")
	}
}
/* $$$ Portugol Studio $$$ 
 * 
 * Esta seção do arquivo guarda informações do Portugol Studio.
 * Você pode apagá-la se estiver utilizando outro editor.
 * 
 * @POSICAO-CURSOR = 2793; 
 * @PONTOS-DE-PARADA = ;
 * @SIMBOLOS-INSPECIONADOS = ;
 * @FILTRO-ARVORE-TIPOS-DE-DADO = inteiro, real, logico, cadeia, caracter, vazio;
 * @FILTRO-ARVORE-TIPOS-DE-SIMBOLO = variavel, vetor, matriz, funcao;
 */