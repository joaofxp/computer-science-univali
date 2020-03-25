//Faça um programa que preencha um array(vetor) de 50 posições com números aleatórios de 0 até 100, depois disso exiba os valores do array: Original, crescente e decrescente

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
