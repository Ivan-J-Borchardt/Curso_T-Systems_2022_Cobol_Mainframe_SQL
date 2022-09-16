Algoritmo "semnome"
// Disciplina   : Lógica de Programação I
// Professor   : Ivan J. Borchardt 
// Descrição   : Aqui você descreve o que o programa faz! (função)
// Autor(a)    : Nome do(a) aluno(a)
// Data atual  : 9/16/2022
Var
// Seção de Declarações das variáveis 

    peso, altura, imc: real
    msn : caractere

Inicio
// Seção de Comandos, procedimento, funções, operadores, etc... 

    escreval("Peso: ")
    leia(peso)
    
    escreval("Altura: (m)")
    leia(altura)
    
    imc := peso/(altura*altura)
    
    se (imc <= 18.5) entao
       msn := "Abaixo do peso"
    fimse
    
    se (imc > 18.5) e (imc <= 25)  entao
       msn := "Peso ideal"
    fimse
    
    se (imc > 25) e (imc <= 30) entao
       msn := "Acima do peso"
    fimse
    
    se (imc > 30) e (imc <= 40) entao
       msn := "Obesidade"
    fimse
    
    se (imc > 40)  entao
       msn := "Obesidade Mórbida"
    fimse
    
    escreval("imc:", imc, " ", msn )


Fimalgoritmo