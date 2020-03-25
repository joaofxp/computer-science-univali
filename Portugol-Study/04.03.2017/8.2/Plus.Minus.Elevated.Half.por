programa
{
/*
	Faça um algoritmo que recebe como entrada, dois valores inteiros e um símbolo referente à uma
	
	operação aritmética (+, -, * ou /), depois disso o algoritmo deve realizar a operação de acordo com a
	
	o símbolo e com os valores informados pelo usuário.
	
	É permitido utilizar apenas um comando escreva para exibir o resultado da operação.
 */
	funcao inicio()
	{
		inteiro valor1
		inteiro valor2
		caracter simbolo
		inteiro valorFinal
		
		escreva("Digite dois valores:\n")
		leia(valor1,valor2)
		escreva("Digite uma operação aritmética entre: (+, -, * ou /)\n")
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
				escreva("Informações inválidas. Tente novamente.")
				retorne
				pare
		}

		escreva("Valor final: " , valorFinal)
	}
}
/* $$$ Portugol Studio $$$ 
 * 
 * Esta seção do arquivo guarda informações do Portugol Studio.
 * Você pode apagá-la se estiver utilizando outro editor.
 * 
 * @POSICAO-CURSOR = 17; 
 * @PONTOS-DE-PARADA = ;
 * @SIMBOLOS-INSPECIONADOS = ;
 * @FILTRO-ARVORE-TIPOS-DE-DADO = inteiro, real, logico, cadeia, caracter, vazio;
 * @FILTRO-ARVORE-TIPOS-DE-SIMBOLO = variavel, vetor, matriz, funcao;
 */