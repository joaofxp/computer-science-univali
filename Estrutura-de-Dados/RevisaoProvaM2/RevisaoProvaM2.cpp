// RevisaoProvaM2.cpp : Defines the entry point for the console application.
//

#include "stdafx.h"
#include <iostream>
#include <string>
#include "Pilha.h"

using namespace std;

//2)Criar uma função que verifica se é palíndroma ou não o valor passado, retornando verdadeiro ou falso, Ex: aba (sim), ameopoema(sim), amo(nao)

bool palindroma(string texto) {
	TPilha <char> p;
	inicializarPilha(p);
	int meio = texto.size / 2;
	int i = 0;
	for (int i = 0; i < meio; i++)	{
		push(p, texto.at(i));
	}
	if (texto.size() % 2 == 1) { i++; }
	while (i < texto.size()) {
		if (p.topo->dado == texto.at(i))
			pop(p);
		else
			return false;
		i++;
	}
	return true;
}
//3) fila de pacientes com prioridades sem ordenação
void q3(TFila<TPaciente> & A, TFila(TPaciente > &B, TPaciente VP[100]) {
	for (int p = 1; p < +2; p++) {
		for (int i = 0; i < 100; i++) {
			if (vp[i].prioridade == p) {
				enfileirar(A, vp[i]);
			}
		}
	}
	int total = A.qtd;
	int p = 3;
	while (total < 100) {
		for (int i = 0; i < 100; i++) {
			if (vp[i].prioridade == p) {
				enfileirar(B, vp[i]);
				total++;
			}
		}
	}
}
//5)
bool q5(TNodeABB * nodo, int k) {
	if (k == 1) {
		cout << nodo->chave << ",";
	}
	else {
		q5(nodo->menor, k - 1);
		q5(nodo->maior, k - 2);
	}
}

int main()
{
	palindroma("aba");	
	system("pause");
    return 0;
}

