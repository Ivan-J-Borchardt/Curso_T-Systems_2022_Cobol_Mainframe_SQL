Algoritmo "Lista3E8"
// Disciplina   : Lógica de Programação I
// Professor   : Ivan J. Borchardt 
// Descrição   : Aqui você descreve o que o programa faz! (função)
// Autor(a)    : Nome do(a) aluno(a)
// Data atual  : 9/14/2022
Var
// Seção de Declarações das variáveis 
    valorCompra, valorVenda: real

Inicio
// Seção de Comandos, procedimento, funções, operadores, etc... 

    escreval("Valor de Compra: ")
    leia(valorCompra)
    
    se (valorCompra <= 20.00) entao
       //valorVenda := valorCompra + (valorCompra * 0.50)
       valorVenda := valorCompra * 1.50
    senao
       valorVenda := valorCompra * 1.35
    fimse
    
    escreval("Valor de Venda: ", valorVenda)

Fimalgoritmo