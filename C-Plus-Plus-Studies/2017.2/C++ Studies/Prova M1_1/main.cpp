#include "stdafx.h"
#include "AtividadeVetores.h"
#include <stdlib.h>
#include <time.h>
#include <iostream>
#include <string>

using namespace std;

const int TAMANHO = TAMANHO_MATRIZ;

void testes_matrizValoresMenorMaior();

void testes_vetorValorMenorMaior();

void testes_bubbleSortVetor();

int main()
{
	setlocale(LC_ALL, "Portuguese");
	srand(time(NULL));

	testes_bubbleSortVetor();
	testes_vetorValorMenorMaior();
	testes_matrizValoresMenorMaior();

	system("pause");

	return 0;
}

void testes_bubbleSortVetor()
{
	int vetor[TAMANHO] = { 8,2,-10,30,-15 };

	string	textoOrdemCrescente = "Vetor em ordem crescente: ",
		textoOrdemDecrescente = "Vetor em ordem decrescente: ";

	cout << "Teste do bubblesort em um vetor: \n";

	desenharVetor(vetor, TAMANHO);

	cout << textoOrdemCrescente;
	bubbleSort(vetor, TAMANHO, true);

	cout << endl;

	cout << textoOrdemDecrescente;
	bubbleSort(vetor, TAMANHO, false);

	cout << endl << endl;
}

void testes_vetorValorMenorMaior()
{
	int vetor[TAMANHO] = { 8,2,-10,30,-15 },
		vetorMaiorValor = 0,
		vetorMenorValor = 0;

	string	textoMaiorValor = "O maior numero do vetor foi: ",
		textoMenorValor = "O menor numero do vetor foi: ";

	vetorMaiorValor = maiorValorEmVetor(vetor, TAMANHO);
	vetorMenorValor = menorValorEmVetor(vetor, TAMANHO);

	cout << "Teste do menor e maior valor em um vetor:\n";

	desenharVetor(vetor, TAMANHO);

	cout << textoMaiorValor << vetorMaiorValor << endl;
	cout << textoMenorValor << vetorMenorValor;

	cout << endl << endl;
}

void testes_matrizValoresMenorMaior()
{
	int matriz[TAMANHO][TAMANHO];

	for (int contador = 0; contador < TAMANHO; contador++)
		for (int indice = 0; indice < TAMANHO; indice++)
			matriz[contador][indice] = rand() % 100;

	cout << "Teste de valores em uma matriz:\n";

	desenharMatriz5x5(matriz);

	cout << endl << "Maior valor da diagonal principal da matriz: " << maiorValorEmMatriz(matriz, ESCOPO_BUSCA_MATRIZ_DIAGONALPRINCIPAL);
	cout << endl << "Maior valor da diagonal secundaria da matriz: " << maiorValorEmMatriz(matriz, ESCOPO_BUSCA_MATRIZ_DIAGONALSECUNDARIA);
	cout << endl << "Maior valor das diagonais da matriz: " << maiorValorEmMatriz(matriz, ESCOPO_BUSCA_MATRIZ_DIAGONAIS);
	cout << endl << "Maior valor da matriz: " << maiorValorEmMatriz(matriz, ESCOPO_BUSCA_MATRIZ_COMPLETA);

	cout << endl;

	cout << endl << "Menor valor da diagonal principal da matriz: " << menorValorEmMatriz(matriz, ESCOPO_BUSCA_MATRIZ_DIAGONALPRINCIPAL);
	cout << endl << "Menor valor da diagonal secundaria da matriz: " << menorValorEmMatriz(matriz, ESCOPO_BUSCA_MATRIZ_DIAGONALSECUNDARIA);
	cout << endl << "Menor valor das diagonais da matriz: " << menorValorEmMatriz(matriz, ESCOPO_BUSCA_MATRIZ_DIAGONAIS);
	cout << endl << "Menor valor da matriz: " << menorValorEmMatriz(matriz, ESCOPO_BUSCA_MATRIZ_COMPLETA);

	cout << endl;
}
