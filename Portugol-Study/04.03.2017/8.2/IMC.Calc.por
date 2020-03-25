programa
{
/*
	Faça um algoritmo que calcule a massa corporal de uma pessoa, dada seu peso e altura. A fórmula do
	
	cálculo é descrita como: peso dividido pelo quadrado da altura. Além disso, o algoritmo deve retornar
	
	uma mensagem indicando em qual faixa a pessoa se encaixa, exemplo:
	
	Gabriel está com o peso normal.
 */
	funcao inicio()
	{
		real peso
		real altura
		real massaCorporal
		escreva("Insira seu peso:(60)\n")
		leia(peso)
		escreva("Insira sua altura:(1.60)\n")
		leia(altura)
		
		//IMC
		massaCorporal = peso / (altura * altura)
		escreva("Seu imc é: ",massaCorporal, "\n")
		//Faixa que a pessoa se encaixa
		se(massaCorporal <= 18.5)
			escreva("Você está abaixo do seu peso normal")
		senao se(massaCorporal <= 25)
			escreva("Você está com o peso normal")
		senao se(massaCorporal <= 30)
			escreva("Você está com o peso acima do normal")
		senao se(massaCorporal > 30)
			escreva("Você está com peso excessivo")
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