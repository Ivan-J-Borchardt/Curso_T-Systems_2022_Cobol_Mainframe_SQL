Algoritmo "LIsta2E10"
// Disciplina   : Lógica de Programação I
// Professor   : Ivan J. Borchardt 
// Descrição   : Aqui você descreve o que o programa faz! (função)
// Autor(a)    : Nome do(a) aluno(a)
// Data atual  : 9/12/2022
Var
// Seção de Declarações das variáveis 

    desconto, preco, precoPromocional : real


Inicio
// Seção de Comandos, procedimento, funções, operadores, etc... 

    //Entradas
    escreval("Preço: ")
    leia(preco)
    
    //Processamento
    desconto  := preco * 0.05
    precoPromocional := preco - desconto
    
    //Saídas
    escreval("Preço Promocional: ", precoPromocional)


Fimalgoritmo