//Solicite ao usuário o valor de um salário e pergunte qual será o aumento de seus ganho neste ano. Em seguida demonstre o salário atual e o novo salário após o aumento

#include "stdafx.h"
#include <iostream>
#include <string>

using namespace std;

void SalarioReajuste()
{
	float	salario,
			salarioAumento,
			salarioNovo;

	cout << "Insira seu salário:\n";
	cin >> salario;
	cout << "Qual será o aumento do seu salario em %? \n";
	cin >> salarioAumento;
	salarioAumento /= 100;
	salarioNovo = salario + (salario * salarioAumento);
	cout << "Seu novo salário é de: R$" << salarioNovo;
}