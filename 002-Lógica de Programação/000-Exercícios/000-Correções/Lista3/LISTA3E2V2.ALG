Algoritmo "Lista3E2"
// Disciplina   : L�gica de Programa��o I
// Professor   : Ivan J. Borchardt 
// Descri��o   : Aqui voc� descreve o que o programa faz! (fun��o)
// Autor(a)    : Nome do(a) aluno(a)
// Data atual  : 9/13/2022
Var
// Se��o de Declara��es das vari�veis 

   num1, num2, num3: inteiro

Inicio
// Se��o de Comandos, procedimento, fun��es, operadores, etc... 

   escreval("Num. 1:")
   leia(num1)

   escreval("Num. 2:")
   leia(num2)
   
   escreval("Num. 3:")
   leia(num3)
   
   se (num1 > num2) e (num1 > num3) entao
       escreval("O maior n�mero � ", num1)
   fimse
   
   se (num2 > num1) e (num2 > num3) entao
       escreval("O maior n�mero � ", num2)
   fimse
   
   se (num3 > num1) e (num3 > num2) entao
       escreval("O maior n�mero � ", num3)
   fimse


Fimalgoritmo

//Teste de mesa
//  num1: 15
//  num2: 30
//  num3: 4
