Algoritmo "Lista3E1"
// Disciplina   : Lógica de Programação I
// Professor   : Ivan J. Borchardt 
// Descrição   : Aqui você descreve o que o programa faz! (função)
// Autor(a)    : Nome do(a) aluno(a)
// Data atual  : 9/13/2022
Var
// Seção de Declarações das variáveis 
    num1, num2: inteiro

Inicio
// Seção de Comandos, procedimento, funções, operadores, etc... 

   escreval("Num. 1: ")
   leia(num1)
   
   escreval("Num. 2: ")
   leia(num2)
   
   se(num1 > num2) entao
       escreva("O Número ", num1, " é o maior" )
   senao
       escreva("O Número ", num2, " é o maior")
   fimse

Fimalgoritmo