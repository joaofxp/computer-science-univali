#pragma once

#include <string>

using namespace std;

struct TMusica {
	string titulo;
	string artista;
};

struct TElementoDE {
	TMusica m;
	TElementoDE * prox;
	TElementoDE *ant;
};

struct TListaDE {
	TElementoDE * inicio;
	TElementoDE * fim;
	int qtd;
};

void inicializarLDE(TListaDE & l) {
	l.inicio = NULL;
	l.fim = NULL;
	l.qtd = 0;
}

bool inserirInicioLDE(TListaDE & l, TMusica m) {
	TElementoDE *novo = new TElementoDE;
	if (novo == NULL) { 
		return false;
	}
	novo->m = m;	
	novo -> ant = NULL;
	novo->prox = l.inicio;
	l.inicio = novo;

	if (l.qtd == 0) {
		l.fim = novo;
	}
	else {
		l.inicio->prox->ant = novo;
	}
	l.qtd++;
	return true;
}

bool inserirFinalLDE(TListaDE & l, TMusica m) {
	TElementoDE * novo = new TElementoDE;
	if (novo == NULL) {
		return false;
	}
	novo->m = m;
	novo->prox = NULL;
	novo->ant = l.fim;
	if (l.qtd > 0) {
		l.fim->prox = novo;
	}
	else {
		l.inicio = novo;
	}
	l.fim = novo;
	l.qtd++;
	return true;
}

bool removerInicioLDE(TListaDE & l) {
	if (l.qtd == 0) {
		return false;
	}

	TElementoDE * save;
	save = l.inicio;
	l.inicio = l.inicio->prox;
	delete save;
	if (l.qtd > 1) {
		l.inicio-> ant = NULL;
	}
	else {
		l.fim = NULL;
	}
	l.qtd--;
	return true;
}

bool removerFimLDE(TListaDE & l) {
	if (l.qtd == 0) {
		return false;
	}

	TElementoDE * save;
	save = l.fim;
	l.inicio = l.fim->prox;
	delete save;
	if (l.qtd > 1) {
		l.fim->ant = NULL;
	}
	else {
		l.inicio = NULL;
	}
	l.qtd--;
	return true;
}
