//Menu de selecao: opcoes, jogar contra jogador, jogar contra CPU
//alertar o usu�rio dos principais erros de intera��o;
//identificar o vencedor quando : tr�s s�mbolos iguais s�o identificados em uma linha (horizontal ou diagonal)
//identificar empate quando : nao h� mais campos selecionaveis.
//Fazer como tabuleiro 

//Desenhar a tabuleiro
//Preencher tabuleiro com o valor inicial
//Controle de rodadas
//Preencher a tabuleiro com valor do jogador
//Verificacao de erros ao preencher
//Verifica��o de erro se a casa j� preencheu
//Verificar vez do jogador
//Desenhar linhas e colunas na tabuleiro, 1 2 3, vertical e horizontal nos cantos
//Verificar se a sequencia de casas satisfaz a vitoria
//Ganha quem completar 3 casas iguais em linha ou diagonal
//Transformar em 2 whiles 
//Condi��o de empate
//Menu com escolha do modo de jogo ou sair (2 jogadores, 1 jogador)
//Computador ganhar
//Transformar em funcoes

//Implementar minimax
//Ver o que da para juntar no modo menu de jogo, incluindo o mesmo while - Talvez

#include "stdafx.h"
#include <string>
#include <iostream>
#include <time.h>

using namespace std;

const int TAMANHO = 3;

const string MATRIZVALORINICIAL = "";
const string JOGADOR1 = "O";
const string JOGADOR2 = "X";
string jogadorRodada = JOGADOR1;
// string jogadorRodada = JOGADOR1;

const int MATRIZLIMITEMINIMO = 1;
const int MATRIZLIMITEMAXIMO = 3;

const int maxVitoria = 1;
const int minVitoria = -1;
const int empate = 0;
const int continuarJogo = -2;

void inicializarMatriz(string (&tabuleiro)[TAMANHO][TAMANHO], string valorInicial)
{
	for (int i = 0; i < TAMANHO; i++)
		for (int j = 0; j < TAMANHO; j++)
			tabuleiro[i][j] = valorInicial;
}

void desenharMenu(int &menuOpcao)
{
	do
	{
		cout << "Menu: \n1 - Jogador X Jogador \n2 - Jogador X CPU\n";
		cin >> menuOpcao;
	} while (menuOpcao < 1 || menuOpcao > 3);
}

void desenharMatriz(string tabuleiro[TAMANHO][TAMANHO])
{
	const string ESPACADOR = "	|";
	const string ESPACADOR2 = "	";

	for (int i = 1; i <= 3; i++)
	{
		cout << ESPACADOR2 << ESPACADOR2 << i;
	}

	cout << endl << endl;

	for (int i = 0; i < TAMANHO; i++)
	{
		for (int j = 0; j < TAMANHO; j++)
		{
			if (j == 0)
				cout << i + 1;
			cout << ESPACADOR2 << tabuleiro[i][j] << ESPACADOR;
		}
		cout << endl;
	}

	cout << endl << "---------" << endl << endl;
}

void desenharVezJogador(string jogador) 
{
	cout << endl << "Vez do jogador: " << jogador << endl << endl;
}

int receberValorComLimitesComApresentacao(int limiteMinimo, int limiteMaximo, string textoApresentacao, string textoErro)
{
	int valorDigitado = 0;

	const string TEXTOCOLUNA = "Digite uma coluna:";

	do
	{
		cout << textoApresentacao << endl;
		cin >> valorDigitado;
		if (valorDigitado < limiteMinimo || valorDigitado > limiteMaximo)
			cout << textoErro << endl;
	} while (valorDigitado < limiteMinimo || valorDigitado > limiteMaximo);

	return valorDigitado;
}

//Remover apos implementar minimax
bool verificarVitoria(string tabuleiro[TAMANHO][TAMANHO])
{
	for (int i = 0, j = 0; i < TAMANHO; i++)
	{
		if (tabuleiro[i][j] != MATRIZVALORINICIAL && (tabuleiro[i][j] == tabuleiro[i][j + 1] && tabuleiro[i][j] == tabuleiro[i][j + 2]))
			return true;
		else if (tabuleiro[j][i] != MATRIZVALORINICIAL && (tabuleiro[j][i] == tabuleiro[j + 1][i] && tabuleiro[j][i] == tabuleiro[j + 2][i]))
			return true;
		else if ((i == 0 && tabuleiro[1][1] != MATRIZVALORINICIAL) && ((tabuleiro[0][0] == tabuleiro[1][1] && tabuleiro[0][0] == tabuleiro[2][2]) || (tabuleiro[0][2] == tabuleiro[1][1] && tabuleiro[1][1] == tabuleiro[2][0])))
			return true;
	}

	return false;
}

bool gameOver(string matrizChecar[3][3], string jogadorRodada)
{
	bool jogadorGanhou = false;

	for (int i = 0, j = 0; i < TAMANHO; i++)
	{
		if (matrizChecar[i][j] == jogadorRodada && (matrizChecar[i][j] == matrizChecar[i][j + 1] && matrizChecar[i][j] == matrizChecar[i][j + 2]))
			jogadorGanhou = true;
		else if (matrizChecar[j][i] == jogadorRodada && (matrizChecar[j][i] == matrizChecar[j + 1][i] && matrizChecar[j][i] == matrizChecar[j + 2][i]))
			jogadorGanhou = true;
		else if ((i == 0 && matrizChecar[1][1] == jogadorRodada) && ((matrizChecar[0][0] == matrizChecar[1][1] && matrizChecar[0][0] == matrizChecar[2][2]) || (matrizChecar[0][2] == matrizChecar[1][1] && matrizChecar[1][1] == matrizChecar[2][0])))
			jogadorGanhou = true;
	}

	return jogadorGanhou;
}

int jogadorVitoria(string matrizVitoria[3][3])
{
	if (gameOver(matrizVitoria, JOGADOR1))
		return minVitoria;
	else if (gameOver(matrizVitoria, JOGADOR2))
		return maxVitoria;
	else if(verificarVitoria(matrizVitoria))
		return empate;
	else
		return continuarJogo;
}
//
//int minMax(string matriz[3][3], int profundidade, bool maximizando)
//{
//	//cout << endl << "profundidade: " << profundidade << endl;
//
//	if (profundidade == 1)
//	{
//		//return jogadorVitoria(matriz);
//		//cout << "\nRETORNA: " << jogadorVitoria(matriz);
//		//cout << "\n\nRetorno FIM na profundidade: " << profundidade << " == " << "VALOR: " << jogadorVitoria(matriz);
//
//		return jogadorVitoria(matriz);
//	}
//
//	if (maximizando)
//	{
//		for (int i = 0; i < TAMANHO; i++)
//		{
//			for (int j = 0; j < TAMANHO; j++)
//			{
//				if (matriz[i][j] == MATRIZVALORINICIAL)
//				{
//					matriz[i][j] = JOGADOR2;
//
//					//cout << "\n | "<< jogadorVitoria(matriz) << " | ";
//					if (jogadorVitoria(matriz) != continuarJogo)
//					{
//						//desenharMatriz(matriz);
//
//						matriz[i][j] = MATRIZVALORINICIAL;
//						return jogadorVitoria(matriz);
//					}
//
//					int val = minMax(matriz, profundidade - 1, false);
//					
//					//cout << "\n\nRetorno MAX na profundidade: " << profundidade << " CASA [" << i << "][" << j << "] == " << matriz[i][j] << "VALOR: " << val;
//
//					matriz[i][j] = MATRIZVALORINICIAL;
//				}
//			}
//		}
//	}
//	else
//	{
//		for (int i = 0; i < TAMANHO; i++)
//		{
//			for (int j = 0; j < TAMANHO; j++)
//			{
//				if (matriz[i][j] == MATRIZVALORINICIAL)
//				{
//					matriz[i][j] = JOGADOR1;
//
//					//cout << "\n | " << jogadorVitoria(matriz) << " | ";
//
//					if (jogadorVitoria(matriz) != continuarJogo)
//					{
//						//desenharMatriz(matriz);
//
//						matriz[i][j] = MATRIZVALORINICIAL;
//						return jogadorVitoria(matriz);
//					}
//
//					int val = minMax(matriz, profundidade - 1, true);
//
//					//cout << "\n\nRetorno MIN na profundidade: " << profundidade << " CASA [" << i << "][" << j << "] == " << matriz[i][j] << "VALOR: " << val;
//
//					matriz[i][j] = MATRIZVALORINICIAL;
//				}
//			}
//		}
//	}
//}
//
//int main()
//{
//	srand(time(NULL));
//
//	setlocale(LC_ALL, "Portuguese");
//
//	const int MENUOPCAOJOGADOR = 1;
//	const int MENUOPCAOCOMPUTADOR = 2;
//
//	const string TEXTOLINHA = "Digite uma linha:";
//	const string TEXTOCOLUNA = "Digite uma coluna:";
//	const string TEXTOVALORERRO = "Valor inv�lido, tente novamente.";
//
//	int rodadasRestantes = 9;
//	int menuOpcao = 0;
//	//int menuOpcao = 2;
//
//	string tabuleiro[TAMANHO][TAMANHO];
//
//	inicializarMatriz(tabuleiro, MATRIZVALORINICIAL);
//
//	desenharMenu(menuOpcao);
//
//	if (menuOpcao == MENUOPCAOJOGADOR)
//		while (rodadasRestantes > 0)
//		{
//			desenharMatriz(tabuleiro);
//
//			desenharVezJogador(jogadorRodada);
//		
//			int linha = 0;
//			int coluna = 0;
//			
//			linha = receberValorComLimitesComApresentacao(MATRIZLIMITEMINIMO,MATRIZLIMITEMAXIMO,TEXTOLINHA,TEXTOVALORERRO);
//			coluna = receberValorComLimitesComApresentacao(MATRIZLIMITEMINIMO, MATRIZLIMITEMAXIMO, TEXTOCOLUNA, TEXTOVALORERRO);
//
//			linha--;
//			coluna--;
//
//			system("cls");
//
//			bool casaValida = (tabuleiro[linha][coluna] == MATRIZVALORINICIAL);
//
//			if(casaValida)
//			{
//				tabuleiro[linha][coluna] = jogadorRodada;
//
//				bool jogadorGanhou = verificarVitoria(tabuleiro);
//
//				if (jogadorGanhou)
//				{
//					cout << "GANHOU O JOGADOR: " << jogadorRodada << endl << endl;
//					desenharMatriz(tabuleiro);
//					rodadasRestantes = 0;
//				}
//				else 
//				{
//					jogadorRodada = (jogadorRodada == JOGADOR1) ? JOGADOR2 : JOGADOR1;
//					rodadasRestantes--;
//
//					if (rodadasRestantes == 0)
//					{
//						cout << "EMPATE!\n";
//					}
//				}
//			}
//			else
//				cout << "Casa inv�lida, tente novamente." << endl << endl;
//		}
//	else if (menuOpcao == MENUOPCAOCOMPUTADOR)
//	{
//		//Temp
//		
//		//tabuleiro[0][0] = JOGADOR1;
//		//tabuleiro[0][1] = JOGADOR2;
//		//tabuleiro[1][0] = JOGADOR2;
//		//tabuleiro[2][0] = JOGADOR2;
//		//tabuleiro[2][1] = JOGADOR1;
//		//tabuleiro[2][2] = JOGADOR1;
//		//Temp
//
//		while (rodadasRestantes > 0)
//		{
//			int linha = 0;
//			int coluna = 0;
//
//			if (jogadorRodada == JOGADOR2)
//			{
//				int melhorJogada = 0;
//				int melhorLinha = 0;
//				int melhorColuna = 0;
//
//				int profundidadeInicial = 0;
//
//				for each (string valor in tabuleiro)
//					if(valor == MATRIZVALORINICIAL)
//							profundidadeInicial++;
//
//				for (int i = 0; i < TAMANHO; i++)
//				{
//					for (int j = 0; j < TAMANHO; j++)
//					{
//						if (tabuleiro[i][j] == MATRIZVALORINICIAL)
//						{
//							tabuleiro[i][j] = JOGADOR2;
//
//							int novoScore = 0;
//							//cout << "\nINICIO CALL\n";
//							//desenharMatriz(tabuleiro);
//
//							int val = minMax(tabuleiro, profundidadeInicial, false);
//
//							//cout << "\n | |Score final: | |" << val;
//
//							if (val == 3)
//							{
//								melhorLinha = i;
//								melhorColuna = j;
//								linha = i;
//								coluna = j;
//								//cout << "MELHOR LINHA É: " << i;
//								//cout << "MELHOR COLUNA É: " << j;
//							}
//
//							//if (novoScore >= melhorJogada)
//							//{
//							//	melhorJogada = novoScore;
//							//	melhorLinha = i;
//							//	melhorColuna = j;
//							//}
//							//else
//								//cout << "\nJOGADARUIM\n";
//
//							tabuleiro[i][j] = MATRIZVALORINICIAL;
//						}
//					}
//				}
//
//				//cout << "FIM DA EXECUCAO";
//				//cin.get();
//				//cout << "MELHOR LINHA: " << melhorLinha;
//				//cout << "MELHOR COLUNA: " << melhorColuna;
//			}
//			else
//			{
//				desenharMatriz(tabuleiro);
//				
//				desenharVezJogador(jogadorRodada);
//
//				linha = receberValorComLimitesComApresentacao(MATRIZLIMITEMINIMO, MATRIZLIMITEMAXIMO, TEXTOLINHA, TEXTOVALORERRO);
//				coluna = receberValorComLimitesComApresentacao(MATRIZLIMITEMINIMO, MATRIZLIMITEMAXIMO, TEXTOCOLUNA, TEXTOVALORERRO);
//
//				linha--;
//				coluna--;
//
//				//Temporario, arrumar para suportar os 2 jogadores
//
//			}
//
//
//			bool casaValida = (tabuleiro[linha][coluna] == MATRIZVALORINICIAL);
//
//			if (casaValida)
//			{
//				tabuleiro[linha][coluna] = jogadorRodada;
//
//				bool jogadorGanhou = verificarVitoria(tabuleiro);
//
//				if (jogadorGanhou)
//				{
//					cout << "GANHOU O JOGADOR: " << jogadorRodada << endl << endl;
//					desenharMatriz(tabuleiro);
//					rodadasRestantes = 0;
//				}
//				else
//				{
//					jogadorRodada = (jogadorRodada == JOGADOR1) ? JOGADOR2 : JOGADOR1;
//					rodadasRestantes--;
//
//					if (rodadasRestantes == 0)
//					{
//						cout << "EMPATE!\n";
//					}
//				}
//			}
//			else
//			{
//				cout << "Casa inv�lida, tente novamente." << endl << endl;
//				cout << "LINHA: " << linha << " COLUNA: " << coluna;
//				cin.get();
//			}
//			system("cls");
//		}
//	}
//
//	system("pause");
//    return 0;
//}

