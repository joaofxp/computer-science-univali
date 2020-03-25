//Escreva um programa que seja capaz de mostrar todas as tabuadas (de 1 a 9);

#include "stdafx.h"
#include <iostream>
#include <string>

using namespace std;

void mostrarTodasTabuadas() 
{
	const int	multiplicadorLimite = 9,
				multiplicandoLimite = 10;

	const string espacador = " | ";

	for (int multiplicador = 1; multiplicador <= multiplicadorLimite; multiplicador++)
	{
		for (int multiplicando = 1; multiplicando <= multiplicandoLimite; multiplicando++)
		{
			cout << espacador << (multiplicando * multiplicador) << espacador;
		}
		cout << "\n";
	}
}