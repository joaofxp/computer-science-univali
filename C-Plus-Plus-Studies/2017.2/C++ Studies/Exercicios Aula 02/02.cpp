//Fa�a um algoritmo que solicita ao usu�rio as notas de tr�s provas. Calcule a m�dia aritm�tica e informe se o aluno foi Aprovado ou Reprovado (o aluno � considerado aprovado com a m�dia igual ou superior a 6).

#include "stdafx.h"
#include <iostream>
#include <string>

using namespace std;

void alunoStatusFinal()
{
	int nota1,
		nota2,
		nota3,
		notasQuantidade = 3,
		mediaAritmetica,
		mediaNecessaria = 6;
	
	string	textoApresentacao = "Insira tr�s notas: \n",
			textoAluno = "Status do aluno: \n",
			statusAluno,
			statusAlunoAprovado = "Aprovado",
			statusAlunoReprovado = "Reprovado";

	cout << textoApresentacao;
	cin >> nota1 >> nota2 >> nota3;
	mediaAritmetica = (nota1 + nota2 + nota3) / notasQuantidade;
	
	statusAluno = (mediaAritmetica >= mediaNecessaria) ? statusAlunoAprovado : statusAlunoReprovado;

	cout << textoAluno << statusAluno;
}