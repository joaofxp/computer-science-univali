programa
{
	funcao inicio()
	{
		inteiro contador = 0
		inteiro idade
		inteiro contador_pessoas_menos_18_anos = 0

		enquanto(contador < 15)
		{
			leia(idade)
			se(idade < 18)
				contador_pessoas_menos_18_anos++
			contador++
		}

		escreva("Pessoas menor de idade: ",contador_pessoas_menos_18_anos)
	}
}
/* $$$ Portugol Studio $$$ 
 * 
 * Esta seção do arquivo guarda informações do Portugol Studio.
 * Você pode apagá-la se estiver utilizando outro editor.
 * 
 * @POSICAO-CURSOR = 219; 
 * @PONTOS-DE-PARADA = ;
 * @SIMBOLOS-INSPECIONADOS = ;
 * @FILTRO-ARVORE-TIPOS-DE-DADO = inteiro, real, logico, cadeia, caracter, vazio;
 * @FILTRO-ARVORE-TIPOS-DE-SIMBOLO = variavel, vetor, matriz, funcao;
 */