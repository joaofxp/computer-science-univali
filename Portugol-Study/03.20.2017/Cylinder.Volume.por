programa
{
	/*
	 *Solicite a altura 
	 *Solicite o raio
	 *De um cilindro circular
	 *Escreva o volume do cilindro
	 * 
	 * V = pi * raio² * altura
	 * considere pi = 3.1415
	*/
	funcao inicio()
	{
		real pi = 3.1415
		real alturaCilindro = 0.0
		real raioCilindro = 0.0
		real volumeCilindro = 0.0

		escreva("Digite a altura do cilindro: ")
		leia(alturaCilindro)
		escreva("Digite o raio do cilindro: ")
		leia(raioCilindro)
		
		volumeCilindro = pi * (raioCilindro * raioCilindro) * alturaCilindro
		escreva("O volume do cilindro circular é de: " + volumeCilindro +".")
	}
}
/* $$$ Portugol Studio $$$ 
 * 
 * Esta seção do arquivo guarda informações do Portugol Studio.
 * Você pode apagá-la se estiver utilizando outro editor.
 * 
 * @POSICAO-CURSOR = 432; 
 * @PONTOS-DE-PARADA = ;
 * @SIMBOLOS-INSPECIONADOS = ;
 * @FILTRO-ARVORE-TIPOS-DE-DADO = inteiro, real, logico, cadeia, caracter, vazio;
 * @FILTRO-ARVORE-TIPOS-DE-SIMBOLO = variavel, vetor, matriz, funcao;
 */