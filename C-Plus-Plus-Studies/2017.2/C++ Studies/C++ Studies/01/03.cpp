//Crie um programa que solicite ao usu�rio o pre�o individual de tr�s produtos e em sequ�ncia demonstre o valor total destes itens.


#include "stdafx.h"
#include <iostream>
#include <string>

using namespace std;

void MostrarValorDosProdutos() {
	float valor1 = 0,
		  valor2 = 0,
		  valor3 = 0;
	
	string espaco = " | ";

	string textoApresentacao = "Qual o pre�o dos tr�s produtos:\n";

	cout << textoApresentacao;
	cin >> valor1 >> valor2 >> valor3;
	cout << "Valores: " << valor1 << espaco << valor2 << espaco << valor3 << endl;
	cout << "Valor Total:" << (valor1 + valor2 + valor3);
}