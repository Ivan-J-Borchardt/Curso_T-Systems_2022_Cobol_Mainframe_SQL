Algoritmo "semnome"
// Disciplina   : L�gica de Programa��o I
// Professor   : Ivan J. Borchardt 
// Descri��o   : Aqui voc� descreve o que o programa faz! (fun��o)
// Autor(a)    : Nome do(a) aluno(a)
// Data atual  : 9/16/2022
Var
// Se��o de Declara��es das vari�veis 

    nome : caractere
    sexo : caractere
    valorCompra, precoComDesconto, desconto : real

Inicio
// Se��o de Comandos, procedimento, fun��es, operadores, etc... 

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
    escreval("Pre�o com desconto: ", precoComDesconto)


Fimalgoritmo