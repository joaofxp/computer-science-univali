programa
{
/*
1) Escreva um programa que solicite 3 notas para a M1, M2 e M3.

Por fim, calcule a m�dia final e exiba o resultado para o usu�rio da seguinte maneira:

M1 ? 7.16

M2 ? 9.5

M3 ? 10

M�dia Final: 8.88

Resultado: Aprovado

� necess�rio modularizar o algoritmo em fun��es:

- fun��o para solicitar uma nota ao usu�rio

- fun��o para calcular a m�dia recebendo tr�s notas

- fun��o para definir se o aluno foi ou n�o aprovado, de acordo com a m�dia

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

		escreva("M1 - ", notaM1, "\nM2 - ", notaM2, "\nM3 - ", notaM3, "\nM�dia Final: ", mediaFinal, "\nResultado: ", resultado) 
	}

	funcao inteiro solicitarNota(inteiro qualMedia)
	{
		escreva("\nDigite a nota da m�dia ", qualMedia, ":\n")
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
 * Esta se��o do arquivo guarda informa��es do Portugol Studio.
 * Voc� pode apag�-la se estiver utilizando outro editor.
 * 
 * @POSICAO-CURSOR = 565; 
 * @PONTOS-DE-PARADA = ;
 * @SIMBOLOS-INSPECIONADOS = ;
 * @FILTRO-ARVORE-TIPOS-DE-DADO = inteiro, real, logico, cadeia, caracter, vazio;
 * @FILTRO-ARVORE-TIPOS-DE-SIMBOLO = variavel, vetor, matriz, funcao;
 */