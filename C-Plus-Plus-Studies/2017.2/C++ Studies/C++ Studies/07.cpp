//Solicite ao usu�rio o valor de um sal�rio e pergunte qual ser� o aumento de seus ganho neste ano. Em seguida demonstre o sal�rio atual e o novo sal�rio ap�s o aumento

#include "stdafx.h"
#include <iostream>
#include <string>

using namespace std;

void SalarioReajuste()
{
	float	salario,
			salarioAumento,
			salarioNovo;

	cout << "Insira seu sal�rio:\n";
	cin >> salario;
	cout << "Qual ser� o aumento do seu salario em %? \n";
	cin >> salarioAumento;
	salarioAumento /= 100;
	salarioNovo = salario + (salario * salarioAumento);
	cout << "Seu novo sal�rio � de: R$" << salarioNovo;
}