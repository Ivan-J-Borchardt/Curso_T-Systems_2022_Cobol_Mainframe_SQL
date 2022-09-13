Algoritmo "Lista3E2"
// Disciplina   : Lógica de Programação I
// Professor   : Ivan J. Borchardt 
// Descrição   : Aqui você descreve o que o programa faz! (função)
// Autor(a)    : Nome do(a) aluno(a)
// Data atual  : 9/13/2022
Var
// Seção de Declarações das variáveis 

   num1, num2, num3, maiorNum: inteiro

Inicio
// Seção de Comandos, procedimento, funções, operadores, etc... 

   escreval("Num. 1:")
   leia(num1)

   escreval("Num. 2:")
   leia(num2)
   
   escreval("Num. 3:")
   leia(num3)

   maiorNum := num1
   
   se (num2 > maiorNum) entao
       maiorNum := num2
   fimse

   se (num3 > maiorNum) entao
       maiorNum := num3
   fimse

   escreval("O maior numero é ", maiorNum)

Fimalgoritmo

//Teste de mesa
//  num1: 15
//  num2: 30
//  num3: 4
//  maiorNum: 30
