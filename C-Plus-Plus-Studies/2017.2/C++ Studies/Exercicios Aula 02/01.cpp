//Fa�a um algoritmo que solicita ao usu�rio um n�mero inteiro e exiba este n�mero na tela. Se o n�mero for negativo, antes de ser exibido, ele deve ser transformado no equivalente positivo

#include "stdafx.h"
#include <iostream>
#include <string>

using namespace std;

void numeroSemprePositivo()
{
	int numero;

	cout << "Digite um n�mero: \n";
	cin >> numero;
	numero = abs(numero);
	cout << "Numero digitado converitdo: " << numero;
}