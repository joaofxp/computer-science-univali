#pragma once

#include <string>

using namespace std;

struct TNodoAVL {
	int chave;
	string dado;
	TNodoAVL *maior;
	TNodoAVL *menor;
	int bal;
};

struct TAVL {
	TNodoAVL *raiz;
	int qtd = 0;
};

void inicializarAVL(TAVL &a) {
	a.raiz = NULL;
	a.qtd = 0;
}

int inserirAVL(TNodoAVL *&nodo, int chave, string dado) {
	if (nodo == NULL) {
		nodo = new TNodoAVL;
		nodo->chave = chave;
		nodo->dado = dado;
		nodo->maior = NULL;
		nodo->menor = NULL;
		nodo->bal = 0;
		return 1;
	}

	if (chave > nodo->chave) {
		int b = inserirAVL(nodo->maior, chave, dado);
		nodo->bal += b;
		if (nodo->bal == 2) {
			if (chave > nodo->maior->chave) {
				//dirdir(nodo, nodo->maior, node->maior->maior);
			}
			else {
				//diresq(nodo,nodo->maior,nodo->maior->menor);
			}
			b = 0;
		}
		if (nodo->bal == 0) { b = 0; }
		return b
	}

}
