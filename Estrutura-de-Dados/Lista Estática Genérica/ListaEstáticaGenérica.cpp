// ListaEstáticaGenérica.cpp : Defines the entry point for the console application.
//

#include "stdafx.h"
#include <iostream>
#include "string"
#include "listaEstatica.h"
#include "lista_estatica_gen.h"

using namespace std;

int main()
{
	TLEstG<float, 100> numeros;
	TLEstG<TCarta, 52> baralho;
	inicializarLEstG(numeros);
	//inicializarLEstG(baralho);
	inserirFimLEstG(numeros, (float)32.1);
	TCarta a;
	a.valor = 12, a.naipe = 3;
	inserirFimLEstG(baralho, a);

	system("pause");
    return 0;
}

