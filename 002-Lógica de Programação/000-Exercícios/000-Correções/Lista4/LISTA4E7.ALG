Algoritmo "semnome"
// Disciplina   : Lógica de Programação I
// Professor   : Ivan J. Borchardt 
// Descrição   : Aqui você descreve o que o programa faz! (função)
// Autor(a)    : Nome do(a) aluno(a)
// Data atual  : 9/16/2022
Var
// Seção de Declarações das variáveis 

    nome : caractere
    sexo : caractere
    valorCompra, precoComDesconto, desconto : real

Inicio
// Seção de Comandos, procedimento, funções, operadores, etc... 

     //Entradas
     escreval("Nome: ")
     leia(nome)
     
     escreval("Sexo f/m:")
     leia(sexo)
     
     escreval("valor Compra:")
     leia(valorCompra)
     
     
     //Processamento

     se (sexo = "f") entao
         //desconto := 13
         desconto := 0.13
     fimse
     
     se (sexo = "m") entao
         //desconto := 5
         desconto := 0.05
     fimse

     //      95        =      100          100             5 /100
     //precoComDesconto := valorCompra - (valorCompra * (desconto/100))
     precoComDesconto := valorCompra - (valorCompra * desconto)

    //saida
    escreval("Nome: ", nome, " Sexo: ", sexo)
    escreval("Preço com desconto: ", precoComDesconto)


Fimalgoritmo