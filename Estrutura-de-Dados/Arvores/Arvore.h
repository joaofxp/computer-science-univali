#pragma once
//#include "stdafx.h"
//#include <iostream>
//#include <string>
//
//using namespace std;
//
//struct TNodeABB {
//	int chave;
//	string dado;
//	TNodeABB *menor;
//	TNodeABB *maior;
//};
//
//struct TABB {
//	TNodeABB * raiz;
//	int qtd;
//};
//
//
//void inicializarABB(TABB & a) {
//	a.raiz = NULL;
//	a.qtd = 0;
//}
//
//bool inserirABB_it(TABB & a, int chave, string dado) {
//	TNodeABB *novo = new TNodeABB;
//
//	if (a.raiz == NULL) {
//		a.raiz = novo;
//		a.raiz-> chave = chave;
//		a.raiz->dado = dado;
//	}
//	else {
//
//		TNodeABB  * nav = a.raiz;
//
//		while (!((nav->maior == NULL && chave > nav->chave) || (nav->menor == NULL && chave < nav->chave))) {
//			if (chave == nav->chave) {
//				delete novo;
//				return false;
//			}
//			else if (chave > nav->chave) {
//				nav = nav->maior;
//			}
//			else {
//				nav = nav->menor;
//			}
//		}
//
//		if (chave > nav->chave)
//			nav->maior = novo;
//		else
//			nav->menor = novo;
//	}
//	a.qtd++;
//	return true;
//}
//
//bool inserirABB_Rec(TNodeABB *&nodo, int chave, string dado) {
//	if (nodo == NULL) {
//		nodo = new TNodeABB;
//		nodo->chave = chave;
//		nodo->dado = dado;
//		nodo->maior = NULL;
//		nodo->menor = NULL;
//		return true;
//	}
//	else {
//		if (chave == nodo->chave) {
//			return false;
//		}
//		else {
//			if (chave > nodo->chave) {
//				return inserirABB_Rec(nodo->maior, chave, dado);
//			}
//			else {
//				return inserirABB_Rec(nodo->menor, chave, dado);
//			}
//		}
//	}
//}
//
//bool encontraRemove(TNodeABB *& nodo, int chave) {
//	if (nodo == NULL) return false;
//
//	if (chave == nodo->chave) {
//		removerNodo(nodo);
//		return true;
//	}
//
//	if (chave > nodo->chave) {
//		return encontraRemove(nodo->maior, chave;
//	}
//	else {
//		return encontraRemove(nodo->menor, chave);
//	}
//}
//
//bool removerNodo(TNodeABB*& nodo) {
//	TNodeABB *mm = nodo->menor; //Maior dos menores
//	TNodeABB * pai = NULL;
//
// 	if(mm == NULL) {
//		TNodeABB * rem = nodo;
//		nodo = nodo->maior;
//		delete rem;
//		return;
//	}
//
//	while (mm->maior != NULL) {
//		pai = mm;
//		mm = mm->maior;
//	}
//
//	mm->maior = nodo->maior;
//	if (pai != NULL) {
//		pai->maior == mm->menor;
//		mm->menor = nodo->menor;
//	}
//	delete nodo;
//	nodo = mm;
//}
