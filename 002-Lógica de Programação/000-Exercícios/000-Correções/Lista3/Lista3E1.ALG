Algoritmo "Lista3E1"
// Disciplina   : L�gica de Programa��o I
// Professor   : Ivan J. Borchardt 
// Descri��o   : Aqui voc� descreve o que o programa faz! (fun��o)
// Autor(a)    : Nome do(a) aluno(a)
// Data atual  : 9/13/2022
Var
// Se��o de Declara��es das vari�veis 
    num1, num2: inteiro

Inicio
// Se��o de Comandos, procedimento, fun��es, operadores, etc... 

   escreval("Num. 1: ")
   leia(num1)
   
   escreval("Num. 2: ")
   leia(num2)
   
   se(num1 > num2) entao
       escreva("O N�mero ", num1, " � o maior" )
   senao
       escreva("O N�mero ", num2, " � o maior")
   fimse

Fimalgoritmo