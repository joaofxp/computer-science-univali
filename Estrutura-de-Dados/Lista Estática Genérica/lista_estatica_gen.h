#pragma once
template <typename T, int MAX>
struct TLEstG {
	T elementos[MAX];
	int qtd;
};

template <typename T, int MAX>
void inicializarLEstG(TLEstG<T, MAX> & l) {
	l.qtd = 0;
}

template<typename T, int MAX>
bool inserirFimLEstG(TLEstG<T, MAX> & l, T dado) {
	if (l.qtd == MAX) {
		return false;
	}
	l.elementos[l.qtd] = dado;
	l.qtd++;
	return true;
}

template<typename T, int u>
bool inserirInicioLEstG(TLEstG<T, u> & l, T dado) {
	if (l.qtd == u) {
		return false;
	}
	for (int i = l.qtd; i > 0; i--)
	{
		l.elementos[i] = l.elementos[i - 1];
	}
	l.elementos[0] = dado;
	l.qtd++;
	return true;
}

void imprimirCartas(TLEstG<TCarta, 52> l) {
	for (int i = 0; i < l.qtd; i++)
	{
		std::cout 
			<< l.elementos[i].valor
			<< "-"
			<< l.elementos[i].naipe
			<< "\n";
	}
}

