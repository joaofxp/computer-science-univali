//Faça um algoritmo que solicita ao usuário um valor inteiro e exibe uma mensagem informando se o número é par ou ímpar.

#include "stdafx.h"
#include <iostream>
#include <string>

using namespace std;

void parOuImpar()
{
	int numero;
	
	string	numeroStatus,
			numeroStatusPadrao = "O número é ",
			numeroStatusPar = "par",
			numeroStatusImpar = "impar";


	cout << "Digite um número: ";
	cin >> numero;

	numeroStatus = (numero % 2 == 0) ? numeroStatusPar : numeroStatusImpar;
	cout << numeroStatusPadrao << numeroStatus;
}