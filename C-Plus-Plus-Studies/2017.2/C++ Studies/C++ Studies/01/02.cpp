//Fa�a um programa que solicite um nome e uma idade ao usu�rio e em seguida demonstre os valores na sa�da 
//do console. Para representar caracteres especiais utilize o comando : setlocale(LC_ALL, "Portuguese")


#include "stdafx.h"

#include <iostream>
#include <string>

using namespace std;

void UsuarioInformacoes() {

	const string textoNome = "Digite seu nome: \n";
	const string textoIdade = "Digite sua idade: \n";

	int idade = 0;

	string nome = "";

	cout << textoNome;
	cin >> nome;
	cout << textoIdade;
	cin >> idade;
	cout << "Ol�: " << nome << ", voc� tem " << idade << " anos de idade";
}