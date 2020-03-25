//Faça um algoritmo que solicita ao usuário uma letra (caracter) e exiba uma mensagem informando se é uma vogal ou uma consoante (UTILIZE SWITCH-CASE).

#include "stdafx.h"
#include <iostream>
#include <string>

using namespace std;

void vogalOuConsoante()
{
	char letra;

	string	textoStatus,
			textoPadrao = "A palavra é uma: \n",
			textoVogal = "Vogal",
			textoConsoante = "Consoante";

	cout << "Digite uma letra:\n";
	cin >> letra;
	letra = toupper(letra);

	switch (letra)
	{
		case 'A':
			textoStatus = textoVogal;
			break;
		case 'E':
			textoStatus = textoVogal;
			break;
		case 'I':
			textoStatus = textoVogal;
			break;
		case 'O':
			textoStatus = textoVogal;
			break;
		case 'U':
			textoStatus = textoVogal;
			break;
		default:
			textoStatus = textoConsoante;
			break;
	}

	cout << textoPadrao << textoStatus;
}