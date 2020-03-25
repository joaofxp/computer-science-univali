programa
{
/*
1) Escreva um programa que solicite 3 notas para a M1, M2 e M3.

Por fim, calcule a média final e exiba o resultado para o usuário da seguinte maneira:

M1 ? 7.16

M2 ? 9.5

M3 ? 10

Média Final: 8.88

Resultado: Aprovado

É necessário modularizar o algoritmo em funções:

- função para solicitar uma nota ao usuário

- função para calcular a média recebendo três notas

- função para definir se o aluno foi ou não aprovado, de acordo com a média

informada
*/
	const inteiro MEDIASQTD = 3
	const inteiro MEDIANECESSARIA = 6
	
	funcao inicio()
	{
		inteiro notaM1 = solicitarNota(1)
		inteiro notaM2 = solicitarNota(2)
		inteiro notaM3 = solicitarNota(3)
		inteiro mediaFinal = calcularMedia(notaM1,notaM2,notaM3)
		cadeia resultado = aprovarAluno(mediaFinal)

		escreva("M1 - ", notaM1, "\nM2 - ", notaM2, "\nM3 - ", notaM3, "\nMédia Final: ", mediaFinal, "\nResultado: ", resultado) 
	}

	funcao inteiro solicitarNota(inteiro qualMedia)
	{
		escreva("\nDigite a nota da média ", qualMedia, ":\n")
		inteiro numeroDigitado
		leia(numeroDigitado)
		retorne(numeroDigitado)
	}

	funcao inteiro calcularMedia(inteiro nota1, inteiro nota2, inteiro nota3)
	{
		inteiro media
		media = (nota1+nota2+nota3) / MEDIASQTD
		retorne media
	}

	funcao cadeia aprovarAluno(inteiro mediaAluno)
	{
		se(mediaAluno >= MEDIANECESSARIA)
			retorne "APROVADO"
			
		retorne "REPROVADO"
	}
}
/* $$$ Portugol Studio $$$ 
 * 
 * Esta seção do arquivo guarda informações do Portugol Studio.
 * Você pode apagá-la se estiver utilizando outro editor.
 * 
 * @POSICAO-CURSOR = 565; 
 * @PONTOS-DE-PARADA = ;
 * @SIMBOLOS-INSPECIONADOS = ;
 * @FILTRO-ARVORE-TIPOS-DE-DADO = inteiro, real, logico, cadeia, caracter, vazio;
 * @FILTRO-ARVORE-TIPOS-DE-SIMBOLO = variavel, vetor, matriz, funcao;
 */