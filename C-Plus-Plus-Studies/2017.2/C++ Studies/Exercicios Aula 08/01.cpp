#include "stdafx.h"
#include <iostream>
#include "string"

using namespace std;

//Declarar em uma biblioteca
template <typename T>
void swapValores(T &valor1, T &valor2)
{
	T aux = 0;
	valor1 = aux;
	valor1 = valor2;
	valor2 = aux;
}