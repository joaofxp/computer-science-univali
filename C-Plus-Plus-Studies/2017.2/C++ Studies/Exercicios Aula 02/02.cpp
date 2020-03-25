//Faça um algoritmo que solicita ao usuário as notas de três provas. Calcule a média aritmética e informe se o aluno foi Aprovado ou Reprovado (o aluno é considerado aprovado com a média igual ou superior a 6).

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
	
	string	textoApresentacao = "Insira três notas: \n",
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