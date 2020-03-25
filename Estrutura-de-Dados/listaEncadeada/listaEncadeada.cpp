// listaEncadeada.cpp : Defines the entry point for the console application.
//

#include "stdafx.h"
#include <iostream>
#include "string"
#include "lista_mc_din_esp.h"

int main()
{
	TListaE play;
	inicializarLEnc(play);
	TMusica a, b;
	a.titulo = "musica", a.artista = "Joao";
	b.titulo = "musica2", a.artista = "Maria";
	inserirFimLEnc(play, a);
	cout << play.qtd<<"--"<< play.inicio<<endl;
	inserirInicioLEnc(play, b);
	cout << play.qtd << "--" << play.inicio->prox << endl;
	imprimirLEnc(play);
	removerInicioLEnc(play);
	removerFimLEnc(play);
	imprimirLEnc(play);

	system("pause");

    return 0;
}

