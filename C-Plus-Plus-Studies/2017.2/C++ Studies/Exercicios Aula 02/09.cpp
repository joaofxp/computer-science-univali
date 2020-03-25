//Fa�a um programa que solicite um valor N ao usu�rio.Demonstre os n�meros primos que aparecem at� N

#include "stdafx.h"
#include <iostream>
#include <string>

using namespace std;

void numerosPrimos()
{
	int numeroDigitado = 0,
		divisoresMinimo = 0,
		divisoresMaximo = 2;

	string
		textoApresentacao = "Digite um n�mero:",
		textoNumerosPrimos = "Os n�meros primos s�o: ",
		espacador = " | ",
		resultadoNumerosPrimos = "";
	
	cout << textoApresentacao;
	cin >> numeroDigitado;

	for (int i = 1; i < numeroDigitado; i++)
	{
		int divisoresQuantidade = 0;
		for (int j = 1; j <= i; j++)
			if (i % j == 0)
				divisoresQuantidade++;
		if (divisoresQuantidade > divisoresMinimo && divisoresQuantidade < divisoresMaximo)
			resultadoNumerosPrimos += (to_string(i) + espacador);
		cout << "RUN";
	}

	cout << textoNumerosPrimos << endl << resultadoNumerosPrimos;
}