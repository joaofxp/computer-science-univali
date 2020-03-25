programa
{
/*
Fa�a um programa que solicite um n�mero ao usu�rio, depois disso multiplique este
n�mero por tr�s, depois disso verifique se o resultado desta multiplica��o � um
n�mero par, caso ele seja, escreva no console: O triplo do n�mero digitado � um
n�mero par.
Para realizar estas tarefas � necess�rio modularizar o algoritmo nas seguintes fun��es:

1- Uma fun��o para solicitar um n�mero ao usu�rio e retornar este n�mero

2- Uma fun��o para multiplicar um n�mero por 3

3- Uma fun��o para verificar se um n�mero � par ou impar

4- Uma fun��o para escrever a mensagem no console, baseada em uma condi��o

A fun��o inicio deste programa deve conter apenas declara��es de vari�veis e

chamadas de fun��o.
*/
	funcao inicio()
	{
		//solicite um numero
		inteiro numeroDigitado = receberNumero()
		//multiplique o numero por tres
		inteiro numeroMultiplicado = multiplicarNumero(numeroDigitado,3)
		//verifique se o resultado da multiplica��o � um numero par
		cadeia numeroTipo = verificarTipoNumero(numeroMultiplicado)
		// se for par, escrever o triplo do n�mero digitado � um n�mero par
		escreverNoConsole(numeroTipo)
	}

	funcao inteiro receberNumero()
	{
		inteiro numero = 0
		escreva("Digite um n�mero: \n")
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
			escreva("O triplo do n�mero digitado � um n�mero par.")
		senao
			escreva("O triplo do n�mero digitado � um n�mero impar.")
			
	}
}
/* $$$ Portugol Studio $$$ 
 * 
 * Esta se��o do arquivo guarda informa��es do Portugol Studio.
 * Voc� pode apag�-la se estiver utilizando outro editor.
 * 
 * @POSICAO-CURSOR = 804; 
 * @PONTOS-DE-PARADA = ;
 * @SIMBOLOS-INSPECIONADOS = ;
 * @FILTRO-ARVORE-TIPOS-DE-DADO = inteiro, real, logico, cadeia, caracter, vazio;
 * @FILTRO-ARVORE-TIPOS-DE-SIMBOLO = variavel, vetor, matriz, funcao;
 */