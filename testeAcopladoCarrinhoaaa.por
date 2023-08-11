programa {
	inclua biblioteca Util --> u
	inclua biblioteca Tipos --> t
	const inteiro LINHA = 9, COLUNA = 3
	
	funcao inicio() {
		real p=0.0
		logico logado, loop = verdadeiro
		cadeia carrinho[LINHA][COLUNA]
		caracter opcaoLogin
		cadeia usuarios[5][2] = {
			{"Felps", "12345"},
			{"Mahy", "10109"},
			{"Rianf", "12345"},
			{"Eduardocs", "54321"},
			{"Lucasl", "42424"}}

		se(nao loop){
			opcaoLogin = 'N'
		}
		senao{
			escreva("Deseja entrar na loja? (S/N): ")
			leia(opcaoLogin)
			limpa()	
		}
		se(opcaoLogin == 'S' ou opcaoLogin == 's') {
			//mostrar msg
			escreva("\n\n")
			escreva("Seja bem vindo a loja\n\n")
			cadeia usuario, senha
			logado = falso
			faca{
				escreva("Informe o usuário: ")
				leia(usuario)
				limpa()
				escreva("Informe a senha: ")
				leia(senha)
				limpa()
				
				para(inteiro i = 0; i < 5; i++) {
					se(usuario == usuarios[i][0] e senha == usuarios[i][1]) {
						logado = verdadeiro
						pare
					}
				}	
				
				se(logado){
					escreva("Login realizado com sucesso!\n")
					escreva("Seja bem vindo ", usuario, "\n\n")
					cadeia matrizEstoque[LINHA][COLUNA] = {{"Mjolnirr","2","150.99"},{"Anel do Poder","1","99.99"},{"Escudo de Vibranium","10","599.90"},{"Sapatos de Cristal","4","999.99"},{"Tapete","0","549.99"},{"Maca","1","19.90"},{"Par de Botas","2","49.90"},{"1 Dia de Spa","0","200.0"},{"Ovo de Dragao","20","1999.99"}}
					cadeia teste = "n", opcao2 = "n", prod, quant, nome = "LucasL"
					inteiro contador = 0, opcao=0, x=0
					p=preco(matrizEstoque, 1)
					escreva("\n\n\n\n", p, "\n\n\n")
					//contador=confere(matrizEstoque, contador) // Funcao que confere se ja tem item na matriz
					carregando("Atenção!!!\nOs dados aqui cadastrados a seguir serão perdidos se o programa for fechado.\nCarregando.")
					u.aguarde(2000)
					limpa()
					escreva("\n")
							faca{  
								u.aguarde(200)
								Menu(usuario) // Imprimindo o menu
								leia(opcao) // Lendo a opçcao do menu
								limpa()
								escolha(opcao){
									caso 1: // Cadastra novos produtos na matriz Carrinho
										contador=confere(carrinho, contador)
										se(contador == 0){ // Confere se ainda tem espaco a ser locado
											u.aguarde(200)
											escreva("O banco ja esta cheio, por favor retire algum item e tente novamente.\n")
											pare
										}
										u.aguarde(200)
										contador = cadastroCarrinho(carrinho, contador) // Chama funcçao pra alocar o produto e sua quantidade
										pare
									caso 2: // Exclui o produto escolhido da matriz Carrinho
										u.aguarde(200)
										escreva("Digite o produto que deseja excluir: ")
										leia(prod)
										contador=excluir(carrinho, contador, prod, x) // Funcao para excluir o produto desejado
										pare
									caso 3: 
										imprimeCarrinho(carrinho, contador)
										pare	
									caso 4: // Confirmar compra
										u.aguarde(200)
										//  confirmaCompra(carrinho)
									caso 5: // Lista todos os produtos que a quantidade é igual a 0
										u.aguarde(200) 
										imprimeSemEstoque(matrizEstoque, contador) // Chamando funcao
										pare
									caso 6: // Lista todos os produtos que tem a quantidade diferente de 0
										u.aguarde(200)
										imprimeComEstoque(matrizEstoque, contador) // Chamando funcçao
										pare
									caso 7:// Criando a opçao de saida do programam com mensagem de confirmaçao
										u.aguarde(200)
										escreva("Deseja realmente sair?\nDigite S para SIM e N para NAO:")
										leia(teste)
										limpa()
										se(teste == "S" ou teste == "s" ou teste == "sim" ou teste == "Sim"){ // tratamento de erro para resposta do ususario
											carregando("Saindo do programa")
											logado=falso
											teste = "S"
											pare
										}senao{
											opcao = 0
											pare
										}
										caso contrario:
											escreva("Opção invalida, tente novamente\n\n") //Tratando o caso do usuaria entrar com opçao diferente da listada
											pare
								}
							}enquanto(opcao != 7 e teste != "S")
						
				}senao{
					escreva("Usuário ou senha incorretos.\n")
					logado = falso
				}
			}enquanto(logado)
		}senao se(opcaoLogin == 'N' ou opcaoLogin =='n'){
				escreva("Volte sempre que desejar")
		}senao{
			escreva("Opção inválida.\n")
			inicio()	
		}
	
	}			
	funcao imprimeCarrinho(cadeia matriz[][], inteiro contador){ // Imprime somente os produtos com estoque
		inteiro x=0
		real p=0.0
		se(contador == 0){
			escreva("Sem produtos cadastrados!!\n")
			retorne
		}
		escreva("Produtos no carrinho: \n")
		escreva("------------------\n")
		se(contador > 0){
			para(inteiro i=0; i<LINHA-contador+1; i++){
				se(matriz[i][1] != "0" e matriz[i][1] != ""){
					//p=preco(matriz, i)
					p = (t.cadeia_para_real(matriz[i][1]))*(t.cadeia_para_real(matriz[i][2]))
					escreva(matriz[i][0], "\t", matriz[i][1], "\t", p, "\t") // Tirar duvida
				}
			}
		}senao{
			para(inteiro i=0; i<LINHA-contador; i++){
				se(matriz[i][1] != "0" e matriz[i][1] != ""){
					
					p=preco(matriz, i)//preco = (t.cadeia_para_real(matriz[i][1]))*(t.cadeia_para_real(matriz[i][2]))
					escreva(matriz[i][0], "\t", matriz[i][1], "\t", p, "\n") // Tirar duvida
				}
			}
		}
	}
	funcao real preco(cadeia matriz[][], inteiro a){
		real quantidade=0.0, valor=0.0
		cadeia teste = matriz[a][2]
		valor = t.cadeia_para_real(matriz[0][2])
		quantidade = t.cadeia_para_real(matriz[a][1])
		retorne valor*quantidade
		
	}
	funcao imprimeSemEstoque(cadeia matriz[][], inteiro contador){ // Imprime somente os produtos sem estoque
		inteiro x=0
		se(contador == LINHA){
			escreva("Sem produtos cadastrados!!\n")
			retorne
		}
		escreva("Produtos sem estoque: \n")
		escreva("------------------\n")
		para(inteiro i=0; i<LINHA; i++){
			se(matriz[i][1] == "0"){
				escreva(matriz[i][0], "\t", matriz[i][1], "\t", matriz[i][2], "\n")
				x++
			}
		}
		se(x==0){
			escreva("Sem produtos com estoque zerado\n")
			
		}
	}
	funcao imprimeComEstoque(cadeia matriz[][], inteiro contador){ // Imprime somente os produtos com estoque
		inteiro x=0
		se(contador == LINHA){
			escreva("Sem produtos cadastrados!!\n")
			retorne
		}
		escreva("Produtos com estoque: \n")
		escreva("------------------\n")
		se(contador > 0){
			para(inteiro i=0; i<LINHA-contador+1; i++){
				se(matriz[i][1] != "0" e matriz[i][1] != ""){
				escreva(matriz[i][0], " ", matriz[i][1], "\n") // Tirar duvida
				x++
				}
			}
		}senao{
			para(inteiro i=0; i<LINHA-contador; i++){
				se(matriz[i][1] != "0" e matriz[i][1] != ""){
				escreva(matriz[i][0], " ", matriz[i][1], "\n") // Tirar duvida
				x++
				}
			}
		}
		se(x==0){
			escreva("Sem produtos com estoque zerado\n")
		}
	}
	funcao inteiro confere(cadeia matriz[][], inteiro contador){ // Funcao pra conferir o estoque
		para(inteiro i=0; i<LINHA; i++) { // ve quanto ainda tem de espaço no estoque
			se(matriz[i][0] == "" e matriz[i][1] == ""){
				contador++
			}senao{
				contador--
			}

		}
		retorne contador
	}
	funcao inteiro excluir(cadeia carrinho[][], inteiro contador, cadeia prod, inteiro x){ // Funcao para excluir o item desejado
		para(inteiro i=0; i<LINHA; i++){
			se(prod == carrinho[i][0]){
				carrinho[i][0] = ""
				carrinho[i][1] = ""
				contador++
				x--
			}senao{
				escreva("Produto nao encontrado no carrinho...\n")
			}
		}
		retorne contador
	}
	funcao carregando(cadeia texto){ // Funcao para msg com carregamento
		escreva(texto)
		para(inteiro i=0; i<10; i++){
			u.aguarde(100)
			escreva(".")
		}
	}
	funcao Menu(cadeia nome){ // Funcao para imprimir menu
		escreva("\nUsuario: ", nome, "\n")
		escreva("-------------------------------\n")
			escreva("1-Adicionar Produto ao Carrinho\n2-Excluir Produto do Carrinho\n3-Mostrar carrinho de compras\n4-Confirmar Compra\n5-Listar Produtos sem estoque\n6-Listar Produtos com estoque\n7-Sair\n-------------------------------\nDigite a opcoes desejada: ")
	}
	funcao inteiro cadastroCarrinho(cadeia carrinho[][], inteiro contador){ // Funcao para inserir produto
		escreva("Informe o produto:  ")
		leia(carrinho[LINHA - contador][0])
		escreva("Informe a quantidade:  ")
		leia(carrinho[LINHA - contador][1])
		limpa()
		real k = (t.cadeia_para_real(carrinho[LINHA-contador][1]))*(t.cadeia_para_real(carrinho[LINHA-contador][2]))
		escreva(k)
		retorne contador--
	}
	
}

/* $$$ Portugol Studio $$$ 
 * 
 * Esta seção do arquivo guarda informações do Portugol Studio.
 * Você pode apagá-la se estiver utilizando outro editor.
 * 
 * @POSICAO-CURSOR = 8345; 
 * @DOBRAMENTO-CODIGO = [155, 163, 182, 209, 220, 233, 240];
 * @PONTOS-DE-PARADA = 142, 143;
 * @SIMBOLOS-INSPECIONADOS = {a, 156, 46, 1}-{quantidade, 157, 7, 10}-{valor, 157, 23, 5}-{teste, 158, 9, 5};
 * @FILTRO-ARVORE-TIPOS-DE-DADO = inteiro, real, logico, cadeia, caracter, vazio;
 * @FILTRO-ARVORE-TIPOS-DE-SIMBOLO = variavel, vetor, matriz, funcao;
 */