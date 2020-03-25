#include "stdafx.h"
#include <iostream>
#include <string>

using namespace std;

//1)

//const int MAX = 5;
//
//void escreverLista(int lista[MAX])
//{
//	for (int i = 0; i < MAX; i++)
//	{
//		cout << lista[i] << " | ";
//	}
//	cout << "\n";
//}
//
//void juntarElementosListas(int listaUm[MAX], int listaDois[MAX]) {
//	int listaTres[MAX];
//
//	for (int i = 0; i < MAX; i++)
//	{
//		int contadorListaA = 0;
//		for (int j = 0; j < MAX; j++)
//		{
//			if (listaUm[i] == listaDois[i])
//				contadorListaA++;
//		}
//		if (contadorListaA == 0)
//			listaTres[i] == listaUm[i];
//	}
//
//	for (int i = 0; i < MAX; i++)
//	{
//		int contadorListaB = 0;
//		for (int j = 0; j < MAX; j++)
//		{
//			if (listaUm[i] == listaDois[i])
//				contadorListaB++;
//		}
//		if (contadorListaB == 0)
//			listaTres[i] == listaDois[i];
//	}
//
//	escreverLista(listaTres);
//}

//2)
//
//void removerElementosPosicao(TListaE & l,int K) {
//
//	TElemento * nav, *apagar;
//	apagar = A.inicio;
//
//	for (int i = 0; i < K; i++) {
//		nav = apagar;
//		apagar = apagar->prox;
//	}
//
//	nav->prox = NULL;
//
//	A.qtd = K;
//	TElemento * aux;
//	while (apagar != NULL) {
//		aux = apagar;
//		apagar = apagar->prox;
//		delete aux;
//	}
	/*for (int i = 0; i < listaDInamicaEEncadeada.qtd; i++)
	{
		if (i >= K)
		{
			cont++;
		}
	}

	listaDinamicaEEncadeada.qtd = listaDinamicaEEncadeada.qtd - cont;

	novaLista;
	for (int i = 0; i < cont, i++)
	{
		nova[i] = listaDinamicaEEncadeada[i];
	}*/



//}

// 3

//void listaTrocar(TListaEst l &, TlistaEncadeada e &)

//Ultima QUestao
//TListaDE q4(TListaEst A) {
//	TListaDE B;
//	B.inicio = B.fim = NULL;
//	B.qtd = 0;
//	TElementoDE * novo = NULL;
//	TElementoDE * ult = = NULL;
//
//	for (int i = 0; i < A.qtd; i++) {
//		novo = new TElementoDE;
//		novo->dado = A.elemetnos[i];
//		novo - ant = ult;
//		novo->prox = NULL;
//		if (ult == NULL) {
//			B.inicio = novo;
//		}
//		else {
//			ult -> prox m= novo;
//		}
//		B.qtd ++ ;
//		ult = novo;
//	}
//	B.fim = ult;
//	return B;
//}

int main()
{
	//int listaUm[MAX] = { 0,1,3,8,9 };
	//int listaDois[MAX] = { 1,2,3,4,5 };
	//juntarElementosListas(listaUm, listaDois);

	system("pause");
    return 0;
}

