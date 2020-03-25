#pragma once

#ifndef ATIVIDADESVETORES_H
#define ATIVIDADESVETORES_H

#define TAMANHO_MATRIZ 5

#define ESCOPO_BUSCA_MATRIZ_DIAGONALPRINCIPAL 1
#define ESCOPO_BUSCA_MATRIZ_DIAGONALSECUNDARIA 2
#define ESCOPO_BUSCA_MATRIZ_DIAGONAIS 3
#define ESCOPO_BUSCA_MATRIZ_COMPLETA 4

void bubbleSort(int vetor[], int tamanho, bool ordenacaoCrescente);
int maiorValorEmVetor(int vetor[], int tamanho);
int menorValorEmVetor(int vetor[], int tamanho);
int maiorValorEmMatriz(int matriz[TAMANHO_MATRIZ][TAMANHO_MATRIZ], int escopoBusca);
int menorValorEmMatriz(int matriz[TAMANHO_MATRIZ][TAMANHO_MATRIZ], int escopoBusca);


#include "stdafx.h"
#include "iostream"
#include "string"

using namespace std;

void bubbleSort(int vetor[], int tamanho, bool ordenacaoCrescente)
{
	string espacador = " | ";

	for (int contador = 0; contador < tamanho; contador++)
	{
		for (int indice = 0; indice < tamanho - 1; indice++)
		{
			if (vetor[indice] < vetor[indice + 1])
			{
				int aux = vetor[indice];
				vetor[indice] = vetor[indice + 1];
				vetor[indice + 1] = aux;
			}
		}
	}

	if (ordenacaoCrescente)
		for (int contador = tamanho - 1; contador >= 0; contador--)
			cout << vetor[contador] << espacador;
	else
		for (int contador = 0; contador < tamanho; contador++)
			cout << vetor[contador] << espacador;
}

void desenharVetor(int vetor[], int tamanho)
{
	cout << "Vetor desenhado: \n";
	string espacador = " | ";

	for (int i = 0; i < tamanho; i++)
	{
		cout << vetor[i] << espacador;
	}

	cout << endl;
}

void desenharMatriz5x5(int matriz[TAMANHO_MATRIZ][TAMANHO_MATRIZ]) {
	string espacador = "	|";

	cout << "Matriz desenhada:\n";

	for (int i = 0; i < TAMANHO_MATRIZ; i++)
	{
		for (int j = 0; j < TAMANHO_MATRIZ; j++)
			cout << matriz[i][j] << espacador;
		cout << endl;
	}
}

int maiorValorEmVetor(int vetor[], int tamanho)
{
	int maiorValor = 0;

	for (int contador = 0; contador < tamanho; contador++)
		if (vetor[contador] > maiorValor || contador == 0)
			maiorValor = vetor[contador];

	return maiorValor;
}

int menorValorEmVetor(int vetor[], int tamanho)
{
	int menorValor = 0;

	for (int contador = 0; contador < tamanho; contador++)
		if (vetor[contador] < menorValor || contador == 0)
			menorValor = vetor[contador];

	return menorValor;
}

int maiorValorEmMatriz(int matriz[TAMANHO_MATRIZ][TAMANHO_MATRIZ], int escopoBusca)
{
	int maiorValor = 0;

	switch (escopoBusca)
	{
	case ESCOPO_BUSCA_MATRIZ_DIAGONALPRINCIPAL:
		for (int contador = 0; contador < TAMANHO_MATRIZ; contador++)
			for (int indice = 0; indice < TAMANHO_MATRIZ; indice++)
			{
				if (contador == indice)
					if (matriz[contador][indice] > maiorValor || contador == 0)
						maiorValor = matriz[contador][indice];
			}
		break;
	case ESCOPO_BUSCA_MATRIZ_DIAGONALSECUNDARIA:
		for (int contador = 0; contador < TAMANHO_MATRIZ; contador++)
			for (int indice = 0; indice < TAMANHO_MATRIZ; indice++)
			{
				if ((TAMANHO_MATRIZ - 1) - contador == indice)
					if (matriz[contador][indice] > maiorValor || contador == 0)
						maiorValor = matriz[contador][indice];
			}
		break;
	case ESCOPO_BUSCA_MATRIZ_DIAGONAIS:
		for (int contador = 0; contador < TAMANHO_MATRIZ; contador++)
		{
			for (int indice = 0; indice < TAMANHO_MATRIZ; indice++)
			{
				if (contador == indice)
					if (matriz[contador][indice] > maiorValor || contador == 0)
						maiorValor = matriz[contador][indice];

				if ((TAMANHO_MATRIZ - 1) - contador == indice)
					if (matriz[contador][indice] > maiorValor)
						maiorValor = matriz[contador][indice];
			}
		}
		break;
	case ESCOPO_BUSCA_MATRIZ_COMPLETA:
		for (int contador = 0; contador < TAMANHO_MATRIZ; contador++)
			for (int indice = 0; indice < TAMANHO_MATRIZ; indice++)
			{
				if (matriz[contador][indice] > maiorValor || contador == 0 && indice == 0)
					maiorValor = matriz[contador][indice];
			}
		break;
	default:
		break;
	}
	return maiorValor;
}

int menorValorEmMatriz(int matriz[TAMANHO_MATRIZ][TAMANHO_MATRIZ], int escopoBusca)
{
	int menorValor = 0;

	switch (escopoBusca)
	{
	case ESCOPO_BUSCA_MATRIZ_DIAGONALPRINCIPAL:
		for (int contador = 0; contador < TAMANHO_MATRIZ; contador++)
			for (int indice = 0; indice < TAMANHO_MATRIZ; indice++)
			{
				if (contador == indice)
					if (matriz[contador][indice] < menorValor || contador == 0)
						menorValor = matriz[contador][indice];
			}
		break;
	case ESCOPO_BUSCA_MATRIZ_DIAGONALSECUNDARIA:
		for (int contador = 0; contador < TAMANHO_MATRIZ; contador++)
			for (int indice = 0; indice < TAMANHO_MATRIZ; indice++)
			{
				if ((TAMANHO_MATRIZ - 1) - contador == indice)
					if (matriz[contador][indice] < menorValor || contador == 0)
						menorValor = matriz[contador][indice];
			}
		break;
	case ESCOPO_BUSCA_MATRIZ_DIAGONAIS:
		for (int contador = 0; contador < TAMANHO_MATRIZ; contador++)
			for (int indice = 0; indice < TAMANHO_MATRIZ; indice++)
			{
				if (contador == indice)
					if (matriz[contador][indice] < menorValor || contador == 0)
						menorValor = matriz[contador][indice];

				if ((TAMANHO_MATRIZ - 1) - contador == indice)
					if (matriz[contador][indice] < menorValor)
						menorValor = matriz[contador][indice];
			}
		break;
	case ESCOPO_BUSCA_MATRIZ_COMPLETA:
		for (int contador = 0; contador < TAMANHO_MATRIZ; contador++)
			for (int indice = 0; indice < TAMANHO_MATRIZ; indice++)
			{
				if (matriz[contador][indice] < menorValor || contador == 0 && indice == 0)
					menorValor = matriz[contador][indice];
			}
	default:
		break;
	}

	return menorValor;
}

#endif // !ATIVIDADESVETORES_H
