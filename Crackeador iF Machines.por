programa
{
	funcao inteiro det(inteiro mat[][])
	{
		inteiro total1 = 0
		para (inteiro j = 0; j < 3; j++)
		{
			total1 += mat[0][j%3] * mat[1][(j+1)%3] * mat[2][(j+2)%3]
		}

			inteiro total2 = 0
		para (inteiro j = 2; j >= 0; j--)
		{
			total2 += mat[(j %3)][2] * mat[(j+1)%3][1] * mat[(j +2) %3][0]
		}
		inteiro total = total1 - total2
		retorne total
	}

	funcao  imprimeMatriz(inteiro mat[][])
	{
		para (inteiro i = 0; i < 3; i++)
		{
			para (inteiro j = 0; j < 3; j++)
			{
				escreva(mat[i][j], " ")

				
			}
			escreva("\n")
		}
		escreva("\n")
	}
	
	funcao inicio()
	{
		inteiro mat [3][3], mat2[3][3], mat3[3][3]
		inteiro vet [3]
		inteiro vetR [3]
		cadeia vetT[3] = {"S", "L", "SL"}

		para (inteiro i = 0; i< 3; i++)
		{
			para (inteiro j = 0; j < 3; j++)
			{
				escreva ("Digite novamente quantidade de iF Machines ",vetT[j]," do ",i+1,"º Orçamento :\n")
				leia (mat[i][j])
				mat2[i][j] = mat[i][j]
				mat3[i][j] = mat[i][j] 
				escreva("\n")
			}
		}

		para (inteiro i = 0; i< 3; i++)
		{
			escreva ("Digite o valor final do ",i+1,"º Orçamento:\nR$")
			leia(vet[i])
		}		

		imprimeMatriz(mat)

		inteiro detM = det(mat)
		escreva("Determiante da Matriz: "+detM+"\n\n")	

		para (inteiro i = 0; i < 3; i++)
		{
			mat[i][0] = vet[i]
		
		}
		inteiro detX = det(mat)
		escreva("Determiante de X: "+detX+"\n\n")

		para (inteiro i = 0; i < 3; i++)
		{
			mat2[i][1] = vet[i]
		
		}
		inteiro detY = det(mat2)
		escreva("Determiante de Y: "+detY+"\n\n")

		para (inteiro i = 0; i < 3; i++)
		{
			mat3[i][2] = vet[i]
		
		}
		inteiro detZ = det(mat3)
		escreva("Determiante de Z: "+detZ+"\n\n")

		inteiro X = detX/detM
		inteiro Y = detY/detM
		inteiro Z = detZ/detM

		escreva("O iF Machine S custa R$",X,",00 \nO iF Machine L custa R$",Y,",00 \nO iF Machine SL custa R$",Z,",00")

		
		
		
		
	}
}
/* $$$ Portugol Studio $$$ 
 * 
 * Esta seção do arquivo guarda informações do Portugol Studio.
 * Você pode apagá-la se estiver utilizando outro editor.
 * 
 * @POSICAO-CURSOR = 950; 
 * @PONTOS-DE-PARADA = ;
 * @SIMBOLOS-INSPECIONADOS = ;
 * @FILTRO-ARVORE-TIPOS-DE-DADO = inteiro, real, logico, cadeia, caracter, vazio;
 * @FILTRO-ARVORE-TIPOS-DE-SIMBOLO = variavel, vetor, matriz, funcao;
 */