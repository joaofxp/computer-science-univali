// listaEstatica.cpp : Defines the entry point for the console application.
//

#include "stdafx.h"
#include <iostream>
#include <string>
#include "listaEstatica.h"

using namespace std;

int main()
{
	TListaEstatica jogador1, jogador2;

	inicializarListaDeCartas(jogador1);
	inicializarListaDeCartas(jogador2);
	TCarta a, b, c, d;
	a.valor = 10; a.naipe = 3;
	b.valor = 2; b.naipe = 1;
	c.valor = 12; c.naipe = 2;
	d.valor= 8; d.naipe = 4;
	inserirCartaInicio(jogador1, a);
	inserirCartaPosicao(jogador2, b, 3);
	inserirCartaFim(jogador1, c);
	inserirCartaInicio(jogador1, d);
	removerCartaPosicao(jogador1, 2);
	cout << "Imprimindo Jogador 1: \n";
	imprimirLista(jogador1);
	cout << "Imprimindo Jogador 2: \n";
	imprimirLista(jogador2);

	cin.get();
	cin.get();
	return 0;
}

