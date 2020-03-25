#include "stdafx.h"
#include <iostream>
#include <string>
#include "pilha.h"

using namespace std;

//Usar biblioteca pilha para detectar se abre e fecha corretamente o código, sendo um de abrir {,[,( adiciona na pilha, se encontrar o que fecha, remove
//Ao final, pilha vazia, OK
//Pode acontecer de sobrar na pilha e nao ter na string
//Pode acontecer de nao ter mais na pilha e ter na string

bool pilhaVerificarFim(TPilha<char> pilha)
{
	return (pilha.qtd == 0);
}

void pilhaAdicionar(TPilha<char> &pilha, char caracter) {
	push(pilha, caracter);
}

void pilhaRemover(TPilha<char> &pilha) {
	pop(pilha);
}

bool verificarCharAbrir(char caracter)
{
	if (caracter == '{' || caracter == '[' || caracter == '(')
		return true;

	return false;
}

bool verificarCharFechar(char caracter) {
	if (caracter == '}' || caracter == ']' || caracter == ')')
		return true;

	return false;
}

bool verificarCharInverso(char atual, char topo)
{
	switch (atual)
	{
	case '}':
		if (topo == '{')
			return true;
		break;
	case ']':
		if (topo == '[')
			return true;
		break;
	case ')':
		if (topo == '(')
			return true;
		break;
	default:
		return false;
		break;
	}
	return false;
}

void verificarCodigo(TPilha<char> &pilha, string codigo) {
	if (pilha.topo == NULL) {
		cout << "\nCódigo inválido, tente novamente.\n";
		return;
	}

	TPilha<char> pilhaFechar;
	inicializarPilha(pilhaFechar);

	for (int i = 0; i < codigo.size(); i++)
	{
		char atual = codigo.at(i);
		if (verificarCharAbrir(atual))
			pilhaAdicionar(pilha,atual);
		if (verificarCharFechar(atual))
		{
			if(verificarCharInverso(atual, pilha.topo->dado))
				pilhaRemover(pilha);
			else
				push(pilhaFechar,atual);
		}
	}

	if (!pilhaVerificarFim(pilha))
		cout << "\nCódigo inválido, tente novamente.\n";
	else if(pilhaVerificarFim(pilhaFechar))
		cout << "\nCódigo válido.\n";
}

int main()
{
	setlocale(LC_ALL, "Portuguese");

	TPilha<char> pilha;
	inicializarPilha(pilha);

	verificarCodigo(pilha,"}}{{H");
	
	system("pause");
    return 0;
}

