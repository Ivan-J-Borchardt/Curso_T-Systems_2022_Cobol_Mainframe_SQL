Algoritmo "semnome"
// Disciplina   : Lógica de Programação I
// Professor   : Ivan J. Borchardt 
// Descrição   : Aqui você descreve o que o programa faz! (função)
// Autor(a)    : Nome do(a) aluno(a)
// Data atual  : 9/15/2022
Var
// Seção de Declarações das variáveis 

   userId1, userId2, userId3, userId: caractere
   senha1, senha2, senha3, senha: caractere

Inicio
// Seção de Comandos, procedimento, funções, operadores, etc... 
     userId1 := "Aluno1"
     userId2 := "Aluno2"
     userId3 := "Aluno3"
     
     senha1 := "Trocar123"
     senha2 := "Senha@123"
     senha3 := "123Trocar"
     
     
     escreval("Usuário: ")
     leia(userId)
     
     escreval("Senha: ")
     leia(senha)
     
     se (userId = userId1) entao
         se (senha = senha1) entao
             escreval("Acesso Permitido")
         senao
             escreval("Senha incorreta")
         fimse
     senao
         se (userId = userId2) entao
            se (senha = senha2) entao
                escreval("Acesso Permitido")
            senao
                escreval("Senha incorreta")
            fimse
         senao
            se (userId = userId3)  entao
                se (senha = senha3) entao
                    escreval("Acesso Permitido")
                senao
                    escreval("Senha incorreta")
                fimse
            senao
                escreval("Usuário não cadastrado")
            fimse
         fimse
     fimse
     
     

Fimalgoritmo

//     userId1 : "Aluno1"
//     userId2 : "Aluno2"
//     userId3 : "Aluno3"
//     userI   : "Aluno3"

//     senha1 : "Trocar123"
//     senha2 : "Senha@123"
//     senha3 : "123Trocar"
//     senha  : "123Trocar"