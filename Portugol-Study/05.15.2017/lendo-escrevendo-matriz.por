programa
{
	funcao inicio()
	{
		const inteiro TAMANHO = 3
		inteiro matriz[TAMANHO][TAMANHO]

		para(inteiro linha=0;
			linha<TAMANHO;
			linha++){
			para(inteiro coluna =0;
				coluna<TAMANHO;
				coluna++){
				leia(matriz[linha][coluna])	
			}		
		}


		para(inteiro linha=0;
			linha<TAMANHO;
			linha++){
			para(inteiro coluna =0;
				coluna<TAMANHO;
				coluna++){
				escreva(matriz[linha][coluna], " | ")	
			}
			escreva("\n")		
		}
		
	}
}
/* $$$ Portugol Studio $$$ 
 * 
 * Esta se��o do arquivo guarda informa��es do Portugol Studio.
 * Voc� pode apag�-la se estiver utilizando outro editor.
 * 
 * @POSICAO-CURSOR = 188; 
 * @PONTOS-DE-PARADA = ;
 * @SIMBOLOS-INSPECIONADOS = {matriz, 6, 11, 6};
 * @FILTRO-ARVORE-TIPOS-DE-DADO = inteiro, real, logico, cadeia, caracter, vazio;
 * @FILTRO-ARVORE-TIPOS-DE-SIMBOLO = variavel, vetor, matriz, funcao;
 */