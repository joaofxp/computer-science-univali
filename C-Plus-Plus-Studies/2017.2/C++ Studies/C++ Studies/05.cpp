//Fa�a um programa que solicita tr�s notas para um usu�rio e demonstre a m�dia dos valores ao final;

#include "stdafx.h"

#include <iostream>
#include <string>

using namespace std;

void MediaValores() 
{
	int valor1,
		valor2,
		valor3,
		media;

	string espaco = " | ";

	string textoApresentacao = "Insira tr�s valores:\n";

	cout << textoApresentacao;
	cin >> valor1 >> valor2 >> valor3;
	media = (valor1 + valor2 + valor3) / 3;
	cout << "M�dia:" << media;
}