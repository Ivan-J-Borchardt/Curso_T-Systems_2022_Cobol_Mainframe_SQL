Algoritmo "Lista3E8"
// Disciplina   : L�gica de Programa��o I
// Professor   : Ivan J. Borchardt 
// Descri��o   : Aqui voc� descreve o que o programa faz! (fun��o)
// Autor(a)    : Nome do(a) aluno(a)
// Data atual  : 9/14/2022
Var
// Se��o de Declara��es das vari�veis 
    valorCompra, valorVenda: real

Inicio
// Se��o de Comandos, procedimento, fun��es, operadores, etc... 

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