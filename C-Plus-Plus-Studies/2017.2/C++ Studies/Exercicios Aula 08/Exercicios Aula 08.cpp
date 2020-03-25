//Implemente uma função que realize a operação a troca de valores entre duas variáveis de qualquer tipo.
#include "stdafx.h"
#include "string"
#include <iostream>

using namespace std;

void swapValores(int &valor1, int &valor2);

template <typename T>
void escreverValor(T valor);

int main()
{
	setlocale(LC_ALL, "Portuguese");
	
	int valor1 = 0,
		valor2 = 10;

	cout << "VALOR 1 VALE: " << valor1 << " VALOR2 VALE: " << valor2;

	cout << "\nSWAP\n";
	//swapValores<int>(valor1, valor2);

	cout << "VALOR 1 VALE: " << valor1 << " VALOR2 VALE: " << valor2;

	cout << "\n FIM \n";

	cin.get();
	return 0;
}

//template <typename T>
//void swapValores(T &valor1, T &valor2)
//{
//	T aux = 0;
//	valor1 = aux;
//	valor1 = valor2;
//	valor2 = aux;
//}

template <typename T>
void escreverValor(T valor)
{
	cout << valor;
}


