programa {

    inclua biblioteca Util --> u
    
    funcao inicio() {
        
        caracter usuarios[5][2] = {
            {"Felps", "12345"},
            {"Mahy", "12345"},
            {"Rianf", "12345"},
            {"Eduardocs", "54321"},
            {"Lucasl", "42424"}
        }
        
        caracter opcao
        escreva("Bem vindo ao Universo Cinematográfico\n")
        u.aguarde(1000)
        escreva("Deseja entrar na loja? (S/N): ")
        leia(opcao)
        
        se (opcao == 'S' ou opcao == 's') {
            caracter usuario[20], senha[20]
            logado = falso
            
            enquanto (nao logado) {
                escreva("Informe seu usuário por favor: ")
                leia(usuario)
                escreva("Agora informe sua senha para prosseguir: ")
                leia(senha)
                
                para (inteiro i = 0; i < 5; i++) {
                    se (usuarios[i][0] == usuario e usuarios[i][1] == senha) {
                        escreva("Login realizado com sucesso\n")
                        logado = verdadeiro
                        u.aguarde(1000)
                        escreva("Chegaram muitas novidades na loja, venha conferir!\n")
                    }
                }
                
                se (nao logado) {
                    escreva("Aconteceu algo de errado! Usuário ou senha estão incorretos. Tente novamente!\n")
                
            } senao se (opcao == 'N' ou opcao == 'n') {
                escreva("Que pena, volte sempre que quiser!\n")
            } senao {
                escreva("Parece que você escolheu uma opção inválida\n")
            }
        }
    }
}


/* $$$ Portugol Studio $$$ 
 * 
 * Esta seção do arquivo guarda informações do Portugol Studio.
 * Você pode apagá-la se estiver utilizando outro editor.
 * 
 * @POSICAO-CURSOR = 767; 
 * @PONTOS-DE-PARADA = ;
 * @SIMBOLOS-INSPECIONADOS = ;
 * @FILTRO-ARVORE-TIPOS-DE-DADO = inteiro, real, logico, cadeia, caracter, vazio;
 * @FILTRO-ARVORE-TIPOS-DE-SIMBOLO = variavel, vetor, matriz, funcao;
 */