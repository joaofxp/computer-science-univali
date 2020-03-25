//Escreva um programa em que o usuário digita 10 valores e apresenta o maior e o menor dos valores digitados

#include "stdafx.h"
#include <iostream>
#include <string>

using namespace std;

void minMaxEntre10Valores()
{
	int quantidadeValores = 10,
		valorMinimo,
		valorMaximo;
	
	cout << "Digite 10 valores:\n";
	for (int i = 0; i < quantidadeValores; i++)
	{
		int valor;
		cin >> valor;

		if (i == 0)
		{
			valorMinimo = valor;
			valorMaximo = valor;
		}

		if (valor < valorMinimo)
			valorMinimo = valor;
		else if (valor > valorMaximo)
			valorMaximo = valor;
	}

	cout << "Valor minimo digitado: " << valorMinimo;
	cout << endl;
	cout << "Valor máximo digitado: " << valorMaximo;
}