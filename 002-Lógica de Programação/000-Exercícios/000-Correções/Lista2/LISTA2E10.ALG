Algoritmo "LIsta2E10"
// Disciplina   : L�gica de Programa��o I
// Professor   : Ivan J. Borchardt 
// Descri��o   : Aqui voc� descreve o que o programa faz! (fun��o)
// Autor(a)    : Nome do(a) aluno(a)
// Data atual  : 9/12/2022
Var
// Se��o de Declara��es das vari�veis 

    desconto, preco, precoPromocional : real


Inicio
// Se��o de Comandos, procedimento, fun��es, operadores, etc... 

    //Entradas
    escreval("Pre�o: ")
    leia(preco)
    
    //Processamento
    desconto  := preco * 0.05
    precoPromocional := preco - desconto
    
    //Sa�das
    escreval("Pre�o Promocional: ", precoPromocional)


Fimalgoritmo