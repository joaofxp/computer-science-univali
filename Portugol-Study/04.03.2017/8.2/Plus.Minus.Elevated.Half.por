programa
{
/*
	Fa�a um algoritmo que recebe como entrada, dois valores inteiros e um s�mbolo referente � uma
	
	opera��o aritm�tica (+, -, * ou /), depois disso o algoritmo deve realizar a opera��o de acordo com a
	
	o s�mbolo e com os valores informados pelo usu�rio.
	
	� permitido utilizar apenas um comando escreva para exibir o resultado da opera��o.
 */
	funcao inicio()
	{
		inteiro valor1
		inteiro valor2
		caracter simbolo
		inteiro valorFinal
		
		escreva("Digite dois valores:\n")
		leia(valor1,valor2)
		escreva("Digite uma opera��o aritm�tica entre: (+, -, * ou /)\n")
		leia(simbolo)

		escolha(simbolo)
		{
			caso '+':
				valorFinal = valor1 + valor2
				pare
			caso '-':
				valorFinal = valor1 - valor2
				pare
			caso '*':
				valorFinal = valor1 * valor2
				pare
			caso '/':
				valorFinal = valor1 / valor2
				pare
			caso contrario:
				escreva("Informa��es inv�lidas. Tente novamente.")
				retorne
				pare
		}

		escreva("Valor final: " , valorFinal)
	}
}
/* $$$ Portugol Studio $$$ 
 * 
 * Esta se��o do arquivo guarda informa��es do Portugol Studio.
 * Voc� pode apag�-la se estiver utilizando outro editor.
 * 
 * @POSICAO-CURSOR = 17; 
 * @PONTOS-DE-PARADA = ;
 * @SIMBOLOS-INSPECIONADOS = ;
 * @FILTRO-ARVORE-TIPOS-DE-DADO = inteiro, real, logico, cadeia, caracter, vazio;
 * @FILTRO-ARVORE-TIPOS-DE-SIMBOLO = variavel, vetor, matriz, funcao;
 */