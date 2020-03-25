programa
{
	inclua biblioteca Graficos
	inclua biblioteca Teclado
	inclua biblioteca Util
	inclua biblioteca Matematica

	//Matriz 20x20 X
	//Proporcao na tela de 600x600 X
	//Desenhar Jogador, Inimigo e Vazio na tela X
	//Jogador Andar X
	//Jogador anda respeitando os limites da fase X
	//Sortear  a posicao do jogador e de 5 inimigos X
	//Jogador andar em loop X
	//Verificar se o jogador nao esta na mesma posicao do inimigo no sorteio - jogador sempre será o primeiro a ser feito, não há necessidade - X
	//Verificar se ja não há um inimigo na posicao do jogador ou de outro inimigo - X
	//Jogador perder vidas ao encostar em um inimigo X
	//terminar quando o jogador perder todas as vidas X
	//Contador de vidas e de pontos visiveis ao usuario X
	//Sortear um recurso na fase X
	//Passar em um recurso receber N pontos X (Definidos por uma constante)
	//Gerenciar os pontos do jogador X
	//Se coletar o recurso, criar outro no mapa em posicao aleatoria X
	//quando o jogador perder, informar sua pontuação X
	//feedback que o player perdeu X
	//encontrar um modo de manter o tabuleiro envolta vazio, sem precisar renderizar sempre X (so atualiza texto se alterar vida ou ponto) X
	//Sortear os 5 inimigos sendo 2 fracos, 2 medios e 1 forte X
	//Jogador perder 1 vida se for fraco ou medio X
	//jogador perder 2 vidas se for um forte X
	//Diferenciar um inimigo do outro X
	//Cada inimigo possuir um grafico diferente X
	//A cada X tempos sortear uma vida a ser coletada pelo jogador (Variavel 100, com o passar do while diminui em 1, se chegar a 0 executa, depois volta pra 100) X
	//Jogador andar conforme a velocidade dele (atualmente 1) X
	//Salvar a posicao de cada inimigo em uma variavel X
	//Gerenciar movimento inimigo Fraco (move menos que o jogador, até chegar a um limite, começa a mover pra esquerda ou direita) X
	//Gerenciar movimento inimigo medio (move igual ao jogador, variavel x, que faz mover x casas a direita,cima,esqurda e baixo, com limites, mudando na hora X
	//Gerenciar movimento inimigo forte(move mais que Y, movendo em qualquer direção aleatoria, incluindo diagonais, checando limites) X 		
	//Inimigo andar X
	
//	Os inimigos fracos devem se movimentar em velocidade lenta (< Y) e apenas na horizontal. Para
//	fazer isso, o inimigo deverá se mover sempre para a direita até encontrar o limite da fase, depois
//	disso ele se moverá sempre para esquerda até encontrar novamente o limite e voltar. X
	
//	Os inimigos médios devem se movimentar em velocidade idêntica ao jogador (=Y), eles devem
//	se mover Z casas para direita, depois disso Z casas para cima, Z casas para a esquerda e por
//	fim Z casas para baixo. Se em algum momento o inimigo encontrar um limite da fase ele deve
//	mudar de direção imediatamente. X
	
//	O inimigo forte deve se movimentar mais rápido (>Y) que o jogador e em qualquer direção
//	aleatória (incluindo as diagonais). X

	//transformar em funcao o máximo possivel do codigo  
	//inimigo forte matando o player
	
	
	//Proporcao = coluna * 30 (numa tela de 600x600)
	const inteiro 	TAMANHOMATRIZ 	= 20,
				TELA = 600,
				VAZIO = 0,
				JOGADOR = 1,
				RECURSO = 2,
				VIDA = 3,
				INIMIGOFRACO = 4,
				INIMIGOMEDIO = 5,
				INIMIGOFORTE = 6,
				JOGADORQUANTIDADE = 1,
				RECURSOQUANTIDADE = 1,
				VIDAQUANTIDADE = 1,
				RECURSOPONTOS = 1,
				VIDAINICIAL = 3,
				VIDASORTEIOMINIMO = 20,
				VIDASORTEIOMAXIMO = 90

	funcao inicio()
	{		
		inteiro 	mapa[TAMANHOMATRIZ][TAMANHOMATRIZ],
				jogadorPontos = 0,
				jogadorVidas = VIDAINICIAL,
				jogadorVelocidade = 2,
				jogadorCor = Graficos.criar_cor(0, 0, 255),
				inimigosQuantidade = 5,
				recursoCor = Graficos.criar_cor(255, 0, 255),
				vidaCor = Graficos.criar_cor(0,255,0),
				jogadorPosicaoLinha = 0,
				jogadorPosicaoColuna = 0,
				vidaPosicaoLinha = 0,
				vidaPosicaoColuna = 0,
				recursoPosicaoLinha = 0,
				recursoPosicaoColuna = 0,
				inimigoFraco1PosicaoLinha = 0,
				inimigoFraco1PosicaoColuna = 0,
				inimigoFraco2PosicaoLinha = 0,
				inimigoFraco2PosicaoColuna = 0,
				inimigoMedio1PosicaoLinha = 0,
				inimigoMedio1PosicaoColuna = 0,
				inimigoMedio2PosicaoLinha = 0,
				inimigoMedio2PosicaoColuna = 0,
				inimigoFortePosicaoLinha = 0,
				inimigoFortePosicaoColuna = 0,
				inimigoFracoCor = Graficos.criar_cor(255,255, 0),
				inimigoMedioCor = Graficos.criar_cor(255, 150, 0),
				inimigoForteCor = Graficos.criar_cor(255, 0, 0),
				inimigoFracoVelocidade = jogadorVelocidade / 2,
				inimigoMedioVelocidade = jogadorVelocidade,
				inimigoForteVelocidade = jogadorVelocidade * 2,
				inimigoMedio1TipoMovimento = 1,
				inimigoMedio2TipoMovimento = 1,
				teclaPressionada,
				tempoSorteioVida = Util.sorteia(VIDASORTEIOMINIMO, VIDASORTEIOMAXIMO)

		logico	inimigoFraco1MoverDireita = verdadeiro,
				inimigoFraco2MoverDireita = verdadeiro
					
		real    multiplicadorPropocao = 0.05,
				  proporcao = TELA * 0.05

		cadeia textoTela = ""
		
		MapaEsvaziarValores(mapa)
		//Sortear a posicao do jogador passando a matriz, o valor do jogador, a linha e a coluna
		SortearPosicao(mapa,JOGADOR,jogadorPosicaoLinha,jogadorPosicaoColuna)
		SortearPosicao(mapa,RECURSO,recursoPosicaoLinha,recursoPosicaoColuna)
		SortearPosicao(mapa,INIMIGOFRACO, inimigoFraco1PosicaoLinha,inimigoFraco1PosicaoColuna)
		SortearPosicao(mapa,INIMIGOFRACO, inimigoFraco2PosicaoLinha,inimigoFraco2PosicaoColuna)
		SortearPosicao(mapa,INIMIGOMEDIO, inimigoMedio1PosicaoLinha,inimigoMedio1PosicaoColuna)
		SortearPosicao(mapa,INIMIGOMEDIO, inimigoMedio2PosicaoLinha,inimigoMedio2PosicaoColuna)
		SortearPosicao(mapa,INIMIGOFORTE, inimigoFortePosicaoLinha,inimigoFortePosicaoColuna)
		IniciarTela()

		DesenharTextoTela(jogadorPontos,jogadorVidas)

		enquanto(jogadorVidas > 0)
		{						
			Util.aguarde(100)
			se(tempoSorteioVida <= 0)
			{
				SortearPosicao(mapa,VIDA,vidaPosicaoLinha,vidaPosicaoColuna)
				tempoSorteioVida = Util.sorteia(VIDASORTEIOMINIMO, VIDASORTEIOMAXIMO)
			}
			senao
				tempoSorteioVida--
				
			//Desenhar tabuleiro conforme proporcao da tela
			DesenharMatriz(mapa,proporcao,jogadorCor,recursoCor, vidaCor,inimigoFracoCor,inimigoMedioCor,inimigoForteCor)

			//Movimentar jogador e checar se o que acertou
			se(Teclado.alguma_tecla_pressionada())
			{				
				teclaPressionada = Teclado.ler_tecla()
			
				escolha(teclaPressionada)
				{
					//DIREITA
					caso 39:
						para(inteiro i = 0; i < TAMANHOMATRIZ; i++)
						{
							para(inteiro j = 0; j < TAMANHOMATRIZ; j++)
							{
								se(mapa[i][j] == JOGADOR)
								{
									para(inteiro andar = 1; andar <= jogadorVelocidade; andar++)
									{
										se(j+andar < TAMANHOMATRIZ)
										{
											inteiro jogadorVidaAnterior = jogadorVidas
											inteiro jogadorPontosAnterior = jogadorPontos
											
											se(mapa[i][j+andar] == INIMIGOFRACO ou mapa[i][j+andar] == INIMIGOMEDIO)
												JogadorDano(jogadorVidas, 1)	
											senao se(mapa[i][j+andar] == INIMIGOFORTE)
												JogadorDano(jogadorVidas, 2)
											senao se(mapa[i][j+andar] == RECURSO)
											{
												JogadorRecurso(jogadorPontos, RECURSOPONTOS)
												SortearPosicao(mapa,RECURSO,recursoPosicaoLinha,recursoPosicaoColuna)
											}
											senao se(mapa[i][j+andar] == VIDA)
												JogadorDano(jogadorVidas,-1)
			
											se(jogadorVidaAnterior != jogadorVidas ou jogadorPontosAnterior != jogadorPontos)
												DesenharTextoTela(jogadorPontos,jogadorVidas)
											
											mapa[i][j+andar-1] = VAZIO
											mapa[i][j+andar] = JOGADOR
										}
										se(andar == jogadorVelocidade)
										{
											i =TAMANHOMATRIZ
											j = TAMANHOMATRIZ										
										}
									}
								}
							}
						}
					pare
					//ESQUERDA
					caso 37:
						para(inteiro i = 0; i < TAMANHOMATRIZ; i++)
						{
							para(inteiro j = 0; j < TAMANHOMATRIZ; j++)
							{
								se(mapa[i][j] == JOGADOR)
								{
									para(inteiro andar = 1; andar <= jogadorVelocidade; andar++)
									{
										se(j-andar >= 0)
										{
											inteiro jogadorVidaAnterior = jogadorVidas
											inteiro jogadorPontosAnterior = jogadorPontos
											
											se(mapa[i][j-andar] == INIMIGOFRACO ou mapa[i][j-andar] == INIMIGOMEDIO)
												JogadorDano(jogadorVidas, 1)
											senao se(mapa[i][j-andar] == INIMIGOFORTE)
												JogadorDano(jogadorVidas, 2)
											senao se(mapa[i][j-andar] == RECURSO)
											{
												JogadorRecurso(jogadorPontos, RECURSOPONTOS)
												SortearPosicao(mapa,RECURSO,recursoPosicaoLinha,recursoPosicaoColuna)
											}
											senao se(mapa[i][j-andar] == VIDA)
												JogadorDano(jogadorVidas,-1)
			
											se(jogadorVidaAnterior != jogadorVidas ou jogadorPontosAnterior != jogadorPontos)
												DesenharTextoTela(jogadorPontos,jogadorVidas)
											
											mapa[i][j-andar+1] = VAZIO
											mapa[i][j-andar] = JOGADOR
										}
										se(andar == jogadorVelocidade)
										{
											i =TAMANHOMATRIZ
											j = TAMANHOMATRIZ										
										}
									}
								}
							}
						}
					pare
					//CIMA
					caso 38:
						para(inteiro i = 0; i < TAMANHOMATRIZ; i++)
						{
							para(inteiro j = 0; j < TAMANHOMATRIZ; j++)
							{
								se(mapa[i][j] == JOGADOR)
								{
									para(inteiro andar = 1; andar <= jogadorVelocidade; andar++)
									{
										se(i-andar >= 0)
										{
											inteiro jogadorVidaAnterior = jogadorVidas
											inteiro jogadorPontosAnterior = jogadorPontos
											
											se(mapa[i-andar][j] == INIMIGOFRACO ou mapa[i-andar][j] == INIMIGOMEDIO)
												JogadorDano(jogadorVidas, 1)	
											senao se(mapa[i-andar][j] == INIMIGOFORTE)
												JogadorDano(jogadorVidas, 2)
											senao se(mapa[i-andar][j] == RECURSO)
											{
												JogadorRecurso(jogadorPontos, RECURSOPONTOS)
												SortearPosicao(mapa,RECURSO, recursoPosicaoLinha,recursoPosicaoColuna)
											}
											senao se(mapa[i-andar][j] == VIDA)
												JogadorDano(jogadorVidas,-1)
			
											se(jogadorVidaAnterior != jogadorVidas ou jogadorPontosAnterior != jogadorPontos)
												DesenharTextoTela(jogadorPontos,jogadorVidas)
											
											mapa[i-andar+1][j] = VAZIO
											mapa[i-andar][j] = JOGADOR
										}
										se(andar == jogadorVelocidade)
										{
											i =TAMANHOMATRIZ
											j = TAMANHOMATRIZ										
										}
									}
								}
							}
						}
					pare
					//BAIXO
					caso 40:
						para(inteiro i = 0; i < TAMANHOMATRIZ; i++)
						{
							para(inteiro j = 0; j < TAMANHOMATRIZ; j++)
							{
								se(mapa[i][j] == JOGADOR)
								{
									para(inteiro andar = 1; andar <= jogadorVelocidade; andar++)
									{
										se(i+andar < TAMANHOMATRIZ)
										{
											inteiro jogadorVidaAnterior = jogadorVidas
											inteiro jogadorPontosAnterior = jogadorPontos
											
											se(mapa[i+andar][j] == INIMIGOFRACO ou mapa[i+andar][j] == INIMIGOMEDIO)
												JogadorDano(jogadorVidas, 1)	
											senao se(mapa[i+andar][j] == INIMIGOFORTE)
												JogadorDano(jogadorVidas, 2)
											senao se(mapa[i+andar][j] == RECURSO)
											{
												JogadorRecurso(jogadorPontos, RECURSOPONTOS)
												SortearPosicao(mapa,RECURSO, recursoPosicaoLinha,recursoPosicaoColuna)
											}
											senao se(mapa[i+andar][j] == VIDA)
												JogadorDano(jogadorVidas,-1)
			
											se(jogadorVidaAnterior != jogadorVidas ou jogadorPontosAnterior != jogadorPontos)
												DesenharTextoTela(jogadorPontos,jogadorVidas)
											
											mapa[i+andar-1][j] = VAZIO
											mapa[i+andar][j] = JOGADOR
										}
										se(andar == jogadorVelocidade)
										{
											i =TAMANHOMATRIZ
											j = TAMANHOMATRIZ										
										}
									}
								}
							}
						}
					pare
				}
			}
			
			//Movimentacao dos inimigos
			//Passar a matriz, a posicao do inimigo, a direcao (se direita e esquerda), no caso do fraco e qtd de andar, vidas e pontos do jogador
			MoverInimigo(mapa,inimigoFraco1PosicaoLinha,inimigoFraco1PosicaoColuna, inimigoFracoVelocidade,jogadorVidas,jogadorPontos,inimigoFraco1MoverDireita,inimigoMedio1TipoMovimento)
			MoverInimigo(mapa,inimigoFraco2PosicaoLinha,inimigoFraco2PosicaoColuna, inimigoFracoVelocidade,jogadorVidas,jogadorPontos,inimigoFraco2MoverDireita,inimigoMedio1TipoMovimento)
			MoverInimigo(mapa,inimigoMedio1PosicaoLinha,inimigoMedio1PosicaoColuna, inimigoMedioVelocidade,jogadorVidas,jogadorPontos,inimigoFraco1MoverDireita,inimigoMedio1TipoMovimento)
			MoverInimigo(mapa,inimigoMedio2PosicaoLinha,inimigoMedio2PosicaoColuna, inimigoMedioVelocidade,jogadorVidas,jogadorPontos,inimigoFraco1MoverDireita,inimigoMedio2TipoMovimento)
			MoverInimigo(mapa,inimigoFortePosicaoLinha,inimigoFortePosicaoColuna, inimigoForteVelocidade,jogadorVidas,jogadorPontos,inimigoFraco1MoverDireita,inimigoMedio1TipoMovimento)
		}

		FimDeJogo(jogadorPontos)
	}

	funcao MapaEsvaziarValores(inteiro &matriz[][])
	{
		para(inteiro i = 0; i < TAMANHOMATRIZ; i++)
		{
			para(inteiro j = 0; j < TAMANHOMATRIZ; j++)
			{
				matriz[i][j] = VAZIO
			}
		}		
	}

	funcao SortearPosicao(inteiro &matriz[][],inteiro valorPersonagem, inteiro &linha, inteiro &coluna)
	{		
		linha = Util.sorteia(0, TAMANHOMATRIZ -1)
		coluna = Util.sorteia(0, TAMANHOMATRIZ -1)

		enquanto(matriz[linha][coluna] != VAZIO)
		{
			linha = Util.sorteia(0, TAMANHOMATRIZ -1)
			coluna = Util.sorteia(0, TAMANHOMATRIZ -1)
		}
	
		matriz[linha][coluna] = valorPersonagem
		//Setar a mesma posicao na mesma posicao da matriz
	}

	funcao IniciarTela()
	{
		Graficos.iniciar_modo_grafico(verdadeiro)
		Graficos.definir_dimensoes_janela(TELA, TELA+50)
		Graficos.definir_titulo_janela("Coleta de Recursos")
		Graficos.definir_tamanho_texto(30.0)
		Graficos.definir_estilo_texto(falso, verdadeiro, falso)		
	}

	funcao DesenharMatriz(inteiro &matriz[][],real proporcaoTela, inteiro jogadorCor, inteiro recursoCor, inteiro vidaCor, inteiro inimigoFracoCor,inteiro inimigoMedioCor, inteiro inimigoForteCor)
	{
		para(inteiro i = 0; i < TAMANHOMATRIZ; i++)
		{
			para(inteiro j = 0; j < TAMANHOMATRIZ; j++)
			{
				//FAZER INIMIGOFRACO FRACO, MEDIO E FORTE
				//SORTEAR UM RECURSO NA FASE
				se(matriz[i][j] == INIMIGOFRACO)					
					Graficos.definir_cor(inimigoFracoCor)					
				senao se(matriz[i][j] == INIMIGOMEDIO)					
					Graficos.definir_cor(inimigoMedioCor)					
				senao se(matriz[i][j] == INIMIGOFORTE)					
					Graficos.definir_cor(inimigoForteCor)					
				senao se(matriz[i][j] == JOGADOR)					
					Graficos.definir_cor(jogadorCor)					
				senao se(matriz[i][j] == RECURSO)
					Graficos.definir_cor(recursoCor)					
				senao se(matriz[i][j] == VIDA)					
					Graficos.definir_cor(vidaCor)
				senao					
					Graficos.definir_cor(Graficos.COR_BRANCO)
				
				
				Graficos.desenhar_retangulo(j * proporcaoTela, i * proporcaoTela, 25, 25, falso, verdadeiro)
				Graficos.renderizar()
			}
		}
	}

	funcao DesenharTextoTela(inteiro pontosJogador, inteiro vidasJogador)
	{
		cadeia textoTela = ""
		
		Graficos.limpar()
		Graficos.definir_cor(Graficos.COR_PRETO)
		Graficos.renderizar()
		Graficos.definir_cor(Graficos.COR_BRANCO)
		Graficos.definir_estilo_texto(falso, verdadeiro, falso)
		textoTela = "PONTOS: " + pontosJogador + "        VIDAS: " + vidasJogador
		Graficos.desenhar_texto(0, TELA+10, textoTela)				
	}

	funcao JogadorDano(inteiro &vidaAtual, inteiro danoQuantidade)
	{
		vidaAtual -= danoQuantidade
	}

	funcao JogadorRecurso(inteiro &pontosAtual, inteiro pontosQuantidade)
	{
		pontosAtual += RECURSOPONTOS
	}

	funcao MoverInimigo(inteiro &matriz[][],inteiro &posicaoLinha,inteiro &posicaoColuna,inteiro casasAndar ,inteiro &jogadorVidas,inteiro &jogadorPontos, logico &inimigoFracoMoverDireita, inteiro &inimigoMedioTipoMovimento)
	{
		se(matriz[posicaoLinha][posicaoColuna] == INIMIGOFRACO)
		{
			se(casasAndar < 1)
				casasAndar = 1
								
			se(inimigoFracoMoverDireita)
			{
				enquanto(casasAndar > 0 e posicaoColuna+1 < TAMANHOMATRIZ)
				{
					se(matriz[posicaoLinha][posicaoColuna+1] == VAZIO)
					{
						matriz[posicaoLinha][posicaoColuna+1] = INIMIGOFRACO
					}
					senao se(matriz[posicaoLinha][posicaoColuna+1] == JOGADOR)
					{
						matriz[posicaoLinha][posicaoColuna+1] = JOGADOR
						JogadorDano(jogadorVidas, 1)
						DesenharTextoTela(jogadorPontos,jogadorVidas)
					}
					senao
					{
						inimigoFracoMoverDireita = falso
						pare
					}
						
					matriz[posicaoLinha][posicaoColuna] = VAZIO
					
					casasAndar--
					posicaoColuna ++
				}
			}
			senao
			{
				enquanto(casasAndar > 0 e posicaoColuna-1 >= 0)
				{
					se(matriz[posicaoLinha][posicaoColuna-1] == VAZIO)
					{
						matriz[posicaoLinha][posicaoColuna-1] = INIMIGOFRACO
					}
					senao se(matriz[posicaoLinha][posicaoColuna-1] == JOGADOR)
					{
						matriz[posicaoLinha][posicaoColuna-1] = JOGADOR
						JogadorDano(jogadorVidas, 1)
						DesenharTextoTela(jogadorPontos,jogadorVidas)
					}
					senao
					{
						inimigoFracoMoverDireita = verdadeiro
						pare
					}
						
					matriz[posicaoLinha][posicaoColuna] = VAZIO
					
					casasAndar--
					posicaoColuna --				
				}
			}

			se(posicaoColuna+1 >= TAMANHOMATRIZ)
				inimigoFracoMoverDireita = falso
			senao se(posicaoColuna <= 0)
				inimigoFracoMoverDireita = verdadeiro
		}
		senao se(matriz[posicaoLinha][posicaoColuna] == INIMIGOMEDIO)
		{
			escolha(inimigoMedioTipoMovimento)
			{
				//Direita
				caso 1:
					enquanto(casasAndar > 0 e posicaoColuna+1 < TAMANHOMATRIZ)
					{
						se(matriz[posicaoLinha][posicaoColuna+1] == VAZIO)
						{
							matriz[posicaoLinha][posicaoColuna+1] = INIMIGOMEDIO
						}
						senao se(matriz[posicaoLinha][posicaoColuna+1] == JOGADOR)
						{
							matriz[posicaoLinha][posicaoColuna+1] = JOGADOR
							JogadorDano(jogadorVidas, 1)
							DesenharTextoTela(jogadorPontos,jogadorVidas)
							matriz[posicaoLinha][posicaoColuna] = VAZIO
							pare							
						}
						senao
						{
							inimigoMedioTipoMovimento = 2
							pare
						}
							
						matriz[posicaoLinha][posicaoColuna] = VAZIO
						
						casasAndar--
						posicaoColuna ++
						
					}
					se(posicaoColuna+1 >= TAMANHOMATRIZ)
							inimigoMedioTipoMovimento = 2
					pare
				//Cima
				caso 2:
					enquanto(casasAndar > 0 e posicaoLinha -1 >= 0)
					{
						se(matriz[posicaoLinha-1][posicaoColuna] == VAZIO)
						{
							matriz[posicaoLinha-1][posicaoColuna] = INIMIGOMEDIO
						}
						senao se(matriz[posicaoLinha-1][posicaoColuna] == JOGADOR)
						{
							matriz[posicaoLinha-1][posicaoColuna] = JOGADOR
							JogadorDano(jogadorVidas, 1)
							DesenharTextoTela(jogadorPontos,jogadorVidas)
							matriz[posicaoLinha][posicaoColuna] = VAZIO
							pare							
						}
						senao
						{
							inimigoMedioTipoMovimento = 3
							pare
						}
							
						matriz[posicaoLinha][posicaoColuna] = VAZIO
						
						casasAndar--
						posicaoLinha --
						
					}
					se(posicaoLinha <= 0)
							inimigoMedioTipoMovimento = 3
					pare
				//Esquerda
				caso 3:
					enquanto(casasAndar > 0 e posicaoColuna-1 >= 0)
					{
						se(matriz[posicaoLinha][posicaoColuna-1] == VAZIO)
						{
							matriz[posicaoLinha][posicaoColuna-1] = INIMIGOMEDIO
						}
						senao se(matriz[posicaoLinha][posicaoColuna-1] == JOGADOR)
						{
							matriz[posicaoLinha][posicaoColuna-1] = JOGADOR
							JogadorDano(jogadorVidas, 1)
							DesenharTextoTela(jogadorPontos,jogadorVidas)
							matriz[posicaoLinha][posicaoColuna] = VAZIO
							pare							
						}
						senao
						{
							inimigoMedioTipoMovimento = 4
							pare
						}
							
						matriz[posicaoLinha][posicaoColuna] = VAZIO
						
						casasAndar--
						posicaoColuna --
						
					}
					se(posicaoColuna == 0)
							inimigoMedioTipoMovimento = 4
					pare
				//Baixo
				caso 4:
					enquanto(casasAndar > 0 e posicaoLinha +1 < TAMANHOMATRIZ)
					{
						se(matriz[posicaoLinha+1][posicaoColuna] == VAZIO)
						{
							matriz[posicaoLinha+1][posicaoColuna] = INIMIGOMEDIO
						}
						senao se(matriz[posicaoLinha+1][posicaoColuna] == JOGADOR)
						{
							matriz[posicaoLinha+1][posicaoColuna] = JOGADOR
							JogadorDano(jogadorVidas, 1)
							DesenharTextoTela(jogadorPontos,jogadorVidas)
							matriz[posicaoLinha][posicaoColuna] = VAZIO
							pare							
						}
						senao
						{
							inimigoMedioTipoMovimento = 1
							pare
						}
							
						matriz[posicaoLinha][posicaoColuna] = VAZIO
						
						casasAndar--
						posicaoLinha ++
						
					}
					se(posicaoLinha +1 >= TAMANHOMATRIZ)
							inimigoMedioTipoMovimento = 1
					pare
			}
		}
		senao se(matriz[posicaoLinha][posicaoColuna] == INIMIGOFORTE)
		{
			inteiro inimigoForteMovimento = Util.sorteia(1,8)
			
			escolha(inimigoForteMovimento)
			{
				//Direita
				caso 1:
					enquanto(casasAndar > 0 e posicaoColuna+1 < TAMANHOMATRIZ)
					{
						se(matriz[posicaoLinha][posicaoColuna+1] == VAZIO)
						{
							matriz[posicaoLinha][posicaoColuna+1] = INIMIGOFORTE
						}
						senao se(matriz[posicaoLinha][posicaoColuna+1] == JOGADOR)
						{
							matriz[posicaoLinha][posicaoColuna+1] = JOGADOR
							JogadorDano(jogadorVidas, 2)
							DesenharTextoTela(jogadorPontos,jogadorVidas)
							matriz[posicaoLinha][posicaoColuna] = VAZIO
							pare
						}
						senao
						{
							inimigoMedioTipoMovimento = 2
							pare
						}
							
						matriz[posicaoLinha][posicaoColuna] = VAZIO
						
						casasAndar--
						posicaoColuna ++
						
					}
					se(posicaoColuna+1 >= TAMANHOMATRIZ)
							inimigoMedioTipoMovimento = 2
					pare
				//Cima
				caso 2:
					enquanto(casasAndar > 0 e posicaoLinha -1 >= 0)
					{
						se(matriz[posicaoLinha-1][posicaoColuna] == VAZIO)
						{
							matriz[posicaoLinha-1][posicaoColuna] = INIMIGOFORTE
						}
						senao se(matriz[posicaoLinha-1][posicaoColuna] == JOGADOR)
						{
							matriz[posicaoLinha-1][posicaoColuna] = JOGADOR
							JogadorDano(jogadorVidas, 2)
							DesenharTextoTela(jogadorPontos,jogadorVidas)
							matriz[posicaoLinha][posicaoColuna] = VAZIO
							pare
						}
						senao
						{
							inimigoMedioTipoMovimento = 3
							pare
						}
							
						matriz[posicaoLinha][posicaoColuna] = VAZIO
						
						casasAndar--
						posicaoLinha --
						
					}
					se(posicaoLinha <= 0)
							inimigoMedioTipoMovimento = 3
					pare
				//Esquerda
				caso 3:
					enquanto(casasAndar > 0 e posicaoColuna-1 >= 0)
					{
						se(matriz[posicaoLinha][posicaoColuna-1] == VAZIO)
						{
							matriz[posicaoLinha][posicaoColuna-1] = INIMIGOFORTE
						}
						senao se(matriz[posicaoLinha][posicaoColuna-1] == JOGADOR)
						{
							matriz[posicaoLinha][posicaoColuna-1] = JOGADOR
							JogadorDano(jogadorVidas, 2)
							DesenharTextoTela(jogadorPontos,jogadorVidas)
							matriz[posicaoLinha][posicaoColuna] = VAZIO
							pare
						}
						senao
						{
							inimigoMedioTipoMovimento = 4
							pare
						}
							
						matriz[posicaoLinha][posicaoColuna] = VAZIO
						
						casasAndar--
						posicaoColuna --
						
					}
					se(posicaoColuna == 0)
							inimigoMedioTipoMovimento = 4
					pare
				//Baixo
				caso 4:
					enquanto(casasAndar > 0 e posicaoLinha +1 < TAMANHOMATRIZ)
					{
						se(matriz[posicaoLinha+1][posicaoColuna] == VAZIO)
						{
							matriz[posicaoLinha+1][posicaoColuna] = INIMIGOFORTE
						}
						senao se(matriz[posicaoLinha+1][posicaoColuna] == JOGADOR)
						{
							matriz[posicaoLinha+1][posicaoColuna] = JOGADOR
							JogadorDano(jogadorVidas, 2)
							DesenharTextoTela(jogadorPontos,jogadorVidas)
							matriz[posicaoLinha][posicaoColuna] = VAZIO
							pare
						}
						senao
						{
							inimigoMedioTipoMovimento = 1
							pare
						}
							
						matriz[posicaoLinha][posicaoColuna] = VAZIO
						
						casasAndar--
						posicaoLinha ++
						
					}
					se(posicaoLinha +1 >= TAMANHOMATRIZ)
							inimigoMedioTipoMovimento = 1
					pare
				//Diagonal superior direita
				caso 5:
					enquanto(casasAndar > 0 e posicaoLinha -1 >= 0 e posicaoColuna < TAMANHOMATRIZ -1)
					{
						se(matriz[posicaoLinha-1][posicaoColuna+1] == VAZIO)
						{
							matriz[posicaoLinha-1][posicaoColuna+1] = INIMIGOFORTE
						}
						senao se(matriz[posicaoLinha-1][posicaoColuna+1] == JOGADOR)
						{
							matriz[posicaoLinha-1][posicaoColuna+1] = JOGADOR
							JogadorDano(jogadorVidas, 2)
							DesenharTextoTela(jogadorPontos,jogadorVidas)
							matriz[posicaoLinha][posicaoColuna] = VAZIO
							pare
						}
						senao
						{							
							pare
						}
							
						matriz[posicaoLinha][posicaoColuna] = VAZIO
						
						casasAndar--
						posicaoLinha --
						posicaoColuna ++
					}
					pare
				//Diagonal superior esquerda
				caso 6:
					enquanto(casasAndar > 0 e posicaoLinha -1 >= 0 e posicaoColuna -1 >= 0)
					{
						se(matriz[posicaoLinha-1][posicaoColuna-1] == VAZIO)
						{
							matriz[posicaoLinha-1][posicaoColuna-1] = INIMIGOFORTE
						}
						senao se(matriz[posicaoLinha-1][posicaoColuna-1] == JOGADOR)
						{
							matriz[posicaoLinha-1][posicaoColuna-1] = JOGADOR
							JogadorDano(jogadorVidas, 2)
							DesenharTextoTela(jogadorPontos,jogadorVidas)
							matriz[posicaoLinha][posicaoColuna] = VAZIO
							pare
						}
						senao
						{							
							pare
						}
							
						matriz[posicaoLinha][posicaoColuna] = VAZIO
						
						casasAndar--
						posicaoLinha --
						posicaoColuna --
					}
					pare
				//Direita inferior direita				
				caso 7:
					enquanto(casasAndar > 0 e posicaoLinha + 1 < TAMANHOMATRIZ e posicaoColuna + 1 < TAMANHOMATRIZ)
					{
						se(matriz[posicaoLinha+1][posicaoColuna+1] == VAZIO)
						{
							matriz[posicaoLinha+1][posicaoColuna+1] = INIMIGOFORTE
						}
						senao se(matriz[posicaoLinha+1][posicaoColuna+1] == JOGADOR)
						{
							matriz[posicaoLinha+1][posicaoColuna+1] = JOGADOR
							JogadorDano(jogadorVidas, 2)
							DesenharTextoTela(jogadorPontos,jogadorVidas)
							matriz[posicaoLinha][posicaoColuna] = VAZIO
							pare
						}
						senao
						{							
							pare
						}
							
						matriz[posicaoLinha][posicaoColuna] = VAZIO
						
						casasAndar--
						posicaoLinha ++
						posicaoColuna ++
					}
					pare
				//Diagonal inferior esquerda
				caso 8:
					enquanto(casasAndar > 0 e posicaoLinha + 1 < TAMANHOMATRIZ e posicaoColuna - 1 >= 0)
					{
						se(matriz[posicaoLinha+1][posicaoColuna-1] == VAZIO)
						{
							matriz[posicaoLinha+1][posicaoColuna-1] = INIMIGOFORTE
						}
						senao se(matriz[posicaoLinha+1][posicaoColuna-1] == JOGADOR)
						{
							matriz[posicaoLinha+1][posicaoColuna-1] = JOGADOR
							JogadorDano(jogadorVidas, 2)
							DesenharTextoTela(jogadorPontos,jogadorVidas)
							matriz[posicaoLinha][posicaoColuna] = VAZIO
							pare
						}
						senao
						{							
							pare
						}
							
						matriz[posicaoLinha][posicaoColuna] = VAZIO
						
						casasAndar--
						posicaoLinha ++
						posicaoColuna --
					}
					pare
			}
		}
}

	funcao FimDeJogo(inteiro pontosJogador)
	{
		Graficos.definir_cor(Graficos.COR_PRETO)
		Graficos.limpar()
		
		Graficos.definir_cor(Graficos.COR_VERMELHO)
		Graficos.definir_estilo_texto(falso, verdadeiro, falso)
		cadeia textoTela = "PONTUACAO FINAL: " + pontosJogador
		Graficos.desenhar_texto(TELA/4, TELA/2, textoTela)
		Graficos.renderizar()
				
		Teclado.ler_tecla()		
	}
}
/* $$$ Portugol Studio $$$ 
 * 
 * Esta seção do arquivo guarda informações do Portugol Studio.
 * Você pode apagá-la se estiver utilizando outro editor.
 * 
 * @POSICAO-CURSOR = 5754; 
 * @DOBRAMENTO-CODIGO = [197, 240, 283, 339, 350, 365, 374, 404, 417, 422, 436, 462, 492, 622, 427];
 * @PONTOS-DE-PARADA = ;
 * @SIMBOLOS-INSPECIONADOS = ;
 * @FILTRO-ARVORE-TIPOS-DE-DADO = inteiro, real, logico, cadeia, caracter, vazio;
 * @FILTRO-ARVORE-TIPOS-DE-SIMBOLO = variavel, vetor, matriz, funcao;
 */