//Fa�a um programa que solicite ao usu�rio um n�mero e em seguida demonstra os elementos da sequ�ncia de Fibonnacci at� a posi��o indicada pelo n�mero: exemplo - se digitar 3 dever� mostrar 1, 1, 2

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

	cout << "Digite um n�mero: \n";
	cin >> numeroDigitado;

	for(int primeiroNumero = 0, segundoNumero = 1, resultado = 0; primeiroNumero + segundoNumero < numeroDigitado;)
	{
		resultado = primeiroNumero + segundoNumero;
		primeiroNumero = segundoNumero;
		segundoNumero = resultado;

		cout << espacador << resultado << espacador;
	}
}