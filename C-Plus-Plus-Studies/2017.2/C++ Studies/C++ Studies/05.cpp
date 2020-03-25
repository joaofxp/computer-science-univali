//Faça um programa que solicita três notas para um usuário e demonstre a média dos valores ao final;

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

	string textoApresentacao = "Insira três valores:\n";

	cout << textoApresentacao;
	cin >> valor1 >> valor2 >> valor3;
	media = (valor1 + valor2 + valor3) / 3;
	cout << "Média:" << media;
}