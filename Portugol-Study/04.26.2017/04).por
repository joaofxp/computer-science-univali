programa
{
/*
Fa�a um programa que inicialize o array { ?i?, ?a?, ?e?, ?u?, ?o? }, ap�s isso 
solicite ao usu�rio para que ele digite um caracter qualquer. � necess�rio responder se
o caracter � uma consoante ou uma vogal, e al�m disso, em casos onde o caracter � uma
vogal � necess�rio indicar em qual posi��o do array ela est�.
*/
	funcao inicio()
	{
		caracter array[] = {'i','a','e','u','o'}
		caracter caracterDigitado
		caracter caracterTipo = 'c'

		escreva("Digite um caracter qualquer: \n")
		leia(caracterDigitado)

		para(inteiro i = 0; i < 5; i++)
		{
			se(caracterDigitado == array[i])
			{
				escreva("Caracter � uma vogal e est� na posi��o: ", i+1)
				caracterTipo = 'v'
			}
		}

		se (caracterTipo == 'c')
			escreva("Caracter � uma consoante")
	}
}
/* $$$ Portugol Studio $$$ 
 * 
 * Esta se��o do arquivo guarda informa��es do Portugol Studio.
 * Voc� pode apag�-la se estiver utilizando outro editor.
 * 
 * @POSICAO-CURSOR = 668; 
 * @PONTOS-DE-PARADA = ;
 * @SIMBOLOS-INSPECIONADOS = ;
 * @FILTRO-ARVORE-TIPOS-DE-DADO = inteiro, real, logico, cadeia, caracter, vazio;
 * @FILTRO-ARVORE-TIPOS-DE-SIMBOLO = variavel, vetor, matriz, funcao;
 */