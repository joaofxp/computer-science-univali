//Fa�a um programa que solicita ao usu�rio tr�s notas que devem ser tratadas respectivamente com pesos 2, 4 e 4. No final, calcule a m�dia ponderada e informe ao usu�rio

#include "stdafx.h"
#include <iostream>
#include <string>

using namespace std;

void MediaPonderada() 
{
	int nota1,
		nota2,
		nota3,
		nota1Peso = 2,
		nota2Peso = 4,
		nota3Peso = 4;

	float media = 0;

	string textoApresentacao = "Insira tr�s notas: \n";

	cout << textoApresentacao;
	cin >> nota1 >> nota2 >> nota3;
	media = (nota1 * nota1Peso + nota2 * nota2Peso + nota3 * nota3Peso) / (nota1Peso + nota2Peso + nota3Peso);
	cout << "Media Final: " << media;
}