#pragma once
#include <string>

using namespace std;

struct TMusica{
	string titulo;
	string artista;
};

struct TElemento {
	TMusica m;
	TElemento *prox;
};

struct TListaE {
	TElemento *inicio;
	int qtd;
};

void inicializarLEnc(TListaE & l)
{
	l.inicio = NULL;
	l.qtd = 0;
}

bool inserirInicioLEnc(TListaE & l, TMusica m) {
	TElemento *novo = new TElemento;
	
	if (novo == NULL) {
		return false;
	}
	novo->m = m;
	novo->prox = l.inicio;
	l.inicio = novo;
	l.qtd++;

	return true;
}

bool inserirFimLEnc(TListaE & l, TMusica m) {
	if (l.qtd == 0) {
		return inserirInicioLEnc(l, m);
	}

	TElemento * novo = new TElemento;
	if (novo == NULL) { return false; }
	novo->prox = NULL;
	novo->m = m;
	TElemento * ultimo = l.inicio;
	while (ultimo ->prox != NULL) {
		ultimo = ultimo->prox;
	}

	ultimo -> prox = novo;
	l.qtd ++;
	return true;
}

bool removerInicioLEnc(TListaE &l) {
	if (l.qtd == 0) { return false;}

	TElemento *save = l.inicio;
	l.inicio = l.inicio->prox;
	delete save;
	l.qtd--;
	return true;
}

bool removerFimLEnc(TListaE & l)
{
	if (l.qtd == 1) { return removerInicioLEnc(l); }
	if (l.qtd == 0) { return false;}
	
	TElemento *nav = l.inicio;

	while (nav ->prox ->prox != NULL)
	{
		nav = nav->prox;
	}

	delete nav->prox;
	nav->prox = NULL;
	l.qtd--;
	return 0;
}

void imprimirLEnc(TListaE l)
{
	TElemento *nav = l.inicio;
	while (nav != NULL) {
		cout << nav->m.titulo;
		cout << nav->m.artista << "\n";

		nav = nav->prox;
	}
	
}

