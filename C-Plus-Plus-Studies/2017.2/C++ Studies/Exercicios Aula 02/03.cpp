//Fa�a um algoritmo que solicita ao usu�rio um valor inteiro e exibe uma mensagem informando se o n�mero � par ou �mpar.

#include "stdafx.h"
#include <iostream>
#include <string>

using namespace std;

void parOuImpar()
{
	int numero;
	
	string	numeroStatus,
			numeroStatusPadrao = "O n�mero � ",
			numeroStatusPar = "par",
			numeroStatusImpar = "impar";


	cout << "Digite um n�mero: ";
	cin >> numero;

	numeroStatus = (numero % 2 == 0) ? numeroStatusPar : numeroStatusImpar;
	cout << numeroStatusPadrao << numeroStatus;
}