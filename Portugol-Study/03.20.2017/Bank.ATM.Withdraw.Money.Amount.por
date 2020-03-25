programa
{
	/*este exercício deve ser feito só com numeros inteiros
	 * Solicitar o valor desejado para retirar
	 * Exibir a quantidade de cada cédula que será entregue ao usuário
	 * Sempre tentar utilizar o menor número possível de cédulas
	 * 
	 * A máquina possúi apenas cédulas de 50 | 20 | 10 | 5 | 1
	 * 
	 * Exemplo: Valor do saque: 159
	 * Notas de 50: 3
	 * Notas de 20: 0
	 * Notas de 10: 0
	 * Notas de 5: 1
	 * Notas de 1: 4
	 */
	funcao inicio()
	{
		inteiro valorSaque = 0
		inteiro valorSaqueNotas = 0 
		inteiro notasDe50 = 0
		inteiro notasDe20 = 0
		inteiro notasDe10 = 0
		inteiro notasDe5 = 0
		inteiro notasDe1 = 0

		escreva("Digite um valor para retirada: ")
		leia(valorSaque)
		valorSaqueNotas = valorSaque		

		notasDe50 = valorSaqueNotas / 50
		valorSaqueNotas = valorSaque % 50 //pode ser modulus
		notasDe20 = valorSaqueNotas / 20
		valorSaqueNotas -= notasDe20 * 20
		notasDe10 = valorSaqueNotas / 10
		valorSaqueNotas -= notasDe10 * 10
		notasDe5 = valorSaqueNotas / 5
		valorSaqueNotas -= notasDe5 * 5		
		notasDe1 = valorSaqueNotas

		escreva("Valor do saque: " + valorSaque + "\n")
		escreva("Notas de 50: " + notasDe50 + "\n")
		escreva("Notas de 20: " + notasDe20 + "\n")
		escreva("Notas de 10: " + notasDe10 + "\n")
		escreva("Notas de 5: " + notasDe5 + "\n")
		escreva("Notas de 1: " + notasDe1)

		//Mais avançado com if ou com foreach e lista de cédulas
	}
}
/* $$$ Portugol Studio $$$ 
 * 
 * Esta seção do arquivo guarda informações do Portugol Studio.
 * Você pode apagá-la se estiver utilizando outro editor.
 * 
 * @POSICAO-CURSOR = 830; 
 * @PONTOS-DE-PARADA = ;
 * @SIMBOLOS-INSPECIONADOS = ;
 * @FILTRO-ARVORE-TIPOS-DE-DADO = inteiro, real, logico, cadeia, caracter, vazio;
 * @FILTRO-ARVORE-TIPOS-DE-SIMBOLO = variavel, vetor, matriz, funcao;
 */