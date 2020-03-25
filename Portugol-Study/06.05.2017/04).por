programa
{
/*
Faça um programa que solicite um número ao usuário, depois disso multiplique este
número por três, depois disso verifique se o resultado desta multiplicação é um
número par, caso ele seja, escreva no console: O triplo do número digitado é um
número par.
Para realizar estas tarefas é necessário modularizar o algoritmo nas seguintes funções:

1- Uma função para solicitar um número ao usuário e retornar este número

2- Uma função para multiplicar um número por 3

3- Uma função para verificar se um número é par ou impar

4- Uma função para escrever a mensagem no console, baseada em uma condição

A função inicio deste programa deve conter apenas declarações de variáveis e

chamadas de função.
*/
	funcao inicio()
	{
		//solicite um numero
		inteiro numeroDigitado = receberNumero()
		//multiplique o numero por tres
		inteiro numeroMultiplicado = multiplicarNumero(numeroDigitado,3)
		//verifique se o resultado da multiplicação é um numero par
		cadeia numeroTipo = verificarTipoNumero(numeroMultiplicado)
		// se for par, escrever o triplo do número digitado é um número par
		escreverNoConsole(numeroTipo)
	}

	funcao inteiro receberNumero()
	{
		inteiro numero = 0
		escreva("Digite um número: \n")
		leia(numero)
		retorne(numero)
	}

	funcao inteiro multiplicarNumero(inteiro numero, inteiro multiplicador)
	{		
		retorne numero * multiplicador
	}

	funcao cadeia verificarTipoNumero(inteiro numero)
	{
		se(numero % 2 == 0)
			retorne "PAR"
			
		retorne "IMPAR"
	}

	funcao escreverNoConsole(cadeia tipoNumero)
	{
		se(tipoNumero == "PAR")
			escreva("O triplo do número digitado é um número par.")
		senao
			escreva("O triplo do número digitado é um número impar.")
			
	}
}
/* $$$ Portugol Studio $$$ 
 * 
 * Esta seção do arquivo guarda informações do Portugol Studio.
 * Você pode apagá-la se estiver utilizando outro editor.
 * 
 * @POSICAO-CURSOR = 804; 
 * @PONTOS-DE-PARADA = ;
 * @SIMBOLOS-INSPECIONADOS = ;
 * @FILTRO-ARVORE-TIPOS-DE-DADO = inteiro, real, logico, cadeia, caracter, vazio;
 * @FILTRO-ARVORE-TIPOS-DE-SIMBOLO = variavel, vetor, matriz, funcao;
 */