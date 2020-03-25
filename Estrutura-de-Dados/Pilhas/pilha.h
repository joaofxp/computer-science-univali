#pragma once

template <typename TIPO>
struct TElementoP {
	TIPO dado;
	TElementoP<TIPO> *debaixo;
};

template <typename TIPO>
struct TPilha {
	TElementoP<TIPO> *topo;
	int qtd;
};

template <typename TIPO>
void inicializarPilha(TPilha<TIPO> &p) {
	p.topo = NULL;
	p.qtd = 0;
}

template <typename TIPO>
bool push(TPilha <TIPO> &p, TIPO dado) {
	TElementoP<TIPO> *novo = new TElementoP<TIPO>;

	if (novo == NULL) 
		return false;
	
	novo->dado = dado;
	novo->debaixo = p.topo;
	p.topo = novo;
	p.qtd++;

	return true;
}

template <typename TIPO>
bool pop(TPilha<TIPO> &p) {
	if (p.qtd == 0)
		return false;

	TElementoP<TIPO> * apagar;
	apagar = p.topo;
	p.topo = p.topo->debaixo;
	p.qtd--;
	delete apagar;
	return true;
}
