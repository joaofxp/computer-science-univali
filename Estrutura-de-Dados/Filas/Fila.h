#pragma once

template <typename T>
struct TELementoF {
	T dado;
	TElementoF<T> * prox;
};

template <typename T>
struct TFila {
	TElementoF<T> *inicio;
	TElementoF <T> *fim;
	int qtd;
};


template <typename T>
void inicializarFila(TFila<T> & f) {
	f.inicio = NULL;
	f.fim = NULL;
	f.qtd = 0;
}

template <typename T>
bool enfileirar(TFila<T> &f, T dado) {
	TELementoF<T> *novo = new TELementoF<T>;
	if (novo == NULL) return false;
	novo->dado = dado;
	novo->prox = NULL;
	if (f.qtd > 0) {
		f.fim->prox = novo;
	}
	else {
		f.inicio = novo;
	}
	f.fim = novo;
	f.qtd++;
	return 0;
}

template <typename T>
bool desenfileirar(TFila<T> &f) {
	if(f.qtd == 0)
		return false;

	TElemento<T> * aux;
	aux = f.inicio;
	f.inicio = f.inicio->prox;
	delete aux;
	if (f.qtd == 1) {
		f.fim = NULL;
	}

	f.qtd--;
	return true;
}
