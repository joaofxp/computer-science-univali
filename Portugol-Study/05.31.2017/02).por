programa
{
/*
Faça uma função que receba como parâmetro o número de lados de um polígono e:
- Se o número de lados for igual a 3, escrever TRIÂNGULO.
- Se o número de lados for igual a 4, escrever QUADRADO.
- Se o número de lados for igual a 5, escrever PENTÁGONO.
- Se o número de lados for diferente de 3, 4 ou 5, escrever VALOR INVÁLIDO.
*/
	funcao inicio()
	{
		escreva(tipoPoligono(4))
	}

	funcao cadeia tipoPoligono(inteiro numLados)
	{
		escolha(numLados)
		{
			caso 3:
				retorne "TRIÂNGULO"
			pare
			caso 4:
				retorne "QUADRADO"
			pare
			caso 5:
				retorne "PENTÁGONO"
			pare
			caso contrario:
				retorne "VALOR INVÁLIDO"
			pare
			
		}
	}
}
/* $$$ Portugol Studio $$$ 
 * 
 * Esta seção do arquivo guarda informações do Portugol Studio.
 * Você pode apagá-la se estiver utilizando outro editor.
 * 
 * @POSICAO-CURSOR = 342; 
 * @PONTOS-DE-PARADA = ;
 * @SIMBOLOS-INSPECIONADOS = ;
 * @FILTRO-ARVORE-TIPOS-DE-DADO = inteiro, real, logico, cadeia, caracter, vazio;
 * @FILTRO-ARVORE-TIPOS-DE-SIMBOLO = variavel, vetor, matriz, funcao;
 */