//Faça um algoritmo que solicita ao usuário um número inteiro e exiba este número na tela. Se o número for negativo, antes de ser exibido, ele deve ser transformado no equivalente positivo

#include "stdafx.h"
#include <iostream>
#include <string>

using namespace std;

void numeroSemprePositivo()
{
	int numero;

	cout << "Digite um número: \n";
	cin >> numero;
	numero = abs(numero);
	cout << "Numero digitado converitdo: " << numero;
}