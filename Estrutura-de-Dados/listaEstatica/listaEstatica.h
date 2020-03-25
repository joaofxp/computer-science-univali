#pragma once
#include "stdafx.h"
#include <iostream>

const int MAX = 52;

struct TCarta {
	int valor;
	int naipe;
};

struct TListaEstatica {
	TCarta elementos[MAX];
	int qtd;
};

void inicializarListaDeCartas(TListaEstatica &lista)
{
	lista.qtd = 0;
}

bool inserirCartaFim(TListaEstatica lista, TCarta carta)
{
	if (lista.qtd == MAX) return false;

	lista.elementos[lista.qtd] = carta;
	lista.qtd++;
	return true;
}

bool inserirCartaPosicao(TListaEstatica lista, TCarta carta, int posicao)
{
	if (lista.qtd == MAX || posicao > lista.qtd || posicao < 0) return false;

	for (int i = lista.qtd; i > posicao; i--)
	{
		lista.elementos[i] = lista.elementos[i - 1];
	}

	lista.elementos[posicao] = carta;
	lista.qtd++;

	return true;
}

bool inserirCartaInicio(TListaEstatica lista, TCarta carta)
{
	if (lista.qtd == MAX) return false;

	for (int i = 0; i > 0; i--)
	{
		lista.elementos[i] = lista.elementos[i - 1];
	}

	lista.elementos[0] = carta;
	lista.qtd++;
	return true;
}

bool removerCartaFim(TListaEstatica &lista)
{
	if (lista.qtd > 0) {
		lista.qtd--;
		return true;
	}
	else {
		return false;
	}
}

bool removerCartaInicio(TListaEstatica &lista)
{
	if (lista.qtd == 0) return false;

	for (int i = 0; i < lista.qtd; i++)
	{
		lista.elementos[i] = lista.elementos[i + 1];
	}
	lista.qtd--;

	return true;
}

bool removerCartaPosicao(TListaEstatica &lista, int posicao)
{
	if (posicao < 0 || posicao == lista.qtd || lista.qtd == 0) return false;

	for (int i = posicao; i < lista.qtd - 1; i++)
	{
		lista.elementos[i] = lista.elementos[i + 1];
	}
	lista.qtd--;
	return true;
}

void imprimirLista(TListaEstatica lista)
{
	for (int i = 0; i < lista.qtd; i++)
	{
		std::cout << lista.elementos[i].naipe;
		std::cout << lista.elementos[i].valor;
	}
}

