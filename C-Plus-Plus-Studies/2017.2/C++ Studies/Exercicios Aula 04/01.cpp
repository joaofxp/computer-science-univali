//Fa�a um programa que preencha um array(vetor) de 50 posi��es com n�meros aleat�rios de 0 at� 100, depois disso exiba os valores do array: Original, crescente e decrescente

#include "stdafx.h"
#include <iostream>
#include <string>
#include <cstdlib>
#include <ctime>

using namespace std;

void ArrayExibirOrdens() {

	const int TAMANHO = 50;
	int valorMaximo = 100;
	int matriz[TAMANHO];

	srand(time(NULL));

	for (int i = 0; i < TAMANHO; i++)
	{
		matriz[i] = rand() % valorMaximo + 1;
		//Normal
		cout << matriz[i] << endl;
		//Crescente
		//Decrescente
	}


}
