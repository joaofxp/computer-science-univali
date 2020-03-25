//Implemente uma função que realize a escrita(utilizando cout) de um valor de qualquer tipo.

#include "stdafx.h"
#include <iostream>

template <typename T>
void escreverValor(T valor)
{
	cout << valor;
}