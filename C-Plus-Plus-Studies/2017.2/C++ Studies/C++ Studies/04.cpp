//Fa�a um programa que solicita ao usu�rio o raio de um c�rculo e em seguida calcule o seu per�metro e sua �rea;

#include "stdafx.h"
#include <iostream>
#include <string>

using namespace std;

void CalculoPerimetroEArea() {
	//Solicitar raio do circulo
	int circuloRaio = 0;
	int circuloPerimetro = 0;
	int circuloArea = 0;
	double pi = 3.14159265358979323846;

	cout << "Digite o raio do circulo: \n";
	cin >> circuloRaio;

	circuloPerimetro = (pi * 2) * circuloRaio;
	circuloArea = pi * (circuloRaio * circuloRaio);

	cout << "Per�metro: " << circuloPerimetro << " Area: " << circuloArea;
}