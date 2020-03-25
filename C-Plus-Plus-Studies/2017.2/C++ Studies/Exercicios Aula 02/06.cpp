//Faça um programa que solicite ao usuário um número e em seguida demonstra os elementos da sequência de Fibonnacci até a posição indicada pelo número: exemplo - se digitar 3 deverá mostrar 1, 1, 2

#include "stdafx.h"
#include <iostream>
#include <string>

using namespace std;

void sequenciaFibonnacci() 
{
	int numeroDigitado;

	int primeiroNumero = 0,
		segundoNumero = 1,
		resultado = 0;

	string espacador = " | ";

	cout << "Digite um número: \n";
	cin >> numeroDigitado;

	for(int primeiroNumero = 0, segundoNumero = 1, resultado = 0; primeiroNumero + segundoNumero < numeroDigitado;)
	{
		resultado = primeiroNumero + segundoNumero;
		primeiroNumero = segundoNumero;
		segundoNumero = resultado;

		cout << espacador << resultado << espacador;
	}
}