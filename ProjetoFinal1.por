programa {
	inclua biblioteca Util --> u
	inclua biblioteca Tipos --> t
	inclua biblioteca Calendario --> c
	inclua biblioteca Matematica --> m
	const inteiro LINHA = 9, COLUNA = 3
	
	funcao inicio() {
		inteiro dia = c.dia_mes_atual(), mes = c.mes_atual(), ano = c.ano_atual()
		inteiro op2
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

		se(nao loop){      							// INSERIR LOGO
			opcaoLogin = 'N'						// INSERIRIR LOGO
		}
		senao{
			 para(inteiro j=0;j<=16; j++ )
		{
			se (j==0){
			escreva("             				          		          *              \n")
			Util.aguarde(500)
			}
			se(j==1){
			escreva("             				         		                     *        \n")
			Util.aguarde(500)
			}
			se (j==2){
			escreva("             				         	                   *               \n")
			Util.aguarde(500)
			}
			se (j==3){
		     escreva("             				         	           	           *        \n")
			Util.aguarde(500)
			}
			se(j==4){
			escreva("             				        		          *                   \n")
			Util.aguarde(500)
			}
			se (j==5){
			escreva("              				           		               *         \n")
			Util.aguarde(500)
			}
			se(j==6){ 
			escreva("           			                    		    *               \n")
			Util.aguarde(500)
			}
			se (j==7){
			escreva("             				          		              *          \n")
			Util.aguarde(500)
			}
			se(j==8){
			escreva("             				         		         *                    \n")
			Util.aguarde(500)
			}
			se (j==9){
			escreva("             				         	                        *          \n")
			Util.aguarde(500)
			}
			se (j==10){
		     escreva("             				         		           *                  \n")
			Util.aguarde(500)
			}
			se(j==11){
			escreva("             				        		                       *      \n")
			Util.aguarde(500)
			}
			se (j==12){
			escreva("              				           		             *           \n")
			Util.aguarde(500)
			}
			se(j==13){
			escreva("           			                    		            *       \n")
			
			}se (j==14){
			escreva("             				          		              *          \n")
			Util.aguarde(500)
			}
			se(j==15){
			escreva("             				         		                      *       \n")
			Util.aguarde(500)
			}
			se (j==16){
			escreva("             				         	                      *    ", "\n\n\n")
			Util.aguarde(500)
			}
			}
			Util.aguarde(700)
			escreva("                                                                  S E J A M   B E M - V I N D O S  A O\n ")
			
		para(inteiro i= 0; i<=6 ; i++)
		{
			se (i==0){
			escreva("             				          		     ###   N    ###        #########","\n")
			Util.aguarde(500)
			}
			se(i==1){
			escreva ("             				         		     ###   I    ###       #########", "\n")
			Util.aguarde(500)
			}
			se (i==2){
			escreva ("             				         	             ###   V    ###      ###", "\n")
			Util.aguarde(500)
			}
			se (i==3){
		     escreva ("             				         		     ###   E    ###      ### I N E M A T O G R Á F I C O", "\n")
			Util.aguarde(500)
			}
			se(i==4){
			escreva("             				        		     ###   R    ###","      ###","\n")
			Util.aguarde(500)
			}
			se (i==5){
			escreva("              				           		      ###  SO  ###        #########","\n")
			Util.aguarde(500)
			}
			se(i==6){
			escreva("           			                    		        #######            #########")
			i=7
			}
		}			               
			
			escreva("\n\nOlá! Deseja entrar na loja? (S/N): ")
			leia(opcaoLogin)
			limpa()	
		}
		se(opcaoLogin == 'S' ou opcaoLogin == 's') {
			escreva("")
			escreva("\n\nSeja bem vindo a loja\n\n")
			cadeia usuario, senha
			logado = falso
			faca{
				escreva("Por favor, informe o seu nome de usuário: ")
				leia(usuario)
				limpa()
				escreva("Agora informe a sua senha: ")
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
					escreva("Seja bem vindo ", usuario, " escolha alguns dos nossos itens adquiridos através do multiverso! \n\n")
					cadeia matrizEstoque[LINHA][COLUNA] = {{"Mjolnirr","\t2","150.99"},{"Anel do Poder","\t12","99.99"},{"Escudo de Vibranium","10","599.90"},{"Sapatos de Cristal","4","999.99"},{"Tapete","\t\t2","549.99"},{"Maca","\t\t1","19.90"},{"Par de Botas","\t2","49.90"},{"1 Dia de Spa","\t1","200.0"},{"Ovo de Dragao","\t20","1999.99"}}
					cadeia teste = "n", opcao2 = "n", prod, quant, nome = "LucasL"
					inteiro contador = 0, opcao=0, x=0
					//contador=confere(matrizEstoque, contador) // Funcao que confere se ja tem item na matriz
					carregando("Atenção!!!\nOs dados aqui cadastrados a seguir serão perdidos se o programa for fechado.\nCarregando.")
					u.aguarde(1000)
					limpa()
					contador=confere(carrinho, contador)
					escreva("\n")
							faca{  
								u.aguarde(500)
								Menu(usuario) // Imprimindo o menu
								leia(opcao) // Lendo a opçcao do menu
								limpa()
								escolha(opcao){
									caso 1: // Cadastra novos produtos na matriz Carrinho
										
										se(contador == 0){ // Confere se ainda tem espaco a ser locado
											u.aguarde(200)
											escreva("O banco ja esta cheio, por favor retire algum item e tente novamente.\n")
											pare
										}
										u.aguarde(200)
										contador = cadastroCarrinho(carrinho, matrizEstoque, contador) // Chama funcçao pra alocar o produto e sua quantidade
										pare
									caso 2: // Exclui o produto escolhido da matriz Carrinho
										u.aguarde(200)
										escreva("Digite o produto que deseja excluir: ")
										leia(prod)
										contador=excluir(carrinho, contador, prod) // Funcao para excluir o produto desejado
										pare
									caso 3: 
										imprimeCarrinho(carrinho, matrizEstoque, contador) // trocar para carrinho
										pare	
									caso 4: // Confirmar compra
										u.aguarde(200)
										imprimeCarrinho(carrinho, matrizEstoque, contador)
										confirmaCompra(carrinho, contador, dia, mes, ano)
										pare
									caso 5: // Lista todos os produtos que tem a quantidade diferente de 0
										u.aguarde(200)
										//imprimeComEstoque(matrizEstoque) // Chamando funcçao
										faca{
											escreva("Categorias:\n1-Marvel\n2-Disney\n3-Dreamwork\n4-Listar Produtos\n5-Voltar\nOpção desejada: ")
											leia(op2)
											escolha(op2){
												caso 1:
													limpa()
													escreva("⚡ Martelo do Thor: \nJá pensou em adquirir o martelo mais poderoso do universo Marvel? Aqui você pode!\n\n")
													escreva("Ω Anel Lanterna verde: \nSe você é do time DC esse é o seu produto, faça parte do esquadrão intergaláctico do Lanterna verde.\n\n")
													escreva("✪ Escudo capitão América: \nSe você for do time Marvel, você não pode ficar sem esse exclusivo ítem, nunca se sabe quando você vai precisar!\n\n")
													pare
												caso 2: 
													limpa()
													escreva("✭ Sapatos de cristal da Cinderela: \nEm uma noite mágica, a melhor parte com certeza são os sapatos únicos de cristal, adquira já! Atenção em caso de perda de um dos pares não garantimos um príncipe te devolvendo o sapato.\n\n")
													escreva("▓‍Tapete mágico Alladin: \nDeseja conhecer um mundo ideal? Compre agora o tapete mágico e nunca mais pegue engarrafamento!\n\n")
													escreva("❦ Maça envenenada branca de neve: \nEsse produto é de matar! Criado por uma rainha má mas se usado com sabedoria você pode descolar um príncipe. Compre já!\n\n")
													pare
												caso 3: 
													limpa()
													escreva("₲ Botas gato de botas: \nBotas estilosas e marcantes, podem não te garantir um olhar convincente mas com certeza te deixará único!\n\n")
													escreva("☾ Dia de SPA no pantano: \nAqui você pode adquirir uma experiência única! Um dia de SPA no pantano do shrek, com direito a banho de lama e comidas típicas do local.\n\n")
													escreva("○ Ovo de dragão surpresa: \nNão garantimos que o seu ovo surpresa seja um dragão, mas com certeza você tem o elemento surpresa.\n\n")
													pare
												caso 4:
													limpa()
													imprimeComEstoque(matrizEstoque)
													pare
												caso 5:
													limpa()
													pare
												caso contrario:
													escreva("Opção invalida, tente novamente!\n")
													pare
											}
										}enquanto(op2!=5 )
										pare
									caso 6:// Criando a opçao de saida do programam com mensagem de confirmaçao
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
							}enquanto(opcao != 6 e teste != "S")
						
				}senao{
					escreva("Parece que seu usuário ou senha incorretos.\n")
					logado = verdadeiro
				}
			}enquanto(logado)
		}senao se(opcaoLogin == 'N' ou opcaoLogin =='n'){
				escreva("Volte sempre que desejar")
		}senao{
			escreva("Opção inválida.\n")
			inicio()	
		}
	
	}
	funcao confirmaCompra(cadeia matriz[][], inteiro contador, inteiro dia, inteiro mes, inteiro ano){ 
		real soma = 0.0
		para(inteiro i=0; i<LINHA-contador; i++){
				soma += t.cadeia_para_real(matriz[i][2])		
		}
		soma = m.arredondar(soma, 2)
		carregando("Gerando nota fiscal ")
		escreva(dia, "/", mes, "/", ano, "/", "\n")
		escreva("Valor total da compra: ", soma, "\n")
		carregando("Processando")
		carregando("Processando")
		escreva("Compra confirmada com sucesso, tenha um bom dia!!")
	}
	funcao imprimeCarrinho(cadeia carrinho[][], cadeia estoque[][], inteiro contador){ // Imprime somente os produtos com estoque
		inteiro x=0
		real p=0.0
		se(contador == LINHA){    							///////// COMPLEMENTAR 
			escreva("Sem produtos cadastrados!!\n")			///////// COMPLEMENTAR
			retorne									///////// COMPLEMENTAR
		}											///////// COMPLEMENTAR
		escreva("Produtos no carrinho: \n")				///////// COMPLEMENTAR
		escreva("------------------\n")					///////// COMPLEMENTAR
		//se(contador > 0){
			para(inteiro i=0; i<=LINHA-contador; i++){
				se(carrinho[i][1] != "0" e carrinho[i][1] != ""){
					//p=preco(carrinho, i)
					//p = (t.cadeia_para_real(matriz[i][1]))*(t.cadeia_para_real(matriz[i][2]))
					se(carrinho[i][0] == "Anel do Poder"){
						escreva(carrinho[i][0], "\t\t", carrinho[i][1], "\t", estoque[i][2], "\t\n") // Tirar duvida
					}senao{
						escreva(carrinho[i][0], "\t", carrinho[i][1], "\t", estoque[i][2], "\t\n")
					}
				}
			}
			u.aguarde(1000)
		/*}senao{
			para(inteiro i=0; i<LINHA-contador; i++){
				se(carrinho[i][1] != "0" e carrinho[i][1] != ""){
					
					p=preco(carrinho, i)//preco = (t.cadeia_para_real(matriz[i][1]))*(t.cadeia_para_real(matriz[i][2]))
					escreva(carrinho[i][0], "\t", carrinho[i][1], "\t", p, "\n") // Tirar duvida
				}
			}
		}*/
	}
	funcao real preco(cadeia matriz[][], inteiro a){
		real quantidade=0.0, valor=0.0
		cadeia teste = matriz[a][2]
		valor = t.cadeia_para_real(matriz[0][2])
		quantidade = t.cadeia_para_real(matriz[a][1])
		retorne valor*quantidade
		
	}
	funcao imprimeComEstoque(cadeia matriz[][]){ // Imprime somente os produtos com estoque
		escreva("Produtos: \n")
		escreva("------------------\n")
		para(inteiro i=0; i<LINHA; i++){
			escreva(matriz[i][0], "\t", matriz[i][1], "\t", matriz[i][2], "\n") // Tirar duvida
		}
		escreva("------------------\n")
		u.aguarde(1000)
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
	funcao inteiro excluir(cadeia carrinho[][], inteiro contador, cadeia prod){ // Funcao para excluir o item desejado
		inteiro x=0
		se(contador < LINHA){
			para(inteiro i=0; i<LINHA; i++){
				se(prod == carrinho[i][0]){
					carrinho[i][0] = ""
					carrinho[i][1] = ""
					contador++
					x++
									
				}
			}
			se(x==0){
				escreva("Produto nao encontrado no carrinho\n")
				retorne contador
			}senao{
				escreva("Produto retirado com sucesso!\n")
			}
		}senao{
			escreva("\nSem produtos no carrinho\n")
			
		}
		retorne contador
	}
	funcao carregando(cadeia texto){ // Funcao para msg com carregamento
		escreva(texto)
		para(inteiro i=0; i<10; i++){
			u.aguarde(500)
			escreva(".")
		}
		escreva("\n")
	}
	funcao Menu(cadeia nome){ // Funcao para imprimir menu
		escreva("\nUsuario: ", nome, "\n")
		escreva("-------------------------------\n")
			escreva("1-Adicionar Produto ao Carrinho\n2-Excluir Produto do Carrinho\n3-Mostrar carrinho de compras\n4-Confirmar Compra\n5-Listar Produtos\n6-Sair\n-------------------------------\nDigite a opcoes desejada: ")
	}
	funcao inteiro cadastroCarrinho(cadeia carrinho[][], cadeia estoque[][], inteiro contador){ // Funcao para inserir produto
		real quantidade=0.0, p = 0.0, valor=0.0
		escreva("Informe o produto:  ")
		leia(carrinho[LINHA - contador][0])
		escreva("Informe a quantidade:  ")
		leia(carrinho[LINHA - contador][1])
		limpa()
		para(inteiro i=0; i<LINHA; i++){
			se(carrinho[LINHA-contador][0] == estoque[i][0] ){
				carrinho[LINHA-contador][2] = estoque[i][2] 
			}
			
		}
		quantidade = t.cadeia_para_real(carrinho[LINHA-contador][1])
		p =  t.cadeia_para_real(carrinho[LINHA-contador][2])
		valor=quantidade*p
		carrinho[LINHA-contador][2] = t.real_para_cadeia(valor)
		retorne contador--
	}
	
}

/* $$$ Portugol Studio $$$ 
 * 
 * Esta seção do arquivo guarda informações do Portugol Studio.
 * Você pode apagá-la se estiver utilizando outro editor.
 * 
 * @POSICAO-CURSOR = 3685; 
 * @PONTOS-DE-PARADA = ;
 * @SIMBOLOS-INSPECIONADOS = {carrinho, 378, 40, 8}-{estoque, 378, 61, 7}-{contador, 378, 82, 8}-{quantidade, 379, 7, 10}-{p, 379, 23, 1}-{valor, 379, 32, 5};
 * @FILTRO-ARVORE-TIPOS-DE-DADO = inteiro, real, logico, cadeia, caracter, vazio;
 * @FILTRO-ARVORE-TIPOS-DE-SIMBOLO = variavel, vetor, matriz, funcao;
 */