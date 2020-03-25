#include "stdafx.h"
#include <iostream>
#include <string>

using namespace std;

const int TAMANHO = 3;
const int MAXVITORIA = 1;
const int MINVITORIA = -1;
const int EMPATE = 0;
const char JOGADOR1 = 'X';
const char JOGADOR2 = 'O';

void desenharMatriz(char matriz[TAMANHO][TAMANHO])
{
	for (int i = 0; i < TAMANHO; i++)
	{
		for (int j = 0; j < TAMANHO; j++)
		{
			cout << matriz[i][j] << "	|";
		}
		cout << endl;
	}
	cout << "\n------------------\n";
}

void inicializarMatriz(char matriz[TAMANHO][TAMANHO], char valorInicial)
{
	for (int i = 0; i < TAMANHO; i++)
	{
		for (int j = 0; j < TAMANHO; j++)
		{
			matriz[i][j] = valorInicial;
		}
	}
}

bool verificarVitoria(char tabuleiro[TAMANHO][TAMANHO], char jogador)
{
	for (int i = 0, j = 0; i < TAMANHO; i++)
	{
		if (tabuleiro[i][j] == jogador && (tabuleiro[i][j] == tabuleiro[i][j + 1] && tabuleiro[i][j] == tabuleiro[i][j + 2]))
			return true;
		else if (tabuleiro[j][i] == jogador && (tabuleiro[j][i] == tabuleiro[j + 1][i] && tabuleiro[j][i] == tabuleiro[j + 2][i]))
			return true;
		else if ((i == 0 && tabuleiro[1][1] == jogador) && ((tabuleiro[0][0] == tabuleiro[1][1] && tabuleiro[0][0] == tabuleiro[2][2]) || (tabuleiro[0][2] == tabuleiro[1][1] && tabuleiro[1][1] == tabuleiro[2][0])))
			return true;
	}

	return false;
}

int minMax(char matriz[TAMANHO][TAMANHO], int profundidade, bool maximizando)
{
	if (true)
	{

	}
	
	return 1;
}

int main()
{
	setlocale(LC_ALL, "Portuguese");
	
	char matriz[TAMANHO][TAMANHO];
	const char valorInicial = ' ';

	int countProfundidade = 0;


	inicializarMatriz(matriz, valorInicial);

	matriz[0][0] = 'X';

	for each (char valor in matriz)
	{
		if (valor == valorInicial)
		{
			countProfundidade++;
		}
	}

	//Parei aqui terminando de testar o retorno de quando um jogador especifico ganha
	//TODO: Fazer o retorno de um valor x quando o jogador y ganhar em uma nova função
	cout << verificarVitoria(matriz, JOGADOR1);

	//cout << minMax(matriz,countProfundidade,true);

	system("pause");
	return 0;
}