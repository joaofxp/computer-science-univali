#pragma once
//
////
////		   25
////	15		|		  50
////1 , 9		|		49 , 51
////1 | 15 | 19 | 25 | 49 | 50 | 51
//
//#include "stdafx.h"
//#include <iostream>
//#include <string>
//#include "Arvore.h"
//#include <algorithm>
//
//using namespace std;
//
//void infixa(TNodeABB *nodo) {
//	if (nodo != NULL) {
//		infixa(nodo->menor);
//		cout << "Arvore ( " << nodo->chave << " ) =" << nodo->dado << ";" << endl;
//		infixa(nodo->maior);
//	}
//}
//
//string busca(TABB a, int chave) {
//	TNodeABB *atual = a.raiz;
//
//	while (atual != NULL) {
//		if (atual->chave == chave)
//			return atual->dado;
//		if (chave > atual->chave) {
//			atual = atual->maior;
//		}
//		else {
//			atual = atual->menor;
//		}
//	}
//
//	return "Chave desconhecida!";
//}
//
//string buscaRecursiva(TNodeABB *nodo, int chave) {
//	if (nodo == NULL)
//		return "Chave desconhecida!";
//	if (nodo->chave == chave) {
//		return nodo->dado;
//	}
//	else {
//		if (chave > nodo->chave) {
//			return buscaRecursiva(nodo->maior, chave);
//		}
//		else {
//			return buscaRecursiva(nodo->menor, chave);
//		}
//	}
//}
//
//int buscaPeloDado(TNodeABB *nodo, string dado) {
//	if (nodo != NULL) {
//		//visita
//		if (nodo->dado == dado) {
//			return nodo->chave;
//		}
//
//		return max(
//			buscaPeloDado(nodo->menor, dado),
//			buscaPeloDado(nodo->maior, dado)
//		);
//	}
//	return -1;
//}
//
//int buscaPeloDado2(TNodeABB *nodo, string dado) {
//	int r = buscaPeloDado(nodo->menor, dado);
//	if (r == -1) {
//		r = buscaPeloDado(nodo->maior, dado);
//	}
//	return r;
//}
//
