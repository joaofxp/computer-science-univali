programa
{
/*
Faça um programa que solicite o nome de uma empresa e em seguida o nome, cargo e
salário de 10 funcionários. Exiba o nome da empresa e a lista de funcionários, com seus
nomes, cargos e salários de forma ordenada, do maior salário para o menor salário.
*/
	funcao inicio()
	{
		const inteiro TAM = 10
		cadeia nomeEmpresa = "UNIVALI"
		cadeia nomeFuncionario[TAM] = {"CHICO","JOSE","ADEMIR","PEDRO","IRINEU","JOELSON","JADSON","BRUNO","CLEUZO","PAULO"}
		cadeia cargoFuncionario[TAM] = {"ADM1","ADM2","ADM3","ADM4","ADM5","ADM6","ADM7","ADM8","ADM9","ADM10"}
		inteiro salarioFuncionario[TAM] = {500,1000,1500,2000,4000,2500,3000,3500,4000,5000}

		para(inteiro i = 0; i  < TAM; i++)
		{
			para(inteiro j = 0; j < TAM -1; j++)
			{
				se(salarioFuncionario[j] < salarioFuncionario[j+1])
				{
					cadeia nomeAnterior = nomeFuncionario[j]
					cadeia cargoAnterior = cargoFuncionario[j]
					inteiro salarioAnterior = salarioFuncionario[j]

					nomeFuncionario[j] = nomeFuncionario[j+1]
					nomeFuncionario[j+1] = nomeAnterior

					cargoFuncionario[j] = cargoFuncionario[j+1]
					cargoFuncionario[j+1] = cargoAnterior

					salarioFuncionario[j] = salarioFuncionario[j+1]
					salarioFuncionario[j+1] = salarioAnterior
				}				
			}
		}

		escreva("Empresa: ", nomeEmpresa, "\nFuncionarios:\nNome            |        CARGO        |        Salario        \n")
		para(inteiro i = 0; i < TAM; i++)
		{
			escreva(nomeFuncionario[i],"        |        ",cargoFuncionario[i],"        |        ", salarioFuncionario[i],"\n")
		}
	}
}
/* $$$ Portugol Studio $$$ 
 * 
 * Esta seção do arquivo guarda informações do Portugol Studio.
 * Você pode apagá-la se estiver utilizando outro editor.
 * 
 * @POSICAO-CURSOR = 1380; 
 * @PONTOS-DE-PARADA = ;
 * @SIMBOLOS-INSPECIONADOS = ;
 * @FILTRO-ARVORE-TIPOS-DE-DADO = inteiro, real, logico, cadeia, caracter, vazio;
 * @FILTRO-ARVORE-TIPOS-DE-SIMBOLO = variavel, vetor, matriz, funcao;
 */