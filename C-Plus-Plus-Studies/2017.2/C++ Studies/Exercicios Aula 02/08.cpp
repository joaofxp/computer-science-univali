//Faça um programa em que o usuário digite um valor N. Demonstre os resultados dos números pares e ímpares que aparecem até N.

#include "stdafx.h"
#include <iostream>
#include <string>

using namespace std;

void resultadosParEImpar()
{
	int numeroDigitado = 0;

	string
		espacador = " | ",
		numerosPares = "",
		numerosImpares = "",
		textoResultadoPar   = "Os números pares são: ",
		textoResultadoImpar = "Os números impares são: ",
		textoApresentacao   = "Digite um numero: ";

	cout << textoApresentacao;
	cin  >> numeroDigitado;

	for (int i = 1; i < numeroDigitado; i++)
	{
		if (i % 2 == 0)
			numerosPares += (to_string(i) + espacador);
		else
			numerosImpares += (to_string(i) + espacador);
	}

	cout << textoResultadoPar << endl << numerosPares << endl << textoResultadoImpar << endl << numerosImpares << endl;
}