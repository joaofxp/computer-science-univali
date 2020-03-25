// RevisaoProvaDoc2.cpp : Defines the entry point for the console application.
//

#include "stdafx.h"
#include <iostream>
#include <string>

using namespace std;

/*
2)Faça uma função que receba três listas estáticas (A, B e C). Passe para a lista C a XOR das listas A e B (podem ser utilizadas funções auxiliares) (2,5 pontos).
*/
const int MAX = 5;

struct TListaEstatica {
	int elementos[MAX];
	int qtd = 0;
};

bool removerElementoPosicao(TListaEstatica &lista, int posicao)
{
	if (posicao < 0 || posicao == lista.qtd || lista.qtd == 0) return false;

	for (int i = posicao; i < lista.qtd - 1; i++)
	{
		lista.elementos[i] = lista.elementos[i + 1];
	}
	lista.qtd--;
	return true;
}

void desenharElementos(TListaEstatica lista)
{
	for (int i = 0; i < lista.qtd; i++)
	{
		cout << lista.elementos[i] << " | ";
	}

	cout << endl;
}

void retornarListaDisjunta(TListaEstatica &listaA, TListaEstatica &listaB) {
	TListaEstatica listaATemp = listaA;
	TListaEstatica listaBTemp = listaB;

	for (int i = 0; i < listaA.qtd; i++)
	{
		bool disjunto = true;
		for (int j = 0; j < listaB.qtd; j++)
		{
			if (listaA.elementos[i] == listaBTemp.elementos[j])
			{
				/*removerElementoPosicao(listaA, i);*/
				//cout << listaA.elementos[i] << "|";
				removerElementoPosicao(listaATemp, i);
				removerElementoPosicao(listaBTemp, j);
			}
		}
	}
	cout << endl;

	listaA = listaATemp;
	listaB = listaBTemp;
}

int main()
{
	TListaEstatica listaA;
	TListaEstatica listaB;
	TListaEstatica listaC;

	for (int i = 0; i < MAX; i++)
	{
		listaA.elementos[i] = i;
		listaA.qtd++;
		listaB.elementos[i] = i+2;
		listaB.qtd++;
	}

	desenharElementos(listaA);
	desenharElementos(listaB);

	retornarListaDisjunta(listaA, listaB);
	desenharElementos(listaA);
	desenharElementos(listaB);
	
	//2 da folha

	listaC.qtd = 0;
	listaC.qtd = listaA.qtd + listaB.qtd;
	
	for (int i = 0; i < listaA.qtd; i++)
	{
		listaC.elementos[i] = listaA.elementos[i];
	}

	for (int i = listaA.qtd; i < listaC.qtd; i++)
	{
		listaC.elementos[i] = listaB.elementos[i - listaB.qtd];
	}

	cout << endl << "LISTA C: ";

	desenharElementos(listaC);

	system("pause");
    return 0;
}

