programa
{
//Leia a primeira letra do estado civil de uma pessoa e mostre uma mensagem com a sua descrição
//(Solteiro, Casado, Viúvo, Divorciado). Mostre uma mensagem de erro, se necessário.
	funcao inicio()
	{
		caracter estadoCivil	
		escreva("Qual é o seu estado civil? (Solteiro, Casado, Viúvo ou Divorciado):\n")
		leia(estadoCivil)
		
		escolha(estadoCivil)
		{
			caso 'S':
				escreva("Você é uma pessoa que ainda não se casou.")		
				pare
			caso 'C':
				escreva("Você é uma pessoa que ou o que se acha no estado de matrimônio.")
				pare
			caso 'V':
				escreva("Você é uma pessoa cujo cônjuge morreu, e não casou de novo.")
				pare
			caso 'D':
				escreva("Você é uma pessoa que se separou judicialmente do cônjuge pelo divórcio")
				pare
			caso contrario:
				escreva("Não foi possível encontrar informações do seu estado civil")
				pare
		}
	}
}

/* $$$ Portugol Studio $$$ 
 * 
 * Esta seção do arquivo guarda informações do Portugol Studio.
 * Você pode apagá-la se estiver utilizando outro editor.
 * 
 * @POSICAO-CURSOR = 449; 
 * @PONTOS-DE-PARADA = ;
 * @SIMBOLOS-INSPECIONADOS = ;
 * @FILTRO-ARVORE-TIPOS-DE-DADO = inteiro, real, logico, cadeia, caracter, vazio;
 * @FILTRO-ARVORE-TIPOS-DE-SIMBOLO = variavel, vetor, matriz, funcao;
 */