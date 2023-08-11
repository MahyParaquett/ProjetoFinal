/*
 * Produtos
 * 1-Inserir uma arte que represente cada produto
 * 2-Nome dos produtos
 * 3-Descrição dos produtos
 * 4-Quantidade de itens(estoque)
 * 5-Preço dos produtos(ex: 10,99)
 * 6-Opção de voltar ao menu anterior
 * 7-Dois tratamentos de erro no produto
 * 
*/
programa
{
	inclua biblioteca Util --> u	

	funcao vazio descricao(){
		escreva("Nossa loja conta com vários artefatos raros de vários universos !")
	}

	funcao vazio menuProdutos(){
		escreva("1-Listar os produtos\n")
		escreva("2-Produtos em estoque\n")
		escreva("3-Preços\n")
		escreva("4-Descrição dos produtos\n")
		escreva("5-Sair\n")
		
	}
	
	funcao inicio()
	{
		inteiro opcaoProduto, j=0
		const inteiro LINHAS = 9
		const inteiro COLUNAS = 3
		cadeia produtos[LINHAS][COLUNAS]={{"Martelo do Thor", "\t5 unidades", "\t\tR$ 15.00\n"}, {"Anel lanterna verde", "\t8 unidades", "\tR$ 10.00\n"},{"Escudo capitão", "\t\t0 unidades", "\t\tR$ 100.00\n"},{"Sapato Cinderela", "\t1 unidades", "\tR$ 1000.00\n"},{"Tapete mágico", "\t\t20 unidades", "\t\tR$ 5000.00\n"},{"Maça Branca de Neve", "\t60 unidades", "\tR$ 9.99\n"},{"Bota Gato de botas", "\t13 unidades", "\tR$ 25.89\n"},{"Spa Shrek", "\t\t10 unidades", "\t\tR$ 50.00\n"},{"Filhote de dragão", "\t4 unidades", "\tR$ 30.00\n"}}
		
		menuProdutos()

		faca{
			leia(opcaoProduto)
			se(opcaoProduto < 1 ou opcaoProduto > 6){
				escreva("Insira um valor valido\n")
		}
		escolha(opcaoProduto){
			caso 1:
				limpa()
				escreva("PRODUTOS: \n")
				escreva("-------------------- \n")
				para (inteiro i = 0; i < LINHAS; i++){
					escreva(produtos[i][0])						
				}
				u.aguarde(50000)
				limpa()
				menuProdutos()
				pare
			caso 2:
				limpa()
				escreva("ESTOQUE DE PRODUTOS: \n")
				escreva("-------------------- \n")
				para (inteiro i = 0; i < LINHAS; i++){
					escreva(produtos[i][0], " ", produtos[i][1], "\n")
					
				}
				u.aguarde(50000)
				limpa()
				menuProdutos()
				pare
			caso 3:
				limpa()
				escreva("PREÇOS: \n")
				escreva("-------------------- \n")
				para (inteiro i = 0; i < LINHAS; i++){
					escreva(produtos[i][0])
					escreva(produtos[i][2])
					
						
				}
				u.aguarde(50000)
				limpa()
				menuProdutos()
				pare
			caso 4:
				limpa()
				descricao()
				u.aguarde(5000)
				menuProdutos()
				pare
			caso 5:
				limpa()
				escreva("Mete o pé")
				j = 1		
			}	
		}enquanto(j == 0)					
	}
}
/* $$$ Portugol Studio $$$ 
 * 
 * Esta seção do arquivo guarda informações do Portugol Studio.
 * Você pode apagá-la se estiver utilizando outro editor.
 * 
 * @POSICAO-CURSOR = 1856; 
 * @PONTOS-DE-PARADA = ;
 * @SIMBOLOS-INSPECIONADOS = ;
 * @FILTRO-ARVORE-TIPOS-DE-DADO = inteiro, real, logico, cadeia, caracter, vazio;
 * @FILTRO-ARVORE-TIPOS-DE-SIMBOLO = variavel, vetor, matriz, funcao;
 */