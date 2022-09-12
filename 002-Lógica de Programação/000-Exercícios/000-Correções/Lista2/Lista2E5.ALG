Algoritmo "Lista2E5"
// Disciplina   : L�gica de Programa��o I
// Professor   : Ivan J. Borchardt 
// Descri��o   : Aqui voc� descreve o que o programa faz! (fun��o)
// Autor(a)    : Nome do(a) aluno(a)
// Data atual  : 9/9/2022
Var
// Se��o de Declara��es das vari�veis 

   num, antecessor, sucessor: inteiro

Inicio
// Se��o de Comandos, procedimento, fun��es, operadores, etc... 

   escreva("Informe um n�mero: ")
   leia(num)
   
   antecessor := num - 1
   sucessor := num + 1
   
   escreval("O antecessor de ", num," � ", antecessor)
   escreval("O sucessor de ", num," � ", sucessor)


Fimalgoritmo