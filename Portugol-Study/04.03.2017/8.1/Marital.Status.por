programa
{
//Leia a primeira letra do estado civil de uma pessoa e mostre uma mensagem com a sua descri��o
//(Solteiro, Casado, Vi�vo, Divorciado). Mostre uma mensagem de erro, se necess�rio.
	funcao inicio()
	{
		caracter estadoCivil	
		escreva("Qual � o seu estado civil? (Solteiro, Casado, Vi�vo ou Divorciado):\n")
		leia(estadoCivil)
		
		escolha(estadoCivil)
		{
			caso 'S':
				escreva("Voc� � uma pessoa que ainda n�o se casou.")		
				pare
			caso 'C':
				escreva("Voc� � uma pessoa que ou o que se acha no estado de matrim�nio.")
				pare
			caso 'V':
				escreva("Voc� � uma pessoa cujo c�njuge morreu, e n�o casou de novo.")
				pare
			caso 'D':
				escreva("Voc� � uma pessoa que se separou judicialmente do c�njuge pelo div�rcio")
				pare
			caso contrario:
				escreva("N�o foi poss�vel encontrar informa��es do seu estado civil")
				pare
		}
	}
}

/* $$$ Portugol Studio $$$ 
 * 
 * Esta se��o do arquivo guarda informa��es do Portugol Studio.
 * Voc� pode apag�-la se estiver utilizando outro editor.
 * 
 * @POSICAO-CURSOR = 449; 
 * @PONTOS-DE-PARADA = ;
 * @SIMBOLOS-INSPECIONADOS = ;
 * @FILTRO-ARVORE-TIPOS-DE-DADO = inteiro, real, logico, cadeia, caracter, vazio;
 * @FILTRO-ARVORE-TIPOS-DE-SIMBOLO = variavel, vetor, matriz, funcao;
 */